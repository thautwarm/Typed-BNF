from __future__ import annotations
from dataclasses import dataclass
from typing import Optional
from tbnf import t, e
from tbnf.common import Pos, ref, refs, TypeTaggable
from typing import Generic, TypeVar


Tag = TypeVar("Tag")

@dataclass
class NonTerm(TypeTaggable, Generic[Tag]):
    _tag: Tag
    _: str
    pos: Pos


@dataclass
class Term(TypeTaggable, Generic[Tag]):
    _tag: Tag
    _: str
    is_lit: bool
    pos: Pos

@dataclass(order=True, frozen=True)
class MacroCall(Generic[Tag]):
    _: str
    args: list[Term | NonTerm | MacroCall]
    pos: Pos

    
@dataclass(order=True, frozen=True)
class Case:
    _: tuple[NonTerm | Term, ...]
    action: e.Expr
    pos: Pos


@dataclass(order=True, frozen=True)
class Prod:
    lhs: str
    rhs: tuple[Case, ...]
    pos: Pos


@dataclass(order=True, frozen=True)
class MacroDef:
    lhs: str
    params: list[str]
    rhs: tuple[Case, ...]
    pos: Pos


@dataclass(order=True, frozen=True)
class Decl:
    name: str
    type: t.TyStatic
    pos: Pos


@dataclass(order=True, frozen=True)
class Import:
    _: str
    pos: Pos

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
    start: str
    end: str

@dataclass(frozen=True, order=True)
class RegOneOrMore:
    _: str
    pass

@dataclass(frozen=True, order=True)
class RegMany:
    _: str
    pass

@dataclass(frozen=True, order=True)
class RegLit:
    _: str

@dataclass(frozen=True, order=True)
class RegOptional:
    pass

@dataclass(frozen=True, order=True)
class RegWildcard:
    pass


@dataclass(frozen=True, order=True)
class RegRef:
    _: str

Regex = RegOr | RegNot | RegSeq | RegNumber | RegRange | RegOneOrMore | RegMany | RegLit | RegOptional | RegWildcard | RegRef

@dataclass(frozen=True)
class LexerDef:
    name: str
    rule: Regex
