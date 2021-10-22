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

refs = set()

def ref(t=undef):
    r = Ref(t)
    refs.add(r)
    return r

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


class TypeTaggable:
    
    @property
    def tag(self):
        if self._tag is None:
            self._tag = ref()
        return self._tag

@dataclass(frozen=True)
class Pos:
    lineno: int
    colno: int
    filename: str

    def __getitem__(self, i):
        import warnings
        warnings.warn(UserWarning("Treated as tuple!"))
        if i == 0:
            return self.lineno
        if i == 1:
            return self.colno
        if i == 2:
            return self.filename
        raise IndexError