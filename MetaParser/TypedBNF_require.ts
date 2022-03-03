import { mk_LRef, mk_LGroup, mk_LOptional, mk_LStar, mk_LPlus, mk_LNot, mk_LOr, mk_LSeq, mk_LStr, mk_LNumber, mk_LWildcard, mk_EField, mk_EBool, mk_EFlt, mk_EStr, mk_EInt, mk_ESlot, mk_EVar, mk_EFun, mk_ELet, mk_EList, mk_ETuple, mk_EApp, mk_expr, mk_Macrocall, mk_Nonterm, mk_Term, mk_production, mk_Deflexer, mk_Defrule, mk_Defmacro, mk_Defignore, mk_Decltype, mk_Declctor, mk_Declvar, mk_Mono, mk_Poly, mk_TApp, mk_TConst, mk_TVar, mk_TList, mk_TTuple, mk_TFun, mk_LRange } from "./APIs.fs"
import { node, lexerule, expr, symbol, production, definition, polyt, monot, position, } from "./Grammar.fs"
// export all imported from '.APIs.fs' and '.Grammar.fs'

export { mk_LRef, mk_LGroup, mk_LOptional, mk_LStar, mk_LPlus, mk_LNot, mk_LOr, mk_LSeq, mk_LStr, mk_LNumber, mk_LWildcard, mk_EField, mk_EBool, mk_EFlt, mk_EStr, mk_EInt, mk_ESlot, mk_EVar, mk_EFun, mk_ELet, mk_EList, mk_ETuple, mk_EApp, mk_expr, mk_Macrocall, mk_Nonterm, mk_Term, mk_production, mk_Deflexer, mk_Defrule, mk_Defmacro, mk_Defignore, mk_Decltype, mk_Declctor, mk_Declvar, mk_Mono, mk_Poly, mk_TApp, mk_TConst, mk_TVar, mk_TList, mk_TTuple, mk_TFun, mk_LRange, node, lexerule, expr, symbol, production, definition, polyt, monot, position}

import { Token } from "antlr4ts";
export { Token }


export function fst<A, B>(x: [A, B])
{
    return x[0]
}
export function snd<A, B>(x: [A, B])
{
    return x[1]
}

export function list_index<A>(x: A[], i: number)
{
    return x[i];
}

export let mk_Expr = mk_expr

export function addList<A>(xs: A[], b: A)
{
    xs.push(b);
    return xs;
}

// parse a literal string starts with a '"' and ends with a'"';
// unescape '\b', '\t', '\n', '\f', '\r', '\\', '\"', '\'
export function unescape(s: string)
{
    let r = "";
    let i = 0;
    while (i < s.length)
    {
        if (s[i] == '\\')
        {
            i++;
            switch (s[i])
            {
                case 'b':
                    r += '\b';
                    break;
                case 't':
                    r += '\t';
                    break;
                case 'n':
                    r += '\n';
                    break;
                case 'f':
                    r += '\f';
                    break;
                case 'r':
                    r += '\r';
                    break;
                case '\\':
                    r += '\\';
                    break;
                case '\"':
                    r += '\"';
                    break;
                case '\'':
                    r += '\'';
                    break;
                default:
                    r += s[i];
                    break;
            }
        }
        else
        {
            r += s[i];
        }
        i++;
    }
    return r;
}

let curfname: string = ""

export function setfilename(fname: string)
{
    curfname = fname;
}


export function mkpos(t: Token)
{
    return new position(t.line, t.charPositionInLine, curfname);
}

export function getpos(e: expr): position
{
    return e.pos;
}

export function process_tparam(xs: [string, monot][])
{
    let out: [string, monot][] = []
    // traverse xs, for each pair of 'name' and 'type', if 'name' == '_', change it to 'value$i', where i is the index of the pair in xs
    for (let i = 0; i < xs.length; i++)
    {
        if (xs[i][0] == '_')
        {
            out.push(['value$' + i, xs[i][1]]);
        }
        else
        {
            out.push(xs[i]);
        }
    }
    return out;
}

export function str(x: Token): string
{
    return x.text;
}

export function toint(x: Token)
{
    return parseInt(x.text);
}

export function tofloat(x: Token)
{
    return parseFloat(x.text);
}

export function getunicoderange(x: string)
{
    let [a, b] = x.substring(1, x.length - 1).split('-');
    // 'a' and 'b' are in unicode form like '\u0041'
    // convert them to integer form like '65'
    return mk_LRange(parseInt(a.substring(2), 16), parseInt(b.substring(2), 16));
}

export function getrange(x: string)
{
    let [a, b] = x.substring(1, x.length - 1).split('-');
    return mk_LRange(a.codePointAt(0), b.codePointAt(0));
}

