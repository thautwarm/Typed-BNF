import * as antlr from 'antlr4ts';
import { op_t, maybe_t, mkBinOpSeq, mkOperand, mkOperator, none, some, listMap, appendList } from './lua-require';
export * from './lua-require'
export class DotName_t
{
    value0: funcname_t
    value1: antlr.Token
    public constructor(value0: funcname_t,value1: antlr.Token)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function DotName(value0: funcname_t,value1: antlr.Token)
{
    return new DotName_t(value0,value1)
}
export class MethodName_t
{
    value0: funcname_t
    value1: antlr.Token
    public constructor(value0: funcname_t,value1: antlr.Token)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function MethodName(value0: funcname_t,value1: antlr.Token)
{
    return new MethodName_t(value0,value1)
}
export class VarName_t
{
    value: antlr.Token
    public constructor(value: antlr.Token)
    {
        this.value = value
    }
}
export function VarName(value: antlr.Token)
{
    return new VarName_t(value)
}
export type funcname_t = DotName_t | MethodName_t | VarName_t
export class PositionalArgs_t
{
    value0: antlr.Token
    value1: Array<expr_t>
    public constructor(value0: antlr.Token,value1: Array<expr_t>)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function PositionalArgs(value0: antlr.Token,value1: Array<expr_t>)
{
    return new PositionalArgs_t(value0,value1)
}
export class StringArg_t
{
    value: antlr.Token
    public constructor(value: antlr.Token)
    {
        this.value = value
    }
}
export function StringArg(value: antlr.Token)
{
    return new StringArg_t(value)
}
export class TableArgs_t
{
    value: table_t
    public constructor(value: table_t)
    {
        this.value = value
    }
}
export function TableArgs(value: table_t)
{
    return new TableArgs_t(value)
}
export type arguments_t = PositionalArgs_t | StringArg_t | TableArgs_t
export class TableConstructor_t
{
    value0: antlr.Token
    value1: Array<table_field_t>
    public constructor(value0: antlr.Token,value1: Array<table_field_t>)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function TableConstructor(value0: antlr.Token,value1: Array<table_field_t>)
{
    return new TableConstructor_t(value0,value1)
}
export type table_t = TableConstructor_t
export class ElementField_t
{
    value0: expr_t
    public constructor(value0: expr_t)
    {
        this.value0 = value0
    }
}
export function ElementField(value0: expr_t)
{
    return new ElementField_t(value0)
}
export class IndexField_t
{
    pos: antlr.Token
    value: expr_t
    item: expr_t
    public constructor(pos: antlr.Token,value: expr_t,item: expr_t)
    {
        this.pos = pos
        this.value = value
        this.item = item
    }
}
export function IndexField(pos: antlr.Token,value: expr_t,item: expr_t)
{
    return new IndexField_t(pos,value,item)
}
export class NameField_t
{
    key: antlr.Token
    value: expr_t
    public constructor(key: antlr.Token,value: expr_t)
    {
        this.key = key
        this.value = value
    }
}
export function NameField(key: antlr.Token,value: expr_t)
{
    return new NameField_t(key,value)
}
export type table_field_t = ElementField_t | IndexField_t | NameField_t
export class Assignment_t
{
    value0: boolean
    value1: Array<expr_t>
    value2: maybe_t<Array<expr_t>>
    public constructor(value0: boolean,value1: Array<expr_t>,value2: maybe_t<Array<expr_t>>)
    {
        this.value0 = value0
        this.value1 = value1
        this.value2 = value2
    }
}
export function Assignment(value0: boolean,value1: Array<expr_t>,value2: maybe_t<Array<expr_t>>)
{
    return new Assignment_t(value0,value1,value2)
}
export class BreakStmt_t
{
    value: antlr.Token
    public constructor(value: antlr.Token)
    {
        this.value = value
    }
}
export function BreakStmt(value: antlr.Token)
{
    return new BreakStmt_t(value)
}
export class DoStmt_t
{
    value0: antlr.Token
    value1: block_t
    public constructor(value0: antlr.Token,value1: block_t)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function DoStmt(value0: antlr.Token,value1: block_t)
{
    return new DoStmt_t(value0,value1)
}
export class EmptyStmt_t
{
    value0: antlr.Token
    public constructor(value0: antlr.Token)
    {
        this.value0 = value0
    }
}
export function EmptyStmt(value0: antlr.Token)
{
    return new EmptyStmt_t(value0)
}
export class ExprStmt_t
{
    value: expr_t
    public constructor(value: expr_t)
    {
        this.value = value
    }
}
export function ExprStmt(value: expr_t)
{
    return new ExprStmt_t(value)
}
export class ForInStmt_t
{
    value0: antlr.Token
    value1: Array<antlr.Token>
    value2: Array<expr_t>
    value3: block_t
    public constructor(value0: antlr.Token,value1: Array<antlr.Token>,value2: Array<expr_t>,value3: block_t)
    {
        this.value0 = value0
        this.value1 = value1
        this.value2 = value2
        this.value3 = value3
    }
}
export function ForInStmt(value0: antlr.Token,value1: Array<antlr.Token>,value2: Array<expr_t>,value3: block_t)
{
    return new ForInStmt_t(value0,value1,value2,value3)
}
export class ForRangeStmt_t
{
    value0: antlr.Token
    value1: antlr.Token
    value2: range_t
    value3: block_t
    public constructor(value0: antlr.Token,value1: antlr.Token,value2: range_t,value3: block_t)
    {
        this.value0 = value0
        this.value1 = value1
        this.value2 = value2
        this.value3 = value3
    }
}
export function ForRangeStmt(value0: antlr.Token,value1: antlr.Token,value2: range_t,value3: block_t)
{
    return new ForRangeStmt_t(value0,value1,value2,value3)
}
export class GotoStmt_t
{
    value0: antlr.Token
    value1: antlr.Token
    public constructor(value0: antlr.Token,value1: antlr.Token)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function GotoStmt(value0: antlr.Token,value1: antlr.Token)
{
    return new GotoStmt_t(value0,value1)
}
export class IfStmt_t
{
    value0: antlr.Token
    value1: expr_t
    value2: block_t
    value3: Array<if_elseif_t>
    value4: maybe_t<if_else_t>
    public constructor(value0: antlr.Token,value1: expr_t,value2: block_t,value3: Array<if_elseif_t>,value4: maybe_t<if_else_t>)
    {
        this.value0 = value0
        this.value1 = value1
        this.value2 = value2
        this.value3 = value3
        this.value4 = value4
    }
}
export function IfStmt(value0: antlr.Token,value1: expr_t,value2: block_t,value3: Array<if_elseif_t>,value4: maybe_t<if_else_t>)
{
    return new IfStmt_t(value0,value1,value2,value3,value4)
}
export class LabelStmt_t
{
    value: antlr.Token
    public constructor(value: antlr.Token)
    {
        this.value = value
    }
}
export function LabelStmt(value: antlr.Token)
{
    return new LabelStmt_t(value)
}
export class RepeatStmt_t
{
    value0: antlr.Token
    value1: block_t
    value2: expr_t
    public constructor(value0: antlr.Token,value1: block_t,value2: expr_t)
    {
        this.value0 = value0
        this.value1 = value1
        this.value2 = value2
    }
}
export function RepeatStmt(value0: antlr.Token,value1: block_t,value2: expr_t)
{
    return new RepeatStmt_t(value0,value1,value2)
}
export class ReturnStmt_t
{
    value0: antlr.Token
    value1: Array<expr_t>
    public constructor(value0: antlr.Token,value1: Array<expr_t>)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function ReturnStmt(value0: antlr.Token,value1: Array<expr_t>)
{
    return new ReturnStmt_t(value0,value1)
}
export class WhileStmt_t
{
    value0: antlr.Token
    value1: expr_t
    value2: block_t
    public constructor(value0: antlr.Token,value1: expr_t,value2: block_t)
    {
        this.value0 = value0
        this.value1 = value1
        this.value2 = value2
    }
}
export function WhileStmt(value0: antlr.Token,value1: expr_t,value2: block_t)
{
    return new WhileStmt_t(value0,value1,value2)
}
export type stmt_t = Assignment_t | BreakStmt_t | DoStmt_t | EmptyStmt_t | ExprStmt_t | ForInStmt_t | ForRangeStmt_t | GotoStmt_t | IfStmt_t | LabelStmt_t | RepeatStmt_t | ReturnStmt_t | WhileStmt_t
export class Attr_t
{
    value0: expr_t
    value1: antlr.Token
    public constructor(value0: expr_t,value1: antlr.Token)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function Attr(value0: expr_t,value1: antlr.Token)
{
    return new Attr_t(value0,value1)
}
export class Bin_t
{
    op: antlr.Token
    l: expr_t
    r: expr_t
    public constructor(op: antlr.Token,l: expr_t,r: expr_t)
    {
        this.op = op
        this.l = l
        this.r = r
    }
}
export function Bin(op: antlr.Token,l: expr_t,r: expr_t)
{
    return new Bin_t(op,l,r)
}
export class Bool_t
{
    value0: antlr.Token
    value1: boolean
    public constructor(value0: antlr.Token,value1: boolean)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function Bool(value0: antlr.Token,value1: boolean)
{
    return new Bool_t(value0,value1)
}
export class CallFunc_t
{
    value0: expr_t
    value1: arguments_t
    public constructor(value0: expr_t,value1: arguments_t)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function CallFunc(value0: expr_t,value1: arguments_t)
{
    return new CallFunc_t(value0,value1)
}
export class CallMethod_t
{
    value0: expr_t
    value1: antlr.Token
    value2: arguments_t
    public constructor(value0: expr_t,value1: antlr.Token,value2: arguments_t)
    {
        this.value0 = value0
        this.value1 = value1
        this.value2 = value2
    }
}
export function CallMethod(value0: expr_t,value1: antlr.Token,value2: arguments_t)
{
    return new CallMethod_t(value0,value1,value2)
}
export class Ellipse_t
{
    value0: antlr.Token
    public constructor(value0: antlr.Token)
    {
        this.value0 = value0
    }
}
export function Ellipse(value0: antlr.Token)
{
    return new Ellipse_t(value0)
}
export class Exponent_t
{
    value0: expr_t
    value1: expr_t
    public constructor(value0: expr_t,value1: expr_t)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function Exponent(value0: expr_t,value1: expr_t)
{
    return new Exponent_t(value0,value1)
}
export class FuncDef_t
{
    pos: antlr.Token
    is_local: boolean
    fname: maybe_t<funcname_t>
    params: maybe_t<params_t>
    body: block_t
    public constructor(pos: antlr.Token,is_local: boolean,fname: maybe_t<funcname_t>,params: maybe_t<params_t>,body: block_t)
    {
        this.pos = pos
        this.is_local = is_local
        this.fname = fname
        this.params = params
        this.body = body
    }
}
export function FuncDef(pos: antlr.Token,is_local: boolean,fname: maybe_t<funcname_t>,params: maybe_t<params_t>,body: block_t)
{
    return new FuncDef_t(pos,is_local,fname,params,body)
}
export class Index_t
{
    value0: expr_t
    value1: expr_t
    public constructor(value0: expr_t,value1: expr_t)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function Index(value0: expr_t,value1: expr_t)
{
    return new Index_t(value0,value1)
}
export class Inv_t
{
    value0: antlr.Token
    value1: expr_t
    public constructor(value0: antlr.Token,value1: expr_t)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function Inv(value0: antlr.Token,value1: expr_t)
{
    return new Inv_t(value0,value1)
}
export class Len_t
{
    value0: antlr.Token
    value1: expr_t
    public constructor(value0: antlr.Token,value1: expr_t)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function Len(value0: antlr.Token,value1: expr_t)
{
    return new Len_t(value0,value1)
}
export class Neg_t
{
    value0: antlr.Token
    value1: expr_t
    public constructor(value0: antlr.Token,value1: expr_t)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function Neg(value0: antlr.Token,value1: expr_t)
{
    return new Neg_t(value0,value1)
}
export class NestedExp_t
{
    value0: antlr.Token
    value1: expr_t
    public constructor(value0: antlr.Token,value1: expr_t)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function NestedExp(value0: antlr.Token,value1: expr_t)
{
    return new NestedExp_t(value0,value1)
}
export class Nil_t
{
    value: antlr.Token
    public constructor(value: antlr.Token)
    {
        this.value = value
    }
}
export function Nil(value: antlr.Token)
{
    return new Nil_t(value)
}
export class Not_t
{
    value0: antlr.Token
    value1: expr_t
    public constructor(value0: antlr.Token,value1: expr_t)
    {
        this.value0 = value0
        this.value1 = value1
    }
}
export function Not(value0: antlr.Token,value1: expr_t)
{
    return new Not_t(value0,value1)
}
export class Num_t
{
    value0: antlr.Token
    public constructor(value0: antlr.Token)
    {
        this.value0 = value0
    }
}
export function Num(value0: antlr.Token)
{
    return new Num_t(value0)
}
export class String_t
{
    value0: antlr.Token
    public constructor(value0: antlr.Token)
    {
        this.value0 = value0
    }
}
export function String(value0: antlr.Token)
{
    return new String_t(value0)
}
export class TableExpr_t
{
    value0: table_t
    public constructor(value0: table_t)
    {
        this.value0 = value0
    }
}
export function TableExpr(value0: table_t)
{
    return new TableExpr_t(value0)
}
export class UnsolvedBin_t
{
    value: Array<op_t<expr_t>>
    public constructor(value: Array<op_t<expr_t>>)
    {
        this.value = value
    }
}
export function UnsolvedBin(value: Array<op_t<expr_t>>)
{
    return new UnsolvedBin_t(value)
}
export class Var_t
{
    value: antlr.Token
    public constructor(value: antlr.Token)
    {
        this.value = value
    }
}
export function Var(value: antlr.Token)
{
    return new Var_t(value)
}
export type expr_t = Attr_t | Bin_t | Bool_t | CallFunc_t | CallMethod_t | Ellipse_t | Exponent_t | FuncDef_t | Index_t | Inv_t | Len_t | Neg_t | NestedExp_t | Nil_t | Not_t | Num_t | String_t | TableExpr_t | UnsolvedBin_t | Var_t
export class block_t
{
    suite: Array<stmt_t>
    ret: maybe_t<stmt_t>
    public constructor(suite: Array<stmt_t>,ret: maybe_t<stmt_t>)
    {
        this.suite = suite
        this.ret = ret
    }
}
export function block(suite: Array<stmt_t>,ret: maybe_t<stmt_t>)
{
    return new block_t(suite,ret)
}
export class range_t
{
    low: expr_t
    high: expr_t
    step: maybe_t<expr_t>
    public constructor(low: expr_t,high: expr_t,step: maybe_t<expr_t>)
    {
        this.low = low
        this.high = high
        this.step = step
    }
}
export function range(low: expr_t,high: expr_t,step: maybe_t<expr_t>)
{
    return new range_t(low,high,step)
}
export class if_elseif_t
{
    pos: antlr.Token
    cond: expr_t
    elif_body: block_t
    public constructor(pos: antlr.Token,cond: expr_t,elif_body: block_t)
    {
        this.pos = pos
        this.cond = cond
        this.elif_body = elif_body
    }
}
export function if_elseif(pos: antlr.Token,cond: expr_t,elif_body: block_t)
{
    return new if_elseif_t(pos,cond,elif_body)
}
export class if_else_t
{
    pos: antlr.Token
    else_body: block_t
    public constructor(pos: antlr.Token,else_body: block_t)
    {
        this.pos = pos
        this.else_body = else_body
    }
}
export function if_else(pos: antlr.Token,else_body: block_t)
{
    return new if_else_t(pos,else_body)
}
export class params_t
{
    names: Array<antlr.Token>
    vararg: maybe_t<antlr.Token>
    public constructor(names: Array<antlr.Token>,vararg: maybe_t<antlr.Token>)
    {
        this.names = names
        this.vararg = vararg
    }
}
export function params(names: Array<antlr.Token>,vararg: maybe_t<antlr.Token>)
{
    return new params_t(names,vararg)
}
