from __future__ import annotations
from dataclasses import dataclass


@dataclass(frozen=True, order=True)
class RegOr:
    _: list[Regex]


@dataclass(frozen=True, order=True)
class RegNot:
    _: Regex


@dataclass(frozen=True, order=True)
class RegSeq:
    _: list[Regex]


@dataclass(frozen=True, order=True)
class RegNumber:
    pass


@dataclass(frozen=True, order=True)
class RegRange:
    start: int
    end: int


@dataclass(frozen=True, order=True)
class RegOneOrMore:
    _: str
    pass


@dataclass(frozen=True, order=True)
class RegMany:
    _: str


@dataclass(frozen=True, order=True)
class RegGroup:
    _: Regex


@dataclass(frozen=True, order=True)
class RegLit:
    _: str


@dataclass(frozen=True, order=True)
class RegOptional:
    _: Regex


@dataclass(frozen=True, order=True)
class RegWildcard:
    pass


@dataclass(frozen=True, order=True)
class RegRef:
    _: str


Regex = (
    RegOr
    | RegNot
    | RegSeq
    | RegNumber
    | RegRange
    | RegOneOrMore
    | RegMany
    | RegLit
    | RegOptional
    | RegWildcard
    | RegRef
    | RegGroup
)


@dataclass(frozen=True)
class lexerdef:
    name: str
    rule: Regex
