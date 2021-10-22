import json
from typing import Sequence, Mapping, Optional
from tbnf import r, t, e, common
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
    'bool': 'boolean',
    'int': 'int',
    'float': 'double',
    'token': 'Token',
    'str': 'String'
}

box_types = {
    'boolean': 'Boolean',
    'int': 'Int',
    'double': 'Double'
}

@dataclass
class GlobalInfo:
    methods: dict[str, codeseg.Seg]
    imports: dict[str, codeseg.Seg]

    def type_to_java(self, t1: t.TyStatic, as_parameter=False):
        """
        Unit<A>
        Pair<A,B>
        Triplet<A,B,C>
        Quartet<A,B,C,D>
        Quintet<A,B,C,D,E>
        Sextet<A,B,C,D,E,F>
        Septet<A,B,C,D,E,F,G>
        Octet<A,B,C,D,E,F,G,H>
        Ennead<A,B,C,D,E,F,G,H,I>
        Decade<A,B,C,D,E,F,G,H,I,J>
        """
        match t1:
            case t.Tuple(elts):
                if len(elts) == 1:
                    raise TypeError
                tname = f"Tuple{len(elts)}"
                args = ', '.join([self.type_to_java(e, True) for e in elts])
                return f'{tname}<{args}>'
            case t.Nom(s):
                s = type_aliases.get(s, s)
                if as_parameter:
                    s = box_types.get(s, s)
                return s
            case t.Var():
                raise TypeError
            case t.App(f, t.Tuple(elts)):
                args = ', '.join([self.type_to_java(e, True) for e in elts])
                return f"{self.type_to_java(f)}<{args}>"
            case t.BoundVar():
                raise NotImplementedError
            case t.Forall():
                raise TypeError
            case t.Arrow():
                raise NotImplementedError
        raise NotImplementedError

rename_local = [0]

class EToJava:
    def __init__(self, g: GlobalInfo, stmts=None, used_slots=None, scope=None):
        if stmts is None:
            stmts = []
        if used_slots is None:
            used_slots = set()
        if scope is None:
            scope = {}
        self.g = g
        self.stmts: list[codeseg.Seg] = stmts
        self.used_slots: set[int] = used_slots
        self.scope = scope
        self.alt_num = '0'

    def type_to_java(self, t1: t.TyStatic):
        return self.g.type_to_java(t1)

    def new(self, stmts=None, used_slots=None, scope=None):
        return EToJava(self.g, stmts=stmts, used_slots=used_slots, scope=scope)

    @property
    def methods(self):
        return self.g.methods

    @property
    def imports(self):
        return self.g.imports

    @contextmanager
    def enter_scope(self, scope: Scope):
        old = self.stmts
        try:
            self.scope = scope
            yield
        finally:
            self.scope = old

    def __call__(self, x: e.Expr[common.Ref[t.TyStatic]], *, target: Optional[GenName] = None) -> str:

        match x._:
            case e.Tuple(elts):
                tname = self.type_to_java(x.tag.get())
                target = target or gensym('tmp')
                self.stmts.append(codeseg.Line([
                        tname, target, "=",
                        "new", tname, "(", *interleave_with(map(self, elts), ","), ");"]))

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
                    self.stmts.append(
                            [tname, target, "=",  f"{v_expr}.{attr};"])

            case e.App(e.Attr(v, attr), args):
                tname = self.type_to_java(x.tag.get())
                v_expr = self(v)
                self.stmts.append(
                    [tname, target, "=",  f"{v_expr}.{attr}",
                     "(",  ', '.join(map(self, args)), ");"]
                )

            case e.App(f, elts):
                tname = self.type_to_java(x.tag.get())
                args = [self(elt) for elt in elts]
                f_expr = self(f)
                target = target or gensym('tmp')
                self.stmts.append(
                        codeseg.Line([
                            tname, target, "=",
                            f"{f_expr}(", ', '.join(args), ");"
                        ])
                )
            case e.Block(seq):
                for each in seq:
                    target = self(each, target=target)
            case e.Bool(a):
                tname = 'boolean'
                target = target or gensym('tmp')
                self.stmts.append(codeseg.Line([tname, target, "=", ('false', 'true')[a], ';']))
            case e.Float(a) | e.String(a) | e.Int(a):
                target = target or gensym('tmp')
                tname = self.type_to_java(x.tag.get())
                self.stmts.append(
                    codeseg.Line(
                        [tname, target, "=", json.dumps(a)]
                    )
                )
            case e.Slot(i):
                target = target or gensym('tmp')
                self.used_slots.add(i)
                tname = self.type_to_java(x.tag.get())
                self.stmts.append(
                    codeseg.Line(
                        [tname, target, "=", f"{bound_name(i)}_{self.alt_num}", ";"]
                    )
                )
            case e.Lam():
                raise NotImplementedError
            case e.Var(s):
                if not target:
                    target = self.scope[s]
                else:
                    tname = self.type_to_java(x.tag.get())
                    self.stmts.append(codeseg.Line([tname, target, "=", self.scope[s], ";"]))
            case e.While():
                raise NotImplementedError

        return target


token_cnt = [0]
def gentoken():
    token_cnt[0] += 1
    return f"T__{token_cnt[0]}"

class CG:
    def __init__(self, global_scopes: dict[typecheck.NameStatic, t.TyStatic]):
        from tbnf.common import uf
        self.nonterminal_types = {k._: uf.prune(v) for k, v in global_scopes.items() if isinstance(k, typecheck.GName)}
        self.io = []
        self.user_funcs = []
        self.lit_set = set()
        self.declared_tokens = OrderedDict()
        self.real_tokens = OrderedDict()
        self.global_scopes = {}
        self.g = GlobalInfo({}, {})

    def __lshift__(self, other):
        self.io.append(other)
        return self

    def out(self, module, open_and_write: OutIO):
        g4 = open_and_write(f"{module}.g4")

        def _p(s):
            print(s, file=g4)

        def _p2(s):
            print(s, end='', file=g4)

        _p(f"parser grammar {module};")
        _p(f"tokens {{{','.join(self.real_tokens.keys())}}}")
        _p("@members {")
        token_names = ','.join(map(json.dumps, self.real_tokens.values()))
        _p("    public static String[] userTokenNames = {%s};" % token_names)
        token_names = ','.join(map(json.dumps, self.real_tokens.keys()))
        _p("    public static String[]  sysTokenNames= {%s};" % token_names)

        token_names = ','.join(('false', 'true')[e in self.lit_set] for e in self.real_tokens)
        _p("    public static boolean[] isLiteralTokens= {%s};" % token_names)
        _p("}")
        codeseg.show(codeseg.VList(self.io), print=_p2)

    def process(self, stmts):
        for each in stmts:
            self(each)

    def __call__(self, stmt: Stmt | r.Case | r.Term | r.NonTerm, ident=""):

        match stmt:
            case r.Case(seq, action):
                segs = [self(each) for each in seq]
                cg = EToJava(self.g, scope=self.global_scopes)
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
                oname = name
                if is_lit:
                    name = json.dumps(name)
                if v := self.declared_tokens.get(name):
                    pass
                else:
                    v = self.declared_tokens[name] = gentoken()
                    self.real_tokens[v] = oname
                    if is_lit:
                        self.lit_set.add(v)
                return v
            case r.NonTerm(_, v):
                return v

            case r.Decl(n, _):
                self.global_scopes[n] = n

            case t.Methods():
                pass
