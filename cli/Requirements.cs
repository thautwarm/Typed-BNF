global using static tbnf.Grammar;
global using static tbnf.APIs;
using System;
using Antlr4.Runtime;
using System.Collections.Generic;
using Acornima;
using tbnf;
using System.Linq;

namespace TypedBNF;

public partial class TypedBNFParser
{

    static A fst<A, B>(System.Tuple<A, B> x) => x.Item1;
    static A fst<A, B>((A, B) x) => x.Item1;
    static B snd<A, B>(System.Tuple<A, B> x) => x.Item2;
    static B snd<A, B>((A, B) x) => x.Item2;


    static E list_index<E>(E[] list, int index) => list[index];

    static position mkpos(IToken token) => APIs.createPosition(
        token.Line,
        token.Column,
        token.InputStream.SourceName
    );

    static T[] addList<T>(T[] list, T item) => [.. list, item];

    static (string, monot)[] process_tparam((string, monot)[] xs)
    {
        List<(string, monot)> result = [];
        for (int i = 0; i < xs.Length; i++)
        {
            if (xs[i].Item1 == "_")
            {
                result.Add(($"value{i}", xs[i].Item2));
            }
            else
            {
                result.Add((xs[i].Item1, xs[i].Item2));
            }
        }
        return result.ToArray();
    }

    static string str(IToken token) => token.Text;

    static int toint(IToken token) => int.Parse(str(token));

    static double tofloat(IToken token) => double.Parse(str(token));
    static monot MK_TFun(System.ValueTuple<string, monot>[] args, monot ret) =>
        APIs.MK_TFun([.. args.Select(arg => System.Tuple.Create(arg.Item1, arg.Item2))], ret);

    static definition MK_Decltype(
        bool external, bool hasFields, string ident,
        string[] parameters,
        (string, monot, position)[] fields, position pos) =>
        APIs.MK_Decltype(external, hasFields, ident,
        parameters,
        [.. fields.Select(field => System.Tuple.Create(field.Item1, field.Item2, field.Item3))],
        pos
    );

    static definition MK_Defrule(string lhs, (position, production)[] define, position pos) =>
        APIs.MK_Defrule(lhs,
        [.. define.Select(def => System.Tuple.Create(def.Item1, def.Item2))],
        pos
    );

    static definition MK_Deflexer(string lhs, lexerule define, position pos) =>
        APIs.MK_Deflexer(lhs, define, pos);

    static definition MK_Defmacro(string lhs, string[] parameters, (position, production)[] define, position pos) =>
        APIs.MK_Defmacro(lhs, parameters,
        [.. define.Select(def => System.Tuple.Create(def.Item1, def.Item2))],
        pos
    );

    static string unescape(string s)
    {
        var r = new System.Text.StringBuilder();
        int i = 1;
        var n = s.Length - 1;
        while (i < n)
        {
            if (s[i] == '\\')
            {
                i++;
                switch (s[i])
                {
                    case 'b':
                        r.Append('\b');
                        break;
                    case 'f':
                        r.Append('\f');
                        break;
                    case 'n':
                        r.Append('\n');
                        break;
                    case 'r':
                        r.Append('\r');
                        break;
                    case 't':
                        r.Append('\t');
                        break;
                    case '\\':
                        r.Append('\\');
                        break;
                    case '"':
                        r.Append('"');
                        break;
                    case '\'':
                        r.Append('\'');
                        break;
                    default:
                        r.Append(s[i]);
                        break;
                }
            }
            else
            {
                r.Append(s[i]);
            }
            i++;
        }
        return r.ToString();
    }

    static expr MK_Expr(node node, position pos) =>
        APIs.MK_expr(node, pos);

    static monot MK_TConst(string n) =>
        APIs.MK_TConst(n);

    static node MK_EFun(System.ValueTuple<string, monot>[] args, expr body) =>
        APIs.MK_EFun([.. args.Select(arg => System.Tuple.Create(arg.Item1, arg.Item2))], body);

    static position getpos(expr e) => e.pos;

    static lexerule getrange(string s)
    {
        var splits = s[1..^1].Split('-');
        var start = splits[0][0];
        var end = splits[1][0];
        return APIs.MK_LRange(start, end);
    }

    static lexerule getunicoderange(string s)
    {
        // e.g., [\u0000-\u007F]
        var splits = s[1..^1].Split('-');
        if (splits.Length != 2)
        {
            throw new Exception($"Invalid range: {s}");
        }
        var start = splits[0];
        var end = splits[1];
        var startCodePoint = int.Parse(start, System.Globalization.NumberStyles.HexNumber);
        var endCodePoint = int.Parse(end, System.Globalization.NumberStyles.HexNumber);
        return APIs.MK_LRange(startCodePoint, endCodePoint);
    }

}
