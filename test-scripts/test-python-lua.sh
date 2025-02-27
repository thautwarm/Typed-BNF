mkdir -p ./runtests/python_lua
./dist/TBNF.CLI ./runtests/lua.tbnf -o ./runtests/python_lua -lang "lua" -be python-lark
python run_lua_parser.py
