from typing import Generic, TypeVar
T = TypeVar('T')

undef = object()

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