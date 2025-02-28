namespace JsonCS;

using System.Linq;
using System.Collections.Generic;
using Antlr4.Runtime;

public partial class JsonCSParser
{
    public static int toInt(string s)
    {
        return int.Parse(s);
    }

    public static double toFlt(string s)
    {
        return double.Parse(s);
    }

    public static string getStr(IToken s)
    {
        return s.Text ?? "";
    }

    public static List<T> appendList<T>(List<T> x, T y)
    {
        // for modern .NET 
        // return [...x, y];
        return x.Append(y).ToList();
    }

    public static string unesc(string s)
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
}
