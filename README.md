## Typed BNF

Type inference your BNF grammar that uses semantic actions, eliminating static errors and porting them into different parser generator architectures.

The major part of this library is written in F\#. However, it is compiled into Python via Fable.Python and running under CPython/PyPy(>=3.8).

## Overview

So far, we support 3 different architectures, which unveil the capability of Typed BNF's backend agnostic code generation.

| architecture   | backend(PGEN + PL)   | lexer Impl  | parser capability  | [ADT](https://en.wikipedia.org/wiki/Algebraic_data_type) encoding  |
|---|---|---|---|---|
| antlr  | antlr4+csharp  | antlr  | ALL(*)   | type -> interface<br /> constructor -> class  |
| menhir  | menhir+OCaml  | sedlex(UTF-8)   |  LR(1) | as-is  |
| lark  | lark+Python   | [Fable.Sedlex](https://github.com/thautwarm/Fable.Sedlex)  | LALR(2)  | type -> union type<br /> constructor -> dataclass  |

(**PL** = programming language; **PGEN** = parser generator)

This project is not production-ready, though already handy for practical use. 

For usage, see `test-python.ps1`, `test-ocaml.ps1` and `test-csharp.ps1`.

## Usage

```bash
usage: tbnf [-h] [--backend BACKEND] [--renamer_config RENAMER_CONFIG] tbnf_source_path out_dir lang

Typed BNF CLI tool.


positional arguments:
  tbnf_source_path      <class 'pathlib.Path'>
  out_dir               <class 'pathlib.Path'>
  lang                  <class 'str'>

optional arguments:
  -h, --help            show this help message and exit
  --backend BACKEND     <class 'str'>
  --renamer_config RENAMER_CONFIG
                        <class 'str'>
```

## A basic example: `JSON`

Such grammar is compiled into Python, OCaml and CSharp. See [runtests](https://github.com/thautwarm/typed-bnf/tree/main/runtests) directory and `test-*.ps1`.

```ocaml
extern var parseInt : str -> int
extern var parseFlt : str -> float
extern var getStr : token -> str
extern var unesc : str -> str
extern var appendList : <'a> (list<'a>, 'a) -> list<'a>

type Json
type JsonPair(name: str, value: Json)

case JInt : int -> Json
case JFlt : float -> Json
case JStr : str -> Json
case JNull : () -> Json
case JList : (elements: list<Json>) -> Json
case JDict : list<JsonPair> -> Json
case JBool : bool -> Json

ignore space

digit = [0-9] ;

start : json { $1 }

int = digit+ ;
float = digit* "." int ;
str = "\"" ( "\\" _ | ! "\"" )* "\"" ;
space = ("\t" | "\n" | "\r" | " ")+;

seplist(sep, elt) : elt { [$1] }
                  | seplist(sep, elt) sep elt
                    { appendList($1, $3) }

jsonpair : <str> ":" json { JsonPair(unesc(getStr($1)), $3) }

/* CPP comments */

json : <int> { JInt(parseInt(getStr($1))) }
      | <float> { JFlt(parseFlt(getStr($1))) }
      | "null"  { JNull() }
      | <str>   { JStr(unesc(getStr($1))) }
      | "[" "]" { JList([]) }
      | "{" "}" { JDict([]) }
      | "true"  { JBool(true) }
      | "false"  { JBool(false) }
      | "[" seplist(",", json) "]" { JList($2) }
      | "{" seplist(",", jsonpair) "}" { JDict($2) }
```

## Customizing name mapping

You can specify the `renamer_config` parameter or use the default one(`renamer.tbnf.py` in the output directory).

In `renamer.tbnf.py`, you can define how typenames map from Typed BNF to the backend language.

For instance, this is what we did for CSharp-Antlr4 JSON example: [link](https://github.com/thautwarm/Typed-BNF/blob/main/runtests/ocaml_simple_json/rename.tbnf.py).

```python
# $out_dir/renamer.tbnf.py

def rename_type(x):
    if x == "str":
        return "string"
    if x == 'Json':
        return 'JsonValue'
    if x == 'list':
        return 'System.Collections.Generic.List'
    if x == 'token':
        return 'IToken',
    return x

# you might also rename external variables using:
# def rename_var(varname: str): 
#   ...
```

Typed BNF has 7 built-in types: `token`, `tuple`, `list`, `int`, `float`, `str` and `bool`.

Typed BNF ships with no built-in functions, which makes it suitable to write portable grammars without ruling out semantic actions.

P.S: Unlike other backends, the OCaml-Menhir backend requires some manual works and is tedious in this sense. It requires user to explicitly specify the module-qualified type of the `start` rule, which can be solved by adding a config variable `start_rule_qualified_type` in `rename.tbnf.py`. Besides, you must map the type `token` to `tbnf_token`.

This is [the config for our example OCaml json parser](https://github.com/thautwarm/Typed-BNF/blob/73f9519cc4ac15d0c3a6474aefa66c40b009ffc8/runtests/ocaml_simple_json/rename.tbnf.py):

```python
start_rule_qualified_type = "Simple_json_construct.json"

def rename_type(x):
    if x == 'Json':
        return 'json'
    if x == "str":
        return "string"
    if x == "JsonPair":
        return "json_pair"
    if x == "token":
        return "tbnf_token" # this is other important!
    return x

def rename_var(x: str):
    if x[0].isupper():
        return "mk_" + x
    return x
```




## How to write new backends

Check out `Backends.*.fs`

## Build from source

### Build grammar for Typed BNF

```
./build-metaparser.ps1
```

### Build Python `_tbnf` package

```
./build-package.ps1
```