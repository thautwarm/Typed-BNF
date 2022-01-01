from __future__ import annotations
from .lua_require import (mkTableConstructor,mkAttr,mkIndex,mkCallMethod,mkCallFunc,mkTableExpr,mkNestedExp,mkNot,mkInv,mkNeg,mkLen,mkExponent,mkEllipse,mkString,mkNum,mkBool,mkNil,mkVar,mkFuncDef,mkForInStmt,mkForRangeStmt,mkElseBlock,mkElifBlock,mkIfStmt,mkRepeatStmt,mkWhileStmt,mkDoStmt,mkGotoStmt,mkBreakStmt,mkLabelStmt,mkExprStmt,mkAssignment,mkEmptyStmt,mkReturnStmt,mkBlock,mkElementField,mkNameField,mkIndexField,mkStringArg,mkTableArgs,mkPositionalArgs,mkParams,mkRange,mkBinOpSeq,mkOperand,mkOperator,none,some,listMap,appendList)
from .lua_lexer import lexall as lexall
from lark.lexer import Lexer as Lexer
from lark import Token as Token
from lark import Transformer as Transformer
from lark import Lark as Lark
from _tbnf.FableSedlex.sedlex import from_ustring as from_ustring

tokenmaps = ["BINOP", "NAME", "NUMERAL", "STR_LIT", "FIELDSEP", "_I__J__I__J", "_I__O__I_", "_I__P__I_", "_I__S__I_", "_I__T__I_", "_I__U__I_", "_I__U__U__U__I_", "_I__G__I_", "_I__G__G__I_", "_I__H__I_", "_I__J__I_", "_I__N__I_", "_I__P__I__J", "_I__Q__I_", "_I_BREAK_I_", "_I_DO_I_", "_I_ELSE_I_", "_I_ELSEIF_I_", "_I_END_I_", "_I_FALSE_I_", "_I_FOR_I_", "_I_FUNCTION_I_", "_I_GOTO_I_", "_I_IF_I_", "_I_IN_I_", "_I_LOCAL_I_", "_I_NIL_I_", "_I_NOT_I_", "_I_REPEAT_I_", "_I_RETURN_I_", "_I_THEN_I_", "_I_TRUE_I_", "_I_UNTIL_I_", "_I_WHILE_I_", "_I__T__I__J", "_I__V__I_", "_I__W__I_", "UNKNOWN"]

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
    def field_2(self, __tbnf_COMPONENTS):
        return mkElementField(__tbnf_COMPONENTS[0])
    
    def field_1(self, __tbnf_COMPONENTS):
        return mkNameField(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def field_0(self, __tbnf_COMPONENTS):
        return mkIndexField(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[4])
    
    def tableconstructor_0(self, __tbnf_COMPONENTS):
        return mkTableConstructor(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def opt_n__i_fieldsep_k__p__1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_n__i_fieldsep_k__p__0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[0])
    
    def seplist_n__i_fieldsep_k__s_field_p__0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_n_nempty_seplist_n__i_fieldsep_k__s_field_p__p__1(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_n_nempty_seplist_n__i_fieldsep_k__s_field_p__p__0(self, __tbnf_COMPONENTS):
        return []
    
    def nempty_seplist_n__i_fieldsep_k__s_field_p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def nempty_seplist_n__i_fieldsep_k__s_field_p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def parlist_1(self, __tbnf_COMPONENTS):
        return mkParams(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def parlist_0(self, __tbnf_COMPONENTS):
        return mkParams([], some(__tbnf_COMPONENTS[0]))
    
    def nempty_seplist_n__i__s__i__s__i_name_k__p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def nempty_seplist_n__i__s__i__s__i_name_k__p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def varargs_1(self, __tbnf_COMPONENTS):
        return none()
    
    def varargs_0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[1])
    
    def functiondef_0(self, __tbnf_COMPONENTS):
        return mkFuncDef(__tbnf_COMPONENTS[0], False, __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3], __tbnf_COMPONENTS[5])
    
    def opt_n_parlist_p__1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_n_parlist_p__0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[0])
    
    def opt_n__i_name_k__p__1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_n__i_name_k__p__0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[0])
    
    def args_2(self, __tbnf_COMPONENTS):
        return mkStringArg(__tbnf_COMPONENTS[0])
    
    def args_1(self, __tbnf_COMPONENTS):
        return mkTableArgs(__tbnf_COMPONENTS[0])
    
    def args_0(self, __tbnf_COMPONENTS):
        return mkPositionalArgs(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def seplist_n__i__s__i__s_exp_p__0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_n_nempty_seplist_n__i__s__i__s_exp_p__p__1(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_n_nempty_seplist_n__i__s__i__s_exp_p__p__0(self, __tbnf_COMPONENTS):
        return []
    
    def nempty_seplist_n__i__s__i__s_exp_p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def nempty_seplist_n__i__s__i__s_exp_p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def functioncall_1(self, __tbnf_COMPONENTS):
        return mkCallMethod(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2], __tbnf_COMPONENTS[3])
    
    def functioncall_0(self, __tbnf_COMPONENTS):
        return mkCallFunc(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def prefixexp_2(self, __tbnf_COMPONENTS):
        return mkNestedExp(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def prefixexp_1(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def prefixexp_0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def binseq_1(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def binseq_0(self, __tbnf_COMPONENTS):
        return appendList(appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1]), __tbnf_COMPONENTS[2])
    
    def binoperand_0(self, __tbnf_COMPONENTS):
        return mkOperand(__tbnf_COMPONENTS[0])
    
    def binop_0(self, __tbnf_COMPONENTS):
        return mkOperator(__tbnf_COMPONENTS[0])
    
    def binexp_0(self, __tbnf_COMPONENTS):
        return mkBinOpSeq(__tbnf_COMPONENTS[0])
    
    def unaryexp_3(self, __tbnf_COMPONENTS):
        return mkNot(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def unaryexp_2(self, __tbnf_COMPONENTS):
        return mkInv(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def unaryexp_1(self, __tbnf_COMPONENTS):
        return mkNeg(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def unaryexp_0(self, __tbnf_COMPONENTS):
        return mkLen(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def exponent_1(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def exponent_0(self, __tbnf_COMPONENTS):
        return mkExponent(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def exp_9(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def exp_8(self, __tbnf_COMPONENTS):
        return mkTableExpr(__tbnf_COMPONENTS[0])
    
    def exp_7(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def exp_6(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def exp_5(self, __tbnf_COMPONENTS):
        return mkEllipse(__tbnf_COMPONENTS[0])
    
    def exp_4(self, __tbnf_COMPONENTS):
        return mkString(__tbnf_COMPONENTS[0])
    
    def exp_3(self, __tbnf_COMPONENTS):
        return mkNum(__tbnf_COMPONENTS[0])
    
    def exp_2(self, __tbnf_COMPONENTS):
        return mkBool(__tbnf_COMPONENTS[0], True)
    
    def exp_1(self, __tbnf_COMPONENTS):
        return mkBool(__tbnf_COMPONENTS[0], False)
    
    def exp_0(self, __tbnf_COMPONENTS):
        return mkNil(__tbnf_COMPONENTS[0])
    
    def var_2(self, __tbnf_COMPONENTS):
        return mkAttr(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def var_1(self, __tbnf_COMPONENTS):
        return mkIndex(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def var_0(self, __tbnf_COMPONENTS):
        return mkVar(__tbnf_COMPONENTS[0])
    
    def else__x__0(self, __tbnf_COMPONENTS):
        return mkElseBlock(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def elseif_0(self, __tbnf_COMPONENTS):
        return mkElifBlock(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3])
    
    def range_tail_1(self, __tbnf_COMPONENTS):
        return none()
    
    def range_tail_0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[1])
    
    def range_0(self, __tbnf_COMPONENTS):
        return mkRange(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2], __tbnf_COMPONENTS[3])
    
    def opt_assign_rhs_1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_assign_rhs_0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[1])
    
    def stat_14(self, __tbnf_COMPONENTS):
        return mkAssignment(True, listMap(__tbnf_COMPONENTS[1], mkVar), __tbnf_COMPONENTS[2])
    
    def stat_13(self, __tbnf_COMPONENTS):
        return mkExprStmt(mkFuncDef(__tbnf_COMPONENTS[0], True, some(__tbnf_COMPONENTS[2]), __tbnf_COMPONENTS[4], __tbnf_COMPONENTS[6]))
    
    def stat_12(self, __tbnf_COMPONENTS):
        return mkExprStmt(__tbnf_COMPONENTS[0])
    
    def stat_11(self, __tbnf_COMPONENTS):
        return mkForInStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3], __tbnf_COMPONENTS[5])
    
    def stat_10(self, __tbnf_COMPONENTS):
        return mkForRangeStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3], __tbnf_COMPONENTS[5])
    
    def stat_9(self, __tbnf_COMPONENTS):
        return mkIfStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3], __tbnf_COMPONENTS[4])
    
    def stat_8(self, __tbnf_COMPONENTS):
        return mkRepeatStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3])
    
    def stat_7(self, __tbnf_COMPONENTS):
        return mkWhileStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1], __tbnf_COMPONENTS[3])
    
    def stat_6(self, __tbnf_COMPONENTS):
        return mkDoStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def stat_5(self, __tbnf_COMPONENTS):
        return mkGotoStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def stat_4(self, __tbnf_COMPONENTS):
        return mkBreakStmt(__tbnf_COMPONENTS[0])
    
    def stat_3(self, __tbnf_COMPONENTS):
        return mkLabelStmt(__tbnf_COMPONENTS[1])
    
    def stat_2(self, __tbnf_COMPONENTS):
        return mkExprStmt(__tbnf_COMPONENTS[0])
    
    def stat_1(self, __tbnf_COMPONENTS):
        return mkAssignment(False, __tbnf_COMPONENTS[0], some(__tbnf_COMPONENTS[2]))
    
    def stat_0(self, __tbnf_COMPONENTS):
        return mkEmptyStmt(__tbnf_COMPONENTS[0])
    
    def opt_n_else_p__1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_n_else_p__0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[0])
    
    def list_n_elseif_p__0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_n_nempty_list_n_elseif_p__p__1(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_n_nempty_list_n_elseif_p__p__0(self, __tbnf_COMPONENTS):
        return []
    
    def nempty_list_n_elseif_p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def nempty_list_n_elseif_p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def nempty_seplist_n__i__s__i__s_var_p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[2])
    
    def nempty_seplist_n__i__s__i__s_var_p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def retstat_0(self, __tbnf_COMPONENTS):
        return mkReturnStmt(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def block_0(self, __tbnf_COMPONENTS):
        return mkBlock(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def opt_n_retstat_p__1(self, __tbnf_COMPONENTS):
        return none()
    
    def opt_n_retstat_p__0(self, __tbnf_COMPONENTS):
        return some(__tbnf_COMPONENTS[0])
    
    def list_n_stat_p__0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_n_nempty_list_n_stat_p__p__1(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    def allow_empty_n_nempty_list_n_stat_p__p__0(self, __tbnf_COMPONENTS):
        return []
    
    def nempty_list_n_stat_p__1(self, __tbnf_COMPONENTS):
        return appendList(__tbnf_COMPONENTS[0], __tbnf_COMPONENTS[1])
    
    def nempty_list_n_stat_p__0(self, __tbnf_COMPONENTS):
        return [__tbnf_COMPONENTS[0]]
    
    def start_0(self, __tbnf_COMPONENTS):
        return __tbnf_COMPONENTS[0]
    
    pass

with (__import__('pathlib').Path(__file__).parent /'lua.lark').open(encoding='utf8') as __0123fx9:
    grammar = __0123fx9.read()

parser = Lark(grammar, start='start', parser='lalr', lexer=Sedlex, transformer=RBNFTransformer(), keep_all_tokens=True)
