from abc import get_cache_token
from tbnf import e, t, r, p
from typing import Sequence, final
from dataclasses import dataclass
from collections import ChainMap
from tbnf.prims import *
from contextlib import contextmanager
import string
uf = p.uf
    

@dataclass(frozen=True, order=True)
class LName: # name of common language
    _: str

@dataclass(frozen=True, order=True)
class GName: # name of grammar nonterminals
    _: str


alphabeta = string.ascii_lowercase

def exception_from(x, msg):
    match x:
        case None:
            raise Exception(msg)


class Check:
    def __init__(self, stmts: Sequence[r.Prod | r.Import | r.Decl | t.Methods]):
        self.stmts = stmts
        self.global_scopes = {}
        self.field_constraints: dict[str, t.Methods] = {}
        self.field_problems = []
        self.outer_tvars = set()
        self.execute(stmts)

    def execute(self, stmts):
        for each in stmts:
            match each:
                case t.Methods(basename, _, _):
                    self.field_constraints[basename] = each
                case r.Prod(n, _):
                    self.global_scopes[GName(n)] = uf.newvar()
                case r.Import(s):
                    self.execute(p.type_parser.parse(open(s).read()))
                case r.Decl(n, t1):
                    self.global_scopes[LName(n)] = t1
    
    def infer_rule(self, x):
        match x:
            case r.Term():
                return token_t
            case r.NonTerm(_, n):

                t1 = uf.inst(self.global_scopes[GName(n)])
                return t1
    
    @contextmanager
    def auto_gen(self, nn, outer_tvars, scope=None):
        if scope is None:
            scope = self.global_scopes
        outer_tvars = self.outer_tvars = set(outer_tvars)
        lhs = uf.inst(scope[nn])
        try:
            yield lhs
        finally:
            lhs = uf.prune(lhs)
            outer_tvars_ = uf.free(map(uf.prune, outer_tvars))
            tvars = {a for a in uf.free(lhs) if a not in outer_tvars_}
            assert len(tvars) < 26
            boundvars = set()
            for tv, x in zip(tvars, string.ascii_lowercase):
                bv = t.BoundVar(x)
                uf.unify(tv, bv)
                boundvars.add(bv)
            
            if boundvars:
                lhs = scope[nn]
                scope[nn] = t.Forall(frozenset(boundvars), lhs)

    def infer(self, exp: e.Expr, scope, stack):
        t1 = self.infer_inner(exp._, scope, stack)
        exp.tag.set(t1)
        return t1

    def infer_inner(self, exp: e.ExStatic, scope, stack):
        match exp:
            case e.Var(n):
                if LName(n) not in scope:
                    raise NameError(n)
                t1 = uf.inst(scope[LName(n)])
            case e.Attr(value, attr):
                t_base = self.infer(value, scope, stack)
                t1 = uf.newvar()
                self.outer_tvars.add(t1)
                self.field_problems.append((None, t_base, attr, t1))
            case e.Int():
                t1 = int_t
            case e.Float():
                t1 = float_t
            case e.String():
                t1 = str_t
            case e.Tuple(elts):
                t1 = t.Tuple(tuple(self.infer(e, scope, stack) for e in elts))
            case e.App(f, args):
                arg_t = self.infer_inner(e.Tuple(args), scope, stack)
                ret_t = uf.newvar()
                t_f = self.infer(f, scope, stack)
                uf.unify(t.Arrow(arg_t, ret_t), t_f)
                t1 = ret_t
            case e.Lam(args, body):
                d = {LName(a): uf.newvar() for a in args}
                t2 = self.infer(body, ChainMap(scope, d), stack)
                t1 = t.Arrow(t.Tuple(tuple(d[LName(a)] for a in args)), t2)
            case e.Slot(i):
                t1 = stack[i-1]
            case e.Let(rec, binders, body):
                if rec:
                    sub_scope = {LName(each.name): uf.newvar() for each in binders}
                else:
                    sub_scope = {}
                scope = ChainMap(scope, sub_scope)
                for each in binders:
                    ln = LName(each.name)
                    if ln not in sub_scope:
                        sub_scope[ln] = uf.newvar()
                    with self.auto_gen(ln, scope, uf.current_tvars.difference({sub_scope[ln]})) as tv:
                            uf.unify(tv, self.infer(each.value, scope, stack))
                t1 = self.infer(body, scope, stack)
            case aaa:
                raise TypeError(aaa, type(aaa))
        return t1
    
    def check(self, n: str, case: r.Case):
        match case:
            case r.Case(elts, exp):
                lhs = uf.inst(self.global_scopes[GName(n)])
                for each in elts:
                    t1 = self.infer_rule(each)
                    each.tag.set(t1)
                rhs = self.infer(exp, self.global_scopes, [x.tag.get() for x in elts])
                uf.unify(lhs, rhs)

    def solve_fields(self):
        for position, t_base, attr, t1 in self.field_problems:
            t_base = uf.prune(t_base)
            t1 = uf.prune(t1)
            match t_base:
                case t.App(f, _):
                    if not isinstance(f, t.Nom):
                        raise exception_from(position, f"functor should be a named type: {t_base}")
                    basename = f._
                    is_app = True
                case t.Nom(basename):
                    is_app = False
                    pass
                case _:
                    raise exception_from(position, f"not a valid type application {t_base}")

            methods = self.field_constraints.get(basename)
            if methods is None:
                raise exception_from(position, f"No method declaration for type {basename}")
            if attr not in methods.methods:
                raise exception_from(position, f"No method {attr} for type {basename}")
            t_attr = methods.methods[attr]
            if is_app:
                assert isinstance(methods.params, tuple)
                t_generic = t.App(t.Nom(basename), t.Tuple(methods.params))
                t_generic = t.Forall(frozenset(methods.params), t.Tuple((t_generic, t_attr)))

            else:
                assert methods.params is None
                t_generic = t.Nom(basename)
                t_generic = t.Tuple((t_generic, t_attr))
            t_base_to_unify, t_attr_to_unify = uf.inst(t_generic)._
            uf.unify(t_base_to_unify, t_base)
            uf.unify(t1, t_attr_to_unify)

    def check_all(self):
        # for k, v in self.global_scopes.items():
        #     print('====')
        #     print(k, ":", p.uf.prune(v))
        prods = []
        for prod in self.stmts:
            match prod:
                case r.Prod():
                    prods.append(prod)
        
        ctxs = []
        for prod in prods:
            gn = GName(prod.lhs)
            me = self.global_scopes[gn]
            ctxs.append(self.auto_gen(gn, uf.current_tvars.difference({me})))

        for ctx in ctxs:
            ctx.__enter__()
        
        for prod in prods:
            gn = GName(prod.lhs)
            me = self.global_scopes[gn]
            with self.auto_gen(gn, uf.current_tvars.difference({me})):
                for case in prod.rhs:
                    self.check(prod.lhs, case)

        for ctx in ctxs:
            ctx.__exit__(None, None, None)

        self.solve_fields()
