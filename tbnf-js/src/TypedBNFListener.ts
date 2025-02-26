
import { ErrorNode, ParseTreeListener, ParserRuleContext, TerminalNode } from "antlr4ng";


import { StartContext } from "./TypedBNFParser.js";
import { List_o_toplevel_p_Context } from "./TypedBNFParser.js";
import { Start__y_Context } from "./TypedBNFParser.js";
import { IdentstrContext } from "./TypedBNFParser.js";
import { TypContext } from "./TypedBNFParser.js";
import { Slist_o__i__s__i__s_param_type_p_Context } from "./TypedBNFParser.js";
import { Empty_o_slist_o__i__s__i__s_param_type_p__p_Context } from "./TypedBNFParser.js";
import { Eslist_o__i__s__i__s_param_type_p_Context } from "./TypedBNFParser.js";
import { Arrow_typContext } from "./TypedBNFParser.js";
import { Slist_o__i__s__i__s_typ_p_Context } from "./TypedBNFParser.js";
import { Typ2Context } from "./TypedBNFParser.js";
import { Type_productContext } from "./TypedBNFParser.js";
import { Top_typContext } from "./TypedBNFParser.js";
import { Tvar_strContext } from "./TypedBNFParser.js";
import { Param_typeContext } from "./TypedBNFParser.js";
import { Slist_o__i__s__i__s_tvar_str_p_Context } from "./TypedBNFParser.js";
import { Type_paramsContext } from "./TypedBNFParser.js";
import { Field_annContext } from "./TypedBNFParser.js";
import { Slist_o__i__s__i__s_field_ann_p_Context } from "./TypedBNFParser.js";
import { Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context } from "./TypedBNFParser.js";
import { Eslist_o__i__s__i__s_field_ann_p_Context } from "./TypedBNFParser.js";
import { Field_annsContext } from "./TypedBNFParser.js";
import { DeclContext } from "./TypedBNFParser.js";
import { ToplevelContext } from "./TypedBNFParser.js";
import { Slist_o__i__s__i__s_identstr_p_Context } from "./TypedBNFParser.js";
import { DefContext } from "./TypedBNFParser.js";
import { ProductionsContext } from "./TypedBNFParser.js";
import { List_o_psym_p_Context } from "./TypedBNFParser.js";
import { Empty_o_list_o_psym_p__p_Context } from "./TypedBNFParser.js";
import { Elist_o_psym_p_Context } from "./TypedBNFParser.js";
import { ProductionContext } from "./TypedBNFParser.js";
import { Slist_o__i__s__i__s_psym_p_Context } from "./TypedBNFParser.js";
import { PsymContext } from "./TypedBNFParser.js";
import { AnnContext } from "./TypedBNFParser.js";
import { Slist_o__i__s__i__s_ann_p_Context } from "./TypedBNFParser.js";
import { Empty_o_slist_o__i__s__i__s_ann_p__p_Context } from "./TypedBNFParser.js";
import { Eslist_o__i__s__i__s_ann_p_Context } from "./TypedBNFParser.js";
import { Func_parametersContext } from "./TypedBNFParser.js";
import { ExprContext } from "./TypedBNFParser.js";
import { CallContext } from "./TypedBNFParser.js";
import { Empty_o_slist_o__i__s__i__s_expr_p__p_Context } from "./TypedBNFParser.js";
import { Eslist_o__i__s__i__s_expr_p_Context } from "./TypedBNFParser.js";
import { Slist_o__i__s__i__s_expr_p_Context } from "./TypedBNFParser.js";
import { AtomexpContext } from "./TypedBNFParser.js";
import { Slist_o__i__u__i__s_lexer_and_p_Context } from "./TypedBNFParser.js";
import { Lexer__y_Context } from "./TypedBNFParser.js";
import { List_o_lexer_atomexpr_p_Context } from "./TypedBNFParser.js";
import { Lexer_andContext } from "./TypedBNFParser.js";
import { Lexer_atomexprContext } from "./TypedBNFParser.js";
import { Lexer_atomContext } from "./TypedBNFParser.js";
import { LexerdefContext } from "./TypedBNFParser.js";


