// Generated from ./runtests/typescript_lua/src/lua.g4 by ANTLR 4.9.0-SNAPSHOT


import { DotName, MethodName, VarName, funcname_t, PositionalArgs, StringArg, TableArgs, arguments_t, TableConstructor, table_t, ElementField, IndexField, NameField, table_field_t, Assignment, BreakStmt, DoStmt, EmptyStmt, ExprStmt, ForInStmt, ForRangeStmt, GotoStmt, IfStmt, LabelStmt, RepeatStmt, ReturnStmt, WhileStmt, stmt_t, Attr, Bin, Bool, CallFunc, CallMethod, Ellipse, Exponent, FuncDef, Index, Inv, Len, Neg, NestedExp, Nil, Not, Num, String, TableExpr, UnsolvedBin, Var, expr_t, block_t, block, range_t, range, if_elseif_t, if_elseif, if_else_t, if_else, params_t, params, op_t, maybe_t, mkBinOpSeq, mkOperand, mkOperator, none, some, listMap, appendList } from "./lua-constructor"
import * as antlr from 'antlr4ts'


import { ParseTreeListener } from "antlr4ts/tree/ParseTreeListener";

import { StartContext } from "./luaParser";
import { Start__y_Context } from "./luaParser";
import { Nempty_list_o_stat_p_Context } from "./luaParser";
import { Allow_empty_o_nempty_list_o_stat_p__p_Context } from "./luaParser";
import { List_o_stat_p_Context } from "./luaParser";
import { Opt_o_retstat_p_Context } from "./luaParser";
import { BlockContext } from "./luaParser";
import { Opt_o__i__h__i__p_Context } from "./luaParser";
import { RetstatContext } from "./luaParser";
import { Nempty_list_o_elseif_p_Context } from "./luaParser";
import { Allow_empty_o_nempty_list_o_elseif_p__p_Context } from "./luaParser";
import { List_o_elseif_p_Context } from "./luaParser";
import { Opt_o_else_p_Context } from "./luaParser";
import { StatContext } from "./luaParser";
import { Opt_assign_rhsContext } from "./luaParser";
import { RangeContext } from "./luaParser";
import { Range_tailContext } from "./luaParser";
import { ElseifContext } from "./luaParser";
import { Else__x_Context } from "./luaParser";
import { ExpContext } from "./luaParser";
import { BinexpContext } from "./luaParser";
import { BinseqContext } from "./luaParser";
import { BinoperandContext } from "./luaParser";
import { UnaryexpContext } from "./luaParser";
import { ExponentContext } from "./luaParser";
import { PrefixexpContext } from "./luaParser";
import { AtomContext } from "./luaParser";
import { Nempty_seplist_o__i__s__i__s_exp_p_Context } from "./luaParser";
import { Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context } from "./luaParser";
import { Seplist_o__i__s__i__s_exp_p_Context } from "./luaParser";
import { ArgsContext } from "./luaParser";
import { Opt_o_funcname_p_Context } from "./luaParser";
import { Opt_o_parlist_p_Context } from "./luaParser";
import { FunctiondefContext } from "./luaParser";
import { VarargsContext } from "./luaParser";
import { Nempty_seplist_o__i__s__i__s__i_name_k__p_Context } from "./luaParser";
import { ParlistContext } from "./luaParser";
import { Nempty_seplist_o_fieldsep_s_field_p_Context } from "./luaParser";
import { Opt_o_fieldsep_p_Context } from "./luaParser";
import { TableconstructorContext } from "./luaParser";
import { FuncnameContext } from "./luaParser";
import { FieldContext } from "./luaParser";
import { FieldsepContext } from "./luaParser";
import { BinopContext } from "./luaParser";


/**
 * This interface defines a complete listener for a parse tree produced by
 * `luaParser`.
 */
