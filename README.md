## Typed BNF

Type inference your BNF grammar that uses semantic actions, eliminating static errors and porting them into different parser generator architectures.

The major part of this library is written in F\#. However, it is compiled into a single-file JavaScript [`tbnf.js`](https://github.com/thautwarm/Typed-BNF/releases) using Fable.

P.S: Typed BNF used to be implemented with Fable.Python and runs under CPython/PyPy(>=3.8), and I'd like to try Fable.Python again when it gets more stable.

## Overview

So far, we support 3 different architectures, which unveil the capability of Typed BNF's backend agnostic code generation.

| architecture   | backend(PGEN + PL)   | lexer Impl  | parser capability  | [ADT](https://en.wikipedia.org/wiki/Algebraic_data_type) encoding  |
|---|---|---|---|---|
| antlr  | antlr4+csharp  | antlr  | ALL(*)   | type -> interface<br /> constructor -> class  |
| menhir  | menhir+OCaml  | sedlex(UTF-8)   |  LR(1) | as-is  |
| lark  | lark+Python   | [Fable.Sedlex](https://github.com/thautwarm/Fable.Sedlex)  | LALR(2)  | type -> union type<br /> constructor -> dataclass  |
| antlr     | antlr4+typescript | antlr | ALL(*) | type -> union type <br /> constructor -> class |
| \*pure bnf     | pure bnf | antlr notation | CFG |  |

(**PL** = programming language; **PGEN** = parser generator; **pure bnf** means it is the pure BNF for readable syntax specification )

This project is not production-ready, though already handy for practical use. 

For usage, see `test-scripts/test-python*.sh`, `test-scripts/test-ocaml*.sh`, `test-scripts/test-typescript*.sh` and `test-scripts/test-csharp*.sh`.

## Usage

Download the single JavaScript file `tbnf.js` from [the release page](https://github.com/thautwarm/Typed-BNF/releases).

```bash
usage: tbnf.js [-h] [-o OUTDIR] [-lang LANGUAGE]
               [-be {python-lark,ocaml-menhir,csharp-antlr,typescript-antlr,purebnf}]
               [-conf CONFIGPATH]
               tbnfSourcePath

Argparse example
    node tbnf.js xxx.tbnf

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

You might check out [Typed BNF Documentations](https://github.com/thautwarm/Typed-BNF/blob/main/documentations.md).

## A basic example: `JSON`

Such grammar is compiled into Python, OCaml and CSharp. See [runtests](https://github.com/thautwarm/typed-bnf/tree/main/runtests) directory and `test-*.ps1`.

```ocaml
extern var parseInt : str -> int
extern var parseFlt : str -> float
extern var getStr : token -> str
extern var unesc : str -> str
extern var appendList : <a> (list<a>, a) -> list<a>

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

You can specify the `renamer_config` parameter or use the default one(`tbnf.config.js` in the output directory).

In `tbnf.config.js`, you can define how typenames map from Typed BNF to the backend language.

For instance, this is what we did for CSharp-Antlr4 JSON example: [link](https://github.com/thautwarm/Typed-BNF/blob/main/runtests/ocaml_simple_json/tbnf.config.js).

```javascript
function rename_type(x)
{
    if (x == "str")
        return "string";
    else if (x == 'Json')
        return 'JsonValue';
    else if (x == 'list')
        return 'MyList';
    else if (x == 'token')
        return 'IToken';
    else
        return x;
}

module.exports = { rename_type };
```

<!-- ```python
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
``` -->

Typed BNF has 7 built-in types: `token`, `tuple`, `list`, `int`, `float`, `str` and `bool`.

Typed BNF ships with no built-in functions, which makes it suitable to write portable grammars without ruling out semantic actions.

P.S: Unlike other backends, the OCaml-Menhir backend requires some manual works and is tedious in this sense. It requires user to explicitly specify the module-qualified type of the `start` rule, which can be solved by adding a config variable `start_rule_qualified_type` in `tbnf.config.js`. Besides, you must map the type `token` to `tbnf_token`.

This is [the config for our example OCaml json parser](https://github.com/thautwarm/Typed-BNF/blob/master/runtests/ocaml_simple_json/tbnf.config.js):

```javascript
start_rule_qualified_type = "Simple_json_construct.json"

...
```


## How to write new backends

Check out `Backends.*.fs`

## Build from source

### Build Standalone JS Package

This requires the original host implemented in Python. You might need to call `pip install -e .`.

```
git clone https://github.com/thautwarm/Fable.Sedlex FableSedlex
npm install -g typescript antlr4ts-cli
cd tbnf-js && npm install && cd ..
bash ./build-js-package.sh
```

### Build grammar for Typed BNF
```
./build-metaparser.ps1
```

### Build Python `_tbnf` package (Out-of-date)

```
git clone https://github.com/thautwarm/Fable.Sedlex FableSedlex
./build-package.ps1
```
