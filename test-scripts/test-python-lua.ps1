mkdir -p ./runtests/python_lua
node tbnf.js ./runtests/lua.tbnf -o ./runtests/python_lua -lang "lua" -be python-lark
python run_lua_parser.py
