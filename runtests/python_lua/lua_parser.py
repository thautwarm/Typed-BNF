from __future__ import annotations
from .lua_require import (mkBinOpSeq,mkOperand,mkOperator,op,none,some,maybe,listMap,appendList)
from .lua_lexer import lexall as lexall
from .lua_construct import *
from lark.lexer import Lexer as Lexer
from lark import Transformer as Transformer
from lark import Lark as Lark
from _tbnf.FableSedlex.sedlex import from_ustring as from_ustring
tokenmaps = ["_I__J__I__J", "_I__L__I_", "_I__M__I_", "_I__O__I_", "_I__P__I_", "_I__Q__I__J", "_I__R__I_", "_I__S__I_", "_I__T__I_", "_I__U__I_", "_I__U__U__I_", "_I__U__U__U__I_", "_I__V__I__J", "_I__V__V__I_", "_I__G__I_", "_I__G__G__I_", "_I__H__I_", "_I__I__I_", "_I__I__I__I_", "_I__I__J__I_", "_I__J__I_", "_I__J__J__I_", "_I__K__I_", "_I__K__J__I_", "_I__K__K__I_", "_I__N__I_", "_I__P__I__J", "_I__Q__I_", "_I_AND_I_", "_I_BREAK_I_", "_I_DO_I_", "_I_ELSE_I_", "_I_ELSEIF_I_", "_I_END_I_", "_I_FALSE_I_", "_I_FOR_I_", "_I_FUNCTION_I_", "_I_GOTO_I_", "_I_IF_I_", "_I_IN_I_", "_I_LOCAL_I_", "_I_NIL_I_", "_I_NOT_I_", "_I_OR_I_", "_I_REPEAT_I_", "_I_RETURN_I_", "_I_THEN_I_", "_I_TRUE_I_", "_I_UNTIL_I_", "_I_WHILE_I_", "_I__T__I__J", "_I__U__I__J", "_I__V__I_", "_I__W__I_", "_I__W__J__I_", "NAME", "NESTED_STR", "NUMERAL", "STR_LIT", "UNKNOWN"]
tokenreprs = ["\"#\"", "\"%\"", "\"&\"", "\"(\"", "\")\"", "\"*\"", "\"+\"", "\",\"", "\"-\"", "\".\"", "\"..\"", "\"...\"", "\"/\"", "\"//\"", "\":\"", "\"::\"", "\";\"", "\"<\"", "\"<<\"", "\"<=\"", "\"=\"", "\"==\"", "\">\"", "\">=\"", "\">>\"", "\"[\"", "\"]\"", "\"^\"", "\"and\"", "\"break\"", "\"do\"", "\"else\"", "\"elseif\"", "\"end\"", "\"false\"", "\"for\"", "\"function\"", "\"goto\"", "\"if\"", "\"in\"", "\"local\"", "\"nil\"", "\"not\"", "\"or\"", "\"repeat\"", "\"return\"", "\"then\"", "\"true\"", "\"until\"", "\"while\"", "\"{\"", "\"|\"", "\"}\"", "\"~\"", "\"~=\"", "NAME", "NESTED_STR", "NUMERAL", "STR_LIT", "UNKNOWN"]

def construct_token(token_id, lexeme, line, col, span, offset, file):
    if token_id == -1: return token("EOF", "")
    return token(tokenmaps[token_id], lexeme, offset, line, col, None, None, span + offset)

def is_eof(token):
    return token.type == "EOF"
class Sedlex(Lexer):
    def __init__(self, lex_conf):
        pass
    def lex(self, raw_string):
        lexbuf = from_ustring(raw_string)
        return lexall(lexbuf, construct_token, is_eof)

