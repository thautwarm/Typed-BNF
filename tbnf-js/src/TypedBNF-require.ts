import { MK_LRef, MK_LGroup, MK_LOptional, MK_LStar, MK_LPlus, MK_LNot, MK_LOr, MK_LSeq, MK_LStr, MK_LNumber, MK_LWildcard, MK_EField, MK_EBool, MK_EFlt, MK_EStr, MK_EInt, MK_ESlot, MK_EVar, MK_EFun, MK_ELet, MK_EList, MK_ETuple, MK_EApp, MK_expr, MK_Macrocall, MK_Nonterm, MK_Term, MK_production, MK_Deflexer, MK_Defrule, MK_Defmacro, MK_Defignore, MK_Decltype, MK_Declctor, MK_Declvar, MK_Mono, MK_Poly, MK_TApp, MK_TConst, MK_TVar, MK_TList, MK_TTuple, MK_TFun, MK_LRange } from "./src/APIs.js"
import { processPolyType, node, lexerule, expr, symbol, production, definition, polyt, monot, position, } from "./src/Grammar.js"
// export all imported from '.APIs.fs' and '.Grammar.fs'

export { processPolyType, MK_LRef, MK_LGroup, MK_LOptional, MK_LStar, MK_LPlus, MK_LNot, MK_LOr, MK_LSeq, MK_LStr, MK_LNumber, MK_LWildcard, MK_EField, MK_EBool, MK_EFlt, MK_EStr, MK_EInt, MK_ESlot, MK_EVar, MK_EFun, MK_ELet, MK_EList, MK_ETuple, MK_EApp, MK_expr, MK_Macrocall, MK_Nonterm, MK_Term, MK_production, MK_Deflexer, MK_Defrule, MK_Defmacro, MK_Defignore, MK_Decltype, MK_Declctor, MK_Declvar, MK_Mono, MK_Poly, MK_TApp, MK_TConst, MK_TVar, MK_TList, MK_TTuple, MK_TFun, MK_LRange, node, lexerule, expr, symbol, production, definition, polyt, monot, position}

import { Token } from "antlr4ng";
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

export let MK_Expr = MK_expr

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
    let i = 1;
    let n = s.length - 1;
    while (i < n)
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

let _curfname: string = "<no file>"

export function setfilename(fname: string)
{
    _curfname = fname;
}

export function getfilename()
{
    return _curfname;
}


export function mkpos(t: Token)
{
    return new position(t.line, t.column, getfilename());
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
            out.push(['value' + i, xs[i][1]]);
        }
        else
        {
            out.push(xs[i]);
        }
    }
    return out;
}

export function str(x: Token): string | undefined
{
    return x.text;
}

export function toint(x: Token)
{
    if (x.text == undefined)
        throw new Error("toint: undefined token");
    return parseInt(x.text);
}

export function tofloat(x: Token)
{
    if (x.text == undefined)
        throw new Error("tofloat: undefined token");
    return parseFloat(x.text);
}

export function getunicoderange(x: string)
{
    let [a, b] = x.substring(1, x.length - 1).split('-');
    // 'a' and 'b' are in unicode form like '\u0041'
    // convert them to integer form like '65'
    return MK_LRange(parseInt(a.substring(2), 16), parseInt(b.substring(2), 16));
}

export function getrange(x: string)
{
    let [a, b] = x.substring(1, x.length - 1).split('-');
    return MK_LRange(a.codePointAt(0), b.codePointAt(0));
}
