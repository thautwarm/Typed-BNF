import * as antlr from 'antlr4ts';

export function appendList<T>(xs: T[], x: T)
{
    xs.push(x);
    return xs;
}

export function listMap<T, G>(xs: T[], f: (x: T) => G)
{
    return xs.map(f);
}

export type maybe_t<A> = A | null;

export function some<A>(x: A): maybe_t<A>
{
    return x;
}

export function none<A>(): maybe_t<A>
{
    return null;
}

export type op_t<A> = ['operand', A] | ['operator', antlr.Token]

export function mkBinOpSeq<A>(xs : op_t<A>[], _, f): A
{
    if (xs.length == 1)
    {
        if (xs[0][0] !== "operand")
            throw new Error("invalid binary sequence");
        return xs[0][1];
    }
    return f(xs);
}

export function mkOperator<A>(x: antlr.Token)
{
    return ['operator', x];
}

export function mkOperand<A>(x: A)
{
    return ['operand', x];
}
