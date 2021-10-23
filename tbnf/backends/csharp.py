import json
from typing import Sequence, Mapping, Optional
from tbnf import r, t, e, common, prims
from tbnf.common import uf, Ref
from tbnf.backends import codeseg
from collections import ChainMap, OrderedDict
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


type_aliases = {
    'bool': 'bool',
    'int': 'int',
    'float': 'float',
    'str': 'string',
    'token': 'CommonToken'
}

@dataclass
class GlobalInfo:

    def type_to_java(self, t1: t.TyStatic, as_parameter=False):
        match t1:
            case t.Tuple(elts):
                if len(elts) == 0:
                    return "Unit"
                if len(elts) == 1:
                    raise TypeError
                args = ', '.join([self.type_to_java(e, True) for e in elts])
                return f'({args})'
            case t.Nom(s):
                s = type_aliases.get(s, s)
                return s
            case t.Var():
                raise TypeError
            case t.App(f, t.Tuple(elts)):
                args = ', '.join([self.type_to_java(e, True) for e in elts])
                return f"{self.type_to_java(f)}<{args}>"
            case t.BoundVar(_):
                return "object"
            case t.Forall(_, body):
                if isinstance(body, t.Arrow):
                    return self.type_to_java(body)
                raise TypeError(f"only generic functions are accepted; not {body};")
            case t.Arrow(t.Tuple(elts), ret):
                params = [self.type_to_java(e, True) for e in elts]
                params = [self.type_to_java(ret), *params]
                params = ', '.join(params)
                return f"Func<{params}>"
        raise NotImplementedError(t1)

rename_local = [0]


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
        self.declarations = {}
        self.stmts: list[codeseg.Seg] = stmts
        self.used_slots: set[int] = used_slots
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

    def declare(self, tname, name):
        if tname_ := self.declarations.get(name):
            if tname_ != tname:
                raise TypeError(f"type check for {name} incorrect: taking both types: {tname} and {tname_}.")
        else:
            self.declarations[name] = tname
            self.stmts.reverse()
            self.stmts.append(codeseg.Line([tname, name, ";"]))
            self.stmts.reverse()

    def __call__(self, x: e.Expr[common.Ref[t.TyStatic]], *, target: Optional[GenName] = None) -> str:

        match x._:
            case e.Tuple(elts):
                tname = self.type_to_java(x.tag.get())
                target = target or gensym('tmp')
                self.declare(tname, target)
                self.stmts.append(codeseg.Line([
                        target, "=", "(", *interleave_with(map(self, elts), ","), ");"]))

            case e.Let(True, binders, body):
                new_scope = {}
                for binder in binders:
                    new_scope[binder.name] = gensym(binder.name)
                scope_ = ChainMap(self.scope, new_scope)
                for binder in binders:
                    with self.enter_scope(scope_):
                        self(binder.value)
                target = self(body, target=target)

            case e.Attr(v, attr):
                tname = self.type_to_java(x.tag.get())
                v_expr = self(v)
                if not target:
                    target = f"{v_expr}.{attr}"
                else:
                    self.declare(tname, target)
                    self.stmts.append(
                            [target, "=",  f"{v_expr}.{attr};"])

            case e.App(e.Attr(v, attr), args):
                tname = self.type_to_java(x.tag.get())
                self.declare(tname, target)
                v_expr = self(v)
                self.stmts.append(
                    [target, "=",  f"{v_expr}.{attr}",
                     "(",  ', '.join(map(self, args)), ");"]
                )

            case e.App(f, elts):
                tname = self.type_to_java(x.tag.get())
                args = [self(elt) for elt in elts]
                f_expr = self(f)
                target = target or gensym('tmp')
                self.declare(tname, target)
                self.stmts.append(
                        codeseg.Line([
                            target, "=",
                            f"({tname}) {f_expr}(", ', '.join(args), ");"
                        ])
                )
            case e.Block(seq):
                for each in seq:
                    target = self(each, target=target)
            case e.Bool(a):
                tname = self.type_to_java(x.tag.get())
                target = target or gensym('tmp')
                self.declare(tname, target)
                self.stmts.append(codeseg.Line([target, "=", ('false', 'true')[a], ';']))
            case e.Float(a) | e.String(a) | e.Int(a):
                target = target or gensym('tmp')
                tname = self.type_to_java(x.tag.get())
                self.declare(tname, target)
                self.stmts.append(
                    codeseg.Line(
                        [target, "=", json.dumps(a), ";"]
                    )
                )
            case e.Slot(i):
                
                target = target or gensym('tmp')
                self.used_slots.add(i)
                tname = self.type_to_java(x.tag.get())
                self.declare(tname, target)
                if self.is_terminals[i - 1]:
                    expr = f"_localctx.{bound_name(i)}_{self.alt_num}"
                else:
                    expr = f"_localctx.{bound_name(i)}_{self.alt_num}.result"
                self.stmts.append(
                    codeseg.Line(
                        [target, "=", "(", tname, ")", expr, ";"]
                    )
                )
            case e.Lam(args, body):
                tname = self.type_to_java(x.tag.get())
                target = target or gensym("lam")
                self.declare(tname, target)
                new_scope = {}
                scope_ = ChainMap(self.scope, new_scope)
                new_gen = self.new([], self.used_slots, scope_)
                ret = new_gen(body)
                new_gen.stmts.append(codeseg.Line([f"return {ret};"]))
                body = codeseg.VList(new_gen.stmts)
                self.stmts.append(
                    codeseg.VList(
                        [
                            codeseg.Line([target, "=",  "(", ", ".join(args), ")", "=>", "{"]),
                            codeseg.Indent(body),
                            codeseg.Line(["}"]),
                        ]))
            case e.Var(s, targs) as exp:
                if targs is not None and isinstance(x.tag.get(), t.Arrow):
                    targs_ = []
                    for each in exp.generic.bounds:
                        targs_.append(uf.prune(targs[each]))
                    targs = "<" + ",".join(map(self.type_to_java, targs_)) + ">"
                else:
                    targs = ""
                if not target:
                    target = self.scope[s] + targs
                else:
                    tname = self.type_to_java(x.tag.get())
                    self.declare(tname, target)
                    self.stmts.append(codeseg.Line([target, "=", self.scope[s] + targs, ";"]))
            case e.While():
                raise NotImplementedError

        return target


