import * as antlr from 'antlr4ng';
import { op_t, maybe_t, mkBinOpSeq, mkOperand, mkOperator, none, some, listMap, appendList } from './LuaRequire';
export * from './LuaRequire'
export interface DotName_t
{
    $type: 'DotName_t';
    value0: funcname_t
    value1: antlr.Token
}
export function DotName(value0: funcname_t,value1: antlr.Token)
{
    return { $type: 'DotName_t',value0,value1}
}
export interface MethodName_t
{
    $type: 'MethodName_t';
    value0: funcname_t
    value1: antlr.Token
}
export function MethodName(value0: funcname_t,value1: antlr.Token)
{
    return { $type: 'MethodName_t',value0,value1}
}
export interface VarName_t
{
    $type: 'VarName_t';
    value: antlr.Token
}
export function VarName(value: antlr.Token)
{
    return { $type: 'VarName_t',value}
}
export type funcname_t =
    | DotName_t
    | MethodName_t
    | VarName_t
export interface PositionalArgs_t
{
    $type: 'PositionalArgs_t';
    value0: antlr.Token
    value1: Array<expr_t>
}
export function PositionalArgs(value0: antlr.Token,value1: Array<expr_t>)
{
    return { $type: 'PositionalArgs_t',value0,value1}
}
export interface StringArg_t
{
    $type: 'StringArg_t';
    value: antlr.Token
}
export function StringArg(value: antlr.Token)
{
    return { $type: 'StringArg_t',value}
}
export interface TableArgs_t
{
    $type: 'TableArgs_t';
    value: table_t
}
export function TableArgs(value: table_t)
{
    return { $type: 'TableArgs_t',value}
}
export type arguments_t =
    | PositionalArgs_t
    | StringArg_t
    | TableArgs_t
export interface TableConstructor_t
{
    $type: 'TableConstructor_t';
    value0: antlr.Token
    value1: Array<table_field_t>
}
export function TableConstructor(value0: antlr.Token,value1: Array<table_field_t>)
{
    return { $type: 'TableConstructor_t',value0,value1}
}
export type table_t =
    | TableConstructor_t
export interface ElementField_t
{
    $type: 'ElementField_t';
    value0: expr_t
}
export function ElementField(value0: expr_t)
{
    return { $type: 'ElementField_t',value0}
}
export interface IndexField_t
{
    $type: 'IndexField_t';
    pos: antlr.Token
    value: expr_t
    item: expr_t
}
export function IndexField(pos: antlr.Token,value: expr_t,item: expr_t)
{
    return { $type: 'IndexField_t',pos,value,item}
}
export interface NameField_t
{
    $type: 'NameField_t';
    key: antlr.Token
    value: expr_t
}
export function NameField(key: antlr.Token,value: expr_t)
{
    return { $type: 'NameField_t',key,value}
}
export type table_field_t =
    | ElementField_t
    | IndexField_t
    | NameField_t
