import * as antlr from 'antlr4ng';
import { position_t, getPos, toFloat, toInt, process_tparam, snd, fst, list_index, mkpos, str, unescape, addList } from './TBNFRequire';
export * from './TBNFRequire'
export interface MKTApp_t
{
    $type: 'MKTApp';
    value0: monot_t
    value1: Array<monot_t>
}
export function MKTApp(value0: monot_t,value1: Array<monot_t>)
{
    return { $type: 'MKTApp',value0,value1}
}
export interface MKTConst_t
{
    $type: 'MKTConst';
    value: string
}
export function MKTConst(value: string)
{
    return { $type: 'MKTConst',value}
}
export interface MKTFun_t
{
    $type: 'MKTFun';
    value0: Array<[string, monot_t]>
    value1: monot_t
}
export function MKTFun(value0: Array<[string, monot_t]>,value1: monot_t)
{
    return { $type: 'MKTFun',value0,value1}
}
export interface MKTList_t
{
    $type: 'MKTList';
    value: monot_t
}
export function MKTList(value: monot_t)
{
    return { $type: 'MKTList',value}
}
export interface MKTTuple_t
{
    $type: 'MKTTuple';
    value: Array<monot_t>
}
export function MKTTuple(value: Array<monot_t>)
{
    return { $type: 'MKTTuple',value}
}
export interface MKTVar_t
{
    $type: 'MKTVar';
    value: string
}
export function MKTVar(value: string)
{
    return { $type: 'MKTVar',value}
}
export type monot_t =
    | MKTApp_t
    | MKTConst_t
    | MKTFun_t
    | MKTList_t
    | MKTTuple_t
    | MKTVar_t
export interface MKMono_t
{
    $type: 'MKMono';
    value: monot_t
}
export function MKMono(value: monot_t)
{
    return { $type: 'MKMono',value}
}
export interface MKPoly_t
{
    $type: 'MKPoly';
    value0: Array<string>
    value1: monot_t
}
export function MKPoly(value0: Array<string>,value1: monot_t)
{
    return { $type: 'MKPoly',value0,value1}
}
export type polyt_t =
    | MKMono_t
    | MKPoly_t
export interface MKDeclctor_t
{
    $type: 'MKDeclctor';
    value0: string
    value1: monot_t
    value2: position_t
}
export function MKDeclctor(value0: string,value1: monot_t,value2: position_t)
{
    return { $type: 'MKDeclctor',value0,value1,value2}
}
export interface MKDecltype_t
{
    $type: 'MKDecltype';
    value0: boolean
    value1: boolean
    value2: string
    value3: Array<string>
    value4: Array<[string, monot_t, position_t]>
    value5: position_t
}
export function MKDecltype(value0: boolean,value1: boolean,value2: string,value3: Array<string>,value4: Array<[string, monot_t, position_t]>,value5: position_t)
{
    return { $type: 'MKDecltype',value0,value1,value2,value3,value4,value5}
}
export interface MKDeclvar_t
{
    $type: 'MKDeclvar';
    value0: string
    value1: polyt_t
    value2: position_t
}
export function MKDeclvar(value0: string,value1: polyt_t,value2: position_t)
{
    return { $type: 'MKDeclvar',value0,value1,value2}
}
export interface MKDefignore_t
{
    $type: 'MKDefignore';
    value0: Array<string>
    value1: position_t
}
export function MKDefignore(value0: Array<string>,value1: position_t)
{
    return { $type: 'MKDefignore',value0,value1}
}
export interface MKDeflexer_t
{
    $type: 'MKDeflexer';
    value0: string
    value1: lexerule_t
    value2: position_t
}
export function MKDeflexer(value0: string,value1: lexerule_t,value2: position_t)
{
    return { $type: 'MKDeflexer',value0,value1,value2}
}
export interface MKDefmacro_t
{
    $type: 'MKDefmacro';
    value0: string
    value1: Array<string>
    value2: Array<[position_t, production_t]>
    value3: position_t
}
export function MKDefmacro(value0: string,value1: Array<string>,value2: Array<[position_t, production_t]>,value3: position_t)
{
    return { $type: 'MKDefmacro',value0,value1,value2,value3}
}
export interface MKDefrule_t
{
    $type: 'MKDefrule';
    value0: string
    value1: Array<[position_t, production_t]>
    value2: position_t
}
export function MKDefrule(value0: string,value1: Array<[position_t, production_t]>,value2: position_t)
{
    return { $type: 'MKDefrule',value0,value1,value2}
}
export type definition_t =
    | MKDeclctor_t
    | MKDecltype_t
    | MKDeclvar_t
    | MKDefignore_t
    | MKDeflexer_t
    | MKDefmacro_t
    | MKDefrule_t
