## Typed BNF

Given a grammar:
```bnf
shape token {
    lexeme : str
}
polyrule  : <a> <b>  { fn (a) -> ($1.lexeme, $2, a) }
polyrule2 : <a> polyrule { fn (a) -> $2(a) }
```

We type inference it:

```
polyrule : forall 'a. ('a) -> (str, token, 'a)
polyrule2 : forall 'a. ('a) -> (str, token, 'a)
```

Then we can lower it to a BNF grammar used by other parser framework,
no matter which programming language is the target.

## Lark Backend

```
python -m tbnf GRAMMAR.tbnf lark [--outdir OUTDIR=.] [--mod MODULENAME=mylang]  
```

## Antlr Backend

```
python -m tbnf GRAMMAR.tbnf antlr [--outdir OUTDIR=.] [--mod MODULENAME=mylang]  
```