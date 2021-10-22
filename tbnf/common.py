from __future__ import annotations
from dataclasses import dataclass
from typing import Generic, TypeVar, TYPE_CHECKING
from tbnf import unify

if TYPE_CHECKING:
    from tbnf import t

T = TypeVar('T')

undef = object()
uf = unify.Unification()
methods: dict[str, t.Methods] = {}

refs = []

class Ref(Generic[T]):
    _: T

    def __init__(self, _=undef):
        self._ = _

    def isdefined(self):
        return self is not undef

    def get(self):
        if self._ is undef:
            raise ValueError
        return self._

    def set(self, v):
        self._ = v

    def __repr__(self) -> str:
        if self._ is undef:
            return "undef"
        return "{" + repr(self._) + "}"

@dataclass(frozen=True)
class Pos:
    lineno: int
    colno: int