export interface MKproduction_t
{
    $type: 'MKproduction';
    value0: Array<symbol_t>
    value1: expr_t
}
export function MKproduction(value0: Array<symbol_t>,value1: expr_t)
{
    return { $type: 'MKproduction',value0,value1}
}
export type production_t =
    | MKproduction_t
export interface MKMacrocall_t
{
    $type: 'MKMacrocall';
    value0: string
    value1: Array<symbol_t>
    value2: position_t
}
export function MKMacrocall(value0: string,value1: Array<symbol_t>,value2: position_t)
{
    return { $type: 'MKMacrocall',value0,value1,value2}
}
export interface MKNonterm_t
{
    $type: 'MKNonterm';
    value: string
}
export function MKNonterm(value: string)
{
    return { $type: 'MKNonterm',value}
}
export interface MKTerm_t
{
    $type: 'MKTerm';
    value0: string
    value1: boolean
}
export function MKTerm(value0: string,value1: boolean)
{
    return { $type: 'MKTerm',value0,value1}
}
export type symbol_t =
    | MKMacrocall_t
    | MKNonterm_t
    | MKTerm_t
export interface MKExpr_t
{
    $type: 'MKExpr';
    value0: node_t
    value1: position_t
}
export function MKExpr(value0: node_t,value1: position_t)
{
    return { $type: 'MKExpr',value0,value1}
}
export type expr_t =
    | MKExpr_t
export interface MKEApp_t
{
    $type: 'MKEApp';
    value0: expr_t
    value1: Array<expr_t>
}
export function MKEApp(value0: expr_t,value1: Array<expr_t>)
{
    return { $type: 'MKEApp',value0,value1}
}
export interface MKEBool_t
{
    $type: 'MKEBool';
    value: boolean
}
export function MKEBool(value: boolean)
{
    return { $type: 'MKEBool',value}
}
export interface MKEField_t
{
    $type: 'MKEField';
    value0: expr_t
    value1: string
}
export function MKEField(value0: expr_t,value1: string)
{
    return { $type: 'MKEField',value0,value1}
}
export interface MKEFlt_t
{
    $type: 'MKEFlt';
    value: number
}
export function MKEFlt(value: number)
{
    return { $type: 'MKEFlt',value}
}
export interface MKEFun_t
{
    $type: 'MKEFun';
    value0: Array<[string, monot_t]>
    value1: expr_t
}
export function MKEFun(value0: Array<[string, monot_t]>,value1: expr_t)
{
    return { $type: 'MKEFun',value0,value1}
}
export interface MKEInt_t
{
    $type: 'MKEInt';
    value: number
}
export function MKEInt(value: number)
{
    return { $type: 'MKEInt',value}
}
export interface MKELet_t
{
    $type: 'MKELet';
    value0: string
    value1: expr_t
    value2: expr_t
}
export function MKELet(value0: string,value1: expr_t,value2: expr_t)
{
    return { $type: 'MKELet',value0,value1,value2}
}
export interface MKEList_t
{
    $type: 'MKEList';
    value: Array<expr_t>
}
export function MKEList(value: Array<expr_t>)
{
    return { $type: 'MKEList',value}
}
export interface MKESlot_t
{
    $type: 'MKESlot';
    value: number
}
export function MKESlot(value: number)
{
    return { $type: 'MKESlot',value}
}
export interface MKEStr_t
{
    $type: 'MKEStr';
    value: string
}
export function MKEStr(value: string)
{
    return { $type: 'MKEStr',value}
}
export interface MKETuple_t
{
    $type: 'MKETuple';
    value: Array<expr_t>
}
export function MKETuple(value: Array<expr_t>)
{
    return { $type: 'MKETuple',value}
}
export interface MKEVar_t
{
    $type: 'MKEVar';
    value: string
}
export function MKEVar(value: string)
{
    return { $type: 'MKEVar',value}
}
export type node_t =
    | MKEApp_t
    | MKEBool_t
    | MKEField_t
    | MKEFlt_t
    | MKEFun_t
    | MKEInt_t
    | MKELet_t
    | MKEList_t
    | MKESlot_t
    | MKEStr_t
    | MKETuple_t
    | MKEVar_t
