from __future__ import annotations as __01asda1ha
from lark import Token as token
import dataclasses as dataclasses
import typing as typing
from .lua_require import (mkBinOpSeq,mkOperand,mkOperator,op,none,some,maybe,listMap,appendList)

@dataclasses.dataclass
class PositionalArgs:
    value1: token
    value2: list[expr]

@dataclasses.dataclass
class StringArg:
    value: token

@dataclasses.dataclass
class TableArgs:
    value: table

if typing.TYPE_CHECKING:
    arguments = typing.Union[TableArgs,StringArg,PositionalArgs]
else:
    arguments = (TableArgs,StringArg,PositionalArgs)

@dataclasses.dataclass
class TableConstructor:
    value1: token
    value2: list[table_field]

if typing.TYPE_CHECKING:
    table = TableConstructor
else:
    table = (TableConstructor)

@dataclasses.dataclass
class ElementField:
    value1: expr

@dataclasses.dataclass
class IndexField:
    pos: token
    value: expr
    item: expr

@dataclasses.dataclass
class NameField:
    key: token
    value: expr

if typing.TYPE_CHECKING:
    table_field = typing.Union[NameField,IndexField,ElementField]
else:
    table_field = (NameField,IndexField,ElementField)

@dataclasses.dataclass
class Assignment:
    value1: bool
    value2: list[expr]
    value3: maybe[list[expr]]

@dataclasses.dataclass
class BreakStmt:
    value: token

@dataclasses.dataclass
class DoStmt:
    value1: token
    value2: block

@dataclasses.dataclass
class EmptyStmt:
    value1: token

@dataclasses.dataclass
class ExprStmt:
    value: expr

@dataclasses.dataclass
class ForInStmt:
    value1: token
    value2: list[token]
    value3: list[expr]
    value4: block

@dataclasses.dataclass
class ForRangeStmt:
    value1: token
    value2: token
    value3: range
    value4: block

@dataclasses.dataclass
class GotoStmt:
    value1: token
    value2: token

@dataclasses.dataclass
class IfStmt:
    value1: token
    value2: expr
    value3: list[if_elseif]
    value4: maybe[if_else]

@dataclasses.dataclass
class LabelStmt:
    value: token

@dataclasses.dataclass
class RepeatStmt:
    value1: token
    value2: block
    value3: expr

@dataclasses.dataclass
class ReturnStmt:
    value1: token
    value2: list[expr]

@dataclasses.dataclass
class WhileStmt:
    value1: token
    value2: expr
    value3: block

if typing.TYPE_CHECKING:
    stmt = typing.Union[WhileStmt,ReturnStmt,RepeatStmt,LabelStmt,IfStmt,GotoStmt,ForRangeStmt,ForInStmt,ExprStmt,EmptyStmt,DoStmt,BreakStmt,Assignment]
else:
    stmt = (WhileStmt,ReturnStmt,RepeatStmt,LabelStmt,IfStmt,GotoStmt,ForRangeStmt,ForInStmt,ExprStmt,EmptyStmt,DoStmt,BreakStmt,Assignment)

@dataclasses.dataclass
class Attr:
    value1: expr
    value2: token

@dataclasses.dataclass
class Bin:
    op: token
    l: expr
    r: expr

@dataclasses.dataclass
class Bool:
    value1: token
    value2: bool

@dataclasses.dataclass
class CallFunc:
    value1: expr
    value2: arguments

@dataclasses.dataclass
class CallMethod:
    value1: expr
    value2: token
    value3: arguments

@dataclasses.dataclass
class Ellipse:
    value1: token

@dataclasses.dataclass
class Exponent:
    value1: expr
    value2: expr

@dataclasses.dataclass
class FuncDef:
    pos: token
    is_local: bool
    fname: maybe[token]
    params: maybe[params]
    body: block

@dataclasses.dataclass
class Index:
    value1: expr
    value2: expr

@dataclasses.dataclass
class Inv:
    value1: token
    value2: expr

@dataclasses.dataclass
class Len:
    value1: token
    value2: expr

@dataclasses.dataclass
class Neg:
    value1: token
    value2: expr

@dataclasses.dataclass
class NestedExp:
    value1: token
    value2: expr

@dataclasses.dataclass
class Nil:
    value: token

@dataclasses.dataclass
class Not:
    value1: token
    value2: expr

@dataclasses.dataclass
class Num:
    value: token

@dataclasses.dataclass
class String:
    value1: token

@dataclasses.dataclass
class TableExpr:
    value1: table

@dataclasses.dataclass
class UnsolvedBin:
    value: list[op[expr]]

@dataclasses.dataclass
class Var:
    value: token

if typing.TYPE_CHECKING:
    expr = typing.Union[Var,UnsolvedBin,TableExpr,String,Num,Not,Nil,NestedExp,Neg,Len,Inv,Index,FuncDef,Exponent,Ellipse,CallMethod,CallFunc,Bool,Bin,Attr]
else:
    expr = (Var,UnsolvedBin,TableExpr,String,Num,Not,Nil,NestedExp,Neg,Len,Inv,Index,FuncDef,Exponent,Ellipse,CallMethod,CallFunc,Bool,Bin,Attr)

@dataclasses.dataclass
class block:
    suite: list[stmt]
    ret: maybe[stmt]

block = block

@dataclasses.dataclass
class range:
    low: expr
    high: expr
    step: maybe[expr]

range = range

@dataclasses.dataclass
class if_elseif:
    pos: token
    cond: expr
    elif_body: block

if_elseif = if_elseif

@dataclasses.dataclass
class if_else:
    pos: token
    else_body: block

if_else = if_else

@dataclasses.dataclass
class params:
    names: list[token]
    vararg: maybe[token]

params = params

