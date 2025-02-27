using System.Collections.Generic;
using System.Collections;
using System;
using Antlr4.Runtime;
using System.Linq;
using System.Diagnostics;

namespace Lua
{    
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
    public partial class LuaParser
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
    }


}