export interface Assignment_t
{
    $type: 'Assignment_t';
    value0: boolean
    value1: Array<expr_t>
    value2: maybe_t<Array<expr_t>>
}
export function Assignment(value0: boolean,value1: Array<expr_t>,value2: maybe_t<Array<expr_t>>)
{
    return { $type: 'Assignment_t',value0,value1,value2}
}
export interface BreakStmt_t
{
    $type: 'BreakStmt_t';
    value: antlr.Token
}
export function BreakStmt(value: antlr.Token)
{
    return { $type: 'BreakStmt_t',value}
}
export interface DoStmt_t
{
    $type: 'DoStmt_t';
    value0: antlr.Token
    value1: block_t
}
export function DoStmt(value0: antlr.Token,value1: block_t)
{
    return { $type: 'DoStmt_t',value0,value1}
}
export interface EmptyStmt_t
{
    $type: 'EmptyStmt_t';
    value0: antlr.Token
}
export function EmptyStmt(value0: antlr.Token)
{
    return { $type: 'EmptyStmt_t',value0}
}
export interface ExprStmt_t
{
    $type: 'ExprStmt_t';
    value: expr_t
}
export function ExprStmt(value: expr_t)
{
    return { $type: 'ExprStmt_t',value}
}
export interface ForInStmt_t
{
    $type: 'ForInStmt_t';
    value0: antlr.Token
    value1: Array<antlr.Token>
    value2: Array<expr_t>
    value3: block_t
}
export function ForInStmt(value0: antlr.Token,value1: Array<antlr.Token>,value2: Array<expr_t>,value3: block_t)
{
    return { $type: 'ForInStmt_t',value0,value1,value2,value3}
}
export interface ForRangeStmt_t
{
    $type: 'ForRangeStmt_t';
    value0: antlr.Token
    value1: antlr.Token
    value2: range_t
    value3: block_t
}
export function ForRangeStmt(value0: antlr.Token,value1: antlr.Token,value2: range_t,value3: block_t)
{
    return { $type: 'ForRangeStmt_t',value0,value1,value2,value3}
}
export interface GotoStmt_t
{
    $type: 'GotoStmt_t';
    value0: antlr.Token
    value1: antlr.Token
}
export function GotoStmt(value0: antlr.Token,value1: antlr.Token)
{
    return { $type: 'GotoStmt_t',value0,value1}
}
export interface IfStmt_t
{
    $type: 'IfStmt_t';
    value0: antlr.Token
    value1: expr_t
    value2: block_t
    value3: Array<if_elseif_t>
    value4: maybe_t<if_else_t>
}
export function IfStmt(value0: antlr.Token,value1: expr_t,value2: block_t,value3: Array<if_elseif_t>,value4: maybe_t<if_else_t>)
{
    return { $type: 'IfStmt_t',value0,value1,value2,value3,value4}
}
export interface LabelStmt_t
{
    $type: 'LabelStmt_t';
    value: antlr.Token
}
export function LabelStmt(value: antlr.Token)
{
    return { $type: 'LabelStmt_t',value}
}
export interface RepeatStmt_t
{
    $type: 'RepeatStmt_t';
    value0: antlr.Token
    value1: block_t
    value2: expr_t
}
export function RepeatStmt(value0: antlr.Token,value1: block_t,value2: expr_t)
{
    return { $type: 'RepeatStmt_t',value0,value1,value2}
}
export interface ReturnStmt_t
{
    $type: 'ReturnStmt_t';
    value0: antlr.Token
    value1: Array<expr_t>
}
export function ReturnStmt(value0: antlr.Token,value1: Array<expr_t>)
{
    return { $type: 'ReturnStmt_t',value0,value1}
}
export interface WhileStmt_t
{
    $type: 'WhileStmt_t';
    value0: antlr.Token
    value1: expr_t
    value2: block_t
}
export function WhileStmt(value0: antlr.Token,value1: expr_t,value2: block_t)
{
    return { $type: 'WhileStmt_t',value0,value1,value2}
}
export type stmt_t =
    | Assignment_t
    | BreakStmt_t
    | DoStmt_t
    | EmptyStmt_t
    | ExprStmt_t
    | ForInStmt_t
    | ForRangeStmt_t
    | GotoStmt_t
    | IfStmt_t
    | LabelStmt_t
    | RepeatStmt_t
    | ReturnStmt_t
    | WhileStmt_t
