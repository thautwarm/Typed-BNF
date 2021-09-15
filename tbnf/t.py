from __future__ import annotations
from dataclasses import dataclass
from tbnf.e import Tuple
from typing import Optional


class TyDynamic:
    pass


def _tuple_string(elts):
    return ", ".join(map(repr, elts))


@dataclass(order=True, frozen=True)
class Nom(TyDynamic):
    _: str

    def __repr__(self) -> str:
        return self._


@dataclass(order=True, frozen=True)
class App(TyDynamic):
    func: TyStatic
    arg: TyStatic

    def __repr__(self) -> str:
        assert isinstance(self.arg, Tuple)
        return f"{self.func}[{_tuple_string(self.arg._)}]"


@dataclass(order=True, frozen=True)
class Arrow(TyDynamic):
    arg: TyStatic
    ret: TyStatic

    def __repr__(self) -> str:
        assert isinstance(self.arg, Tuple)
        return f"({_tuple_string(self.arg._)}) -> {self.ret}"


@dataclass(order=True, frozen=True)
class Forall(TyDynamic):
    bounds: frozenset[BoundVar]
    ty: TyStatic

    def __repr__(self) -> str:
        return f"forall {set(self.bounds)}. {self.ty}"


@dataclass(order=True, frozen=True)
class BoundVar(TyDynamic):
    _: str

    def __repr__(self) -> str:
        return "'" + self._


@dataclass(order=True, frozen=True)
class Var(TyDynamic):
    ref: int

    def __repr__(self) -> str:
        return f"@{self.ref}"


@dataclass(order=True, frozen=True)
class Var(TyDynamic):
    ref: int

    def __repr__(self) -> str:
        return f"@{self.ref}"


@dataclass(order=True, frozen=True)
class Tuple(TyDynamic):
    _: tuple[TyStatic, ...]

    def __repr__(self) -> str:
        return f"({_tuple_string(self._)})"


TyStatic = Var | BoundVar | Forall | Arrow | App | Nom | Tuple

TyLeaf = Var | BoundVar | Nom


@dataclass
class Methods:
    base: str
    params: Optional[tuple[BoundVar, ...]]
    methods: dict[str, TyStatic]
