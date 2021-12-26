from __future__ import annotations
import typing
from dataclasses import dataclass

if typing.TYPE_CHECKING:
    from tbnf.basic import *
    from tbnf.exp import Expr

@dataclass
class terminal:
    pos: position
    define: str
    named: bool

@dataclass
class nonterminal:
    pos: position
    define: str

@dataclass
class macrocall:
    pos: position
    name: str
    arguments: list[psym]

@dataclass
class production:
    parsing_syms: list[psym]
    action: Expr

psym = terminal | nonterminal | macrocall
