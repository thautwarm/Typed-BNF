from __future__ import annotations
import typing
from dataclasses import dataclass

from tbnf.psym import production

if typing.TYPE_CHECKING:
    from tbnf.basic import *
    from tbnf import ty


@dataclass
class top_ann:
    ident: ident
    ty: ty.poly_ty
    

@dataclass
class ann:
    ident: ident
    typ: ty.ty

@dataclass
class constructor:
    ident: ident
    type_params: list[str]
    arguments: list[ann] | None


@dataclass
class extern_val:
    pos: position
    define: ann

@dataclass
class extern_type:
    pos: position
    define: constructor

@dataclass
class datatype:
    pos: position
    ident: ident
    type_params: list[str]
    define: list[tuple[position, constructor]]

@dataclass
class ignore:
    pos: position
    ignores: list[str]

@dataclass
class ruledef:
    pos: position
    name: str
    prods: list[tuple[position, production]]

@dataclass
class macrodef:
    pos: position
    name: str
    params: list[str]
    prods: list[tuple[position, production]]


toplevel = macrodef | ruledef | ignore | extern_val | extern_type | datatype