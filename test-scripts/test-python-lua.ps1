try
{ mkdir ./runtests/python_lua -ErrorAction Stop }
catch { }

node tbnf.js  -i ./runtests/lua.tbnf -o ./runtests/python_lua -lang "lua" -be python-lark

python run_lua_parser.py