import * as antlr from 'antlr4ng';
import { appendList, unesc, getStr, toFlt, toInt } from './JsonRequire';
export * from './JsonRequire'
export interface JBool_t
{
    $type: 'JBool';
    value: boolean
}
export function JBool(value: boolean)
{
    return { $type: 'JBool',value}
}
export interface JDict_t
{
    $type: 'JDict';
    value: Array<JsonPair_t>
}
export function JDict(value: Array<JsonPair_t>)
{
    return { $type: 'JDict',value}
}
export interface JFlt_t
{
    $type: 'JFlt';
    value: number
}
export function JFlt(value: number)
{
    return { $type: 'JFlt',value}
}
export interface JInt_t
{
    $type: 'JInt';
    value: number
}
export function JInt(value: number)
{
    return { $type: 'JInt',value}
}
export interface JList_t
{
    $type: 'JList';
    elements: Array<Json_t>
}
export function JList(elements: Array<Json_t>)
{
    return { $type: 'JList',elements}
}
export interface JNull_t
{
    $type: 'JNull';
}
export function JNull()
{
    return { $type: 'JNull',}
}
export interface JStr_t
{
    $type: 'JStr';
    value: string
}
export function JStr(value: string)
{
    return { $type: 'JStr',value}
}
export type Json_t =
    | JBool_t
    | JDict_t
    | JFlt_t
    | JInt_t
    | JList_t
    | JNull_t
    | JStr_t
export interface JsonPair_t
{
    name: string
    value: Json_t
}
export function JsonPair(name: string,value: Json_t)
{
    return {name,value}
}
