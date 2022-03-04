from __future__ import annotations as __01asda1ha
from lark import Token as token
import dataclasses as dataclasses
import typing as typing
from .lua_require import (mkBinOpSeq,mkOperand,mkOperator,op,none,some,maybe,listMap,appendList)

@dataclasses.dataclass
class DotName:
    value0: funcname
    value1: token

@dataclasses.dataclass
class MethodName:
    value0: funcname
    value1: token

@dataclasses.dataclass
class VarName:
    value: token

if typing.TYPE_CHECKING:
    funcname = typing.Union[VarName,MethodName,DotName]
else:
    funcname = (VarName,MethodName,DotName)

@dataclasses.dataclass
class PositionalArgs:
    value0: token
    value1: list[expr]

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
    value0: token
    value1: list[table_field]

if typing.TYPE_CHECKING:
    table = TableConstructor
else:
    table = (TableConstructor)

@dataclasses.dataclass
class ElementField:
    value0: expr

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
    value0: bool
    value1: list[expr]
    value2: maybe[list[expr]]

@dataclasses.dataclass
class BreakStmt:
    value: token

@dataclasses.dataclass
class DoStmt:
    value0: token
    value1: block

@dataclasses.dataclass
class EmptyStmt:
    value0: token

@dataclasses.dataclass
class ExprStmt:
    value: expr

@dataclasses.dataclass
class ForInStmt:
    value0: token
    value1: list[token]
    value2: list[expr]
    value3: block

@dataclasses.dataclass
class ForRangeStmt:
    value0: token
    value1: token
    value2: range
    value3: block

@dataclasses.dataclass
class GotoStmt:
    value0: token
    value1: token

@dataclasses.dataclass
class IfStmt:
    value0: token
    value1: expr
    value2: block
    value3: list[if_elseif]
    value4: maybe[if_else]

@dataclasses.dataclass
class LabelStmt:
    value: token

@dataclasses.dataclass
class RepeatStmt:
    value0: token
    value1: block
    value2: expr

@dataclasses.dataclass
class ReturnStmt:
    value0: token
    value1: list[expr]

@dataclasses.dataclass
class WhileStmt:
    value0: token
    value1: expr
    value2: block

if typing.TYPE_CHECKING:
    stmt = typing.Union[WhileStmt,ReturnStmt,RepeatStmt,LabelStmt,IfStmt,GotoStmt,ForRangeStmt,ForInStmt,ExprStmt,EmptyStmt,DoStmt,BreakStmt,Assignment]
else:
    stmt = (WhileStmt,ReturnStmt,RepeatStmt,LabelStmt,IfStmt,GotoStmt,ForRangeStmt,ForInStmt,ExprStmt,EmptyStmt,DoStmt,BreakStmt,Assignment)

@dataclasses.dataclass
class Attr:
    value0: expr
    value1: token

@dataclasses.dataclass
class Bin:
    op: token
    l: expr
    r: expr

@dataclasses.dataclass
class Bool:
    value0: token
    value1: bool

@dataclasses.dataclass
class CallFunc:
    value0: expr
    value1: arguments

@dataclasses.dataclass
class CallMethod:
    value0: expr
    value1: token
    value2: arguments

@dataclasses.dataclass
class Ellipse:
    value0: token

@dataclasses.dataclass
class Exponent:
    value0: expr
    value1: expr

@dataclasses.dataclass
class FuncDef:
    pos: token
    is_local: bool
    fname: maybe[funcname]
    params: maybe[params]
    body: block

@dataclasses.dataclass
class Index:
    value0: expr
    value1: expr

@dataclasses.dataclass
class Inv:
    value0: token
    value1: expr

@dataclasses.dataclass
class Len:
    value0: token
    value1: expr

@dataclasses.dataclass
class Neg:
    value0: token
    value1: expr

@dataclasses.dataclass
class NestedExp:
    value0: token
    value1: expr

@dataclasses.dataclass
class Nil:
    value: token

@dataclasses.dataclass
class Not:
    value0: token
    value1: expr

@dataclasses.dataclass
class Num:
    value0: token

@dataclasses.dataclass
class String:
    value0: token

@dataclasses.dataclass
class TableExpr:
    value0: table

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

