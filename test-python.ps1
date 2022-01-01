python .\runcli.py  .\runtests\simple_json.tbnf .\runtests\python_simple_json "simple_json"
python run_generated_parser.py

try
{ mkdir ./runtests/python_lua -ErrorAction Stop }
catch { }

# python .\runcli.py  .\runtests\lua.tbnf .\runtests\python_lua "lua"