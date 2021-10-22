from __future__ import annotations
from typing import TYPE_CHECKING
from dataclasses import dataclass
from collections import defaultdict

if TYPE_CHECKING:
    from tbnf import t

@dataclass
class Unmatch(TypeError):
    t1: t.TyStatic
    t2: t.TyStatic

@dataclass
class IllForm(TypeError):
    t1: t.TyStatic
    t2: t.TyStatic


def _occur_in(i: int, b: t.TyStatic):
    match b:
        case t.Nom() | t.BoundVar(): return False
        case t.Var(j): return i == j
        case t.App(a1, a2): return _occur_in(i, a1) or _occur_in(i, a2)
        case t.Arrow(a1, a2): return _occur_in(i, a1) or _occur_in(i, a2)
        case t.Tuple(elts): return any(_occur_in(i, a) for a in elts)
        case t.Forall(_, a): return _occur_in(i, a)
    return TypeError(b)

def _free(b, res):
    match b:
        case t.Nom() | t.BoundVar(): pass
        case t.Var(): res.add(b)
        case t.App(a1, a2):
            _free(a1, res)
            _free(a2, res)
        case t.Arrow(a1, a2):
            _free(a1, res)
            _free(a2, res)
        case t.Tuple(elts): 
            for a in elts:
                _free(a, res)
        case t.Forall(_, a):
            _free(a, res)
    return TypeError(b)

def free(b):
    res = set()
    if isinstance(b, t.TyDynamic):
        _free(b, res)
        return res
    else:
        for b_ in b:
            _free(b_, res)
        return res
        

def occur_in(a: t.Var, b: t.TyStatic):
    if not isinstance(a, t.Var):
        raise TypeError(a)
    if a == b:
        return False
    return _occur_in(a.ref, b)


class Unification:
    def __init__(self):
        global t
        from tbnf import t

        self.tenv = []
        self._current_tvars = set()
        self.current_offset = 0
    
    occur_in = staticmethod(occur_in)
    _occur_in = staticmethod(_occur_in)
    
    free = staticmethod(free)

    @property
    def current_tvars(self):
        n = len(self.tenv)
        if self.current_offset < n:
            for i in range(self.current_offset, n):
                self._current_tvars.update(free(self.prune(self.tenv[i])))
            self.current_offset = n
        return frozenset(self._current_tvars)
    
    def prune(self, t1: t.TyStatic):
        match t1:
            case t.Var():
                t2 = self.tenv[t1.ref]
                if t1 != t2:
                    t2 = self.tenv[t1.ref] = self.prune(t2)
                return t2
            case t.App(a1, a2):
                return t.App(self.prune(a1), self.prune(a2))
            case t.Tuple(elts):
                return t.Tuple(tuple(self.prune(a) for a in elts))
            case t.Arrow(a1, a2):
                return t.Arrow(self.prune(a1), self.prune(a2))
            case t.Nom() | t.BoundVar():
                return t1
            case t.Forall(xs, a):
                return t.Forall(xs, self.prune(a))
            
        raise TypeError(t1)

    def newvar(self):
        i = len(self.tenv)
        t1 = t.Var(i)
        self.tenv.append(t1)
        return t1

    def _replace(self, a: t.TyStatic, d: dict[t.TyLeaf, t.TyStatic], func):
        match a:
            case t.Nom() | t.Var() | t.BoundVar():
                if a in d:
                    return d[a]
                if func:
                    b = d[a] = func(a)
                else:
                    b = a
                return b
            case t.App(a1, a2):
                return t.App(self._replace(a1, d, func), self._replace(a2, d, func))
            case t.Arrow(a1, a2):
                return t.Arrow(self._replace(a1, d, func), self._replace(a2, d, func))
            case t.Tuple(elts):
                return t.Tuple(tuple(self._replace(a, d, func) for a in elts))
            case t.Forall(xs, a):
                d_ = {k: v for k, v in d.items() if k not in xs}
                return t.Forall(xs, self.prune(a, d_))
        return TypeError(a)

    def replace(self, a: t.TyStatic, d: dict[t.TyLeaf, t.TyStatic], func):
        return self._replace(self.prune(a), d, func)

    def fresh(self, a: t.TyStatic):
        def func(t1: t.TyLeaf):
            match t1:
                case t.Var(): return self.newvar()
            return t1

        match a:
            case t.Forall(xs, b):
                return self._replace(b, {x: self.newvar() for x in xs}, func)
            case _:
                return self._replace(a, {}, func)

    def inst(self, a: t.TyStatic):
        a = self.prune(a)
        return self._inst(a, {})

    def inst_with_args(self, a: t.TyStatic):
        a = self.prune(a)
        args = {}
        match a:
            case t.Forall(xs, a):
                for x in xs:
                    args[x] = self.newvar()
                a = self._inst(a, args)
            case _:
                a = self._inst(a, args)
        return a, args

    def _inst(self, a: t.TyStatic, d: dict[t.BoundVar, t.TyStatic]):
        match a:
            case t.BoundVar():
                return d.get(a, a)
            case t.Nom() | t.Var():
                return a
            case t.App(a1, a2):
                return t.App(self._inst(a1, d), self._inst(a2, d))
            case t.Arrow(a1, a2):
                return t.Arrow(self._inst(a1, d), self._inst(a2, d))
            case t.Tuple(elts):
                return t.Tuple(tuple(self._inst(a, d) for a in elts))
            case t.Forall(xs, a):
                d = d.copy()
                for x in xs:
                    d[x] = self.newvar()
                return self._inst(a, d)
        return TypeError(a)

    def unify(self, t1: t.TyStatic, t2: t.TyStatic):
        try:
            self._unify(t1, t2)
        except TypeError as e:
            raise Unmatch(self.prune(t1), self.prune(t2)) from e

    def _unify(self, t1: t.TyStatic, t2: t.TyStatic):
        t1 = self.prune(t1)
        t2 = self.prune(t2)

        match (t1, t2):
            case (t.Var(i), _):
                if occur_in(t1, t2):
                    raise IllForm(t1, t2)
                self.tenv[i] = t2
                return
            case (_, t.Var()):
                return self._unify(t2, t1)
            case (t.Nom(), t.Nom()) | (t.BoundVar(), t.BoundVar()) if t1 == t2:
                return
            case (t.App(a1, a2), t.App(b1, b2)):
                self._unify(a1, b1)
                self._unify(a2, b2)
                return
            case (t.Tuple(elts1), t.Tuple(elts2)) if len(elts1) == len(elts2):
                for a, b in zip(elts1, elts2):
                    self._unify(a, b)
                return
            case (t.Arrow(a1, a2), t.Arrow(b1, b2)):
                self._unify(a1, b1)
                self._unify(a2, b2)
                return

            case (t.Forall(xs1, a1), t.Forall(xs2, a2)) if len(xs1) == len(xs2):
                a1_ = self.fresh(t1)
                a2_ = self.fresh(t2)
                self._unify(a1_, a2_)
                t1_ = self.fresh(self.prune(a1_))
                t2_ = self.fresh(a1_)
                self._unify(t1_, a1)
                self._unify(t2_, a2)
                return

        raise TypeError
