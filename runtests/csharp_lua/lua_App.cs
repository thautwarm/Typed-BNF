using System.Collections.Generic;
using System.Collections;
using System;
using Antlr4.Runtime;
using System.Linq;
using System.Diagnostics;

namespace lua
{

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
                    var res = luaParser.ParseLua(text);
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
                Console.WriteLine(luaParser.ParseLua(Console.ReadLine()).ToString());
            }

        }
    }
}