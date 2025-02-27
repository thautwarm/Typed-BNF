
import { ErrorNode, ParseTreeListener, ParserRuleContext, TerminalNode } from "antlr4ng";


import { StartContext } from "./LuaParser.js";
import { Start__y_Context } from "./LuaParser.js";
import { Nempty_list_o_stat_p_Context } from "./LuaParser.js";
import { Allow_empty_o_nempty_list_o_stat_p__p_Context } from "./LuaParser.js";
import { List_o_stat_p_Context } from "./LuaParser.js";
import { Opt_o_retstat_p_Context } from "./LuaParser.js";
import { BlockContext } from "./LuaParser.js";
import { Opt_o__i__h__i__p_Context } from "./LuaParser.js";
import { RetstatContext } from "./LuaParser.js";
import { Nempty_list_o_elseif_p_Context } from "./LuaParser.js";
import { Allow_empty_o_nempty_list_o_elseif_p__p_Context } from "./LuaParser.js";
import { List_o_elseif_p_Context } from "./LuaParser.js";
import { Opt_o_else_p_Context } from "./LuaParser.js";
import { StatContext } from "./LuaParser.js";
import { Opt_assign_rhsContext } from "./LuaParser.js";
import { RangeContext } from "./LuaParser.js";
import { Range_tailContext } from "./LuaParser.js";
import { ElseifContext } from "./LuaParser.js";
import { Else__x_Context } from "./LuaParser.js";
import { ExpContext } from "./LuaParser.js";
import { BinexpContext } from "./LuaParser.js";
import { BinseqContext } from "./LuaParser.js";
import { BinoperandContext } from "./LuaParser.js";
import { UnaryexpContext } from "./LuaParser.js";
import { ExponentContext } from "./LuaParser.js";
import { PrefixexpContext } from "./LuaParser.js";
import { AtomContext } from "./LuaParser.js";
import { Nempty_seplist_o__i__s__i__s_exp_p_Context } from "./LuaParser.js";
import { Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context } from "./LuaParser.js";
import { Seplist_o__i__s__i__s_exp_p_Context } from "./LuaParser.js";
import { ArgsContext } from "./LuaParser.js";
import { Opt_o_funcname_p_Context } from "./LuaParser.js";
import { Opt_o_parlist_p_Context } from "./LuaParser.js";
import { FunctiondefContext } from "./LuaParser.js";
import { VarargsContext } from "./LuaParser.js";
import { Nempty_seplist_o__i__s__i__s__i_name_k__p_Context } from "./LuaParser.js";
import { ParlistContext } from "./LuaParser.js";
import { Nempty_seplist_o_fieldsep_s_field_p_Context } from "./LuaParser.js";
import { Opt_o_fieldsep_p_Context } from "./LuaParser.js";
import { TableconstructorContext } from "./LuaParser.js";
import { FuncnameContext } from "./LuaParser.js";
import { FieldContext } from "./LuaParser.js";
import { FieldsepContext } from "./LuaParser.js";
import { BinopContext } from "./LuaParser.js";


/**
 * This interface defines a complete listener for a parse tree produced by
 * `LuaParser`.
 */
