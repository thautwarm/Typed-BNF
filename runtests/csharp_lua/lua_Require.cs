using System.Collections.Generic;
using System.Collections;
using System;
using Antlr4.Runtime;
using System.Linq;
using System.Diagnostics;

namespace lua
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
    public class maybe<A>
    {
        public bool IsSome;
        public A Value;

        public maybe(bool isSome, A v)
        {
            this.IsSome = isSome;
            this.Value = v;
        }
    }

    public class Op<A>
    {
        public bool IsOperator;
        public IToken token;
        public A Value;

        public Op(bool isOperator, IToken token, A value)
        {
            this.IsOperator = isOperator;
            this.token = token;
            this.Value = value;
        }

    }
    public partial class luaParser
    {
        public static maybe<T> some<T>(T a)
        {
            return new maybe<T>(true, a);
        }

        public static Op<A> mkOperator<A>(IToken a)
        {
            return new Op<A>(true, a, default(A));
        }

        public static Op<A> mkOperand<A>(A a)
        {
            return new Op<A>(false, null, a);
        }

        public static A mkBinOpSeq<A>(MyList<Op<A>> ops, Func<IToken, A, A, A> mkbin, Func<MyList<Op<A>>, A> mkunsolved)
        {
            if (ops.contents.Count == 1)
                return ops.contents[0].Value;
            return mkunsolved(ops);
        }

        public static maybe<T> none<T>()
        {
            return new maybe<T>(false, default(T));
        }
        public static MyList<T> appendList<T>(MyList<T> xs, T x)
        {
            xs.Add(x);
            return xs;
        }

        public static MyList<G> listMap<T, G>(MyList<T> xs, Func<T, G> f)
        {
            return (MyList<G>)(((List<T>)xs).Select(f).ToList());
        }

        public static block ParseLua(string s)
        {
            ICharStream stream = CharStreams.fromString(s);
            ITokenSource lexer = new luaLexer(stream);
            ITokenStream tokens = new CommonTokenStream(lexer);
            var parser = new luaParser(tokens);
            parser.BuildParseTree = false;
            var result = parser.start().result;
            return result;
        }
    }


}