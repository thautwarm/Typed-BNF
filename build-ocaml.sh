python ./runcli.py  ./runtests/simple_json.tbnf ./runtests/ocaml_simple_json/ "simple_json" --backend ocaml-menhir

menhir runtests/ocaml_simple_json/simple_json_parser.mly --e
xternal-tokens Simple_json_lexer


cd runtests/ocaml_simple_json/ && dune build

# 'dune utop .' start interactive env
# utop> Apis.parse_json "<json_string>"