export interface luaListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by `luaParser.start`.
	 * @param ctx the parse tree
	 */
	enterStart?: (ctx: StartContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.start`.
	 * @param ctx the parse tree
	 */
	exitStart?: (ctx: StartContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.start__y_`.
	 * @param ctx the parse tree
	 */
	enterStart__y_?: (ctx: Start__y_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.start__y_`.
	 * @param ctx the parse tree
	 */
	exitStart__y_?: (ctx: Start__y_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.nempty_list_o_stat_p_`.
	 * @param ctx the parse tree
	 */
	enterNempty_list_o_stat_p_?: (ctx: Nempty_list_o_stat_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.nempty_list_o_stat_p_`.
	 * @param ctx the parse tree
	 */
	exitNempty_list_o_stat_p_?: (ctx: Nempty_list_o_stat_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.allow_empty_o_nempty_list_o_stat_p__p_`.
	 * @param ctx the parse tree
	 */
	enterAllow_empty_o_nempty_list_o_stat_p__p_?: (ctx: Allow_empty_o_nempty_list_o_stat_p__p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.allow_empty_o_nempty_list_o_stat_p__p_`.
	 * @param ctx the parse tree
	 */
	exitAllow_empty_o_nempty_list_o_stat_p__p_?: (ctx: Allow_empty_o_nempty_list_o_stat_p__p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.list_o_stat_p_`.
	 * @param ctx the parse tree
	 */
	enterList_o_stat_p_?: (ctx: List_o_stat_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.list_o_stat_p_`.
	 * @param ctx the parse tree
	 */
	exitList_o_stat_p_?: (ctx: List_o_stat_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.opt_o_retstat_p_`.
	 * @param ctx the parse tree
	 */
	enterOpt_o_retstat_p_?: (ctx: Opt_o_retstat_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.opt_o_retstat_p_`.
	 * @param ctx the parse tree
	 */
	exitOpt_o_retstat_p_?: (ctx: Opt_o_retstat_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.block`.
	 * @param ctx the parse tree
	 */
	enterBlock?: (ctx: BlockContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.block`.
	 * @param ctx the parse tree
	 */
	exitBlock?: (ctx: BlockContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.opt_o__i__h__i__p_`.
	 * @param ctx the parse tree
	 */
	enterOpt_o__i__h__i__p_?: (ctx: Opt_o__i__h__i__p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.opt_o__i__h__i__p_`.
	 * @param ctx the parse tree
	 */
	exitOpt_o__i__h__i__p_?: (ctx: Opt_o__i__h__i__p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.retstat`.
	 * @param ctx the parse tree
	 */
	enterRetstat?: (ctx: RetstatContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.retstat`.
	 * @param ctx the parse tree
	 */
	exitRetstat?: (ctx: RetstatContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.nempty_list_o_elseif_p_`.
	 * @param ctx the parse tree
	 */
	enterNempty_list_o_elseif_p_?: (ctx: Nempty_list_o_elseif_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.nempty_list_o_elseif_p_`.
	 * @param ctx the parse tree
	 */
	exitNempty_list_o_elseif_p_?: (ctx: Nempty_list_o_elseif_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.allow_empty_o_nempty_list_o_elseif_p__p_`.
	 * @param ctx the parse tree
	 */
	enterAllow_empty_o_nempty_list_o_elseif_p__p_?: (ctx: Allow_empty_o_nempty_list_o_elseif_p__p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.allow_empty_o_nempty_list_o_elseif_p__p_`.
	 * @param ctx the parse tree
	 */
	exitAllow_empty_o_nempty_list_o_elseif_p__p_?: (ctx: Allow_empty_o_nempty_list_o_elseif_p__p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.list_o_elseif_p_`.
	 * @param ctx the parse tree
	 */
	enterList_o_elseif_p_?: (ctx: List_o_elseif_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.list_o_elseif_p_`.
	 * @param ctx the parse tree
	 */
	exitList_o_elseif_p_?: (ctx: List_o_elseif_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.opt_o_else_p_`.
	 * @param ctx the parse tree
	 */
	enterOpt_o_else_p_?: (ctx: Opt_o_else_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.opt_o_else_p_`.
	 * @param ctx the parse tree
	 */
	exitOpt_o_else_p_?: (ctx: Opt_o_else_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.stat`.
	 * @param ctx the parse tree
	 */
	enterStat?: (ctx: StatContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.stat`.
	 * @param ctx the parse tree
	 */
	exitStat?: (ctx: StatContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.opt_assign_rhs`.
	 * @param ctx the parse tree
	 */
	enterOpt_assign_rhs?: (ctx: Opt_assign_rhsContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.opt_assign_rhs`.
	 * @param ctx the parse tree
	 */
	exitOpt_assign_rhs?: (ctx: Opt_assign_rhsContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.range`.
	 * @param ctx the parse tree
	 */
	enterRange?: (ctx: RangeContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.range`.
	 * @param ctx the parse tree
	 */
	exitRange?: (ctx: RangeContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.range_tail`.
	 * @param ctx the parse tree
	 */
	enterRange_tail?: (ctx: Range_tailContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.range_tail`.
	 * @param ctx the parse tree
	 */
	exitRange_tail?: (ctx: Range_tailContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.elseif`.
	 * @param ctx the parse tree
	 */
	enterElseif?: (ctx: ElseifContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.elseif`.
	 * @param ctx the parse tree
	 */
	exitElseif?: (ctx: ElseifContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.else__x_`.
	 * @param ctx the parse tree
	 */
	enterElse__x_?: (ctx: Else__x_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.else__x_`.
	 * @param ctx the parse tree
	 */
	exitElse__x_?: (ctx: Else__x_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.exp`.
	 * @param ctx the parse tree
	 */
	enterExp?: (ctx: ExpContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.exp`.
	 * @param ctx the parse tree
	 */
	exitExp?: (ctx: ExpContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.binexp`.
	 * @param ctx the parse tree
	 */
	enterBinexp?: (ctx: BinexpContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.binexp`.
	 * @param ctx the parse tree
	 */
	exitBinexp?: (ctx: BinexpContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.binseq`.
	 * @param ctx the parse tree
	 */
	enterBinseq?: (ctx: BinseqContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.binseq`.
	 * @param ctx the parse tree
	 */
	exitBinseq?: (ctx: BinseqContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.binoperand`.
	 * @param ctx the parse tree
	 */
	enterBinoperand?: (ctx: BinoperandContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.binoperand`.
	 * @param ctx the parse tree
	 */
	exitBinoperand?: (ctx: BinoperandContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.unaryexp`.
	 * @param ctx the parse tree
	 */
	enterUnaryexp?: (ctx: UnaryexpContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.unaryexp`.
	 * @param ctx the parse tree
	 */
	exitUnaryexp?: (ctx: UnaryexpContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.exponent`.
	 * @param ctx the parse tree
	 */
	enterExponent?: (ctx: ExponentContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.exponent`.
	 * @param ctx the parse tree
	 */
	exitExponent?: (ctx: ExponentContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.prefixexp`.
	 * @param ctx the parse tree
	 */
	enterPrefixexp?: (ctx: PrefixexpContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.prefixexp`.
	 * @param ctx the parse tree
	 */
	exitPrefixexp?: (ctx: PrefixexpContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.atom`.
	 * @param ctx the parse tree
	 */
	enterAtom?: (ctx: AtomContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.atom`.
	 * @param ctx the parse tree
	 */
	exitAtom?: (ctx: AtomContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.nempty_seplist_o__i__s__i__s_exp_p_`.
	 * @param ctx the parse tree
	 */
	enterNempty_seplist_o__i__s__i__s_exp_p_?: (ctx: Nempty_seplist_o__i__s__i__s_exp_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.nempty_seplist_o__i__s__i__s_exp_p_`.
	 * @param ctx the parse tree
	 */
	exitNempty_seplist_o__i__s__i__s_exp_p_?: (ctx: Nempty_seplist_o__i__s__i__s_exp_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_`.
	 * @param ctx the parse tree
	 */
	enterAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_?: (ctx: Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_`.
	 * @param ctx the parse tree
	 */
	exitAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_?: (ctx: Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.seplist_o__i__s__i__s_exp_p_`.
	 * @param ctx the parse tree
	 */
	enterSeplist_o__i__s__i__s_exp_p_?: (ctx: Seplist_o__i__s__i__s_exp_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.seplist_o__i__s__i__s_exp_p_`.
	 * @param ctx the parse tree
	 */
	exitSeplist_o__i__s__i__s_exp_p_?: (ctx: Seplist_o__i__s__i__s_exp_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.args`.
	 * @param ctx the parse tree
	 */
	enterArgs?: (ctx: ArgsContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.args`.
	 * @param ctx the parse tree
	 */
	exitArgs?: (ctx: ArgsContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.opt_o_funcname_p_`.
	 * @param ctx the parse tree
	 */
	enterOpt_o_funcname_p_?: (ctx: Opt_o_funcname_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.opt_o_funcname_p_`.
	 * @param ctx the parse tree
	 */
	exitOpt_o_funcname_p_?: (ctx: Opt_o_funcname_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.opt_o_parlist_p_`.
	 * @param ctx the parse tree
	 */
	enterOpt_o_parlist_p_?: (ctx: Opt_o_parlist_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.opt_o_parlist_p_`.
	 * @param ctx the parse tree
	 */
	exitOpt_o_parlist_p_?: (ctx: Opt_o_parlist_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.functiondef`.
	 * @param ctx the parse tree
	 */
	enterFunctiondef?: (ctx: FunctiondefContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.functiondef`.
	 * @param ctx the parse tree
	 */
	exitFunctiondef?: (ctx: FunctiondefContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.varargs`.
	 * @param ctx the parse tree
	 */
	enterVarargs?: (ctx: VarargsContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.varargs`.
	 * @param ctx the parse tree
	 */
	exitVarargs?: (ctx: VarargsContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.nempty_seplist_o__i__s__i__s__i_name_k__p_`.
	 * @param ctx the parse tree
	 */
	enterNempty_seplist_o__i__s__i__s__i_name_k__p_?: (ctx: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.nempty_seplist_o__i__s__i__s__i_name_k__p_`.
	 * @param ctx the parse tree
	 */
	exitNempty_seplist_o__i__s__i__s__i_name_k__p_?: (ctx: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.parlist`.
	 * @param ctx the parse tree
	 */
	enterParlist?: (ctx: ParlistContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.parlist`.
	 * @param ctx the parse tree
	 */
	exitParlist?: (ctx: ParlistContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.nempty_seplist_o_fieldsep_s_field_p_`.
	 * @param ctx the parse tree
	 */
	enterNempty_seplist_o_fieldsep_s_field_p_?: (ctx: Nempty_seplist_o_fieldsep_s_field_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.nempty_seplist_o_fieldsep_s_field_p_`.
	 * @param ctx the parse tree
	 */
	exitNempty_seplist_o_fieldsep_s_field_p_?: (ctx: Nempty_seplist_o_fieldsep_s_field_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.opt_o_fieldsep_p_`.
	 * @param ctx the parse tree
	 */
	enterOpt_o_fieldsep_p_?: (ctx: Opt_o_fieldsep_p_Context) => void;
	/**
	 * Exit a parse tree produced by `luaParser.opt_o_fieldsep_p_`.
	 * @param ctx the parse tree
	 */
	exitOpt_o_fieldsep_p_?: (ctx: Opt_o_fieldsep_p_Context) => void;

	/**
	 * Enter a parse tree produced by `luaParser.tableconstructor`.
	 * @param ctx the parse tree
	 */
	enterTableconstructor?: (ctx: TableconstructorContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.tableconstructor`.
	 * @param ctx the parse tree
	 */
	exitTableconstructor?: (ctx: TableconstructorContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.funcname`.
	 * @param ctx the parse tree
	 */
	enterFuncname?: (ctx: FuncnameContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.funcname`.
	 * @param ctx the parse tree
	 */
	exitFuncname?: (ctx: FuncnameContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.field`.
	 * @param ctx the parse tree
	 */
	enterField?: (ctx: FieldContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.field`.
	 * @param ctx the parse tree
	 */
	exitField?: (ctx: FieldContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.fieldsep`.
	 * @param ctx the parse tree
	 */
	enterFieldsep?: (ctx: FieldsepContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.fieldsep`.
	 * @param ctx the parse tree
	 */
	exitFieldsep?: (ctx: FieldsepContext) => void;

	/**
	 * Enter a parse tree produced by `luaParser.binop`.
	 * @param ctx the parse tree
	 */
	enterBinop?: (ctx: BinopContext) => void;
	/**
	 * Exit a parse tree produced by `luaParser.binop`.
	 * @param ctx the parse tree
	 */
	exitBinop?: (ctx: BinopContext) => void;
}

