import json
from typing import TYPE_CHECKING, Sequence, Mapping, Optional
import typing
from tbnf import r, t, e, common, prims
from tbnf.common import uf, Ref
from tbnf.typecheck import LName
from tbnf.backends import doc
from collections import ChainMap, OrderedDict, defaultdict
from contextlib import contextmanager
from dataclasses import dataclass
from tbnf.backends.io_interface import OutIO
from tbnf import typecheck


Stmt = r.Prod | r.Decl | t.Methods
UserName = str
GenName = str
Scope = Mapping[UserName, GenName]

lang_ctx = [0]
func_ctx = [0]

def gensym(n: str, cnt=lang_ctx, sep='__'):
    cnt[0] += 1
    return f"{n}{sep}{cnt[0]}"

def bound_name(i: int):
    return f"local__{i}"

def interleave_with(many, sep):
    many = iter(many)
    try:
        hd = next(many)
    except StopIteration:
        return
    yield hd
    for each in many:
        yield sep
        yield each


# we define a token type for menhir/ocaml yacc using this name.
TOKEN_TYPE = 'tbnf_token'

type_aliases = {
    'bool': 'bool',
    'int': 'int',
    'float': 'float',
    'str': 'string',
    'token': TOKEN_TYPE,
    'list': 'list'
}

@dataclass
class GlobalInfo:

    def type_to_java(self, t1: t.TyStatic):
        match t1:
            case t.Tuple(elts):
                if len(elts) == 0:
                    return "unit"
                if len(elts) == 1:
                    raise TypeError
                args = ' * '.join([self.type_to_java(e) for e in elts])
                return f'({args})'
            case t.Nom(s):
                s = type_aliases.get(s, s)
                return s
            case t.Var():
                raise TypeError
            case t.App(f, t.Tuple(elts)):
                if len(elts) == 1:
                    return f"{self.type_to_java(elts[0])} {self.type_to_java(f)}"
                args = ', '.join([self.type_to_java(e) for e in elts])
                return f"({args}) {self.type_to_java(f)}"
            case t.BoundVar(k):
                return "'" + k
            case t.Forall(boundvars, body):
                boundvars = ' '.join(map(self.type_to_java, boundvars))
                if isinstance(body, t.Arrow):
                    return f"forall {boundvars}. {self.type_to_java(body)}";
                raise TypeError(f"only generic functions are accepted; not {body};")
            case t.Arrow(t.Tuple(elts), ret):
                params = [self.type_to_java(e) for e in elts]
                params = ' * '.join(params)
                return f"({params} -> {self.type_to_java(ret)}"
        raise NotImplementedError(t1)

rename_local = [0]

if TYPE_CHECKING:
    StrExpr = str | tuple[str, list['StrExpr']]
    

