from __future__ import annotations
from dataclasses import dataclass
from .precedences import Operator, binop_reduce
from lark import Token
import typing 

if typing.TYPE_CHECKING:
    from .lua_construct import expr
    op = typing.Union[Operator, expr]
else:
    op = object

def mkOperator(token: Token):
    opstr = str(token)
    return Operator(opstr, token)

def mkOperand(e: expr):
    return e

def mkBinOpSeq(xs: typing.List[op], make, _) -> expr:
    from .lua_construct import Bin
    return binop_reduce(lambda op: lambda l, r: make(op.val, l, r), xs)

def appendList(xs, a):
    xs.append(a)
    return xs    

def listMap(xs, f):
    return list(map(f, xs))

def some(a):
    return a

def none():
    return None


if typing.TYPE_CHECKING:
    maybe = typing.Optional
else:
    maybe = object