export interface Attr_t
{
    $type: 'Attr_t';
    value0: expr_t
    value1: antlr.Token
}
export function Attr(value0: expr_t,value1: antlr.Token)
{
    return { $type: 'Attr_t',value0,value1}
}
export interface Bin_t
{
    $type: 'Bin_t';
    op: antlr.Token
    l: expr_t
    r: expr_t
}
export function Bin(op: antlr.Token,l: expr_t,r: expr_t)
{
    return { $type: 'Bin_t',op,l,r}
}
export interface Bool_t
{
    $type: 'Bool_t';
    value0: antlr.Token
    value1: boolean
}
export function Bool(value0: antlr.Token,value1: boolean)
{
    return { $type: 'Bool_t',value0,value1}
}
export interface CallFunc_t
{
    $type: 'CallFunc_t';
    value0: expr_t
    value1: arguments_t
}
export function CallFunc(value0: expr_t,value1: arguments_t)
{
    return { $type: 'CallFunc_t',value0,value1}
}
export interface CallMethod_t
{
    $type: 'CallMethod_t';
    value0: expr_t
    value1: antlr.Token
    value2: arguments_t
}
export function CallMethod(value0: expr_t,value1: antlr.Token,value2: arguments_t)
{
    return { $type: 'CallMethod_t',value0,value1,value2}
}
export interface Ellipse_t
{
    $type: 'Ellipse_t';
    value0: antlr.Token
}
export function Ellipse(value0: antlr.Token)
{
    return { $type: 'Ellipse_t',value0}
}
export interface Exponent_t
{
    $type: 'Exponent_t';
    value0: expr_t
    value1: expr_t
}
export function Exponent(value0: expr_t,value1: expr_t)
{
    return { $type: 'Exponent_t',value0,value1}
}
export interface FuncDef_t
{
    $type: 'FuncDef_t';
    pos: antlr.Token
    is_local: boolean
    fname: maybe_t<funcname_t>
    params: maybe_t<params_t>
    body: block_t
}
export function FuncDef(pos: antlr.Token,is_local: boolean,fname: maybe_t<funcname_t>,params: maybe_t<params_t>,body: block_t)
{
    return { $type: 'FuncDef_t',pos,is_local,fname,params,body}
}
export interface Index_t
{
    $type: 'Index_t';
    value0: expr_t
    value1: expr_t
}
export function Index(value0: expr_t,value1: expr_t)
{
    return { $type: 'Index_t',value0,value1}
}
export interface Inv_t
{
    $type: 'Inv_t';
    value0: antlr.Token
    value1: expr_t
}
export function Inv(value0: antlr.Token,value1: expr_t)
{
    return { $type: 'Inv_t',value0,value1}
}
export interface Len_t
{
    $type: 'Len_t';
    value0: antlr.Token
    value1: expr_t
}
export function Len(value0: antlr.Token,value1: expr_t)
{
    return { $type: 'Len_t',value0,value1}
}
export interface Neg_t
{
    $type: 'Neg_t';
    value0: antlr.Token
    value1: expr_t
}
export function Neg(value0: antlr.Token,value1: expr_t)
{
    return { $type: 'Neg_t',value0,value1}
}
export interface NestedExp_t
{
    $type: 'NestedExp_t';
    value0: antlr.Token
    value1: expr_t
}
export function NestedExp(value0: antlr.Token,value1: expr_t)
{
    return { $type: 'NestedExp_t',value0,value1}
}
export interface Nil_t
{
    $type: 'Nil_t';
    value: antlr.Token
}
export function Nil(value: antlr.Token)
{
    return { $type: 'Nil_t',value}
}
export interface Not_t
{
    $type: 'Not_t';
    value0: antlr.Token
    value1: expr_t
}
export function Not(value0: antlr.Token,value1: expr_t)
{
    return { $type: 'Not_t',value0,value1}
}
export interface Num_t
{
    $type: 'Num_t';
    value0: antlr.Token
}
export function Num(value0: antlr.Token)
{
    return { $type: 'Num_t',value0}
}
export interface String_t
{
    $type: 'String_t';
    value0: antlr.Token
}
export function String(value0: antlr.Token)
{
    return { $type: 'String_t',value0}
}
export interface TableExpr_t
{
    $type: 'TableExpr_t';
    value0: table_t
}
export function TableExpr(value0: table_t)
{
    return { $type: 'TableExpr_t',value0}
}
export interface UnsolvedBin_t
{
    $type: 'UnsolvedBin_t';
    value: Array<op_t<expr_t>>
}
export function UnsolvedBin(value: Array<op_t<expr_t>>)
{
    return { $type: 'UnsolvedBin_t',value}
}
export interface Var_t
{
    $type: 'Var_t';
    value: antlr.Token
}
export function Var(value: antlr.Token)
{
    return { $type: 'Var_t',value}
}
export type expr_t =
    | Attr_t
    | Bin_t
    | Bool_t
    | CallFunc_t
    | CallMethod_t
    | Ellipse_t
    | Exponent_t
    | FuncDef_t
    | Index_t
    | Inv_t
    | Len_t
    | Neg_t
    | NestedExp_t
    | Nil_t
    | Not_t
    | Num_t
    | String_t
    | TableExpr_t
    | UnsolvedBin_t
    | Var_t
export interface block_t
{
    $type: 'block_t';
    suite: Array<stmt_t>
    ret: maybe_t<stmt_t>
}
export function block(suite: Array<stmt_t>,ret: maybe_t<stmt_t>)
{
    return { $type: 'block_t',suite,ret}
}
export interface range_t
{
    $type: 'range_t';
    low: expr_t
    high: expr_t
    step: maybe_t<expr_t>
}
export function range(low: expr_t,high: expr_t,step: maybe_t<expr_t>)
{
    return { $type: 'range_t',low,high,step}
}
export interface if_elseif_t
{
    $type: 'if_elseif_t';
    pos: antlr.Token
    cond: expr_t
    elif_body: block_t
}
export function if_elseif(pos: antlr.Token,cond: expr_t,elif_body: block_t)
{
    return { $type: 'if_elseif_t',pos,cond,elif_body}
}
export interface if_else_t
{
    $type: 'if_else_t';
    pos: antlr.Token
    else_body: block_t
}
export function if_else(pos: antlr.Token,else_body: block_t)
{
    return { $type: 'if_else_t',pos,else_body}
}
export interface params_t
{
    $type: 'params_t';
    names: Array<antlr.Token>
    vararg: maybe_t<antlr.Token>
}
export function params(names: Array<antlr.Token>,vararg: maybe_t<antlr.Token>)
{
    return { $type: 'params_t',names,vararg}
}
