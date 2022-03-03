from __future__ import annotations
from typing import (Any, List, Tuple)
from ..fable_modules.fable_library.array import equals_with
from ..fable_modules.fable_library.list import (of_array, empty, FSharpList)
from ..fable_modules.fable_library.types import FSharpRef
from ..fable_modules.fable_library.util import equals
from .analysis import (build_analyzer as build_analyzer_1, Analyzer)
from .grammar import (Cell_1__ctor, Cell_1, position as position_1, expr, node as node_1, monot as monot_1, TTuple, TList, lexerule, definition, production, polyt, symbol)

def MK_Cell() -> Cell_1[Any]:
    return Cell_1__ctor()


def MK_position(line: int, col: int, filename: str) -> position_1:
    return position_1(line, col, filename)


def MK_EApp(f: expr, args: List[expr]) -> node_1:
    return node_1(0, f, of_array(args))


def MK_ETuple(args: List[expr]) -> node_1:
    return node_1(1, of_array(args))


def MK_EList(args: List[expr]) -> node_1:
    return node_1(2, of_array(args))


def MK_ELet(name: str, value: expr, body: expr) -> node_1:
    return node_1(4, name, value, body)


def MK_EFun(args: List[Tuple[str, monot_1]], body: expr) -> node_1:
    return node_1(5, of_array(args), body)


def MK_EVar(n: str) -> node_1:
    return node_1(6, n, FSharpRef(empty()))


def MK_ESlot(i: int) -> node_1:
    return node_1(7, i)


def MK_EInt(i: int) -> node_1:
    return node_1(8, i)


def MK_EStr(s: str) -> node_1:
    return node_1(9, s)


def MK_EFlt(s: float) -> node_1:
    return node_1(10, s)


def MK_EBool(b: bool) -> node_1:
    return node_1(11, b)


def MK_EField(value: expr, field: str) -> node_1:
    return node_1(3, value, field)


def MK_expr(node: node_1, pos: position_1) -> expr:
    return expr(node, pos, monot_1(1, "bot"))


def MK_TConst(n: str) -> monot_1:
    return monot_1(1, n)


def MK_TApp(f: monot_1, args: List[monot_1]) -> monot_1:
    return monot_1(2, f, of_array(args))


def MK_TFun(args: List[Tuple[str, monot_1]], ret: monot_1) -> monot_1:
    return monot_1(3, of_array(args), ret)


def MK_TVar(n: str) -> monot_1:
    return monot_1(4, n)


def MK_TTuple(xs: List[monot_1]) -> monot_1:
    if len(xs) == 1:
        return xs[0]
    
    else: 
        return TTuple(of_array(xs))
    


def MK_TList(a: monot_1) -> monot_1:
    return TList(a)


def MK_LStr(s: str) -> lexerule:
    return lexerule(3, s)


MK_LNumber : lexerule = lexerule(0)

MK_LWildcard : lexerule = lexerule(1)

def MK_LSeq(xs: List[lexerule]) -> lexerule:
    def arrow_350(x: lexerule, y: lexerule, xs: List[lexerule]=xs) -> bool:
        return equals(x, y)
    
    if len(xs) == 1 if (not equals_with(arrow_350, xs, None)) else (False):
        return xs[0]
    
    else: 
        return lexerule(2, of_array(xs))
    


def MK_LOr(xs: List[lexerule]) -> lexerule:
    def arrow_351(x: lexerule, y: lexerule, xs: List[lexerule]=xs) -> bool:
        return equals(x, y)
    
    if len(xs) == 1 if (not equals_with(arrow_351, xs, None)) else (False):
        return xs[0]
    
    else: 
        return lexerule(4, of_array(xs))
    


def MK_LNot(x: lexerule) -> lexerule:
    return lexerule(5, x)


def MK_LPlus(x: lexerule) -> lexerule:
    return lexerule(6, x)


def MK_LStar(x: lexerule) -> lexerule:
    return lexerule(7, x)


def MK_LOptional(x: lexerule) -> lexerule:
    return lexerule(8, x)


def MK_LGroup(x: lexerule) -> lexerule:
    return lexerule(9, x)


def MK_LRange(x: int, y: int) -> lexerule:
    return lexerule(10, x, y)


def MK_LRef(x: str) -> lexerule:
    return lexerule(11, x)


def MK_Defignore(ignore_list: List[str], pos: position_1) -> definition:
    return definition(6, {
        "ignoreList": of_array(ignore_list),
        "pos": pos
    })


def MK_Defmacro(lhs: str, parameters: List[str], define: List[Tuple[position_1, production]], pos: position_1) -> definition:
    def arrow_352(lhs: str=lhs, parameters: List[str]=parameters, define: List[Tuple[position_1, production]]=define, pos: position_1=pos) -> dict[str, Any]:
        parameters_1 : FSharpList[str] = of_array(parameters)
        return {
            "define": of_array(define),
            "lhs": lhs,
            "parameters": parameters_1,
            "pos": pos
        }
    
    return definition(0, arrow_352())


def MK_Defrule(lhs: str, define: List[Tuple[position_1, production]], pos: position_1) -> definition:
    return definition(1, {
        "define": of_array(define),
        "lhs": lhs,
        "pos": pos
    })


def MK_Deflexer(lhs: str, define: lexerule, pos: position_1) -> definition:
    return definition(2, {
        "define": define,
        "lhs": lhs,
        "pos": pos
    })


def MK_Declvar(ident: str, t: polyt, pos: position_1) -> definition:
    return definition(3, {
        "ident": ident,
        "pos": pos,
        "t": t
    })


def MK_Declctor(ident: str, t: monot_1, pos: position_1) -> definition:
    return definition(4, {
        "ident": ident,
        "pos": pos,
        "t": t
    })


def MK_Decltype(external: bool, has_fields: bool, ident: str, parameters: List[str], fields: List[Tuple[str, monot_1, position_1]], pos: position_1) -> definition:
    def arrow_353(external: bool=external, has_fields: bool=has_fields, ident: str=ident, parameters: List[str]=parameters, fields: List[Tuple[str, monot_1, position_1]]=fields, pos: position_1=pos) -> dict[str, Any]:
        parameters_1 : FSharpList[str] = of_array(parameters)
        return {
            "external": external,
            "fields": of_array(fields),
            "hasFields": has_fields,
            "ident": ident,
            "parameters": parameters_1,
            "pos": pos
        }
    
    return definition(5, arrow_353())


def MK_production(symbols: List[symbol], action: expr) -> production:
    return production(of_array(symbols), action)


def MK_Term(define: str, is_literal: bool) -> symbol:
    return symbol(0, define, is_literal)


def MK_Nonterm(define: str) -> symbol:
    return symbol(1, define)


def MK_Macrocall(n: str, syms: List[symbol], position: position_1) -> symbol:
    return symbol(2, n, of_array(syms), position)


def MK_Poly(bounds: List[str], monot: monot_1) -> polyt:
    return polyt(0, of_array(bounds), monot)


def MK_Mono(monot: monot_1) -> polyt:
    return polyt(1, monot)


def build_analyzer(stmts: List[definition]) -> Tuple[List[definition], Analyzer]:
    return build_analyzer_1(stmts)


