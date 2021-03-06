from runtests.python_simple_json.simple_json_parser import parser
from pprint import pprint
pprint(parser.parse(r"""{
    "x": {
            "a": [2],
            "z": [2, 3, 4],
            "s": [2, 5, {}, "\"asda\"da"]
        }
}"""))

from runtests.python_lua.lua_lexer import lex, lexall, Token
from _tbnf.FableSedlex.sedlex import from_ustring
def is_eof(x):
    return x.token_id == -1


from runtests.python_lua.lua_parser import parser, tokenreprs, tokenmaps, lexall
from runtests.python_lua.lua_lexer import lexall, Token
from pprint import pprint
from lark import exceptions

get_repr = dict(zip(tokenmaps, tokenreprs))

# for e in list(lexall(from_ustring(" function "), Token, is_eof)):
#     if e.token_id != -1:
#         print(tokenmaps[e.token_id])
    
try:
    pprint(parser.parse(r"""function g()
    return {1, 2}
end
function f()
    local y = {1, 2}
    local x
    x, y[1] = g()
end
"""))
except exceptions.UnexpectedToken as e:
    print([get_repr[i] for i in e.expected])
    raise


