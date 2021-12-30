from __future__ import annotations
from typing import (Any, List, Tuple)
from fable_modules.fable_library.list import (of_array, empty, FSharpList)
from fable_modules.fable_library.types import FSharpRef
from .analysis import (build_analyzer as build_analyzer_1, Analyzer)
from .grammar import (Cell_1__ctor, Cell_1, position, node as node_1, expr, monot as monot_1, TTuple, TList, lexerule, definition, production, polyt, symbol)

def MK_Cell() -> Cell_1[Any]:
    return Cell_1__ctor()


def MK_position(line: int, col: int, filename: str) -> position:
    return position(line, col, filename)


def MK_EApp(f: expr, args: List[expr]) -> node_1:
    return node_1(0, f, of_array(args))


def MK_ETuple(args: List[expr]) -> node_1:
    return node_1(1, of_array(args))


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


def MK_expr(node: node_1, pos: position) -> expr:
    return expr(node, pos, monot_1(1, "bot"))


def MK_TConst(n: str) -> monot_1:
    return monot_1(1, n)


def MK_TApp(f: monot_1, args: List[monot_1]) -> monot_1:
    return monot_1(2, f, of_array(args))


def MK_TFun(args: List[monot_1], ret: monot_1) -> monot_1:
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


MK_LNumber = lexerule(0)

MK_LWildcard = lexerule(1)

def MK_LSeq(xs: List[lexerule]) -> lexerule:
    return lexerule(2, of_array(xs))


def MK_LOr(xs: List[lexerule]) -> lexerule:
    return lexerule(3, of_array(xs))


def MK_LNot(x: lexerule) -> lexerule:
    return lexerule(4, x)


def MK_LOneOrMore(x: lexerule) -> lexerule:
    return lexerule(5, x)


def MK_LZeroOrMore(x: lexerule) -> lexerule:
    return lexerule(6, x)


def MK_LOptional(x: lexerule) -> lexerule:
    return lexerule(7, x)


def MK_LGroup(x: lexerule) -> lexerule:
    return lexerule(8, x)


def MK_LRange(x: int, y: int) -> lexerule:
    return lexerule(9, x, y)


def MK_LRef(x: str) -> lexerule:
    return lexerule(10, x)


def MK_Defmacro(lhs: str, parameters: List[str], define: List[Tuple[position, production]], pos: position) -> definition:
    def arrow_36(lhs=lhs, parameters=parameters, define=define, pos=pos) -> dict:
        parameters_1 : FSharpList[str] = of_array(parameters)
        return {
            "define": of_array(define),
            "lhs": lhs,
            "parameters": parameters_1,
            "pos": pos
        }
    
    return definition(0, arrow_36())


def MK_Defrule(lhs: str, define: List[Tuple[position, production]], pos: position) -> definition:
    return definition(1, {
        "define": of_array(define),
        "lhs": lhs,
        "pos": pos
    })


def MK_Deflexer(lhs: str, define: lexerule, pos: position) -> definition:
    return definition(2, {
        "define": define,
        "lhs": lhs,
        "pos": pos
    })


def MK_Declvar(ident: str, t: polyt, pos: position) -> definition:
    return definition(3, {
        "ident": ident,
        "pos": pos,
        "t": t
    })


def MK_Decltype(ident: str, kind: int, pos: position) -> definition:
    return definition(4, {
        "ident": ident,
        "kind": kind,
        "pos": pos
    })


def MK_production(symbols: List[symbol], action: expr) -> production:
    return production(of_array(symbols), action)


def MK_Term(define: str, is_literal: bool) -> symbol:
    return symbol(0, {
        "define": define,
        "is_literal": is_literal
    })


def MK_Nonterm(define: str) -> symbol:
    return symbol(1, define)


def MK_Macrocall(n: str, syms: List[symbol]) -> symbol:
    return symbol(2, n, of_array(syms))


def MK_Poly(bounds: List[str], monot: monot_1) -> polyt:
    return polyt(0, of_array(bounds), monot)


def MK_Mono(monot: monot_1) -> polyt:
    return polyt(1, monot)


def build_analyzer(stmts: List[definition]) -> Analyzer:
    return build_analyzer_1(stmts)