export class LuaListener implements ParseTreeListener {
    /**
     * Enter a parse tree produced by `LuaParser.start`.
     * @param ctx the parse tree
     */
    enterStart?: (ctx: StartContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.start`.
     * @param ctx the parse tree
     */
    exitStart?: (ctx: StartContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.start__y_`.
     * @param ctx the parse tree
     */
    enterStart__y_?: (ctx: Start__y_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.start__y_`.
     * @param ctx the parse tree
     */
    exitStart__y_?: (ctx: Start__y_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.nempty_list_o_stat_p_`.
     * @param ctx the parse tree
     */
    enterNempty_list_o_stat_p_?: (ctx: Nempty_list_o_stat_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.nempty_list_o_stat_p_`.
     * @param ctx the parse tree
     */
    exitNempty_list_o_stat_p_?: (ctx: Nempty_list_o_stat_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.allow_empty_o_nempty_list_o_stat_p__p_`.
     * @param ctx the parse tree
     */
    enterAllow_empty_o_nempty_list_o_stat_p__p_?: (ctx: Allow_empty_o_nempty_list_o_stat_p__p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.allow_empty_o_nempty_list_o_stat_p__p_`.
     * @param ctx the parse tree
     */
    exitAllow_empty_o_nempty_list_o_stat_p__p_?: (ctx: Allow_empty_o_nempty_list_o_stat_p__p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.list_o_stat_p_`.
     * @param ctx the parse tree
     */
    enterList_o_stat_p_?: (ctx: List_o_stat_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.list_o_stat_p_`.
     * @param ctx the parse tree
     */
    exitList_o_stat_p_?: (ctx: List_o_stat_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.opt_o_retstat_p_`.
     * @param ctx the parse tree
     */
    enterOpt_o_retstat_p_?: (ctx: Opt_o_retstat_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.opt_o_retstat_p_`.
     * @param ctx the parse tree
     */
    exitOpt_o_retstat_p_?: (ctx: Opt_o_retstat_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.block`.
     * @param ctx the parse tree
     */
    enterBlock?: (ctx: BlockContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.block`.
     * @param ctx the parse tree
     */
    exitBlock?: (ctx: BlockContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.opt_o__i__h__i__p_`.
     * @param ctx the parse tree
     */
    enterOpt_o__i__h__i__p_?: (ctx: Opt_o__i__h__i__p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.opt_o__i__h__i__p_`.
     * @param ctx the parse tree
     */
    exitOpt_o__i__h__i__p_?: (ctx: Opt_o__i__h__i__p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.retstat`.
     * @param ctx the parse tree
     */
    enterRetstat?: (ctx: RetstatContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.retstat`.
     * @param ctx the parse tree
     */
    exitRetstat?: (ctx: RetstatContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.nempty_list_o_elseif_p_`.
     * @param ctx the parse tree
     */
    enterNempty_list_o_elseif_p_?: (ctx: Nempty_list_o_elseif_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.nempty_list_o_elseif_p_`.
     * @param ctx the parse tree
     */
    exitNempty_list_o_elseif_p_?: (ctx: Nempty_list_o_elseif_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.allow_empty_o_nempty_list_o_elseif_p__p_`.
     * @param ctx the parse tree
     */
    enterAllow_empty_o_nempty_list_o_elseif_p__p_?: (ctx: Allow_empty_o_nempty_list_o_elseif_p__p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.allow_empty_o_nempty_list_o_elseif_p__p_`.
     * @param ctx the parse tree
     */
    exitAllow_empty_o_nempty_list_o_elseif_p__p_?: (ctx: Allow_empty_o_nempty_list_o_elseif_p__p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.list_o_elseif_p_`.
     * @param ctx the parse tree
     */
    enterList_o_elseif_p_?: (ctx: List_o_elseif_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.list_o_elseif_p_`.
     * @param ctx the parse tree
     */
    exitList_o_elseif_p_?: (ctx: List_o_elseif_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.opt_o_else_p_`.
     * @param ctx the parse tree
     */
    enterOpt_o_else_p_?: (ctx: Opt_o_else_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.opt_o_else_p_`.
     * @param ctx the parse tree
     */
    exitOpt_o_else_p_?: (ctx: Opt_o_else_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.stat`.
     * @param ctx the parse tree
     */
    enterStat?: (ctx: StatContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.stat`.
     * @param ctx the parse tree
     */
    exitStat?: (ctx: StatContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.opt_assign_rhs`.
     * @param ctx the parse tree
     */
    enterOpt_assign_rhs?: (ctx: Opt_assign_rhsContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.opt_assign_rhs`.
     * @param ctx the parse tree
     */
    exitOpt_assign_rhs?: (ctx: Opt_assign_rhsContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.range`.
     * @param ctx the parse tree
     */
    enterRange?: (ctx: RangeContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.range`.
     * @param ctx the parse tree
     */
    exitRange?: (ctx: RangeContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.range_tail`.
     * @param ctx the parse tree
     */
    enterRange_tail?: (ctx: Range_tailContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.range_tail`.
     * @param ctx the parse tree
     */
    exitRange_tail?: (ctx: Range_tailContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.elseif`.
     * @param ctx the parse tree
     */
    enterElseif?: (ctx: ElseifContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.elseif`.
     * @param ctx the parse tree
     */
    exitElseif?: (ctx: ElseifContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.else__x_`.
     * @param ctx the parse tree
     */
    enterElse__x_?: (ctx: Else__x_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.else__x_`.
     * @param ctx the parse tree
     */
    exitElse__x_?: (ctx: Else__x_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.exp`.
     * @param ctx the parse tree
     */
    enterExp?: (ctx: ExpContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.exp`.
     * @param ctx the parse tree
     */
    exitExp?: (ctx: ExpContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.binexp`.
     * @param ctx the parse tree
     */
    enterBinexp?: (ctx: BinexpContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.binexp`.
     * @param ctx the parse tree
     */
    exitBinexp?: (ctx: BinexpContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.binseq`.
     * @param ctx the parse tree
     */
    enterBinseq?: (ctx: BinseqContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.binseq`.
     * @param ctx the parse tree
     */
    exitBinseq?: (ctx: BinseqContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.binoperand`.
     * @param ctx the parse tree
     */
    enterBinoperand?: (ctx: BinoperandContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.binoperand`.
     * @param ctx the parse tree
     */
    exitBinoperand?: (ctx: BinoperandContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.unaryexp`.
     * @param ctx the parse tree
     */
    enterUnaryexp?: (ctx: UnaryexpContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.unaryexp`.
     * @param ctx the parse tree
     */
    exitUnaryexp?: (ctx: UnaryexpContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.exponent`.
     * @param ctx the parse tree
     */
    enterExponent?: (ctx: ExponentContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.exponent`.
     * @param ctx the parse tree
     */
    exitExponent?: (ctx: ExponentContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.prefixexp`.
     * @param ctx the parse tree
     */
    enterPrefixexp?: (ctx: PrefixexpContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.prefixexp`.
     * @param ctx the parse tree
     */
    exitPrefixexp?: (ctx: PrefixexpContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.atom`.
     * @param ctx the parse tree
     */
    enterAtom?: (ctx: AtomContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.atom`.
     * @param ctx the parse tree
     */
    exitAtom?: (ctx: AtomContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.nempty_seplist_o__i__s__i__s_exp_p_`.
     * @param ctx the parse tree
     */
    enterNempty_seplist_o__i__s__i__s_exp_p_?: (ctx: Nempty_seplist_o__i__s__i__s_exp_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.nempty_seplist_o__i__s__i__s_exp_p_`.
     * @param ctx the parse tree
     */
    exitNempty_seplist_o__i__s__i__s_exp_p_?: (ctx: Nempty_seplist_o__i__s__i__s_exp_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_`.
     * @param ctx the parse tree
     */
    enterAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_?: (ctx: Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_`.
     * @param ctx the parse tree
     */
    exitAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_?: (ctx: Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.seplist_o__i__s__i__s_exp_p_`.
     * @param ctx the parse tree
     */
    enterSeplist_o__i__s__i__s_exp_p_?: (ctx: Seplist_o__i__s__i__s_exp_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.seplist_o__i__s__i__s_exp_p_`.
     * @param ctx the parse tree
     */
    exitSeplist_o__i__s__i__s_exp_p_?: (ctx: Seplist_o__i__s__i__s_exp_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.args`.
     * @param ctx the parse tree
     */
    enterArgs?: (ctx: ArgsContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.args`.
     * @param ctx the parse tree
     */
    exitArgs?: (ctx: ArgsContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.opt_o_funcname_p_`.
     * @param ctx the parse tree
     */
    enterOpt_o_funcname_p_?: (ctx: Opt_o_funcname_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.opt_o_funcname_p_`.
     * @param ctx the parse tree
     */
    exitOpt_o_funcname_p_?: (ctx: Opt_o_funcname_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.opt_o_parlist_p_`.
     * @param ctx the parse tree
     */
    enterOpt_o_parlist_p_?: (ctx: Opt_o_parlist_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.opt_o_parlist_p_`.
     * @param ctx the parse tree
     */
    exitOpt_o_parlist_p_?: (ctx: Opt_o_parlist_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.functiondef`.
     * @param ctx the parse tree
     */
    enterFunctiondef?: (ctx: FunctiondefContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.functiondef`.
     * @param ctx the parse tree
     */
    exitFunctiondef?: (ctx: FunctiondefContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.varargs`.
     * @param ctx the parse tree
     */
    enterVarargs?: (ctx: VarargsContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.varargs`.
     * @param ctx the parse tree
     */
    exitVarargs?: (ctx: VarargsContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.nempty_seplist_o__i__s__i__s__i_name_k__p_`.
     * @param ctx the parse tree
     */
    enterNempty_seplist_o__i__s__i__s__i_name_k__p_?: (ctx: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.nempty_seplist_o__i__s__i__s__i_name_k__p_`.
     * @param ctx the parse tree
     */
    exitNempty_seplist_o__i__s__i__s__i_name_k__p_?: (ctx: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.parlist`.
     * @param ctx the parse tree
     */
    enterParlist?: (ctx: ParlistContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.parlist`.
     * @param ctx the parse tree
     */
    exitParlist?: (ctx: ParlistContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.nempty_seplist_o_fieldsep_s_field_p_`.
     * @param ctx the parse tree
     */
    enterNempty_seplist_o_fieldsep_s_field_p_?: (ctx: Nempty_seplist_o_fieldsep_s_field_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.nempty_seplist_o_fieldsep_s_field_p_`.
     * @param ctx the parse tree
     */
    exitNempty_seplist_o_fieldsep_s_field_p_?: (ctx: Nempty_seplist_o_fieldsep_s_field_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.opt_o_fieldsep_p_`.
     * @param ctx the parse tree
     */
    enterOpt_o_fieldsep_p_?: (ctx: Opt_o_fieldsep_p_Context) => void;
    /**
     * Exit a parse tree produced by `LuaParser.opt_o_fieldsep_p_`.
     * @param ctx the parse tree
     */
    exitOpt_o_fieldsep_p_?: (ctx: Opt_o_fieldsep_p_Context) => void;
    /**
     * Enter a parse tree produced by `LuaParser.tableconstructor`.
     * @param ctx the parse tree
     */
    enterTableconstructor?: (ctx: TableconstructorContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.tableconstructor`.
     * @param ctx the parse tree
     */
    exitTableconstructor?: (ctx: TableconstructorContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.funcname`.
     * @param ctx the parse tree
     */
    enterFuncname?: (ctx: FuncnameContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.funcname`.
     * @param ctx the parse tree
     */
    exitFuncname?: (ctx: FuncnameContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.field`.
     * @param ctx the parse tree
     */
    enterField?: (ctx: FieldContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.field`.
     * @param ctx the parse tree
     */
    exitField?: (ctx: FieldContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.fieldsep`.
     * @param ctx the parse tree
     */
    enterFieldsep?: (ctx: FieldsepContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.fieldsep`.
     * @param ctx the parse tree
     */
    exitFieldsep?: (ctx: FieldsepContext) => void;
    /**
     * Enter a parse tree produced by `LuaParser.binop`.
     * @param ctx the parse tree
     */
    enterBinop?: (ctx: BinopContext) => void;
    /**
     * Exit a parse tree produced by `LuaParser.binop`.
     * @param ctx the parse tree
     */
    exitBinop?: (ctx: BinopContext) => void;

    visitTerminal(node: TerminalNode): void {}
    visitErrorNode(node: ErrorNode): void {}
    enterEveryRule(node: ParserRuleContext): void {}
    exitEveryRule(node: ParserRuleContext): void {}
}

