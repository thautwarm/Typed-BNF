from __future__ import annotations
import typing
from dataclasses import dataclass

if typing.TYPE_CHECKING:
    from tbnf.basic import *

@dataclass
class ty_ident:
    ident: ident

@dataclass
class tvar:
    pos: position
    name: str

@dataclass
class tref:
    position: position
    i: int

@dataclass
class generic_ty:
    base: ty
    arguments: list[ty]

@dataclass
class arrow_ty:
    arguments: list[ty]
    ret: ty


@dataclass
class product_ty:
    elements: list[ty]

@dataclass
class poly_ty:
    params: list[str]
    ty: ty

ty = tvar | tref | product_ty | arrow_ty | generic_ty