class EToJava:
    def __init__(self, g: GlobalInfo, is_termianls: dict[int, bool], stmts=None, used_slots=None, scope=None):
        if stmts is None:
            stmts = []
        
        self.is_terminals = is_termianls
        if used_slots is None:
            used_slots = set()
        if scope is None:
            scope = {}
        self.g = g
        self.scope = scope
        self.alt_num = '0'

    def type_to_java(self, t1: t.TyStatic):
        return self.g.type_to_java(t1)

    def new(self, stmts=None, used_slots=None, scope=None):
        return EToJava(self.g, self.is_terminals, stmts=stmts, used_slots=used_slots, scope=scope)

    @contextmanager
    def enter_scope(self, scope: Scope):
        old = self.stmts
        try:
            self.scope = scope
            yield
        finally:
            self.scope = old

    def __call__(self, x: e.Expr[common.Ref[t.TyStatic]]) -> doc.Doc:

        match x._:
            case e.List(elts):

                tname = self.type_to_java(x.tag.get())
                return (
                    doc.word("[") * 
                    doc.seplist(doc.word("; "), list(map(self, elts))) *
                    doc.word("]"))

            case e.Tuple(elts):

                if len(elts) == 1:
                    raise TypeError("OCaml does not support 1-element tuples!")
                return (
                    doc.word("(") *
                    doc.seplist(doc.comma, list(map(self, elts))) *
                    doc.word(")"))

            case e.Let(False, binders, body):
                scope_ = self.scope
                new_scope = {}
                binds = []
                for binder in binders:
                    sym = gensym(binder.name)
                    with self.enter_scope(scope_):  
                        tname = self.type_to_java(binder.value.tag.get()                      )
                        binds.append(
                            doc.word("let") + sym + f": {tname} =" + self(binder.value) + "in")
                    new_scope[LName(binder.name)] = sym
                    scope_ = ChainMap(scope_, new_scope)
                
                with self.enter_scope(scope_):
                    binds.append(self(body))
                return doc.align @ doc.VSep(binds)

            case e.Let(True, binders, body):
                new_scope = {}
                binds = []
                for binder in binders:
                    new_scope[LName(binder.name)] = gensym(binder.name)
                scope_ = ChainMap(self.scope, new_scope)
                for not_first, binder in enumerate(binders):
                    with self.enter_scope(scope_):
                        sym = new_scope[LName(binder.name)]
                        tname = self.type_to_java(binder.value.tag.get()                      )
                        
                        if not_first:
                            binds.append(
                                doc.word("and") + sym + f": {tname} =" + self(binder.value) + "in")
                        else:
                            binds.append(
                                doc.word("let rec") + sym + f": {tname} =" + self(binder.value) + "in")
                with self.enter_scope(scope_):
                    binds.append(self(body))
                return doc.align @ doc.VSep(binds)

            case e.Attr(v, attr):
                tname = self.type_to_java(v.tag.get())
                v_expr = self(v)
                return doc.parens(v_expr * ":" + tname) * f".{attr}"

            case e.App(f, elts):
                tname = self.type_to_java(x.tag.get())
                args = [self(elt) for elt in elts]
                f_expr = self(f)
                return f_expr * "(" * doc.seplist(doc.comma * " ", args) * ")"

            case e.Block(seq):
                return doc.align @ doc.vsep(
                    doc.word("begin"),
                    doc.VSep(
                        list(map(self, seq))
                    ) >> 2,
                    doc.word("end"))
            case e.Bool(a):
                return doc.word(('false', 'true')[a])
        
            case e.Float(a) | e.String(a) | e.Int(a):
                return doc.word(json.dumps(a))
            case e.Slot(i):
                return doc.word("$") * str(i)
            case e.Lam(args, body):
                tname = self.type_to_java(x.tag.get())
                new_scope = {LName(n): gensym(n) for n in args}
                scope_ = ChainMap(self.scope, new_scope)
                new_gen = self.new([], self.used_slots, scope_)
                ret = new_gen(body)
                return (
                    doc.word("fun") *
                        "(" * doc.seplist(doc.comma * " ", [new_scope[n] for n in args]) * ")" *
                        "->" * ret)
            case e.Var(s, targs) as exp:
                return doc.word(self.scope[LName(s)])
            case a:
                raise NotImplementedError(a)



token_cnt = [0]
def gentoken(n: str):
    n = n or 'LIT_'
    token_cnt[0] += 1
    n = n.upper()
    return f"{n}_{token_cnt[0]}"

TokenIdent = tuple[str, bool]

def to_ascii_char(i) -> int | str:
    if i < 256:
        ch = chr(i)
        if ch == "'":
            ch = "'\''"
        else:
            ch = f"'{ch}'"
        return ch
    else:
        return i

