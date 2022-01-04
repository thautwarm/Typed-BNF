dotnet run --project .\runtests\csharp_lua\lua.csproj "parser-data\test.lua" "benchmark-results\csharp-parse-lua"
dotnet run --project .\runtests\csharp_simple_json\simple_json.csproj "parser-data\test.json" "benchmark-results\csharp-parse-json"

$setup=@'
from runtests.python_simple_json.simple_json_parser import parser;data=open(\"parser-data/test.json\").read()
'@

python -m timeit -s $setup "parser.parse(data)"


$setup=@'
from runtests.python_lua.lua_parser import parser, tokenreprs, tokenmaps
from lark import exceptions
get_repr = dict(zip(tokenmaps, tokenreprs))
data=open(\"parser-data/test.lua\").read()
def parse(data):
    try:
        return parser.parse(data)
    except exceptions.UnexpectedToken as e:
        print([get_repr[i] for i in e.expected])
        raise
'@

python -m timeit -s $setup "parse(data)"