export interface MKLGroup_t
{
    $type: 'MKLGroup';
    value: lexerule_t
}
export function MKLGroup(value: lexerule_t)
{
    return { $type: 'MKLGroup',value}
}
export interface MKLNot_t
{
    $type: 'MKLNot';
    value: lexerule_t
}
export function MKLNot(value: lexerule_t)
{
    return { $type: 'MKLNot',value}
}
export interface MKLNumber_t
{
    $type: 'MKLNumber';
}
export function MKLNumber()
{
    return { $type: 'MKLNumber',}
}
export interface MKLOptional_t
{
    $type: 'MKLOptional';
    value: lexerule_t
}
export function MKLOptional(value: lexerule_t)
{
    return { $type: 'MKLOptional',value}
}
export interface MKLOr_t
{
    $type: 'MKLOr';
    value: Array<lexerule_t>
}
export function MKLOr(value: Array<lexerule_t>)
{
    return { $type: 'MKLOr',value}
}
export interface MKLPlus_t
{
    $type: 'MKLPlus';
    value: lexerule_t
}
export function MKLPlus(value: lexerule_t)
{
    return { $type: 'MKLPlus',value}
}
export interface MKLRef_t
{
    $type: 'MKLRef';
    value: string
}
export function MKLRef(value: string)
{
    return { $type: 'MKLRef',value}
}
export interface MKLSeq_t
{
    $type: 'MKLSeq';
    value: Array<lexerule_t>
}
export function MKLSeq(value: Array<lexerule_t>)
{
    return { $type: 'MKLSeq',value}
}
export interface MKLStar_t
{
    $type: 'MKLStar';
    value: lexerule_t
}
export function MKLStar(value: lexerule_t)
{
    return { $type: 'MKLStar',value}
}
export interface MKLStr_t
{
    $type: 'MKLStr';
    value: string
}
export function MKLStr(value: string)
{
    return { $type: 'MKLStr',value}
}
export interface MKLWildcard_t
{
    $type: 'MKLWildcard';
}
export function MKLWildcard()
{
    return { $type: 'MKLWildcard',}
}
export interface UnicodeRange_t
{
    $type: 'UnicodeRange';
    value: string
}
export function UnicodeRange(value: string)
{
    return { $type: 'UnicodeRange',value}
}
export interface getrange_t
{
    $type: 'getrange';
    value: string
}
export function getrange(value: string)
{
    return { $type: 'getrange',value}
}
export type lexerule_t =
    | MKLGroup_t
    | MKLNot_t
    | MKLNumber_t
    | MKLOptional_t
    | MKLOr_t
    | MKLPlus_t
    | MKLRef_t
    | MKLSeq_t
    | MKLStar_t
    | MKLStr_t
    | MKLWildcard_t
    | UnicodeRange_t
    | getrange_t