token_cnt = [0]
def gentoken(n: str):
    token_cnt[0] += 1
    n = n.upper()
    return f"{n}_{token_cnt[0]}"

class CG:
    def __init__(self, global_scopes: dict[typecheck.NameStatic, t.TyStatic]):
        from tbnf.common import uf
        self.nonterminal_types = {k._: uf.prune(v) for k, v in global_scopes.items() if isinstance(k, typecheck.GName)}
        self.io = []
        self.module_params = []
        self.lit_set = set()
        self.declared_tokens = OrderedDict()
        self.real_tokens = OrderedDict()
        self.global_scopes = {}
        self.g = GlobalInfo()
        self.lexer_defs = {}
        self.is_tokens: set[str] = set()
        self.ignores = set()

    def antlr_lexer(self, lexer: r.Regex):
        antlr_lexer = self.antlr_lexer
        match lexer:
            case r.RegLit("'"):
                return r"'\''"

            case r.RegLit(c):
                return repr(c)

            case r.RegOr(seq):
                return "|".join(map(antlr_lexer, seq))

            case r.RegNot(a):
                return f"~{antlr_lexer(a)}"

            case r.RegSeq(seq):
                return " ".join(map(antlr_lexer, seq))

            case r.RegNumber():
                return "[0-9]"

            case r.RegRange(start, end):
                return f"[{start}-{end}]"

            case r.RegOneOrMore(e):
                return antlr_lexer(e) + "+"

            case r.RegMany(e):
                return antlr_lexer(e) + "*"

            case r.RegOptional(e):
                return antlr_lexer(e) + "?"

            case r.RegWildcard():
                return '.'
            
            case r.RegRef(s):
                return self.declare_token(s)
            
            case r.RegGroup(s):
                return "(" + antlr_lexer(s) + ")"

            case _:
                raise

    def __lshift__(self, other):
        self.io.append(other)
        return self

    def out(self, module, open_and_write: OutIO):
        g4 = open_and_write(f"{module}.g4")
        def _p(s):
            print(s, file=g4)

        def _p2(s):
            print(s, end='', file=g4)

        _p(f"grammar {module};")

        _p("options { language = CSharp; }")
        # NOTE: wait for one day C# support first-class generic values
        # then we can use this code to make powerfull parametric parser:

        # _p("@members {")

        # if self.module_params:
        #     extra_param_sep = ", "
        # else:
        #     extra_param_sep = ""
        # extra_params = []
        # for tname, name in self.module_params:
        #     _p("    " + tname + " " + name + ";")
        #     extra_params.append(tname + " " + name)
        # _p(f"    public {module}Parser(TokenStream input{extra_param_sep}{', '.join(extra_params)}) : this(input)")
        # _p("    {")
        # for _, name in self.module_params:
        #     _p("        this." + name + " = "  + name + ";")
        # _p("    }")
        # _p("}")

        codeseg.show(codeseg.VList(self.io), print=_p2)
        
        _p('\n')
        for k, (real_name, rule) in self.lexer_defs.items():
            if k in self.ignores:
                _p(f"{real_name} : {rule} -> skip;")            
            elif k in self.is_tokens:
                _p(f"{real_name} : {rule};")
            else:
                _p(f"fragment {real_name} : {rule};")
        _p('\n')

    def process(self, stmts):
        for each in stmts:
            self(each)

    def declare_token(self, name):
        if v := self.declared_tokens.get(name):
            pass
        else:
            v = self.declared_tokens[name] = gentoken(name)
            self.real_tokens[v] = name
        return v

    def __call__(self, stmt: Stmt | r.Case | r.Term | r.NonTerm, ident=""):

        match stmt:
            case r.Case(seq, action):
                segs = [self(each) for each in seq]
                is_terminals = {}
                for i, each in enumerate(seq):
                    if isinstance(each, r.NonTerm):
                        is_terminals[i] = False
                    else:
                        is_terminals[i] = True
                cg = EToJava(self.g, is_terminals, scope=self.global_scopes)
                cg.alt_num = ident
                x = cg(action)
                cg.stmts.append(codeseg.Line([f'$result = {x};']))
                for i in cg.used_slots:
                    segs[i - 1] = f"{bound_name(i)}_{ident}={segs[i - 1]}"
                for seg in segs:
                    self << seg
                self << "{"

                self << codeseg.Indent(codeseg.Indent(codeseg.Indent(codeseg.VList([
                        codeseg.Indent(codeseg.VList(cg.stmts)),
                        codeseg.Line(["}"])
                ]))))

            case r.Prod():
                ident = stmt.lhs
                t1 = self.nonterminal_types[ident]
                self << stmt.lhs << "returns" << f"[{self.g.type_to_java(t1)} result]" << ':\n'
                hd, *tl = stmt.rhs
                self << "    "
                self(hd, f"{ident}_case0")

                for i, case in enumerate(tl):
                    self << "    |"
                    self(case, f"{ident}_case{i + 1}")
                self << codeseg.Line([";"])
            case r.Term(_, name, is_lit):
                if is_lit:
                    name = repr(name)
                    return name
                if name in ("EOF", "BOF"):
                    return name
                self.is_tokens.add(name)
                return self.declare_token(name)

            case r.NonTerm(_, v):
                return v

            case r.Decl(n, decl_t):
                self.global_scopes[n] = n
                # self.module_params.append((self.g.type_to_java(decl_t) , n))

            case t.Methods():
                pass
            
            case r.LexerDef(n, rule):
                rule = self.antlr_lexer(rule)
                self.lexer_defs[n] = self.declare_token(n), rule

            case r.Ignore(xs):
                self.ignores.update(xs)

