from __future__ import annotations
from dataclasses import dataclass
from .precedences import Operator, binop_reduce
from lark import Token
import typing 

if typing.TYPE_CHECKING:
    op = typing.Union[Operator, expr]

def mkOperator(token: Token):
    opstr = str(token)
    return Operator(opstr, token)

def mkOperand(e: expr):
    return e

def mkBinOpSeq(xs: typing.List[op]) -> expr:
    return binop_reduce(lambda op: lambda l, r: BinExpr(op.val, l, r), xs)

@dataclass
class BinExpr:
    op: Token
    l: expr
    r: expr

@dataclass
class range:
    i1: expr
    i2: expr
    i3: typing.Optional[expr]

mkRange = range

@dataclass
class IfStmt:
    pass

def mkElifBlock(token, e, block):
    return (token, e, block)

def mkElseBlock(token, block):
    return (token, block)

expr = BinExpr


def appendList(xs, a):
    xs.append(a)
    return xs    

def listMap(xs, f):
    return list(map(f, xs))

def some(a):
    return a

def none():
    return None

