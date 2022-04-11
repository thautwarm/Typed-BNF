# Typed BNF Documentations

Typed BNF (TBNF) has a language specification described by TBNF itself ([TypedBNF.tbnf](https://github.com/thautwarm/Typed-BNF/blob/main/TypedBNF.tbnf)), which generates a parser for Typed BNF.

A syntax specification to Typed BNF is given at the end of this documentation: [Spec](#Typed-BNF-Syntax-Specification). This specification uses the standard BNF notation extended by the ANTLR4 lexer language. **Such a specification is automatically generated from `TypedBNF.tbnf`**.

## Typed BNF Language Constructs

### Nonterminal definitions

```antlr4
a : b "c" "d" { ($1, $2) }

b : e <F> { $1 }
  |   { 0 }
```

A nonterminal definition can take one or productions. A production **must** take a semantic action at the end. A production can take zero or more terminals. Even an empty production **must** take a semantic action.


### Named terminals and literal terminals

A symbol surrounded by angles (`<F>`) is a named terminal (which is opposite to the standard BNF). A symbol surrounded by double-quoted string is a literal terminal, and literal terminals support escaping (e.g., `"\n"`, `\b`).


### Parametric nonterminals

Typed BNF support parameteric polymorphisms.

Given a parametric rule:

```antlr4
f(a) : a f(a) { expr1 }
     | b      { expr2 }

```

The following two rules for `c` are equivalent.

```antlr4
fd : d fd { expr1 }
   | b    { expr2 }

c : f(d) { $1 }
c : fd   { $1 }
```

### Semantic actions

A semantic action in Typed BNF is written in a dedicated DSL called "Simpler", which is a simple ML programming language with the following features:

1. No let-polymorphisms. User code shall not include definitions for polymorphic values.
2. Multi-ary functions. No curried functions.
3. Universal quantifiers are ordered. The type `<A, B> (A, B) -> A` is different from `<B, A>(A, B) -> A`.

#### Semantic values (slots)

```ocamlyacc
a : b c { $1 } // '$1' is the result of parsing 'b'!
a : b c { $2 } // '$2' is the result of parsing 'c'!
```

#### Let bindings and variables
```ocamlyacc
a : b c { let x = $1 in x }
```

#### Constants

Integers, floats, booleans are constants.

```ocamlyacc
a : b c { 1.0 }
a : b c { "1.0" }
a : b c { 1 }
a : b c { true }
a : b c { false }
```

#### Function calls

```ocamlyacc
a : b c { myfunc($1, $2) }
```

#### Lambdas

```ocamlyacc
a : b c { let first = fun (x: int, y: int) -> x in first($1, $2) }
```

Parameters need annotations.

NOTE: This is slightly different from the paper. In the paper, we show the core language where parameters need no type annotations. However, for practical use, we want to support the handy field accessing `a.b`, where the type checker reports better error messages when parameter types are explicitly given.

#### Tuples and lists

```ocamlyacc
a: b c { ($1, $2) }
a: b b { [$1, $2] }
```

### Type/value definitions/declarations

Before writing the nonterminal rules, you can define/declare some values/types, where a few of them can be polymorphic!

#### External value declarations

```ocaml
extern var parseInt: token -> int
```

And you need to provide the implementation in the backend. For instance, in the Python+Lark backend, you need a file `${LANG}_require.py` to give a function called `parseInt`. You can rename variable names using `tbnf.config.js` (See homepage README for details).

```python
from lark import Token
def parseInt(x: Token):
    return int(str(x))
```

#### External type declarations

```ocaml
extern type A
extern type GenericType<A, B, C>
```

#### ADT definitions

```ocaml
type expr
case IntExpr : int -> expr // define constructors
case LetExpr : (name: string, value: expr, body: expr) -> expr

expr : <INT> { IntExpr(parseInt($1)) } // constructors can be called directly
```

#### Record definitions

```ocaml
type Pair<A, B>(fst: A, snd: B)

pair(a, b) : a b { Pair($1, $2) } // the typename of a record type can be called directly.
```


### Lexical rules

A lexical rule `LEX` can be defined as a

- Range: `[a-z]`, `[た-わ]`, `[我-超]`. Notations like `[a-zA-Z]` are so far rejected.
- Literal: `"a"`, `"\""`.
- Unicode range: `[\u0001-\u9999]`
- Number: `\d`
- Negations: `! LEX`
- Star: `LEX*`
- Plus: `LEX+`
- Optional: `LEX?`
- Nested lexical rules: `( LEX )`

For the precedences, users are referred to the [SPEC](#Typed-BNF-Syntax-Specification).


## CLI Usage

```bash
> node tbnf.js --help
usage: tbnf.js [-h] [-o OUTDIR] [-lang LANGUAGE]
               [-be {python-lark,ocaml-menhir,csharp-antlr,purebnf}]
               [-conf CONFIGPATH]
               tbnfSourcePath

Argparse example

positional arguments:
  tbnfSourcePath

optional arguments:
  -h, --help            show this help message and exit
  -o OUTDIR, --outDir OUTDIR
  -lang LANGUAGE, --language LANGUAGE
                        name of your own language
  -be {python-lark,ocaml-menhir,csharp-antlr,purebnf}, --backend {python-lark,ocaml-menhir,csharp-antlr,purebnf}
  -conf CONFIGPATH, --configPath CONFIGPATH
                        path to a config file
```

## Typed BNF Syntax Specification

```bnf
<list(toplevel)> ::= <toplevel>
                 |   <list(toplevel)> <toplevel>
<start> ::= <list(toplevel)>
<identstr> ::= CNAMEPLUS
<typ> ::= <arrow_typ>
<slist(",",param_type)> ::= <param_type>
                        |   <slist(",",param_type)> ',' <param_type>
<empty(slist(",",param_type))> ::= 
                               |   <slist(",",param_type)>
<eslist(",",param_type)> ::= <empty(slist(",",param_type))>
<arrow_typ> ::= <typ2> '->' <arrow_typ>
            |   '(' <eslist(",",param_type)> ')' '->' <arrow_typ>
            |   <type_product>
<slist(",",typ)> ::= <typ>
                 |   <slist(",",typ)> ',' <typ>
<typ2> ::= CNAMEPLUS
       |   <tvar>
       |   <typ2> '<' <slist(",",typ)> '>'
<type_product> ::= <type_product> '*' <typ2>
               |   <typ2>
<top_typ> ::= '<' <slist(",",tvar_str)> '>' <typ>
          |   <typ>
<tvar> ::= '\'' CNAMEPLUS
<tvar_str> ::= '\'' CNAMEPLUS
<param_type> ::= CNAMEPLUS ':' <typ>
             |   <typ>
<slist(",",tvar_str)> ::= <tvar_str>
                      |   <slist(",",tvar_str)> ',' <tvar_str>
<type_params> ::= '<' <slist(",",tvar_str)> '>'
              |   
<field_ann> ::= CNAMEPLUS ':' <typ>
<slist(",",field_ann)> ::= <field_ann>
                       |   <slist(",",field_ann)> ',' <field_ann>
<empty(slist(",",field_ann))> ::= 
                              |   <slist(",",field_ann)>
<eslist(",",field_ann)> ::= <empty(slist(",",field_ann))>
<field_anns> ::= '(' <eslist(",",field_ann)> ')'
             |   
<decl> ::= 'extern' 'var' <identstr> ':' <top_typ>
       |   'case' <identstr> ':' <typ>
       |   'extern' 'type' <identstr> <type_params> <field_anns>
       |   'type' <identstr> <type_params> <field_anns>
<toplevel> ::= <def>
           |   <decl>
           |   <lexerdef>
           |   'ignore' <slist(",",identstr)>
<slist(",",identstr)> ::= <identstr>
                      |   <slist(",",identstr)> ',' <identstr>
<def> ::= CNAMEPLUS '(' <slist(",",identstr)> ')' <productions>
      |   CNAMEPLUS <productions>
<productions> ::= ':' <production>
              |   <productions> '|' <production>
<list(psym)> ::= <psym>
             |   <list(psym)> <psym>
<empty(list(psym))> ::= 
                    |   <list(psym)>
<elist(psym)> ::= <empty(list(psym))>
<production> ::= <elist(psym)> '{' <expr> '}'
<slist(",",psym)> ::= <psym>
                  |   <slist(",",psym)> ',' <psym>
<psym> ::= '<' <identstr> '>'
       |   ESCAPED_STRING
       |   <identstr>
       |   CNAMEPLUS '(' <slist(",",psym)> ')'
<ann> ::= <identstr> ':' <typ>
<slist(",",ann)> ::= <ann>
                 |   <slist(",",ann)> ',' <ann>
<empty(slist(",",ann))> ::= 
                        |   <slist(",",ann)>
<eslist(",",ann)> ::= <empty(slist(",",ann))>
<func_parameters> ::= '(' <eslist(",",ann)> ')'
<expr> ::= 'let' <identstr> '=' <expr> 'in' <expr>
       |   'fun' <func_parameters> '->' <expr>
       |   <call>
       |   <call> ';' <expr>
<call> ::= <call> '(' <eslist(",",expr)> ')'
       |   <atomexp>
<empty(slist(",",expr))> ::= 
                         |   <slist(",",expr)>
<eslist(",",expr)> ::= <empty(slist(",",expr))>
<slist(",",expr)> ::= <expr>
                  |   <slist(",",expr)> ',' <expr>
<atomexp> ::= INT
          |   FLOAT
          |   ESCAPED_STRING
          |   '$' INT
          |   '[' <eslist(",",expr)> ']'
          |   '(' ')'
          |   '(' <slist(",",expr)> ')'
          |   CNAMEPLUS
          |   <atomexp> '.' CNAMEPLUS
          |   'true'
          |   'false'
<slist("|",lexer_and)> ::= <lexer_and>
                       |   <slist("|",lexer_and)> '|' <lexer_and>
<lexer> ::= <slist("|",lexer_and)>
<list(lexer_atomexpr)> ::= <lexer_atomexpr>
                       |   <list(lexer_atomexpr)> <lexer_atomexpr>
<lexer_and> ::= <list(lexer_atomexpr)>
<lexer_atomexpr> ::= <lexer_atomexpr> '+'
                 |   <lexer_atomexpr> '*'
                 |   <lexer_atomexpr> '?'
                 |   <lexer_atom>
<lexer_atom> ::= ESCAPED_STRING
             |   '!' <lexer_atom>
             |   '(' <lexer> ')'
             |   '\\d'
             |   RANGE
             |   UNICODE_RANGE
             |   '_'
             |   '.'
             |   CNAMEPLUS
<lexerdef> ::= CNAMEPLUS '=' <lexer> ';'
fragment UCODE : (DIGIT | [\u0061-\u0066] | [\u0041-\u0046]) ;
fragment UNICODE : '\\' 'u' UCODE UCODE UCODE UCODE ;
UNICODE_RANGE : '[' UNICODE '-' UNICODE ']' ;
RANGE : '[' . '-' . ']' ;
fragment LCASE_LETTER : [\u0061-\u007A] ;
fragment UCASE_LETTER : [\u0041-\u005A] ;
fragment LETTER : (UCASE_LETTER | LCASE_LETTER) ;
fragment WORD : LETTER+ ;
CNAMEPLUS : ('_' | LETTER) ('_' | '-' | LETTER | DIGIT)* ;
INT : DIGIT+ ;
fragment DIGIT : [\u0030-\u0039] ;
WS : (' ' | '\t' | '\r' | '\n') -> channel(HIDDEN);
FLOAT : INT ('.' INT)? (('E' | 'e') INT)? ;
fragment ESC : ('a' | 'b' | 't' | 'n' | 'r' | '\\' | '"') ;
ESCAPED_STRING : '"' (('\\' ESC) | ~('"' | '\\'))* '"' ;
CPP_COMMENT : '/*' .*? '*/' -> channel(HIDDEN);
C_COMMENT : '//' ~'\n'* -> channel(HIDDEN);
```
