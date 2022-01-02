try
{ mkdir ./runtests/python_lua -ErrorAction Stop }
catch { }

python .\runcli.py  .\runtests\lua.tbnf .\runtests\python_lua "lua"
pyhon run_lua_parser.py