using System.Collections.Generic;
using Antlr4.Runtime;
using System;
using System.Linq;


namespace simple_json
{

    public partial interface JsonValue
    {
        // public string show();

        public static JsonValue Parse(string s)
        {
            ICharStream stream = CharStreams.fromString(s);
            ITokenSource lexer = new simple_jsonLexer(stream);
            ITokenStream tokens = new CommonTokenStream(lexer);
            var parser = new simple_jsonParser(tokens);
            parser.BuildParseTree = false;
            var result = parser.start().result;
            return result;
        }
    }
    public class App
    {
        public static void Main(string[] _)
        {
            while(true)
            {
                Console.Write("json> ");
                Console.WriteLine (JsonValue.Parse(Console.ReadLine()).ToString());
            }
        }
    }
    
    // public class JNull : JsonValue
    // {
    //     public string show() => "null";
    // }

    // public class JList : JsonValue
    // {
    //     public List<JsonValue> contents;
    //     public JList(List<JsonValue> cs) { contents = cs; }
    //     public string show() =>
    //         "[" + String.Join(", ", contents.Select(x => x.show())) + "]";
    // }

    // public class JDict : JsonValue
    // {
    //     public Dictionary<string, JsonValue> contents;
    //     public JDict(Dictionary<string, JsonValue> cs) { contents = cs; }

    //     public string show() =>
    //         "{" + String.Join(", ", contents.Select(x => simple_jsonParser.esc_string(x.Key) + ":" + x.Value.show())) + "}";
    // }

    // public class JInt : JsonValue
    // {
    //     public int contents;
    //     public JInt(int cs) { contents = cs; }
    //     public string show() => contents.ToString();
    // }

    // public class JFloat : JsonValue
    // {
    //     public float contents;
    //     public JFloat(float cs) { contents = cs; }

    //     public string show() => contents.ToString();

    // }



    // public class JString : JsonValue
    // {
    //     public string contents;
    //     public JString(string cs) { contents = cs; }
    //     public string show() => simple_jsonParser.esc_string(contents.ToString());
    // }

    // public class JBool : JsonValue
    // {
    //     public bool contents;
    //     public JBool(bool cs) { contents = cs; }
    //     public string show() => contents.ToString();
    // }

    public partial class simple_jsonParser
    {

        public static string getStr(IToken token)
        {
            return token.Text;
        }
        public static List<T> appendList<T>(List<T> lst, T e)
        {
            lst.Add(e);
            return lst;
        }
        public static Dictionary<K, V> mk_dict<K, V>(List<(K, V)> lst)
        {
            var ret = new Dictionary<K, V>();
            foreach (var (k, v) in lst)
            {
                ret[k] = v;
            }
            return ret;
        }
        public static int parseInt(string s) => int.Parse(s, System.Globalization.NumberStyles.AllowExponent);
        public static float parseFlt(string s) => float.Parse(s);

        // public static JList jsonList(List<JsonValue> cs) =>
        //     new JList(cs);
        // public static JDict jsonDict(List<(string, JsonValue)> cs) =>
        //     new JDict(mk_dict(cs));
        // public static JInt jsonInt(int cs) =>
        //     new JInt(cs);

        // public static JFloat jsonFlt(float cs) =>
        //     new JFloat(cs);
        // public static JString jsonStr(string cs) =>
        //     new JString(cs);

        // public static JNull jsonNull => new JNull();
        // public static JBool jsonBool(bool b) => new JBool(b);
        public static string unesc(string s) =>
            System.Text.RegularExpressions.Regex.Unescape(s.Substring(1, s.Length - 2));
        public static string esc_string(string s) =>
            "\"" + System.Text.RegularExpressions.Regex.Escape(s).Replace("\"", "\\\"") + "\"";
    }
    

}
