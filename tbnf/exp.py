from __future__ import annotations
import typing
from dataclasses import dataclass, fields

if typing.TYPE_CHECKING:
    from tbnf.basic import *
    from tbnf.decl import *
    import tbnf.ty as ty

@dataclass
class Let:
    ident: ident
    value: Expr
    body: Expr
    pos: position
    ty: ty.ty | None = None

@dataclass
class Fun:
    params: ann
    body: Expr
    pos: position
    ty: ty.ty | None = None


@dataclass
class Call:
    func: Expr
    arguments: list[Expr]
    ty: ty.ty | None = None

    @property
    def pos(self):
        return self.func.pos


@dataclass
class Slot:
    ith: int
    pos: position
    ty: ty.ty | None = None


@dataclass
class Int:
    value: int
    pos: position
    ty: ty.ty | None = None


@dataclass
class Float:
    value: float
    pos: position
    ty: ty.ty | None = None

@dataclass
class String:
    value: str
    pos: position
    ty: ty.ty | None = None


@dataclass
class Tuple:
    elements: list[Expr]
    pos: position
    ty: ty.ty | None = None

@dataclass
class Field:
    value: Expr
    field: str
    ty: ty.ty | None = None

    @property
    def pos(self):
        return self.value.pos

@dataclass
class Variable:
    ident: ident
    ty: ty.ty | None = None
    
    @property
    def pos(self):
        return self.ident.pos

Expr = Let | Variable | Field | Tuple | Int | Slot | Call | Fun
