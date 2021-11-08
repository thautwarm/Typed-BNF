from tbnf import e, t, r
from typing import Sequence, final
from dataclasses import dataclass
from collections import ChainMap
from tbnf.prims import *
from tbnf.common import uf, Pos, ref
from contextlib import contextmanager
import string
import tbnf.config as config
    

@dataclass(frozen=True, order=True)
class LName:  # name of common language
    _: str

@dataclass(frozen=True, order=True)
class GName:  # name of grammar nonterminals
    _: str

NameStatic = GName | LName

alphabeta = string.ascii_lowercase


class TypeCheckError(SyntaxError):
    pass

class Check:
    def __init__(self, stmts: Sequence[r.Prod | r.Import | r.Decl | t.Methods]):
        global parser
        from tbnf import parser
        self.stmts = stmts
        self.global_scopes = {}
        self.field_constraints: dict[str, t.Methods] = {}
        self.field_problems = []
        self.outer_tvars = set()
        self.unnamed_lits = []
        self.regexps = []
        self._execute(stmts)
        # self.type_aliases = {}

    def exception_from(self, x, msg):
        match x:
            case None:
                raise TypeCheckError(msg)
            case Pos(l, c, filename):
                e = TypeCheckError()
                e.lineno = l
                e.msg = msg
                e.filename = filename
                raise e

    def _execute(self, stmts):
        for each in stmts:
            match each:
                case t.Methods(basename, _, _):
                    self.field_constraints[basename] = each
                case r.Prod(n, _):
                    self.global_scopes[GName(n)] = uf.newvar()
                case r.Decl(n, t1):
                    self.global_scopes[LName(n)] = t1
                case r.LexerDef(n, rule):
                    self.regexps.append((n, rule))
                case r.TypeAlias() | r.Ignore():
                    pass
                case _:
                    raise ValueError(each)

    def infer_rule(self, x):
        match x:
            case r.Term():
                return token_t
            case r.NonTerm(_, n, is_lit):
                if is_lit:
                    self.unnamed_lits.append(n)
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
        try:
            t1 = self.infer_inner(exp._, scope, exp.pos, stack)
        except (TypeError, TypeCheckError) as e:
            e_new = TypeCheckError()
            e_new.lineno = exp.pos.lineno
            e_new.filename = exp.pos.filename
            raise e_new from e
        exp.tag.set(t1)
        return t1

    def infer_inner(self, exp: e.ExStatic, scope, pos, stack):
        match exp:

            case e.Var(n):
                if LName(n) not in scope:
                    raise NameError(n)
                t1, args = uf.inst_with_args(scope[LName(n)])
                if args:
                    exp.inst_targs = args
                    exp.generic = uf.prune(scope[LName(n)])
            
            case e.Attr(value, attr):
                t_base = self.infer(value, scope, stack)
                t1 = uf.newvar()
                self.outer_tvars.add(t1)
                self.field_problems.append((pos, t_base, attr, t1))
            case e.Bool():
                t1 = bool_t
            case e.Int():
                t1 = int_t
            case e.Float():
                t1 = float_t
            case e.String():
                t1 = str_t
            case e.Tuple(elts):
                t1 = t.Tuple(tuple(self.infer(e, scope, stack) for e in elts))
            case e.List(elts):
                last = uf.newvar()
                for elt in elts:
                    t_elt = self.infer(elt, scope, stack)
                    if last is not None:
                        uf.unify(last, t_elt) 
                    last = t_elt
                t1 = t.App(list_t, t.Tuple((last, )))
            case e.App(f, args):
                arg_t = self.infer_inner(e.Tuple(args), scope, pos, stack)
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
                # test let
                if rec:
                    sub_scope = {LName(each.name): uf.newvar() for each in binders}
                else:
                    sub_scope = {}
                scope = ChainMap(scope, sub_scope)
                for each in binders:
                    ln = LName(each.name)
                    if ln not in sub_scope:
                        sub_scope[ln] = uf.newvar()
                    
                    if config.POLY_VALUE or config.ALLOW_LOCAL_POLY and isinstance(each.value._, e.Lam):
                        with self.auto_gen(ln, uf.current_tvars.difference({sub_scope[ln]}), scope) as tv:
                                uf.unify(tv, self.infer(each.value, scope, stack))
                    else:
                        uf.unify(sub_scope[ln], self.infer(each.value, scope, stack))
                t1 = self.infer(body, scope, stack)
            case e.Block(suite):
                t1 = t.Tuple(())
                for each in suite:
                    t1 = self.infer(each, scope, stack)
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
                        raise self.exception_from(position, f"functor should be a named type: {t_base}")
                    basename = f._
                    is_app = True
                case t.Nom(basename):
                    is_app = False
                    pass
                case _:
                    raise self.exception_from(position, f"not a valid type application {t_base}")

            methods = self.field_constraints.get(basename)
            if methods is None:
                raise self.exception_from(position, f"No method declaration for type {basename}")
            if attr not in methods.methods:
                raise self.exception_from(position, f"No method {attr} for type {basename}")
            pos, t_attr = methods.methods[attr]
            if is_app:
                assert isinstance(methods.params, tuple)
                t_generic = t.App(t.Nom(basename), t.Tuple(methods.params))
                t_generic = t.Forall(frozenset(methods.params), t.Tuple((t_generic, t_attr)))

            else:
                assert methods.params is None
                t_generic = t.Nom(basename)
                t_generic = t.Tuple((t_generic, t_attr))
            t_base_to_unify, t_attr_to_unify = uf.inst(t_generic)._
            try:
                uf.unify(t_base_to_unify, t_base)
                uf.unify(t1, t_attr_to_unify)
            except TypeError as e_inner:
                e = TypeCheckError()
                e.filename = position.filename
                e.lineno = position.lineno
                e.msg = f"require '{uf.prune(t1)}'; attribute {attr!r} got {t_attr}."
                raise e from e_inner

    def check_all(self):

        prods = []
        for prod in self.stmts:
            match prod:
                case r.Prod():
                    prods.append(prod)
        
        ctxs = []
        for prod in prods:
            gn = GName(prod.lhs)
            me = self.global_scopes[gn]
            if config.POLY_VALUE or config.ALLOW_LOCAL_POLY:
                ctxs.append(self.auto_gen(gn, uf.current_tvars.difference({me})))


        for ctx in ctxs:
            ctx.__enter__()
        
        for prod in prods:
            gn = GName(prod.lhs)
            me = self.global_scopes[gn]
            with self.auto_gen(gn, uf.current_tvars.difference({me})):
                for i_case, case in enumerate(prod.rhs):
                    case: r.Case
                    try:
                        self.check(prod.lhs, case)
                    except Exception as e:
                        e_new = TypeCheckError()
                        e_new.lineno = case.pos.lineno
                        e_new.filename = case.pos.filename
                        e_new.msg = f"type check failed: branch-{i_case+1} of rule {prod.user_name} failed."
                        raise e_new from e

        for ctx in ctxs:
            ctx.__exit__(None, None, None)

        self.solve_fields()
