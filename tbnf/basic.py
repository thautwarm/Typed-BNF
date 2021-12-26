from dataclasses import dataclass
from typing import NamedTuple
from enum import Enum
from lark import Token

class IdentKind(Enum):
    undecided = 0
    internal_type = 1
    internal_expr = 2
    external_type = 3
    external_expr = 4
    grammar = 5


class position(NamedTuple):
    line: int
    col: int
    filename: str

@dataclass
class ident:
    pos: position
    name: str
    kind: IdentKind = IdentKind.undecided


_FILENAME = ""
def set_filename(filename: str):
    global _FILENAME
    _FILENAME = filename

def get_filename():
    return _FILENAME

def mkpos(token: Token):
    return position(token.line, token.column, get_filename())