/**
 * This interface defines a complete listener for a parse tree produced by
 * `TypedBNFParser`.
 */
export class TypedBNFListener implements ParseTreeListener {
    /**
     * Enter a parse tree produced by `TypedBNFParser.start`.
     * @param ctx the parse tree
     */
    enterStart?: (ctx: StartContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.start`.
     * @param ctx the parse tree
     */
    exitStart?: (ctx: StartContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.list_o_toplevel_p_`.
     * @param ctx the parse tree
     */
    enterList_o_toplevel_p_?: (ctx: List_o_toplevel_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.list_o_toplevel_p_`.
     * @param ctx the parse tree
     */
    exitList_o_toplevel_p_?: (ctx: List_o_toplevel_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.start__y_`.
     * @param ctx the parse tree
     */
    enterStart__y_?: (ctx: Start__y_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.start__y_`.
     * @param ctx the parse tree
     */
    exitStart__y_?: (ctx: Start__y_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.identstr`.
     * @param ctx the parse tree
     */
    enterIdentstr?: (ctx: IdentstrContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.identstr`.
     * @param ctx the parse tree
     */
    exitIdentstr?: (ctx: IdentstrContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.typ`.
     * @param ctx the parse tree
     */
    enterTyp?: (ctx: TypContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.typ`.
     * @param ctx the parse tree
     */
    exitTyp?: (ctx: TypContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_param_type_p_`.
     * @param ctx the parse tree
     */
    enterSlist_o__i__s__i__s_param_type_p_?: (ctx: Slist_o__i__s__i__s_param_type_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_param_type_p_`.
     * @param ctx the parse tree
     */
    exitSlist_o__i__s__i__s_param_type_p_?: (ctx: Slist_o__i__s__i__s_param_type_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.empty_o_slist_o__i__s__i__s_param_type_p__p_`.
     * @param ctx the parse tree
     */
    enterEmpty_o_slist_o__i__s__i__s_param_type_p__p_?: (ctx: Empty_o_slist_o__i__s__i__s_param_type_p__p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.empty_o_slist_o__i__s__i__s_param_type_p__p_`.
     * @param ctx the parse tree
     */
    exitEmpty_o_slist_o__i__s__i__s_param_type_p__p_?: (ctx: Empty_o_slist_o__i__s__i__s_param_type_p__p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.eslist_o__i__s__i__s_param_type_p_`.
     * @param ctx the parse tree
     */
    enterEslist_o__i__s__i__s_param_type_p_?: (ctx: Eslist_o__i__s__i__s_param_type_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.eslist_o__i__s__i__s_param_type_p_`.
     * @param ctx the parse tree
     */
    exitEslist_o__i__s__i__s_param_type_p_?: (ctx: Eslist_o__i__s__i__s_param_type_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.arrow_typ`.
     * @param ctx the parse tree
     */
    enterArrow_typ?: (ctx: Arrow_typContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.arrow_typ`.
     * @param ctx the parse tree
     */
    exitArrow_typ?: (ctx: Arrow_typContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_typ_p_`.
     * @param ctx the parse tree
     */
    enterSlist_o__i__s__i__s_typ_p_?: (ctx: Slist_o__i__s__i__s_typ_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_typ_p_`.
     * @param ctx the parse tree
     */
    exitSlist_o__i__s__i__s_typ_p_?: (ctx: Slist_o__i__s__i__s_typ_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.typ2`.
     * @param ctx the parse tree
     */
    enterTyp2?: (ctx: Typ2Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.typ2`.
     * @param ctx the parse tree
     */
    exitTyp2?: (ctx: Typ2Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.type_product`.
     * @param ctx the parse tree
     */
    enterType_product?: (ctx: Type_productContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.type_product`.
     * @param ctx the parse tree
     */
    exitType_product?: (ctx: Type_productContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.top_typ`.
     * @param ctx the parse tree
     */
    enterTop_typ?: (ctx: Top_typContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.top_typ`.
     * @param ctx the parse tree
     */
    exitTop_typ?: (ctx: Top_typContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.tvar_str`.
     * @param ctx the parse tree
     */
    enterTvar_str?: (ctx: Tvar_strContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.tvar_str`.
     * @param ctx the parse tree
     */
    exitTvar_str?: (ctx: Tvar_strContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.param_type`.
     * @param ctx the parse tree
     */
    enterParam_type?: (ctx: Param_typeContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.param_type`.
     * @param ctx the parse tree
     */
    exitParam_type?: (ctx: Param_typeContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_tvar_str_p_`.
     * @param ctx the parse tree
     */
    enterSlist_o__i__s__i__s_tvar_str_p_?: (ctx: Slist_o__i__s__i__s_tvar_str_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_tvar_str_p_`.
     * @param ctx the parse tree
     */
    exitSlist_o__i__s__i__s_tvar_str_p_?: (ctx: Slist_o__i__s__i__s_tvar_str_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.type_params`.
     * @param ctx the parse tree
     */
    enterType_params?: (ctx: Type_paramsContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.type_params`.
     * @param ctx the parse tree
     */
    exitType_params?: (ctx: Type_paramsContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.field_ann`.
     * @param ctx the parse tree
     */
    enterField_ann?: (ctx: Field_annContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.field_ann`.
     * @param ctx the parse tree
     */
    exitField_ann?: (ctx: Field_annContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_field_ann_p_`.
     * @param ctx the parse tree
     */
    enterSlist_o__i__s__i__s_field_ann_p_?: (ctx: Slist_o__i__s__i__s_field_ann_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_field_ann_p_`.
     * @param ctx the parse tree
     */
    exitSlist_o__i__s__i__s_field_ann_p_?: (ctx: Slist_o__i__s__i__s_field_ann_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.empty_o_slist_o__i__s__i__s_field_ann_p__p_`.
     * @param ctx the parse tree
     */
    enterEmpty_o_slist_o__i__s__i__s_field_ann_p__p_?: (ctx: Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.empty_o_slist_o__i__s__i__s_field_ann_p__p_`.
     * @param ctx the parse tree
     */
    exitEmpty_o_slist_o__i__s__i__s_field_ann_p__p_?: (ctx: Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.eslist_o__i__s__i__s_field_ann_p_`.
     * @param ctx the parse tree
     */
    enterEslist_o__i__s__i__s_field_ann_p_?: (ctx: Eslist_o__i__s__i__s_field_ann_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.eslist_o__i__s__i__s_field_ann_p_`.
     * @param ctx the parse tree
     */
    exitEslist_o__i__s__i__s_field_ann_p_?: (ctx: Eslist_o__i__s__i__s_field_ann_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.field_anns`.
     * @param ctx the parse tree
     */
    enterField_anns?: (ctx: Field_annsContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.field_anns`.
     * @param ctx the parse tree
     */
    exitField_anns?: (ctx: Field_annsContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.decl`.
     * @param ctx the parse tree
     */
    enterDecl?: (ctx: DeclContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.decl`.
     * @param ctx the parse tree
     */
    exitDecl?: (ctx: DeclContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.toplevel`.
     * @param ctx the parse tree
     */
    enterToplevel?: (ctx: ToplevelContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.toplevel`.
     * @param ctx the parse tree
     */
    exitToplevel?: (ctx: ToplevelContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_identstr_p_`.
     * @param ctx the parse tree
     */
    enterSlist_o__i__s__i__s_identstr_p_?: (ctx: Slist_o__i__s__i__s_identstr_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_identstr_p_`.
     * @param ctx the parse tree
     */
    exitSlist_o__i__s__i__s_identstr_p_?: (ctx: Slist_o__i__s__i__s_identstr_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.def`.
     * @param ctx the parse tree
     */
    enterDef?: (ctx: DefContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.def`.
     * @param ctx the parse tree
     */
    exitDef?: (ctx: DefContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.productions`.
     * @param ctx the parse tree
     */
    enterProductions?: (ctx: ProductionsContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.productions`.
     * @param ctx the parse tree
     */
    exitProductions?: (ctx: ProductionsContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.list_o_psym_p_`.
     * @param ctx the parse tree
     */
    enterList_o_psym_p_?: (ctx: List_o_psym_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.list_o_psym_p_`.
     * @param ctx the parse tree
     */
    exitList_o_psym_p_?: (ctx: List_o_psym_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.empty_o_list_o_psym_p__p_`.
     * @param ctx the parse tree
     */
    enterEmpty_o_list_o_psym_p__p_?: (ctx: Empty_o_list_o_psym_p__p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.empty_o_list_o_psym_p__p_`.
     * @param ctx the parse tree
     */
    exitEmpty_o_list_o_psym_p__p_?: (ctx: Empty_o_list_o_psym_p__p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.elist_o_psym_p_`.
     * @param ctx the parse tree
     */
    enterElist_o_psym_p_?: (ctx: Elist_o_psym_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.elist_o_psym_p_`.
     * @param ctx the parse tree
     */
    exitElist_o_psym_p_?: (ctx: Elist_o_psym_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.production`.
     * @param ctx the parse tree
     */
    enterProduction?: (ctx: ProductionContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.production`.
     * @param ctx the parse tree
     */
    exitProduction?: (ctx: ProductionContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_psym_p_`.
     * @param ctx the parse tree
     */
    enterSlist_o__i__s__i__s_psym_p_?: (ctx: Slist_o__i__s__i__s_psym_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_psym_p_`.
     * @param ctx the parse tree
     */
    exitSlist_o__i__s__i__s_psym_p_?: (ctx: Slist_o__i__s__i__s_psym_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.psym`.
     * @param ctx the parse tree
     */
    enterPsym?: (ctx: PsymContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.psym`.
     * @param ctx the parse tree
     */
    exitPsym?: (ctx: PsymContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.ann`.
     * @param ctx the parse tree
     */
    enterAnn?: (ctx: AnnContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.ann`.
     * @param ctx the parse tree
     */
    exitAnn?: (ctx: AnnContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_ann_p_`.
     * @param ctx the parse tree
     */
    enterSlist_o__i__s__i__s_ann_p_?: (ctx: Slist_o__i__s__i__s_ann_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_ann_p_`.
     * @param ctx the parse tree
     */
    exitSlist_o__i__s__i__s_ann_p_?: (ctx: Slist_o__i__s__i__s_ann_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.empty_o_slist_o__i__s__i__s_ann_p__p_`.
     * @param ctx the parse tree
     */
    enterEmpty_o_slist_o__i__s__i__s_ann_p__p_?: (ctx: Empty_o_slist_o__i__s__i__s_ann_p__p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.empty_o_slist_o__i__s__i__s_ann_p__p_`.
     * @param ctx the parse tree
     */
    exitEmpty_o_slist_o__i__s__i__s_ann_p__p_?: (ctx: Empty_o_slist_o__i__s__i__s_ann_p__p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.eslist_o__i__s__i__s_ann_p_`.
     * @param ctx the parse tree
     */
    enterEslist_o__i__s__i__s_ann_p_?: (ctx: Eslist_o__i__s__i__s_ann_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.eslist_o__i__s__i__s_ann_p_`.
     * @param ctx the parse tree
     */
    exitEslist_o__i__s__i__s_ann_p_?: (ctx: Eslist_o__i__s__i__s_ann_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.func_parameters`.
     * @param ctx the parse tree
     */
    enterFunc_parameters?: (ctx: Func_parametersContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.func_parameters`.
     * @param ctx the parse tree
     */
    exitFunc_parameters?: (ctx: Func_parametersContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.expr`.
     * @param ctx the parse tree
     */
    enterExpr?: (ctx: ExprContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.expr`.
     * @param ctx the parse tree
     */
    exitExpr?: (ctx: ExprContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.call`.
     * @param ctx the parse tree
     */
    enterCall?: (ctx: CallContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.call`.
     * @param ctx the parse tree
     */
    exitCall?: (ctx: CallContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.empty_o_slist_o__i__s__i__s_expr_p__p_`.
     * @param ctx the parse tree
     */
    enterEmpty_o_slist_o__i__s__i__s_expr_p__p_?: (ctx: Empty_o_slist_o__i__s__i__s_expr_p__p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.empty_o_slist_o__i__s__i__s_expr_p__p_`.
     * @param ctx the parse tree
     */
    exitEmpty_o_slist_o__i__s__i__s_expr_p__p_?: (ctx: Empty_o_slist_o__i__s__i__s_expr_p__p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.eslist_o__i__s__i__s_expr_p_`.
     * @param ctx the parse tree
     */
    enterEslist_o__i__s__i__s_expr_p_?: (ctx: Eslist_o__i__s__i__s_expr_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.eslist_o__i__s__i__s_expr_p_`.
     * @param ctx the parse tree
     */
    exitEslist_o__i__s__i__s_expr_p_?: (ctx: Eslist_o__i__s__i__s_expr_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_expr_p_`.
     * @param ctx the parse tree
     */
    enterSlist_o__i__s__i__s_expr_p_?: (ctx: Slist_o__i__s__i__s_expr_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.slist_o__i__s__i__s_expr_p_`.
     * @param ctx the parse tree
     */
    exitSlist_o__i__s__i__s_expr_p_?: (ctx: Slist_o__i__s__i__s_expr_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.atomexp`.
     * @param ctx the parse tree
     */
    enterAtomexp?: (ctx: AtomexpContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.atomexp`.
     * @param ctx the parse tree
     */
    exitAtomexp?: (ctx: AtomexpContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.slist_o__i__u__i__s_lexer_and_p_`.
     * @param ctx the parse tree
     */
    enterSlist_o__i__u__i__s_lexer_and_p_?: (ctx: Slist_o__i__u__i__s_lexer_and_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.slist_o__i__u__i__s_lexer_and_p_`.
     * @param ctx the parse tree
     */
    exitSlist_o__i__u__i__s_lexer_and_p_?: (ctx: Slist_o__i__u__i__s_lexer_and_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.lexer__y_`.
     * @param ctx the parse tree
     */
    enterLexer__y_?: (ctx: Lexer__y_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.lexer__y_`.
     * @param ctx the parse tree
     */
    exitLexer__y_?: (ctx: Lexer__y_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.list_o_lexer_atomexpr_p_`.
     * @param ctx the parse tree
     */
    enterList_o_lexer_atomexpr_p_?: (ctx: List_o_lexer_atomexpr_p_Context) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.list_o_lexer_atomexpr_p_`.
     * @param ctx the parse tree
     */
    exitList_o_lexer_atomexpr_p_?: (ctx: List_o_lexer_atomexpr_p_Context) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.lexer_and`.
     * @param ctx the parse tree
     */
    enterLexer_and?: (ctx: Lexer_andContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.lexer_and`.
     * @param ctx the parse tree
     */
    exitLexer_and?: (ctx: Lexer_andContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.lexer_atomexpr`.
     * @param ctx the parse tree
     */
    enterLexer_atomexpr?: (ctx: Lexer_atomexprContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.lexer_atomexpr`.
     * @param ctx the parse tree
     */
    exitLexer_atomexpr?: (ctx: Lexer_atomexprContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.lexer_atom`.
     * @param ctx the parse tree
     */
    enterLexer_atom?: (ctx: Lexer_atomContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.lexer_atom`.
     * @param ctx the parse tree
     */
    exitLexer_atom?: (ctx: Lexer_atomContext) => void;
    /**
     * Enter a parse tree produced by `TypedBNFParser.lexerdef`.
     * @param ctx the parse tree
     */
    enterLexerdef?: (ctx: LexerdefContext) => void;
    /**
     * Exit a parse tree produced by `TypedBNFParser.lexerdef`.
     * @param ctx the parse tree
     */
    exitLexerdef?: (ctx: LexerdefContext) => void;

    visitTerminal(node: TerminalNode): void {}
    visitErrorNode(node: ErrorNode): void {}
    enterEveryRule(node: ParserRuleContext): void {}
    exitEveryRule(node: ParserRuleContext): void {}
}