class RBNFTransformer(Transformer):
    def binop_19(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_18(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_17(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_16(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_15(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_14(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_13(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_12(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_11(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_10(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_9(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_8(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_7(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_6(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_5(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_4(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_3(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_2(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_1(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binop_0(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def fieldsep_1(self, __tbnf_COMPONENTS):
        return 0
    
    def fieldsep_0(self, __tbnf_COMPONENTS):
        return 0
    
    def field_2(self, __tbnf_COMPONENTS):
        return ElementField(__tbnf_COMPONENTS[0])
    
    def field_1(self, __tbnf_COMPONENTS):
        return NameField(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def field_0(self, __tbnf_COMPONENTS):
        return IndexField(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[4])
    
    def tableconstructor_0(self, __tbnf_COMPONENTS):
        return TableConstructor(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def opt_o_fieldsep_p__1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_o_fieldsep_p__0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[0])
    
    def seplist_o_fieldsep_s_field_p__0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p__1(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_o_nempty_seplist_o_fieldsep_s_field_p__p__0(self, __tbnf_COMPONENTS):
        return []
    
    def nempty_seplist_o_fieldsep_s_field_p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def nempty_seplist_o_fieldsep_s_field_p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def parlist_1(self, __tbnf_COMPONENTS):
        return params(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def parlist_0(self, __tbnf_COMPONENTS):
        return params([], some(__tbnf_COMPONENTS[0]))
    
    def nempty_seplist_o__i__s__i__s__i_name_k__p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def nempty_seplist_o__i__s__i__s__i_name_k__p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def varargs_1(self, __tbnf_COMPONENTS):
        return none()
    
    def varargs_0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[1])
    
    def functiondef_0(self, __tbnf_COMPONENTS):
        return FuncDef(__tbnf_COMPONENTS[0], False, __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3], __tbnf_COMPONENTS[5])
    
    def opt_o_parlist_p__1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_o_parlist_p__0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[0])
    
    def opt_o__i_name_k__p__1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_o__i_name_k__p__0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[0])
    
    def args_2(self, __tbnf_COMPONENTS):
        return StringArg(__tbnf_COMPONENTS[0])
    
    def args_1(self, __tbnf_COMPONENTS):
        return TableArgs(__tbnf_COMPONENTS[0])
    
    def args_0(self, __tbnf_COMPONENTS):
        return PositionalArgs(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def seplist_o__i__s__i__s_exp_p__0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__1(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__0(self, __tbnf_COMPONENTS):
        return []
    
    def nempty_seplist_o__i__s__i__s_exp_p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def nempty_seplist_o__i__s__i__s_exp_p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def atom_8(self, __tbnf_COMPONENTS):
        return TableExpr(__tbnf_COMPONENTS[0])
    
    def atom_7(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def atom_6(self, __tbnf_COMPONENTS):
        return Ellipse(__tbnf_COMPONENTS[0])
    
    def atom_5(self, __tbnf_COMPONENTS):
        return String(__tbnf_COMPONENTS[0])
    
    def atom_4(self, __tbnf_COMPONENTS):
        return String(__tbnf_COMPONENTS[0])
    
    def atom_3(self, __tbnf_COMPONENTS):
        return Num(__tbnf_COMPONENTS[0])
    
    def atom_2(self, __tbnf_COMPONENTS):
        return Bool(__tbnf_COMPONENTS[0], True)
    
    def atom_1(self, __tbnf_COMPONENTS):
        return Bool(__tbnf_COMPONENTS[0], False)
    
    def atom_0(self, __tbnf_COMPONENTS):
        return Nil(__tbnf_COMPONENTS[0])
    
    def prefixexp_6(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def prefixexp_5(self, __tbnf_COMPONENTS):
        return Attr(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def prefixexp_4(self, __tbnf_COMPONENTS):
        return Index(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def prefixexp_3(self, __tbnf_COMPONENTS):
        return CallMethod(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2], __tbnf_COMPONENTS[3])
    
    def prefixexp_2(self, __tbnf_COMPONENTS):
        return CallFunc(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def prefixexp_1(self, __tbnf_COMPONENTS):
        return NestedExp(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def prefixexp_0(self, __tbnf_COMPONENTS):
        return Var(__tbnf_COMPONENTS[0])
    
    def exponent_1(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def exponent_0(self, __tbnf_COMPONENTS):
        return Exponent(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def unaryexp_4(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def unaryexp_3(self, __tbnf_COMPONENTS):
        return Not(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def unaryexp_2(self, __tbnf_COMPONENTS):
        return Inv(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def unaryexp_1(self, __tbnf_COMPONENTS):
        return Neg(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def unaryexp_0(self, __tbnf_COMPONENTS):
        return Len(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def binoperand_0(self, __tbnf_COMPONENTS):
        return mkOperand(__tbnf_COMPONENTS[0])
    
    def binseq_1(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def binseq_0(self, __tbnf_COMPONENTS):
        return appendList(appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1]), __tbnf_COMPONENTS[2])
    
    def binexp_0(self, __tbnf_COMPONENTS):
        return mkBinOpSeq(__tbnf_COMPONENTS[0], Bin, UnsolvedBin)
    
    def exp_0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def else__x__0(self, __tbnf_COMPONENTS):
        return if_else(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def elseif_0(self, __tbnf_COMPONENTS):
        return if_elseif(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3])
    
    def range_tail_1(self, __tbnf_COMPONENTS):
        return none()
    
    def range_tail_0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[1])
    
    def range_0(self, __tbnf_COMPONENTS):
        return range(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2], __tbnf_COMPONENTS[3])
    
    def opt_assign_rhs_1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_assign_rhs_0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[1])
    
    def stat_13(self, __tbnf_COMPONENTS):
        return Assignment(True, listMap(__tbnf_COMPONENTS[1], Var), __tbnf_COMPONENTS[2])
    
    def stat_12(self, __tbnf_COMPONENTS):
        return ExprStmt(FuncDef(__tbnf_COMPONENTS[0], True, some(__tbnf_COMPONENTS[2]), __tbnf_COMPONENTS[4], __tbnf_COMPONENTS[6]))
    
    def stat_11(self, __tbnf_COMPONENTS):
        return ForInStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3], __tbnf_COMPONENTS[5])
    
    def stat_10(self, __tbnf_COMPONENTS):
        return ForRangeStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3], __tbnf_COMPONENTS[5])
    
    def stat_9(self, __tbnf_COMPONENTS):
        return IfStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3], __tbnf_COMPONENTS[4])
    
    def stat_8(self, __tbnf_COMPONENTS):
        return RepeatStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3])
    
    def stat_7(self, __tbnf_COMPONENTS):
        return WhileStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3])
    
    def stat_6(self, __tbnf_COMPONENTS):
        return DoStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def stat_5(self, __tbnf_COMPONENTS):
        return GotoStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def stat_4(self, __tbnf_COMPONENTS):
        return BreakStmt(__tbnf_COMPONENTS[0])
    
    def stat_3(self, __tbnf_COMPONENTS):
        return LabelStmt(__tbnf_COMPONENTS[1])
    
    def stat_2(self, __tbnf_COMPONENTS):
        return ExprStmt(__tbnf_COMPONENTS[0])
    
    def stat_1(self, __tbnf_COMPONENTS):
        return Assignment(False, __tbnf_COMPONENTS[0], some(__tbnf_COMPONENTS[2]))
    
    def stat_0(self, __tbnf_COMPONENTS):
        return EmptyStmt(__tbnf_COMPONENTS[0])
    
    def opt_o_else_p__1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_o_else_p__0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[0])
    
    def list_o_elseif_p__0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_o_nempty_list_o_elseif_p__p__1(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_o_nempty_list_o_elseif_p__p__0(self, __tbnf_COMPONENTS):
        return []
    
    def nempty_list_o_elseif_p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def nempty_list_o_elseif_p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def retstat_0(self, __tbnf_COMPONENTS):
        return ReturnStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def opt_o__i__h__i__p__1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_o__i__h__i__p__0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[0])
    
    def block_0(self, __tbnf_COMPONENTS):
        return block(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def opt_o_retstat_p__1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_o_retstat_p__0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[0])
    
    def list_o_stat_p__0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_o_nempty_list_o_stat_p__p__1(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_o_nempty_list_o_stat_p__p__0(self, __tbnf_COMPONENTS):
        return []
    
    def nempty_list_o_stat_p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def nempty_list_o_stat_p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def start_0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    pass

with (__import__('pathlib').Path(__file__).parent /'lua.lark').open(encoding='utf8') as __0123fx9:
    grammar = __0123fx9.read()

parser = Lark(grammar, start='start', parser='lalr', lexer=Sedlex, transformer=RBNFTransformer(), keep_all_tokens=True)
