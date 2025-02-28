
import { ErrorNode, ParseTreeListener, ParserRuleContext, TerminalNode } from "antlr4ng";


import { StartContext } from "./JsonParser.js";
import { Start__y_Context } from "./JsonParser.js";
import { JsonpairContext } from "./JsonParser.js";
import { Seplist_o__i__s__i__s_json_p_Context } from "./JsonParser.js";
import { Seplist_o__i__s__i__s_jsonpair_p_Context } from "./JsonParser.js";
import { JsonContext } from "./JsonParser.js";


/**
 * This interface defines a complete listener for a parse tree produced by
 * `JsonParser`.
 */
export class JsonListener implements ParseTreeListener {
    /**
     * Enter a parse tree produced by `JsonParser.start`.
     * @param ctx the parse tree
     */
    enterStart?: (ctx: StartContext) => void;
    /**
     * Exit a parse tree produced by `JsonParser.start`.
     * @param ctx the parse tree
     */
    exitStart?: (ctx: StartContext) => void;
    /**
     * Enter a parse tree produced by `JsonParser.start__y_`.
     * @param ctx the parse tree
     */
    enterStart__y_?: (ctx: Start__y_Context) => void;
    /**
     * Exit a parse tree produced by `JsonParser.start__y_`.
     * @param ctx the parse tree
     */
    exitStart__y_?: (ctx: Start__y_Context) => void;
    /**
     * Enter a parse tree produced by `JsonParser.jsonpair`.
     * @param ctx the parse tree
     */
    enterJsonpair?: (ctx: JsonpairContext) => void;
    /**
     * Exit a parse tree produced by `JsonParser.jsonpair`.
     * @param ctx the parse tree
     */
    exitJsonpair?: (ctx: JsonpairContext) => void;
    /**
     * Enter a parse tree produced by `JsonParser.seplist_o__i__s__i__s_json_p_`.
     * @param ctx the parse tree
     */
    enterSeplist_o__i__s__i__s_json_p_?: (ctx: Seplist_o__i__s__i__s_json_p_Context) => void;
    /**
     * Exit a parse tree produced by `JsonParser.seplist_o__i__s__i__s_json_p_`.
     * @param ctx the parse tree
     */
    exitSeplist_o__i__s__i__s_json_p_?: (ctx: Seplist_o__i__s__i__s_json_p_Context) => void;
    /**
     * Enter a parse tree produced by `JsonParser.seplist_o__i__s__i__s_jsonpair_p_`.
     * @param ctx the parse tree
     */
    enterSeplist_o__i__s__i__s_jsonpair_p_?: (ctx: Seplist_o__i__s__i__s_jsonpair_p_Context) => void;
    /**
     * Exit a parse tree produced by `JsonParser.seplist_o__i__s__i__s_jsonpair_p_`.
     * @param ctx the parse tree
     */
    exitSeplist_o__i__s__i__s_jsonpair_p_?: (ctx: Seplist_o__i__s__i__s_jsonpair_p_Context) => void;
    /**
     * Enter a parse tree produced by `JsonParser.json`.
     * @param ctx the parse tree
     */
    enterJson?: (ctx: JsonContext) => void;
    /**
     * Exit a parse tree produced by `JsonParser.json`.
     * @param ctx the parse tree
     */
    exitJson?: (ctx: JsonContext) => void;

    visitTerminal(node: TerminalNode): void {}
    visitErrorNode(node: ErrorNode): void {}
    enterEveryRule(node: ParserRuleContext): void {}
    exitEveryRule(node: ParserRuleContext): void {}
}

