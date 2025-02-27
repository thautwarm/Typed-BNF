import * as anltr from "antlr4ng";
import { Token } from "antlr4ng";
export * from './TBNFConstructor'
import { expr_t, monot_t } from "./TBNFConstructor";

export { type Token };

export type position_t = {
    line: number;
    column: number;
}

export function position(line: number, column: number)
{
    return { line, column };
}


export function fst<A, B>(x: [A, B]) {
    return x[0]
}

export function snd<A, B>(x: [A, B]) {
    return x[1]
}


export function list_index<A>(x: A[], i: number)
{
    return x[i];
}

export function addList<A>(xs: A[], b: A)
{
    xs.push(b);
    return xs;
}

export function getPos(e: expr_t): position_t
{
    return e.value1;
}


export function toInt(x: Token)
{
    if (x.text == undefined)
        throw new Error("toint: undefined token");
    return parseInt(x.text);
}

export function toFloat(x: Token)
{
    if (x.text == undefined)
        throw new Error("tofloat: undefined token");
    return parseFloat(x.text);
}


export function str(x: Token): string | undefined
{
    return x.text;
}

export function process_tparam(xs: [string, monot_t][])
{
    let out: [string, monot_t][] = []
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


export function mkpos(t: Token)
{
    return { line: t.line, column: t.column };
}


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