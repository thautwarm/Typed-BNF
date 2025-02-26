mkdir -p ./runtests/ocaml_lua

tbnf ./runtests/lua.tbnf -o ./runtests/ocaml_lua -lang "lua" --backend=ocaml-menhir

# python .\runcli.py  .\runtests\lua.tbnf .\runtests\ocaml_lua "lua" --backend=ocaml-menhir

bash -c -i "menhir runtests/ocaml_lua/lua_parser.mly --external-tokens Lua_lexer"

bash -c -i "cd runtests/ocaml_lua/ && dune build && dune utop ."

bash -c -i "cd runtests/ocaml_lua/ && dune build && dune utop ."