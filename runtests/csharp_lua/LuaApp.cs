using System.Collections.Generic;
using System.Collections;
using System;
using Antlr4.Runtime;
using System.Linq;
using System.Diagnostics;

namespace Lua
{

    public struct MyList<T> : System.Collections.IEnumerable
    {
        public IEnumerator<T> GetEnumerator() => contents.GetEnumerator();
        private IEnumerator GetEnumerator1() => this.GetEnumerator();

        IEnumerator IEnumerable.GetEnumerator() => GetEnumerator1();
        public void Add(T x) => contents.Add(x);

        public List<T> contents;

        public MyList()
        {
            contents = new List<T>();
        }
        private MyList(List<T> x)
        {
            this.contents = x;
        }

        public override string ToString()
        {

            return "[" + System.String.Join(",", contents.Select(x => x.ToString())) + "]";
        }


        public static implicit operator List<T>(MyList<T> xs) => xs.contents;
        public static implicit operator MyList<T>(List<T> xs) => new MyList<T>(xs);
    }
    public class App
    {

        public static List<A> repeat<A>(A x, int n)
        {
            var ret = new List<A> { };
            for (var i = 0; i < n; i++)
            {
                ret.Add(x);
            }
            return ret;
        }

        public static block ParseLua(string s)
        {
            ICharStream stream = CharStreams.fromString(s);
            var lexer = new LuaLexer(stream);
            lexer.RemoveErrorListeners();
            lexer.AddErrorListener(new LexerErrorListener());
            ITokenStream tokens = new CommonTokenStream(lexer);
            var parser = new LuaParser(tokens);
            parser.RemoveErrorListeners();
            parser.AddErrorListener(new ExcErrorListener());
            parser.BuildParseTree = false;
            var result = parser.start().result;
            return result;
        }

        public static void Main(string[] modes)
        {
            if (modes.Length == 2)
            {
                var texts = repeat(System.IO.File.ReadAllText(modes[0]), 100);
                var prevent_opt = new List<string>();
                List<long> times = new List<long>();
                foreach (var text in texts)
                {
                    System.Diagnostics.Stopwatch sw = new Stopwatch();
                    sw.Start();
                    var res = ParseLua(text);
                    sw.Stop();
                    times.Add(sw.ElapsedMilliseconds);
                    prevent_opt.Add(System.String.Join("", res.suite.contents.Select(x => x.ToString())));
                }
                System.IO.File.WriteAllText(modes[1], System.String.Join(",", times));
                return;
            }
            while (true)
            {
                Console.Write("lua parser> ");
                var res = ParseLua(Console.ReadLine());
                if (res is null)
                {
                    Console.WriteLine("Syntax error");
                }
                else
                {
                    Console.WriteLine(res.ToString());
                }
            }

        }
    }
}