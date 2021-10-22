from __future__ import annotations
from dataclasses import dataclass
from typing import Optional
from tbnf import t, e
from tbnf.common import Pos
from typing import Generic, TypeVar


Tag = TypeVar("Tag")


@dataclass(order=True, frozen=True)
class NonTerm(Generic[Tag]):
    tag: Tag
    _: str
    pos: Pos


@dataclass(order=True, frozen=True)
class Term(Generic[Tag]):
    tag: Tag
    _: str
    is_lit: bool
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
class Decl:
    name: str
    type: t.TyStatic
    pos: Pos


@dataclass(order=True, frozen=True)
class Import:
    _: str
    pos: Pos
