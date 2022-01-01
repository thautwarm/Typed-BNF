from lark import Token
from _tbnf.src.apis import MK_position
_FILENAME = ""

def set_filename(filename: str):
    global _FILENAME
    _FILENAME = filename

def get_filename():
    return _FILENAME

def mkpos(token: Token):
    return MK_position(token.line, token.column, get_filename())
