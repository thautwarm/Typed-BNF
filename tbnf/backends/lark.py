import json
from typing import Sequence, Mapping, Optional
from tbnf import r, t, e
from collections import ChainMap, OrderedDict
from contextlib import contextmanager
import ast
import _ast
import io

Stmt = r.Prod | r.Decl | t.Methods
UserName = str
GenName = str
Scope = Mapping[UserName, GenName]
lang_ctx = [0]
def gensym(n: str, cnt=lang_ctx):
    cnt[0] += 1
    return f"{n}__{cnt[0]}"


class EToPy:
    def __init__(self, stmts=None, used_slots=None, scope=None):
        if stmts is None:
            stmts = []
        if used_slots is None:
            used_slots = set()
        if scope is None:
            scope = {}

        self.stmts: list[_ast.stmt] = stmts
        self.used_slots: set[int] = used_slots
        self.scope = scope

    @contextmanager
    def enter_scope(self, scope: Scope):
        old = self.stmts
        try:
            self.scope = scope
            yield
        finally:
            self.scope = old

    def __call__(self, x: e.Expr, *, target: Optional[GenName] = None):
        target = target or gensym('tmp')
        match x._:
            case e.Tuple(elts):
                expr = ast.Tuple([self(elt) for elt in elts], ast.Load())
                self.stmts.append(ast.Assign([ast.Name(target, ast.Store())], expr))
            case e.Let(True, binders, body):
                new_scope = {}
                for binder in binders:
                    new_scope[binder.name] = gensym(binder.name)
                scope_ = ChainMap(self.scope, new_scope)
                for binder in binders:
                    with self.enter_scope(scope_):
                        self(binder.value)
                self(body, target=target)
            case e.App(f, elts):
                args = [self(elt) for elt in elts]
                f_expr = self(f)
                expr = ast.Call(f_expr, args, [])
                self.stmts.append(ast.Assign([ast.Name(target, ast.Store())], expr))
            case e.Attr(v, attr):
                v_expr = self(v)
                expr = ast.Attribute(v_expr, attr, ast.Load())
                self.stmts.append(ast.Assign([ast.Name(target, ast.Store())], expr))
            case e.Block(seq):
                for each in seq:
                    self(each, target=target)
            case e.Float(a) | e.String(a) | e.Int(a) | e.Bool(a):
                expr = ast.Constant(a)
                self.stmts.append(ast.Assign([ast.Name(target, ast.Store())], expr))
            case e.Slot(i):
                self.used_slots.add(i)
                expr = ast.Name(f'_{i}', ast.Load())
                self.stmts.append(ast.Assign([ast.Name(target, ast.Store())], expr))
            case e.Lam(args, ret_a):
                new_scope = {}
                f_args = []
                for a in args:
                    a_ = new_scope[a] = gensym(a)
                    f_args.append(a_)
                other = EToPy(used_slots=self.used_slots, scope=ChainMap(self.scope, new_scope))
                x = other(ret_a)
                other.stmts.append(ast.Return(x))
                f_args_ = ast.arguments([], list(map(ast.arg, f_args)), None, [], [], None, [])
                self.stmts.append(ast.FunctionDef(target, f_args_, other.stmts, [], None))
            case e.Var(s):
                expr = ast.Name(self.scope[s], ast.Load())
                self.stmts.append(ast.Assign([ast.Name(target, ast.Store())], expr))
            case e.While(cond, body):
                raise NotImplementedError
                # cond_expr = self(cond)
                # other = EToPy(used_slots=self.used_slots, scope=self.scope)
                # other(body)
                # self.stmts.append(ast.While(cond_expr, other.stmts, []))
                # return ast.Constant(None)
        return ast.Name(target, ast.Load())


token_cnt = [0]
def gentoken():
    token_cnt[0] += 1
    return f"A{token_cnt[0]}"

class CG:
    def __init__(self):
        self.io = io.StringIO()
        self.user_funcs = []
        self.declared_tokens = OrderedDict()
        self.global_scopes = {}

    def __lshift__(self, other):
        self.io.write(other)
        return self

    def declare_tokens_(self):
        self.io.write(f'%declare {", ".join(each for each in self.declared_tokens.values())}')

    def create_python_file(self, module):
        ast.Module(self.user_funcs)

        cls = ast.Module([
                ast.ClassDef("MyTransformer", [ast.Name("_TBNF__Transformer", ast.Load())], [], self.user_funcs, [])],
                [])
        ast.fix_missing_locations(cls)
        code = ast.unparse(cls)
        return (f"from {module} import "
                f"Lark_StandAlone as _Lark__Standardalone, "
                f"Lexer as _Lark__Lexer, "
                f"Transformer as _TBNF__Transformer\n"
                f"declared_tokens = {list(self.declared_tokens.items())!r}\n"
                f"class MyLexer(_Lark__Lexer): pass\n"
                f"{code}\n"
                f"parser = Lark_StandAlone(transformer=MyTransformer(), lexer=MyLexer)")

    def __call__(self, stmt: Stmt | r.Case | r.Term | r.NonTerm, ident=""):
        match stmt:
            case r.Case(seq, action):
                for each in seq:
                    self(each)
                cg = EToPy(scope=self.global_scopes)
                x = cg(action)
                cg.stmts.append(ast.Return(x))
                f_args_ = ast.arguments([], [ast.arg("__args")], None, [], [], None, [])
                stmts: list[_ast.stmt] = [
                            ast.Assign([ast.Name(f"_{i}", ast.Store())],
                                       ast.Subscript(ast.Name("__args", ast.Load()), ast.Constant(i-1), ast.Load()))
                            for i in cg.used_slots
                        ] + cg.stmts
                self.user_funcs.append(
                        ast.FunctionDef(ident, f_args_, stmts, [ast.Name('staticmethod', ast.Load())], [], None))
                self << f" -> {ident}"
                self << '\n'

            case r.Prod():
                ident = stmt.lhs
                self << stmt.lhs << ':\n'
                hd, *tl = stmt.rhs
                self << "    "
                self(hd, f"{ident}_case0")
                for i, case in enumerate(tl):
                    self << "    |"
                    self(case, f"{ident}_case{i + 1}")
            case r.Term(_, name, is_lit):
                if is_lit:
                    name = json.dumps(name)
                if v := self.declared_tokens.get(name):
                    pass
                else:
                    v = self.declared_tokens[name] = gentoken()
                self << f" {v} "
            case r.NonTerm(_, v):
                self << f" {v} "

            case r.Decl(n, _):
                self.global_scopes[n] = n

            case t.Methods():
                pass