class CG:
    def __init__(self, global_scopes: dict[typecheck.NameStatic, t.TyStatic]):
        from tbnf.common import uf
        self.declared_externals = {k._: uf.prune(v) for k, v in global_scopes.items() if isinstance(k, typecheck.LName)}

        self.nonterminal_types = {k._: uf.prune(v) for k, v in global_scopes.items() if isinstance(k, typecheck.GName)}
        self.doc_objects = []
        self.module_params = []
        self.lit_set = set()
        self.declared_tokens = OrderedDict()
        self.token_ident_map: dict[str, TokenIdent] = OrderedDict()
        self.lexer_defs: dict[TokenIdent, tuple[str, str]] = {}
        self.ref_by_rule: set = set()
        self.global_scopes = {}
        self.g = GlobalInfo()
        self.is_tokens: dict[TokenIdent, str] = {}
        self.ignores = set()
        self.branch_cnt = defaultdict(int)
        
        self.nonterm_prefix = "x_"

    def ocaml_lexer(self, lexer: r.Regex):
        """targets Sedlex
        """
        ocaml_lexer = self.ocaml_lexer
        match lexer:
            case r.RegLit("\'"):
                return "'\''"

            case r.RegLit(ch):
                return repr(ch)

            case r.RegOr(seq):
                return "|".join(map(ocaml_lexer, seq))

            case r.RegNot(a):
                return f"Compl ({ocaml_lexer(a)})"

            case r.RegSeq(seq):
                return ", ".join(map(ocaml_lexer, seq))

            case r.RegNumber():
                return "('0' .. '9')"

            case r.RegRange(start, end):
                start = to_ascii_char(int(start[3:], base=16))
                end = to_ascii_char(int(end[3:], base=16))
                return f"({start} .. {end})"

            case r.RegOneOrMore(e):
                return f"Plus ({ocaml_lexer(e)})"

            case r.RegMany(e):
                return f"Star ({ocaml_lexer(e)})"

            case r.RegOptional(e):
                return f"Opt {ocaml_lexer(e)}"

            case r.RegWildcard():
                return '_'
            
            case r.RegRef(s):
                v = self.declare_token(s, False)
                self.ref_by_rule.add(v)
                return "rule_" + v
            
            case r.RegGroup(s):
                return "(" + ocaml_lexer(s) + ")"

            case _:
                raise

    def out(self, module, open_and_write: OutIO):
        mly = open_and_write(f"{module}.mly")
        def _p(s):
            print(s, file=mly)
        
        # _p(f"%parameter <M_{module}: M_{module}_type>")    
        _p('\n')
    
        for real_name in self.is_tokens.values():
            if real_name != "EOF":
                _p(f"%token<{TOKEN_TYPE}> {real_name}")
            else:
                _p("%token EOF")
        _p('\n')
        _p(doc.doc2str(doc.VSep(self.doc_objects)))

        mll = open_and_write(f"{module}.ml")
        
        def _p(s):
            print(s, file=mll)
        

        cases: list[doc.Doc] = []

        def mk_case_body(token_username: str, real_name: str):
            if token_username in self.ignores:
                return "tokenize lexerbuffer"
            return f"{real_name} (mktoken lexerbuffer)"
            
        
        for lit in self.lit_set:
            real_name = self.is_tokens[lit, True]
            cases.append(doc.word(f"| {json.dumps(lit, ensure_ascii=False)} -> {real_name} (mktoken lexerbuffer)"))

        for ident, (real_name, rule) in self.lexer_defs.items():
            if real_name in self.ref_by_rule:
                if ident in self.is_tokens:
                    cases.append(doc.word(f"| rule_{real_name} -> {mk_case_body(ident[0], real_name)}"))
                _p(f"let rule_{real_name} = [%sedlex.regexp? {rule}]")
                continue
            
            cases.append(doc.word(f"| {rule} -> {mk_case_body(ident[0], real_name)}"))

        cases.append(doc.word(f"| eof -> EOF"))
        doc_obj = doc.vsep (
            doc.word("let rec tokenize lexerbuffer ="),
            doc.vsep(
                doc.word("match%sedlex lexerbuffer with"),
                doc.VSep(cases)) >> 4)
        _p(doc.doc2str(doc_obj))
    
    def process(self, stmts):
        for each in stmts:
            self(each)

    def declare_token(self, name: str, is_lit: bool):
        if v := self.declared_tokens.get((name, is_lit)):
            pass
        else:
            v = self.declared_tokens[name, is_lit] = gentoken(name.isidentifier() and name or None)
            self.token_ident_map[v] = name, is_lit
        return v

    def __call__(self, stmt: Stmt | r.Case | r.Term | r.NonTerm, ident=""):

        match stmt:
            case r.Case(seq, action):
                segs = doc.join(self(each) for each in seq)
                is_terminals = {}
                for i, each in enumerate(seq):
                    if isinstance(each, r.NonTerm):
                        is_terminals[i] = False
                    else:
                        is_terminals[i] = True
                cg = EToJava(self.g, is_terminals, scope=self.global_scopes)
                cg.alt_num = ident
                action_expr = doc.curly(cg(action))
                return segs + doc.space + action_expr

            case r.Prod():
                ident = stmt.lhs
                i_start = self.branch_cnt[ident]
                i = 0

                def mk_segs():
                    xor = doc.word("| ") 
                    for i, case in enumerate(stmt.rhs):
                        yield xor * self(case, f"{ident}_case{i + 1 + i_start}")
                segs = list(mk_segs())
                self.branch_cnt[ident] = len(segs) + i_start
                doc_obj = doc.word(self.nonterm_prefix + stmt.lhs) + ":" + doc.align @ doc.VSep(segs)
                self.doc_objects.append(doc_obj)
                return
                
            case r.Term(_, name, is_lit):
                if name == "EOF":
                    self.is_tokens[name, False] = name
                    return doc.word(name)
                if is_lit:
                    self.lit_set.add(name)
                v = self.is_tokens[name, is_lit] = self.declare_token(name, is_lit)
                return doc.word(v)

            case r.NonTerm(_, v):
                return doc.word(self.nonterm_prefix + v)

            case r.Decl(n, decl_t):
                # TODO: generate module declaration
                self.global_scopes[LName(n)] = n
                # self.module_params.append((self.g.type_to_java(decl_t) , n))

            case t.Methods():
                # TODO: generate module declaration
                pass
            
            case r.LexerDef(n, rule):
                rule = self.ocaml_lexer(rule)
                self.lexer_defs[n, False] = self.declare_token(n, False), rule

            case r.Ignore(xs):
                self.ignores.update(xs)

