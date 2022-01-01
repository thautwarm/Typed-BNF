from __future__ import annotations
from .simple_json_require import (appendList,jsonBool,jsonDict,jsonList,jsonNull,jsonStr,jsonFlt,jsonInt,unesc,getStr,parseFlt,parseInt)
from .simple_json_lexer import lexall as lexall
from lark.lexer import Lexer as Lexer
from lark import Token as Token
from lark import Transformer as Transformer
from lark import Lark as Lark
from _tbnf.FableSedlex.sedlex import from_ustring as from_ustring

tokenmaps = ["FLOAT", "INT", "STR", "_I__S__I_", "_I__G__I_", "_I__N__I_", "_I__P__I_", "_I_FALSE_I_", "_I_NULL_I_", "_I_TRUE_I_", "_I__T__I_", "_I__V__I_", "UNKNOWN"]

def construct_token(token_id, lexeme, line, col, span, offset, file):
    if token_id == -1: return Token("EOF", "")
    return Token(tokenmaps[token_id], lexeme, offset, line, col, None, None, span + offset)

def is_eof(token):
    return token.type == "EOF"
class Sedlex(Lexer):
    def __init__(self, lex_conf):
        pass
    def lex(self, raw_string):
        lexbuf = from_ustring(raw_string)
        return lexall(lexbuf, construct_token, is_eof)

class RBNFTransformer(Transformer):
    def json_9(self, __tbnf_COMPONENTS):
        return jsonDict(__tbnf_COMPONENTS[1])
    
    def json_8(self, __tbnf_COMPONENTS):
        return jsonList(__tbnf_COMPONENTS[1])
    
    def json_7(self, __tbnf_COMPONENTS):
        return jsonBool(False)
    
    def json_6(self, __tbnf_COMPONENTS):
        return jsonBool(True)
    
    def json_5(self, __tbnf_COMPONENTS):
        return jsonDict([])
    
    def json_4(self, __tbnf_COMPONENTS):
        return jsonList([])
    
    def json_3(self, __tbnf_COMPONENTS):
        return jsonStr(unesc(getStr(__tbnf_COMPONENTS[0])))
    
    def json_2(self, __tbnf_COMPONENTS):
        return jsonNull
    
    def json_1(self, __tbnf_COMPONENTS):
        return jsonFlt(parseFlt(getStr(__tbnf_COMPONENTS[0])))
    
    def json_0(self, __tbnf_COMPONENTS):
        return jsonInt(parseInt(getStr(__tbnf_COMPONENTS[0])))
    
    def seplist_n__i__s__i__s_jsonpair_p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def seplist_n__i__s__i__s_jsonpair_p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def seplist_n__i__s__i__s_json_p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def seplist_n__i__s__i__s_json_p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def jsonpair_0(self, __tbnf_COMPONENTS):
        return (unesc(getStr(__tbnf_COMPONENTS[0])), __tbnf_COMPONENTS[2])
    
    def start_0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    pass

with (__import__('pathlib').Path(__file__).parent /'simple_json.lark').open(encoding='utf8') as __0123fx9:
    grammar = __0123fx9.read()

parser = Lark(grammar, start='start', parser='lalr', lexer=Sedlex, transformer=RBNFTransformer(), keep_all_tokens=True)
