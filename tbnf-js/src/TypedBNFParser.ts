
import * as antlr from "antlr4ng";
import { Token } from "antlr4ng";

import { TypedBNFListener } from "./TypedBNFListener.js";
// for running tests with parameters, TODO: discuss strategy for typed parameters in CI
// eslint-disable-next-line no-unused-vars
type int = number;


import { node, lexerule, expr, symbol, production, definition, polyt, monot, position, MK_LRef, MK_LGroup, MK_LOptional, MK_LStar, MK_LPlus, MK_LNot, MK_LOr, MK_LSeq, MK_LStr, MK_LNumber, MK_LWildcard, getrange, getunicoderange, getpos, tofloat, toint, MK_EField, MK_EBool, MK_EFlt, MK_EStr, MK_EInt, MK_ESlot, MK_EVar, MK_EFun, MK_ELet, MK_EList, MK_ETuple, MK_EApp, MK_Expr, MK_Macrocall, MK_Nonterm, MK_Term, snd, fst, list_index, MK_production, MK_Deflexer, MK_Defrule, MK_Defmacro, MK_Defignore, MK_Decltype, MK_Declctor, MK_Declvar, MK_Mono, MK_Poly, MK_TApp, MK_TConst, MK_TVar, MK_TList, MK_TTuple, MK_TFun, process_tparam, mkpos, str, unescape, addList } from "./TypedBNF-constructor"


export class TypedBNFParser extends antlr.Parser {
    public static readonly T__0 = 1;
    public static readonly T__1 = 2;
    public static readonly T__2 = 3;
    public static readonly T__3 = 4;
    public static readonly T__4 = 5;
    public static readonly T__5 = 6;
    public static readonly T__6 = 7;
    public static readonly T__7 = 8;
    public static readonly T__8 = 9;
    public static readonly T__9 = 10;
    public static readonly T__10 = 11;
    public static readonly T__11 = 12;
    public static readonly T__12 = 13;
    public static readonly T__13 = 14;
    public static readonly T__14 = 15;
    public static readonly T__15 = 16;
    public static readonly T__16 = 17;
    public static readonly T__17 = 18;
    public static readonly T__18 = 19;
    public static readonly T__19 = 20;
    public static readonly T__20 = 21;
    public static readonly T__21 = 22;
    public static readonly T__22 = 23;
    public static readonly T__23 = 24;
    public static readonly T__24 = 25;
    public static readonly T__25 = 26;
    public static readonly T__26 = 27;
    public static readonly T__27 = 28;
    public static readonly T__28 = 29;
    public static readonly T__29 = 30;
    public static readonly T__30 = 31;
    public static readonly T__31 = 32;
    public static readonly UNICODE_RANGE = 33;
    public static readonly RANGE = 34;
    public static readonly CNAMEPLUS = 35;
    public static readonly INT = 36;
    public static readonly WS = 37;
    public static readonly FLOAT = 38;
    public static readonly ESCAPED_STRING = 39;
    public static readonly CPP_COMMENT = 40;
    public static readonly C_COMMENT = 41;
    public static readonly RULE_start = 0;
    public static readonly RULE_list_o_toplevel_p_ = 1;
    public static readonly RULE_start__y_ = 2;
    public static readonly RULE_identstr = 3;
    public static readonly RULE_typ = 4;
    public static readonly RULE_slist_o__i__s__i__s_param_type_p_ = 5;
    public static readonly RULE_empty_o_slist_o__i__s__i__s_param_type_p__p_ = 6;
    public static readonly RULE_eslist_o__i__s__i__s_param_type_p_ = 7;
    public static readonly RULE_arrow_typ = 8;
    public static readonly RULE_slist_o__i__s__i__s_typ_p_ = 9;
    public static readonly RULE_typ2 = 10;
    public static readonly RULE_type_product = 11;
    public static readonly RULE_top_typ = 12;
    public static readonly RULE_tvar_str = 13;
    public static readonly RULE_param_type = 14;
    public static readonly RULE_slist_o__i__s__i__s_tvar_str_p_ = 15;
    public static readonly RULE_type_params = 16;
    public static readonly RULE_field_ann = 17;
    public static readonly RULE_slist_o__i__s__i__s_field_ann_p_ = 18;
    public static readonly RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_ = 19;
    public static readonly RULE_eslist_o__i__s__i__s_field_ann_p_ = 20;
    public static readonly RULE_field_anns = 21;
    public static readonly RULE_decl = 22;
    public static readonly RULE_toplevel = 23;
    public static readonly RULE_slist_o__i__s__i__s_identstr_p_ = 24;
    public static readonly RULE_def = 25;
    public static readonly RULE_productions = 26;
    public static readonly RULE_list_o_psym_p_ = 27;
    public static readonly RULE_empty_o_list_o_psym_p__p_ = 28;
    public static readonly RULE_elist_o_psym_p_ = 29;
    public static readonly RULE_production = 30;
    public static readonly RULE_slist_o__i__s__i__s_psym_p_ = 31;
    public static readonly RULE_psym = 32;
    public static readonly RULE_ann = 33;
    public static readonly RULE_slist_o__i__s__i__s_ann_p_ = 34;
    public static readonly RULE_empty_o_slist_o__i__s__i__s_ann_p__p_ = 35;
    public static readonly RULE_eslist_o__i__s__i__s_ann_p_ = 36;
    public static readonly RULE_func_parameters = 37;
    public static readonly RULE_expr = 38;
    public static readonly RULE_call = 39;
    public static readonly RULE_empty_o_slist_o__i__s__i__s_expr_p__p_ = 40;
    public static readonly RULE_eslist_o__i__s__i__s_expr_p_ = 41;
    public static readonly RULE_slist_o__i__s__i__s_expr_p_ = 42;
    public static readonly RULE_atomexp = 43;
    public static readonly RULE_slist_o__i__u__i__s_lexer_and_p_ = 44;
    public static readonly RULE_lexer__y_ = 45;
    public static readonly RULE_list_o_lexer_atomexpr_p_ = 46;
    public static readonly RULE_lexer_and = 47;
    public static readonly RULE_lexer_atomexpr = 48;
    public static readonly RULE_lexer_atom = 49;
    public static readonly RULE_lexerdef = 50;

    public static readonly literalNames = [
        null, "','", "'->'", "'('", "')'", "'<'", "'>'", "'*'", "':'", "'extern'", 
        "'var'", "'case'", "'type'", "'ignore'", "'|'", "'{'", "'}'", "'let'", 
        "'='", "'in'", "'fun'", "';'", "'$'", "'['", "']'", "'.'", "'true'", 
        "'false'", "'+'", "'?'", "'!'", "'\\d'", "'_'"
    ];

    public static readonly symbolicNames = [
        null, null, null, null, null, null, null, null, null, null, null, 
        null, null, null, null, null, null, null, null, null, null, null, 
        null, null, null, null, null, null, null, null, null, null, null, 
        "UNICODE_RANGE", "RANGE", "CNAMEPLUS", "INT", "WS", "FLOAT", "ESCAPED_STRING", 
        "CPP_COMMENT", "C_COMMENT"
    ];
    public static readonly ruleNames = [
        "start", "list_o_toplevel_p_", "start__y_", "identstr", "typ", "slist_o__i__s__i__s_param_type_p_", 
        "empty_o_slist_o__i__s__i__s_param_type_p__p_", "eslist_o__i__s__i__s_param_type_p_", 
        "arrow_typ", "slist_o__i__s__i__s_typ_p_", "typ2", "type_product", 
        "top_typ", "tvar_str", "param_type", "slist_o__i__s__i__s_tvar_str_p_", 
        "type_params", "field_ann", "slist_o__i__s__i__s_field_ann_p_", 
        "empty_o_slist_o__i__s__i__s_field_ann_p__p_", "eslist_o__i__s__i__s_field_ann_p_", 
        "field_anns", "decl", "toplevel", "slist_o__i__s__i__s_identstr_p_", 
        "def", "productions", "list_o_psym_p_", "empty_o_list_o_psym_p__p_", 
        "elist_o_psym_p_", "production", "slist_o__i__s__i__s_psym_p_", 
        "psym", "ann", "slist_o__i__s__i__s_ann_p_", "empty_o_slist_o__i__s__i__s_ann_p__p_", 
        "eslist_o__i__s__i__s_ann_p_", "func_parameters", "expr", "call", 
        "empty_o_slist_o__i__s__i__s_expr_p__p_", "eslist_o__i__s__i__s_expr_p_", 
        "slist_o__i__s__i__s_expr_p_", "atomexp", "slist_o__i__u__i__s_lexer_and_p_", 
        "lexer__y_", "list_o_lexer_atomexpr_p_", "lexer_and", "lexer_atomexpr", 
        "lexer_atom", "lexerdef",
    ];

    public get grammarFileName(): string { return "TypedBNF.g4"; }
    public get literalNames(): (string | null)[] { return TypedBNFParser.literalNames; }
    public get symbolicNames(): (string | null)[] { return TypedBNFParser.symbolicNames; }
    public get ruleNames(): string[] { return TypedBNFParser.ruleNames; }
    public get serializedATN(): number[] { return TypedBNFParser._serializedATN; }

    protected createFailedPredicateException(predicate?: string, message?: string): antlr.FailedPredicateException {
        return new antlr.FailedPredicateException(this, predicate, message);
    }

    public constructor(input: antlr.TokenStream) {
        super(input);
        this.interpreter = new antlr.ParserATNSimulator(this, TypedBNFParser._ATN, TypedBNFParser.decisionsToDFA, new antlr.PredictionContextCache());
    }
    public start(): StartContext {
        let localContext = new StartContext(this.context, this.state);
        this.enterRule(localContext, 0, TypedBNFParser.RULE_start);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 102;
            localContext._v = this.start__y_();
            this.state = 103;
            this.match(TypedBNFParser.EOF);
             localContext!.result = _localctx._v.result; 
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public list_o_toplevel_p_(): List_o_toplevel_p_Context;
    public list_o_toplevel_p_(_p: number): List_o_toplevel_p_Context;
    public list_o_toplevel_p_(_p?: number): List_o_toplevel_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new List_o_toplevel_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 2;
        this.enterRecursionRule(localContext, 2, TypedBNFParser.RULE_list_o_toplevel_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 107;
            localContext._list_o_toplevel_p__0__1 = this.toplevel();
             localContext!.result = <Array<definition>>[ _localctx._list_o_toplevel_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 116;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 0, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new List_o_toplevel_p_Context(parentContext, parentState);
                    localContext._list_o_toplevel_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_list_o_toplevel_p_);
                    this.state = 110;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 111;
                    localContext._list_o_toplevel_p__2__2 = this.toplevel();
                     localContext!.result = <Array<definition>> addList<definition>(<Array<definition>> _localctx._list_o_toplevel_p__2__1.result, <definition> _localctx._list_o_toplevel_p__2__2.result);
                                          
                    }
                    }
                }
                this.state = 118;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 0, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public start__y_(): Start__y_Context {
        let localContext = new Start__y_Context(this.context, this.state);
        this.enterRule(localContext, 4, TypedBNFParser.RULE_start__y_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 119;
            localContext._start__y__0__1 = this.list_o_toplevel_p_(0);
             localContext!.result = _localctx._start__y__0__1.result;
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public identstr(): IdentstrContext {
        let localContext = new IdentstrContext(this.context, this.state);
        this.enterRule(localContext, 6, TypedBNFParser.RULE_identstr);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 122;
            localContext._identstr_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
             localContext!.result = <string> str(<Token> _localctx._identstr_0__1);
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public typ(): TypContext {
        let localContext = new TypContext(this.context, this.state);
        this.enterRule(localContext, 8, TypedBNFParser.RULE_typ);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 125;
            localContext._typ_0__1 = this.arrow_typ();
             localContext!.result = _localctx._typ_0__1.result;
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public slist_o__i__s__i__s_param_type_p_(): Slist_o__i__s__i__s_param_type_p_Context;
    public slist_o__i__s__i__s_param_type_p_(_p: number): Slist_o__i__s__i__s_param_type_p_Context;
    public slist_o__i__s__i__s_param_type_p_(_p?: number): Slist_o__i__s__i__s_param_type_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Slist_o__i__s__i__s_param_type_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 10;
        this.enterRecursionRule(localContext, 10, TypedBNFParser.RULE_slist_o__i__s__i__s_param_type_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 129;
            localContext._slist_o__i__s__i__s_param_type_p__0__1 = this.param_type();
             localContext!.result = <Array<[string, monot]>>[ _localctx._slist_o__i__s__i__s_param_type_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 139;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 1, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_param_type_p_Context(parentContext, parentState);
                    localContext._slist_o__i__s__i__s_param_type_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_param_type_p_);
                    this.state = 132;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 133;
                    this.match(TypedBNFParser.T__0);
                    this.state = 134;
                    localContext._slist_o__i__s__i__s_param_type_p__2__3 = this.param_type();
                     localContext!.result = <Array<[string, monot]>> addList<[string, monot]>(<Array<[string, monot]>> _localctx._slist_o__i__s__i__s_param_type_p__2__1.result, <[string, monot]> _localctx._slist_o__i__s__i__s_param_type_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 141;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 1, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public empty_o_slist_o__i__s__i__s_param_type_p__p_(): Empty_o_slist_o__i__s__i__s_param_type_p__p_Context {
        let localContext = new Empty_o_slist_o__i__s__i__s_param_type_p__p_Context(this.context, this.state);
        this.enterRule(localContext, 12, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_param_type_p__p_);
        try {
            this.state = 146;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TypedBNFParser.T__3:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = <Array<[string, monot]>>[  ];
                            
                }
                break;
            case TypedBNFParser.T__2:
            case TypedBNFParser.CNAMEPLUS:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 143;
                localContext._empty_o_slist_o__i__s__i__s_param_type_p__p__2__1 = this.slist_o__i__s__i__s_param_type_p_(0);
                 localContext!.result = _localctx._empty_o_slist_o__i__s__i__s_param_type_p__p__2__1.result;
                            
                }
                break;
            default:
                throw new antlr.NoViableAltException(this);
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public eslist_o__i__s__i__s_param_type_p_(): Eslist_o__i__s__i__s_param_type_p_Context {
        let localContext = new Eslist_o__i__s__i__s_param_type_p_Context(this.context, this.state);
        this.enterRule(localContext, 14, TypedBNFParser.RULE_eslist_o__i__s__i__s_param_type_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 148;
            localContext._eslist_o__i__s__i__s_param_type_p__0__1 = this.empty_o_slist_o__i__s__i__s_param_type_p__p_();
             localContext!.result = _localctx._eslist_o__i__s__i__s_param_type_p__0__1.result;
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public arrow_typ(): Arrow_typContext {
        let localContext = new Arrow_typContext(this.context, this.state);
        this.enterRule(localContext, 16, TypedBNFParser.RULE_arrow_typ);
        try {
            this.state = 166;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 3, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 151;
                localContext._arrow_typ_0__1 = this.typ2(0);
                this.state = 152;
                this.match(TypedBNFParser.T__1);
                this.state = 153;
                localContext._arrow_typ_0__3 = this.arrow_typ();
                 localContext!.result = <monot> MK_TFun(<Array<[string, monot]>> <Array<[string, monot]>>[ <[string, monot]>["value", _localctx._arrow_typ_0__1.result] ], <monot> _localctx._arrow_typ_0__3.result);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 156;
                this.match(TypedBNFParser.T__2);
                this.state = 157;
                localContext._arrow_typ_2__2 = this.eslist_o__i__s__i__s_param_type_p_();
                this.state = 158;
                this.match(TypedBNFParser.T__3);
                this.state = 159;
                this.match(TypedBNFParser.T__1);
                this.state = 160;
                localContext._arrow_typ_2__5 = this.arrow_typ();
                 localContext!.result = <monot> MK_TFun(<Array<[string, monot]>> <Array<[string, monot]>> process_tparam(<Array<[string, monot]>> _localctx._arrow_typ_2__2.result), <monot> _localctx._arrow_typ_2__5.result);
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 163;
                localContext._arrow_typ_4__1 = this.type_product(0);
                 localContext!.result = <monot> MK_TTuple(<Array<monot>> _localctx._arrow_typ_4__1.result);
                            
                }
                break;
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public slist_o__i__s__i__s_typ_p_(): Slist_o__i__s__i__s_typ_p_Context;
    public slist_o__i__s__i__s_typ_p_(_p: number): Slist_o__i__s__i__s_typ_p_Context;
    public slist_o__i__s__i__s_typ_p_(_p?: number): Slist_o__i__s__i__s_typ_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Slist_o__i__s__i__s_typ_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 18;
        this.enterRecursionRule(localContext, 18, TypedBNFParser.RULE_slist_o__i__s__i__s_typ_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 169;
            localContext._slist_o__i__s__i__s_typ_p__0__1 = this.typ();
             localContext!.result = <Array<monot>>[ _localctx._slist_o__i__s__i__s_typ_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 179;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 4, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_typ_p_Context(parentContext, parentState);
                    localContext._slist_o__i__s__i__s_typ_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_typ_p_);
                    this.state = 172;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 173;
                    this.match(TypedBNFParser.T__0);
                    this.state = 174;
                    localContext._slist_o__i__s__i__s_typ_p__2__3 = this.typ();
                     localContext!.result = <Array<monot>> addList<monot>(<Array<monot>> _localctx._slist_o__i__s__i__s_typ_p__2__1.result, <monot> _localctx._slist_o__i__s__i__s_typ_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 181;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 4, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }

    public typ2(): Typ2Context;
    public typ2(_p: number): Typ2Context;
    public typ2(_p?: number): Typ2Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Typ2Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 20;
        this.enterRecursionRule(localContext, 20, TypedBNFParser.RULE_typ2, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 183;
            localContext._typ2_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
             localContext!.result = <monot> MK_TConst(<string> <string> str(<Token> _localctx._typ2_0__1));
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 194;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 5, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Typ2Context(parentContext, parentState);
                    localContext._typ2_2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_typ2);
                    this.state = 186;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 187;
                    this.match(TypedBNFParser.T__4);
                    this.state = 188;
                    localContext._typ2_2__3 = this.slist_o__i__s__i__s_typ_p_(0);
                    this.state = 189;
                    this.match(TypedBNFParser.T__5);
                     localContext!.result = <monot> MK_TApp(<monot> _localctx._typ2_2__1.result, <Array<monot>> _localctx._typ2_2__3.result);
                                          
                    }
                    }
                }
                this.state = 196;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 5, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }

    public type_product(): Type_productContext;
    public type_product(_p: number): Type_productContext;
    public type_product(_p?: number): Type_productContext {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Type_productContext(this.context, parentState);
        let previousContext = localContext;
        let _startState = 22;
        this.enterRecursionRule(localContext, 22, TypedBNFParser.RULE_type_product, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 198;
            localContext._type_product_2__1 = this.typ2(0);
             localContext!.result = <Array<monot>>[ _localctx._type_product_2__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 208;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 6, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Type_productContext(parentContext, parentState);
                    localContext._type_product_0__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_type_product);
                    this.state = 201;
                    if (!(this.precpred(this.context, 2))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 2)");
                    }
                    this.state = 202;
                    this.match(TypedBNFParser.T__6);
                    this.state = 203;
                    localContext._type_product_0__3 = this.typ2(0);
                     localContext!.result = <Array<monot>> addList<monot>(<Array<monot>> _localctx._type_product_0__1.result, <monot> _localctx._type_product_0__3.result);
                                          
                    }
                    }
                }
                this.state = 210;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 6, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public top_typ(): Top_typContext {
        let localContext = new Top_typContext(this.context, this.state);
        this.enterRule(localContext, 24, TypedBNFParser.RULE_top_typ);
        try {
            this.state = 220;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TypedBNFParser.T__4:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 211;
                this.match(TypedBNFParser.T__4);
                this.state = 212;
                localContext._top_typ_0__2 = this.slist_o__i__s__i__s_tvar_str_p_(0);
                this.state = 213;
                this.match(TypedBNFParser.T__5);
                this.state = 214;
                localContext._top_typ_0__4 = this.typ();
                 localContext!.result = <polyt> MK_Poly(<Array<string>> _localctx._top_typ_0__2.result, <monot> _localctx._top_typ_0__4.result);
                            
                }
                break;
            case TypedBNFParser.T__2:
            case TypedBNFParser.CNAMEPLUS:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 217;
                localContext._top_typ_2__1 = this.typ();
                 localContext!.result = <polyt> MK_Mono(<monot> _localctx._top_typ_2__1.result);
                            
                }
                break;
            default:
                throw new antlr.NoViableAltException(this);
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public tvar_str(): Tvar_strContext {
        let localContext = new Tvar_strContext(this.context, this.state);
        this.enterRule(localContext, 26, TypedBNFParser.RULE_tvar_str);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 222;
            localContext._tvar_str_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
             localContext!.result = <string> str(<Token> _localctx._tvar_str_0__1);
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public param_type(): Param_typeContext {
        let localContext = new Param_typeContext(this.context, this.state);
        this.enterRule(localContext, 28, TypedBNFParser.RULE_param_type);
        try {
            this.state = 233;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 8, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 225;
                localContext._param_type_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
                this.state = 226;
                this.match(TypedBNFParser.T__7);
                this.state = 227;
                localContext._param_type_0__3 = this.typ();
                 localContext!.result = <[string, monot]>[<string> str(<Token> _localctx._param_type_0__1), _localctx._param_type_0__3.result];
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 230;
                localContext._param_type_2__1 = this.typ();
                 localContext!.result = <[string, monot]>["_", _localctx._param_type_2__1.result];
                            
                }
                break;
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public slist_o__i__s__i__s_tvar_str_p_(): Slist_o__i__s__i__s_tvar_str_p_Context;
    public slist_o__i__s__i__s_tvar_str_p_(_p: number): Slist_o__i__s__i__s_tvar_str_p_Context;
    public slist_o__i__s__i__s_tvar_str_p_(_p?: number): Slist_o__i__s__i__s_tvar_str_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Slist_o__i__s__i__s_tvar_str_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 30;
        this.enterRecursionRule(localContext, 30, TypedBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 236;
            localContext._slist_o__i__s__i__s_tvar_str_p__0__1 = this.tvar_str();
             localContext!.result = <Array<string>>[ _localctx._slist_o__i__s__i__s_tvar_str_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 246;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 9, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_tvar_str_p_Context(parentContext, parentState);
                    localContext._slist_o__i__s__i__s_tvar_str_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_);
                    this.state = 239;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 240;
                    this.match(TypedBNFParser.T__0);
                    this.state = 241;
                    localContext._slist_o__i__s__i__s_tvar_str_p__2__3 = this.tvar_str();
                     localContext!.result = <Array<string>> addList<string>(<Array<string>> _localctx._slist_o__i__s__i__s_tvar_str_p__2__1.result, <string> _localctx._slist_o__i__s__i__s_tvar_str_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 248;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 9, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public type_params(): Type_paramsContext {
        let localContext = new Type_paramsContext(this.context, this.state);
        this.enterRule(localContext, 32, TypedBNFParser.RULE_type_params);
        try {
            this.state = 255;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 10, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 249;
                this.match(TypedBNFParser.T__4);
                this.state = 250;
                localContext._type_params_0__2 = this.slist_o__i__s__i__s_tvar_str_p_(0);
                this.state = 251;
                this.match(TypedBNFParser.T__5);
                 localContext!.result = _localctx._type_params_0__2.result;
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = <Array<string>>[  ];
                            
                }
                break;
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public field_ann(): Field_annContext {
        let localContext = new Field_annContext(this.context, this.state);
        this.enterRule(localContext, 34, TypedBNFParser.RULE_field_ann);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 257;
            localContext._field_ann_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
            this.state = 258;
            this.match(TypedBNFParser.T__7);
            this.state = 259;
            localContext._field_ann_0__3 = this.typ();
             localContext!.result = <[string, monot, position]>[<string> str(<Token> _localctx._field_ann_0__1), _localctx._field_ann_0__3.result, <position> mkpos(<Token> _localctx._field_ann_0__1)];
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public slist_o__i__s__i__s_field_ann_p_(): Slist_o__i__s__i__s_field_ann_p_Context;
    public slist_o__i__s__i__s_field_ann_p_(_p: number): Slist_o__i__s__i__s_field_ann_p_Context;
    public slist_o__i__s__i__s_field_ann_p_(_p?: number): Slist_o__i__s__i__s_field_ann_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Slist_o__i__s__i__s_field_ann_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 36;
        this.enterRecursionRule(localContext, 36, TypedBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 263;
            localContext._slist_o__i__s__i__s_field_ann_p__0__1 = this.field_ann();
             localContext!.result = <Array<[string, monot, position]>>[ _localctx._slist_o__i__s__i__s_field_ann_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 273;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 11, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_field_ann_p_Context(parentContext, parentState);
                    localContext._slist_o__i__s__i__s_field_ann_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_);
                    this.state = 266;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 267;
                    this.match(TypedBNFParser.T__0);
                    this.state = 268;
                    localContext._slist_o__i__s__i__s_field_ann_p__2__3 = this.field_ann();
                     localContext!.result = <Array<[string, monot, position]>> addList<[string, monot, position]>(<Array<[string, monot, position]>> _localctx._slist_o__i__s__i__s_field_ann_p__2__1.result, <[string, monot, position]> _localctx._slist_o__i__s__i__s_field_ann_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 275;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 11, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public empty_o_slist_o__i__s__i__s_field_ann_p__p_(): Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context {
        let localContext = new Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context(this.context, this.state);
        this.enterRule(localContext, 38, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_);
        try {
            this.state = 280;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TypedBNFParser.T__3:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = <Array<[string, monot, position]>>[  ];
                            
                }
                break;
            case TypedBNFParser.CNAMEPLUS:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 277;
                localContext._empty_o_slist_o__i__s__i__s_field_ann_p__p__2__1 = this.slist_o__i__s__i__s_field_ann_p_(0);
                 localContext!.result = _localctx._empty_o_slist_o__i__s__i__s_field_ann_p__p__2__1.result;
                            
                }
                break;
            default:
                throw new antlr.NoViableAltException(this);
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public eslist_o__i__s__i__s_field_ann_p_(): Eslist_o__i__s__i__s_field_ann_p_Context {
        let localContext = new Eslist_o__i__s__i__s_field_ann_p_Context(this.context, this.state);
        this.enterRule(localContext, 40, TypedBNFParser.RULE_eslist_o__i__s__i__s_field_ann_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 282;
            localContext._eslist_o__i__s__i__s_field_ann_p__0__1 = this.empty_o_slist_o__i__s__i__s_field_ann_p__p_();
             localContext!.result = _localctx._eslist_o__i__s__i__s_field_ann_p__0__1.result;
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public field_anns(): Field_annsContext {
        let localContext = new Field_annsContext(this.context, this.state);
        this.enterRule(localContext, 42, TypedBNFParser.RULE_field_anns);
        try {
            this.state = 291;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 13, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 285;
                this.match(TypedBNFParser.T__2);
                this.state = 286;
                localContext._field_anns_0__2 = this.eslist_o__i__s__i__s_field_ann_p_();
                this.state = 287;
                this.match(TypedBNFParser.T__3);
                 localContext!.result = <[boolean, Array<[string, monot, position]>]>[true, _localctx._field_anns_0__2.result];
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = <[boolean, Array<[string, monot, position]>]>[false, <Array<[string, monot, position]>>[  ]];
                            
                }
                break;
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public decl(): DeclContext {
        let localContext = new DeclContext(this.context, this.state);
        this.enterRule(localContext, 44, TypedBNFParser.RULE_decl);
        try {
            this.state = 319;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 14, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 293;
                this.match(TypedBNFParser.T__8);
                this.state = 294;
                localContext._decl_0__2 = this.match(TypedBNFParser.T__9);
                this.state = 295;
                localContext._decl_0__3 = this.identstr();
                this.state = 296;
                this.match(TypedBNFParser.T__7);
                this.state = 297;
                localContext._decl_0__5 = this.top_typ();
                 localContext!.result = <definition> MK_Declvar(<string> _localctx._decl_0__3.result, <polyt> _localctx._decl_0__5.result, <position> <position> mkpos(<Token> _localctx._decl_0__2));
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 300;
                localContext._decl_2__1 = this.match(TypedBNFParser.T__10);
                this.state = 301;
                localContext._decl_2__2 = this.identstr();
                this.state = 302;
                this.match(TypedBNFParser.T__7);
                this.state = 303;
                localContext._decl_2__4 = this.typ();
                 localContext!.result = <definition> MK_Declctor(<string> _localctx._decl_2__2.result, <monot> _localctx._decl_2__4.result, <position> <position> mkpos(<Token> _localctx._decl_2__1));
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 306;
                localContext._decl_4__1 = this.match(TypedBNFParser.T__8);
                this.state = 307;
                this.match(TypedBNFParser.T__11);
                this.state = 308;
                localContext._decl_4__3 = this.identstr();
                this.state = 309;
                localContext._decl_4__4 = this.type_params();
                this.state = 310;
                localContext._decl_4__5 = this.field_anns();
                 localContext!.result = <definition> MK_Decltype(<boolean> true, <boolean> <boolean> fst<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_4__5.result), <string> _localctx._decl_4__3.result, <Array<string>> _localctx._decl_4__4.result, <Array<[string, monot, position]>> <Array<[string, monot, position]>> snd<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_4__5.result), <position> <position> mkpos(<Token> _localctx._decl_4__1));
                            
                }
                break;
            case 4:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 313;
                localContext._decl_6__1 = this.match(TypedBNFParser.T__11);
                this.state = 314;
                localContext._decl_6__2 = this.identstr();
                this.state = 315;
                localContext._decl_6__3 = this.type_params();
                this.state = 316;
                localContext._decl_6__4 = this.field_anns();
                 localContext!.result = <definition> MK_Decltype(<boolean> false, <boolean> <boolean> fst<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_6__4.result), <string> _localctx._decl_6__2.result, <Array<string>> _localctx._decl_6__3.result, <Array<[string, monot, position]>> <Array<[string, monot, position]>> snd<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_6__4.result), <position> <position> mkpos(<Token> _localctx._decl_6__1));
                            
                }
                break;
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public toplevel(): ToplevelContext {
        let localContext = new ToplevelContext(this.context, this.state);
        this.enterRule(localContext, 46, TypedBNFParser.RULE_toplevel);
        try {
            this.state = 334;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 15, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 321;
                localContext._toplevel_0__1 = this.def();
                 localContext!.result = _localctx._toplevel_0__1.result;
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 324;
                localContext._toplevel_2__1 = this.decl();
                 localContext!.result = _localctx._toplevel_2__1.result;
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 327;
                localContext._toplevel_4__1 = this.lexerdef();
                 localContext!.result = _localctx._toplevel_4__1.result;
                            
                }
                break;
            case 4:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 330;
                localContext._toplevel_6__1 = this.match(TypedBNFParser.T__12);
                this.state = 331;
                localContext._toplevel_6__2 = this.slist_o__i__s__i__s_identstr_p_(0);
                 localContext!.result = <definition> MK_Defignore(<Array<string>> _localctx._toplevel_6__2.result, <position> <position> mkpos(<Token> _localctx._toplevel_6__1));
                            
                }
                break;
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public slist_o__i__s__i__s_identstr_p_(): Slist_o__i__s__i__s_identstr_p_Context;
    public slist_o__i__s__i__s_identstr_p_(_p: number): Slist_o__i__s__i__s_identstr_p_Context;
    public slist_o__i__s__i__s_identstr_p_(_p?: number): Slist_o__i__s__i__s_identstr_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Slist_o__i__s__i__s_identstr_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 48;
        this.enterRecursionRule(localContext, 48, TypedBNFParser.RULE_slist_o__i__s__i__s_identstr_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 337;
            localContext._slist_o__i__s__i__s_identstr_p__0__1 = this.identstr();
             localContext!.result = <Array<string>>[ _localctx._slist_o__i__s__i__s_identstr_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 347;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 16, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_identstr_p_Context(parentContext, parentState);
                    localContext._slist_o__i__s__i__s_identstr_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_identstr_p_);
                    this.state = 340;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 341;
                    this.match(TypedBNFParser.T__0);
                    this.state = 342;
                    localContext._slist_o__i__s__i__s_identstr_p__2__3 = this.identstr();
                     localContext!.result = <Array<string>> addList<string>(<Array<string>> _localctx._slist_o__i__s__i__s_identstr_p__2__1.result, <string> _localctx._slist_o__i__s__i__s_identstr_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 349;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 16, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public def(): DefContext {
        let localContext = new DefContext(this.context, this.state);
        this.enterRule(localContext, 50, TypedBNFParser.RULE_def);
        try {
            this.state = 361;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 17, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 350;
                localContext._def_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
                this.state = 351;
                this.match(TypedBNFParser.T__2);
                this.state = 352;
                localContext._def_0__3 = this.slist_o__i__s__i__s_identstr_p_(0);
                this.state = 353;
                this.match(TypedBNFParser.T__3);
                this.state = 354;
                localContext._def_0__5 = this.productions(0);
                 localContext!.result = <definition> MK_Defmacro(<string> <string> str(<Token> _localctx._def_0__1), <Array<string>> _localctx._def_0__3.result, <Array<[position, production]>> _localctx._def_0__5.result, <position> <position> mkpos(<Token> _localctx._def_0__1));
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 357;
                localContext._def_2__1 = this.match(TypedBNFParser.CNAMEPLUS);
                this.state = 358;
                localContext._def_2__2 = this.productions(0);
                 localContext!.result = <definition> MK_Defrule(<string> <string> str(<Token> _localctx._def_2__1), <Array<[position, production]>> _localctx._def_2__2.result, <position> <position> mkpos(<Token> _localctx._def_2__1));
                            
                }
                break;
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public productions(): ProductionsContext;
    public productions(_p: number): ProductionsContext;
    public productions(_p?: number): ProductionsContext {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new ProductionsContext(this.context, parentState);
        let previousContext = localContext;
        let _startState = 52;
        this.enterRecursionRule(localContext, 52, TypedBNFParser.RULE_productions, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 364;
            localContext._productions_0__1 = this.match(TypedBNFParser.T__7);
            this.state = 365;
            localContext._productions_0__2 = this.production();
             localContext!.result = <Array<[position, production]>>[ <[position, production]>[<position> mkpos(<Token> _localctx._productions_0__1), _localctx._productions_0__2.result] ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 375;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 18, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new ProductionsContext(parentContext, parentState);
                    localContext._productions_2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_productions);
                    this.state = 368;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 369;
                    localContext._productions_2__2 = this.match(TypedBNFParser.T__13);
                    this.state = 370;
                    localContext._productions_2__3 = this.production();
                     localContext!.result = <Array<[position, production]>> addList<[position, production]>(<Array<[position, production]>> _localctx._productions_2__1.result, <[position, production]> <[position, production]>[<position> mkpos(<Token> _localctx._productions_2__2), _localctx._productions_2__3.result]);
                                          
                    }
                    }
                }
                this.state = 377;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 18, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }

    public list_o_psym_p_(): List_o_psym_p_Context;
    public list_o_psym_p_(_p: number): List_o_psym_p_Context;
    public list_o_psym_p_(_p?: number): List_o_psym_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new List_o_psym_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 54;
        this.enterRecursionRule(localContext, 54, TypedBNFParser.RULE_list_o_psym_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 379;
            localContext._list_o_psym_p__0__1 = this.psym();
             localContext!.result = <Array<symbol>>[ _localctx._list_o_psym_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 388;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 19, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new List_o_psym_p_Context(parentContext, parentState);
                    localContext._list_o_psym_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_list_o_psym_p_);
                    this.state = 382;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 383;
                    localContext._list_o_psym_p__2__2 = this.psym();
                     localContext!.result = <Array<symbol>> addList<symbol>(<Array<symbol>> _localctx._list_o_psym_p__2__1.result, <symbol> _localctx._list_o_psym_p__2__2.result);
                                          
                    }
                    }
                }
                this.state = 390;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 19, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public empty_o_list_o_psym_p__p_(): Empty_o_list_o_psym_p__p_Context {
        let localContext = new Empty_o_list_o_psym_p__p_Context(this.context, this.state);
        this.enterRule(localContext, 56, TypedBNFParser.RULE_empty_o_list_o_psym_p__p_);
        try {
            this.state = 395;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TypedBNFParser.T__14:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = <Array<symbol>>[  ];
                            
                }
                break;
            case TypedBNFParser.T__4:
            case TypedBNFParser.CNAMEPLUS:
            case TypedBNFParser.ESCAPED_STRING:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 392;
                localContext._empty_o_list_o_psym_p__p__2__1 = this.list_o_psym_p_(0);
                 localContext!.result = _localctx._empty_o_list_o_psym_p__p__2__1.result;
                            
                }
                break;
            default:
                throw new antlr.NoViableAltException(this);
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public elist_o_psym_p_(): Elist_o_psym_p_Context {
        let localContext = new Elist_o_psym_p_Context(this.context, this.state);
        this.enterRule(localContext, 58, TypedBNFParser.RULE_elist_o_psym_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 397;
            localContext._elist_o_psym_p__0__1 = this.empty_o_list_o_psym_p__p_();
             localContext!.result = _localctx._elist_o_psym_p__0__1.result;
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public production(): ProductionContext {
        let localContext = new ProductionContext(this.context, this.state);
        this.enterRule(localContext, 60, TypedBNFParser.RULE_production);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 400;
            localContext._production_0__1 = this.elist_o_psym_p_();
            this.state = 401;
            this.match(TypedBNFParser.T__14);
            this.state = 402;
            localContext._production_0__3 = this.expr();
            this.state = 403;
            this.match(TypedBNFParser.T__15);
             localContext!.result = <production> MK_production(<Array<symbol>> _localctx._production_0__1.result, <expr> _localctx._production_0__3.result);
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public slist_o__i__s__i__s_psym_p_(): Slist_o__i__s__i__s_psym_p_Context;
    public slist_o__i__s__i__s_psym_p_(_p: number): Slist_o__i__s__i__s_psym_p_Context;
    public slist_o__i__s__i__s_psym_p_(_p?: number): Slist_o__i__s__i__s_psym_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Slist_o__i__s__i__s_psym_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 62;
        this.enterRecursionRule(localContext, 62, TypedBNFParser.RULE_slist_o__i__s__i__s_psym_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 407;
            localContext._slist_o__i__s__i__s_psym_p__0__1 = this.psym();
             localContext!.result = <Array<symbol>>[ _localctx._slist_o__i__s__i__s_psym_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 417;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 21, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_psym_p_Context(parentContext, parentState);
                    localContext._slist_o__i__s__i__s_psym_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_psym_p_);
                    this.state = 410;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 411;
                    this.match(TypedBNFParser.T__0);
                    this.state = 412;
                    localContext._slist_o__i__s__i__s_psym_p__2__3 = this.psym();
                     localContext!.result = <Array<symbol>> addList<symbol>(<Array<symbol>> _localctx._slist_o__i__s__i__s_psym_p__2__1.result, <symbol> _localctx._slist_o__i__s__i__s_psym_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 419;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 21, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public psym(): PsymContext {
        let localContext = new PsymContext(this.context, this.state);
        this.enterRule(localContext, 64, TypedBNFParser.RULE_psym);
        try {
            this.state = 436;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 22, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 420;
                this.match(TypedBNFParser.T__4);
                this.state = 421;
                localContext._psym_0__2 = this.identstr();
                this.state = 422;
                this.match(TypedBNFParser.T__5);
                 localContext!.result = <symbol> MK_Term(<string> _localctx._psym_0__2.result, <boolean> false);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 425;
                localContext._psym_2__1 = this.match(TypedBNFParser.ESCAPED_STRING);
                 localContext!.result = <symbol> MK_Term(<string> <string> unescape(<string> <string> str(<Token> _localctx._psym_2__1)), <boolean> true);
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 427;
                localContext._psym_4__1 = this.identstr();
                 localContext!.result = <symbol> MK_Nonterm(<string> _localctx._psym_4__1.result);
                            
                }
                break;
            case 4:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 430;
                localContext._psym_6__1 = this.match(TypedBNFParser.CNAMEPLUS);
                this.state = 431;
                this.match(TypedBNFParser.T__2);
                this.state = 432;
                localContext._psym_6__3 = this.slist_o__i__s__i__s_psym_p_(0);
                this.state = 433;
                this.match(TypedBNFParser.T__3);
                 localContext!.result = <symbol> MK_Macrocall(<string> <string> str(<Token> _localctx._psym_6__1), <Array<symbol>> _localctx._psym_6__3.result, <position> <position> mkpos(<Token> _localctx._psym_6__1));
                            
                }
                break;
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public ann(): AnnContext {
        let localContext = new AnnContext(this.context, this.state);
        this.enterRule(localContext, 66, TypedBNFParser.RULE_ann);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 438;
            localContext._ann_0__1 = this.identstr();
            this.state = 439;
            this.match(TypedBNFParser.T__7);
            this.state = 440;
            localContext._ann_0__3 = this.typ();
             localContext!.result = <[string, monot]>[_localctx._ann_0__1.result, _localctx._ann_0__3.result];
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public slist_o__i__s__i__s_ann_p_(): Slist_o__i__s__i__s_ann_p_Context;
    public slist_o__i__s__i__s_ann_p_(_p: number): Slist_o__i__s__i__s_ann_p_Context;
    public slist_o__i__s__i__s_ann_p_(_p?: number): Slist_o__i__s__i__s_ann_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Slist_o__i__s__i__s_ann_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 68;
        this.enterRecursionRule(localContext, 68, TypedBNFParser.RULE_slist_o__i__s__i__s_ann_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 444;
            localContext._slist_o__i__s__i__s_ann_p__0__1 = this.ann();
             localContext!.result = <Array<[string, monot]>>[ _localctx._slist_o__i__s__i__s_ann_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 454;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 23, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_ann_p_Context(parentContext, parentState);
                    localContext._slist_o__i__s__i__s_ann_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_ann_p_);
                    this.state = 447;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 448;
                    this.match(TypedBNFParser.T__0);
                    this.state = 449;
                    localContext._slist_o__i__s__i__s_ann_p__2__3 = this.ann();
                     localContext!.result = <Array<[string, monot]>> addList<[string, monot]>(<Array<[string, monot]>> _localctx._slist_o__i__s__i__s_ann_p__2__1.result, <[string, monot]> _localctx._slist_o__i__s__i__s_ann_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 456;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 23, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public empty_o_slist_o__i__s__i__s_ann_p__p_(): Empty_o_slist_o__i__s__i__s_ann_p__p_Context {
        let localContext = new Empty_o_slist_o__i__s__i__s_ann_p__p_Context(this.context, this.state);
        this.enterRule(localContext, 70, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_ann_p__p_);
        try {
            this.state = 461;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TypedBNFParser.T__3:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = <Array<[string, monot]>>[  ];
                            
                }
                break;
            case TypedBNFParser.CNAMEPLUS:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 458;
                localContext._empty_o_slist_o__i__s__i__s_ann_p__p__2__1 = this.slist_o__i__s__i__s_ann_p_(0);
                 localContext!.result = _localctx._empty_o_slist_o__i__s__i__s_ann_p__p__2__1.result;
                            
                }
                break;
            default:
                throw new antlr.NoViableAltException(this);
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public eslist_o__i__s__i__s_ann_p_(): Eslist_o__i__s__i__s_ann_p_Context {
        let localContext = new Eslist_o__i__s__i__s_ann_p_Context(this.context, this.state);
        this.enterRule(localContext, 72, TypedBNFParser.RULE_eslist_o__i__s__i__s_ann_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 463;
            localContext._eslist_o__i__s__i__s_ann_p__0__1 = this.empty_o_slist_o__i__s__i__s_ann_p__p_();
             localContext!.result = _localctx._eslist_o__i__s__i__s_ann_p__0__1.result;
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public func_parameters(): Func_parametersContext {
        let localContext = new Func_parametersContext(this.context, this.state);
        this.enterRule(localContext, 74, TypedBNFParser.RULE_func_parameters);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 466;
            this.match(TypedBNFParser.T__2);
            this.state = 467;
            localContext._func_parameters_0__2 = this.eslist_o__i__s__i__s_ann_p_();
            this.state = 468;
            this.match(TypedBNFParser.T__3);
             localContext!.result = _localctx._func_parameters_0__2.result;
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public expr(): ExprContext {
        let localContext = new ExprContext(this.context, this.state);
        this.enterRule(localContext, 76, TypedBNFParser.RULE_expr);
        try {
            this.state = 493;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 25, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 471;
                localContext._expr_0__1 = this.match(TypedBNFParser.T__16);
                this.state = 472;
                localContext._expr_0__2 = this.identstr();
                this.state = 473;
                this.match(TypedBNFParser.T__17);
                this.state = 474;
                localContext._expr_0__4 = this.expr();
                this.state = 475;
                this.match(TypedBNFParser.T__18);
                this.state = 476;
                localContext._expr_0__6 = this.expr();
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_ELet(<string> _localctx._expr_0__2.result, <expr> _localctx._expr_0__4.result, <expr> _localctx._expr_0__6.result), <position> <position> mkpos(<Token> _localctx._expr_0__1));
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 479;
                localContext._expr_2__1 = this.match(TypedBNFParser.T__19);
                this.state = 480;
                localContext._expr_2__2 = this.func_parameters();
                this.state = 481;
                this.match(TypedBNFParser.T__1);
                this.state = 482;
                localContext._expr_2__4 = this.expr();
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_EFun(<Array<[string, monot]>> _localctx._expr_2__2.result, <expr> _localctx._expr_2__4.result), <position> <position> mkpos(<Token> _localctx._expr_2__1));
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 485;
                localContext._expr_4__1 = this.call(0);
                 localContext!.result = _localctx._expr_4__1.result;
                            
                }
                break;
            case 4:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 488;
                localContext._expr_6__1 = this.call(0);
                this.state = 489;
                this.match(TypedBNFParser.T__20);
                this.state = 490;
                localContext._expr_6__3 = this.expr();
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_ELet(<string> "_", <expr> _localctx._expr_6__1.result, <expr> _localctx._expr_6__3.result), <position> <position> getpos(<expr> _localctx._expr_6__1.result));
                            
                }
                break;
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public call(): CallContext;
    public call(_p: number): CallContext;
    public call(_p?: number): CallContext {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new CallContext(this.context, parentState);
        let previousContext = localContext;
        let _startState = 78;
        this.enterRecursionRule(localContext, 78, TypedBNFParser.RULE_call, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 496;
            localContext._call_2__1 = this.atomexp(0);
             localContext!.result = _localctx._call_2__1.result;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 507;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 26, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new CallContext(parentContext, parentState);
                    localContext._call_0__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_call);
                    this.state = 499;
                    if (!(this.precpred(this.context, 2))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 2)");
                    }
                    this.state = 500;
                    this.match(TypedBNFParser.T__2);
                    this.state = 501;
                    localContext._call_0__3 = this.eslist_o__i__s__i__s_expr_p_();
                    this.state = 502;
                    this.match(TypedBNFParser.T__3);
                     localContext!.result = <expr> MK_Expr(<node> <node> MK_EApp(<expr> _localctx._call_0__1.result, <Array<expr>> _localctx._call_0__3.result), <position> <position> getpos(<expr> _localctx._call_0__1.result));
                                          
                    }
                    }
                }
                this.state = 509;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 26, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public empty_o_slist_o__i__s__i__s_expr_p__p_(): Empty_o_slist_o__i__s__i__s_expr_p__p_Context {
        let localContext = new Empty_o_slist_o__i__s__i__s_expr_p__p_Context(this.context, this.state);
        this.enterRule(localContext, 80, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_expr_p__p_);
        try {
            this.state = 514;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TypedBNFParser.T__3:
            case TypedBNFParser.T__23:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = <Array<expr>>[  ];
                            
                }
                break;
            case TypedBNFParser.T__2:
            case TypedBNFParser.T__16:
            case TypedBNFParser.T__19:
            case TypedBNFParser.T__21:
            case TypedBNFParser.T__22:
            case TypedBNFParser.T__25:
            case TypedBNFParser.T__26:
            case TypedBNFParser.CNAMEPLUS:
            case TypedBNFParser.INT:
            case TypedBNFParser.FLOAT:
            case TypedBNFParser.ESCAPED_STRING:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 511;
                localContext._empty_o_slist_o__i__s__i__s_expr_p__p__2__1 = this.slist_o__i__s__i__s_expr_p_(0);
                 localContext!.result = _localctx._empty_o_slist_o__i__s__i__s_expr_p__p__2__1.result;
                            
                }
                break;
            default:
                throw new antlr.NoViableAltException(this);
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public eslist_o__i__s__i__s_expr_p_(): Eslist_o__i__s__i__s_expr_p_Context {
        let localContext = new Eslist_o__i__s__i__s_expr_p_Context(this.context, this.state);
        this.enterRule(localContext, 82, TypedBNFParser.RULE_eslist_o__i__s__i__s_expr_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 516;
            localContext._eslist_o__i__s__i__s_expr_p__0__1 = this.empty_o_slist_o__i__s__i__s_expr_p__p_();
             localContext!.result = _localctx._eslist_o__i__s__i__s_expr_p__0__1.result;
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public slist_o__i__s__i__s_expr_p_(): Slist_o__i__s__i__s_expr_p_Context;
    public slist_o__i__s__i__s_expr_p_(_p: number): Slist_o__i__s__i__s_expr_p_Context;
    public slist_o__i__s__i__s_expr_p_(_p?: number): Slist_o__i__s__i__s_expr_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Slist_o__i__s__i__s_expr_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 84;
        this.enterRecursionRule(localContext, 84, TypedBNFParser.RULE_slist_o__i__s__i__s_expr_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 520;
            localContext._slist_o__i__s__i__s_expr_p__0__1 = this.expr();
             localContext!.result = <Array<expr>>[ _localctx._slist_o__i__s__i__s_expr_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 530;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 28, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_expr_p_Context(parentContext, parentState);
                    localContext._slist_o__i__s__i__s_expr_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_expr_p_);
                    this.state = 523;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 524;
                    this.match(TypedBNFParser.T__0);
                    this.state = 525;
                    localContext._slist_o__i__s__i__s_expr_p__2__3 = this.expr();
                     localContext!.result = <Array<expr>> addList<expr>(<Array<expr>> _localctx._slist_o__i__s__i__s_expr_p__2__1.result, <expr> _localctx._slist_o__i__s__i__s_expr_p__2__3.result);
                                          
                    }
                }
                }
                this.state = 532;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 28, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }

    public atomexp(): AtomexpContext;
    public atomexp(_p: number): AtomexpContext;
    public atomexp(_p?: number): AtomexpContext {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new AtomexpContext(this.context, parentState);
        let previousContext = localContext;
        let _startState = 86;
        this.enterRecursionRule(localContext, 86, TypedBNFParser.RULE_atomexp, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 562;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 29, this.context) ) {
            case 1:
                {
                this.state = 534;
                localContext._atomexp_0__1 = this.match(TypedBNFParser.INT);
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_EInt(<number> <number> toint(<Token> _localctx._atomexp_0__1)), <position> <position> mkpos(<Token> _localctx._atomexp_0__1));
                            
                }
                break;
            case 2:
                {
                this.state = 536;
                localContext._atomexp_2__1 = this.match(TypedBNFParser.FLOAT);
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_EFlt(<number> <number> tofloat(<Token> _localctx._atomexp_2__1)), <position> <position> mkpos(<Token> _localctx._atomexp_2__1));
                            
                }
                break;
            case 3:
                {
                this.state = 538;
                localContext._atomexp_4__1 = this.match(TypedBNFParser.ESCAPED_STRING);
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_EStr(<string> <string> unescape(<string> <string> str(<Token> _localctx._atomexp_4__1))), <position> <position> mkpos(<Token> _localctx._atomexp_4__1));
                            
                }
                break;
            case 4:
                {
                this.state = 540;
                localContext._atomexp_6__1 = this.match(TypedBNFParser.T__21);
                this.state = 541;
                localContext._atomexp_6__2 = this.match(TypedBNFParser.INT);
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_ESlot(<number> <number> toint(<Token> _localctx._atomexp_6__2)), <position> <position> mkpos(<Token> _localctx._atomexp_6__1));
                            
                }
                break;
            case 5:
                {
                this.state = 543;
                localContext._atomexp_8__1 = this.match(TypedBNFParser.T__22);
                this.state = 544;
                localContext._atomexp_8__2 = this.eslist_o__i__s__i__s_expr_p_();
                this.state = 545;
                this.match(TypedBNFParser.T__23);
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_EList(<Array<expr>> _localctx._atomexp_8__2.result), <position> <position> mkpos(<Token> _localctx._atomexp_8__1));
                            
                }
                break;
            case 6:
                {
                this.state = 548;
                localContext._atomexp_10__1 = this.match(TypedBNFParser.T__2);
                this.state = 549;
                this.match(TypedBNFParser.T__3);
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_ETuple(<Array<expr>> <Array<expr>>[  ]), <position> <position> mkpos(<Token> _localctx._atomexp_10__1));
                            
                }
                break;
            case 7:
                {
                this.state = 551;
                localContext._atomexp_12__1 = this.match(TypedBNFParser.T__2);
                this.state = 552;
                localContext._atomexp_12__2 = this.slist_o__i__s__i__s_expr_p_(0);
                this.state = 553;
                this.match(TypedBNFParser.T__3);
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_ETuple(<Array<expr>> _localctx._atomexp_12__2.result), <position> <position> mkpos(<Token> _localctx._atomexp_12__1));
                            
                }
                break;
            case 8:
                {
                this.state = 556;
                localContext._atomexp_14__1 = this.match(TypedBNFParser.CNAMEPLUS);
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_EVar(<string> <string> str(<Token> _localctx._atomexp_14__1)), <position> <position> mkpos(<Token> _localctx._atomexp_14__1));
                            
                }
                break;
            case 9:
                {
                this.state = 558;
                localContext._atomexp_18__1 = this.match(TypedBNFParser.T__25);
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_EBool(<boolean> true), <position> <position> mkpos(<Token> _localctx._atomexp_18__1));
                            
                }
                break;
            case 10:
                {
                this.state = 560;
                localContext._atomexp_20__1 = this.match(TypedBNFParser.T__26);
                 localContext!.result = <expr> MK_Expr(<node> <node> MK_EBool(<boolean> false), <position> <position> mkpos(<Token> _localctx._atomexp_20__1));
                            
                }
                break;
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 570;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 30, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new AtomexpContext(parentContext, parentState);
                    localContext._atomexp_16__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_atomexp);
                    this.state = 564;
                    if (!(this.precpred(this.context, 3))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 3)");
                    }
                    this.state = 565;
                    this.match(TypedBNFParser.T__24);
                    this.state = 566;
                    localContext._atomexp_16__3 = this.match(TypedBNFParser.CNAMEPLUS);
                     localContext!.result = <expr> MK_Expr(<node> <node> MK_EField(<expr> _localctx._atomexp_16__1.result, <string> <string> str(<Token> _localctx._atomexp_16__3)), <position> <position> getpos(<expr> _localctx._atomexp_16__1.result));
                                          
                    }
                    }
                }
                this.state = 572;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 30, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }

    public slist_o__i__u__i__s_lexer_and_p_(): Slist_o__i__u__i__s_lexer_and_p_Context;
    public slist_o__i__u__i__s_lexer_and_p_(_p: number): Slist_o__i__u__i__s_lexer_and_p_Context;
    public slist_o__i__u__i__s_lexer_and_p_(_p?: number): Slist_o__i__u__i__s_lexer_and_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Slist_o__i__u__i__s_lexer_and_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 88;
        this.enterRecursionRule(localContext, 88, TypedBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 574;
            localContext._slist_o__i__u__i__s_lexer_and_p__0__1 = this.lexer_and();
             localContext!.result = <Array<lexerule>>[ _localctx._slist_o__i__u__i__s_lexer_and_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 584;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 31, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__u__i__s_lexer_and_p_Context(parentContext, parentState);
                    localContext._slist_o__i__u__i__s_lexer_and_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_);
                    this.state = 577;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 578;
                    this.match(TypedBNFParser.T__13);
                    this.state = 579;
                    localContext._slist_o__i__u__i__s_lexer_and_p__2__3 = this.lexer_and();
                     localContext!.result = <Array<lexerule>> addList<lexerule>(<Array<lexerule>> _localctx._slist_o__i__u__i__s_lexer_and_p__2__1.result, <lexerule> _localctx._slist_o__i__u__i__s_lexer_and_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 586;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 31, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public lexer__y_(): Lexer__y_Context {
        let localContext = new Lexer__y_Context(this.context, this.state);
        this.enterRule(localContext, 90, TypedBNFParser.RULE_lexer__y_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 587;
            localContext._lexer__y__0__1 = this.slist_o__i__u__i__s_lexer_and_p_(0);
             localContext!.result = <lexerule> MK_LOr(<Array<lexerule>> _localctx._lexer__y__0__1.result);
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public list_o_lexer_atomexpr_p_(): List_o_lexer_atomexpr_p_Context;
    public list_o_lexer_atomexpr_p_(_p: number): List_o_lexer_atomexpr_p_Context;
    public list_o_lexer_atomexpr_p_(_p?: number): List_o_lexer_atomexpr_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new List_o_lexer_atomexpr_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 92;
        this.enterRecursionRule(localContext, 92, TypedBNFParser.RULE_list_o_lexer_atomexpr_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 591;
            localContext._list_o_lexer_atomexpr_p__0__1 = this.lexer_atomexpr(0);
             localContext!.result = <Array<lexerule>>[ _localctx._list_o_lexer_atomexpr_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 600;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 32, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new List_o_lexer_atomexpr_p_Context(parentContext, parentState);
                    localContext._list_o_lexer_atomexpr_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_list_o_lexer_atomexpr_p_);
                    this.state = 594;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 595;
                    localContext._list_o_lexer_atomexpr_p__2__2 = this.lexer_atomexpr(0);
                     localContext!.result = <Array<lexerule>> addList<lexerule>(<Array<lexerule>> _localctx._list_o_lexer_atomexpr_p__2__1.result, <lexerule> _localctx._list_o_lexer_atomexpr_p__2__2.result);
                                          
                    }
                    }
                }
                this.state = 602;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 32, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public lexer_and(): Lexer_andContext {
        let localContext = new Lexer_andContext(this.context, this.state);
        this.enterRule(localContext, 94, TypedBNFParser.RULE_lexer_and);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 603;
            localContext._lexer_and_0__1 = this.list_o_lexer_atomexpr_p_(0);
             localContext!.result = <lexerule> MK_LSeq(<Array<lexerule>> _localctx._lexer_and_0__1.result);
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public lexer_atomexpr(): Lexer_atomexprContext;
    public lexer_atomexpr(_p: number): Lexer_atomexprContext;
    public lexer_atomexpr(_p?: number): Lexer_atomexprContext {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Lexer_atomexprContext(this.context, parentState);
        let previousContext = localContext;
        let _startState = 96;
        this.enterRecursionRule(localContext, 96, TypedBNFParser.RULE_lexer_atomexpr, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 607;
            localContext._lexer_atomexpr_6__1 = this.lexer_atom();
             localContext!.result = _localctx._lexer_atomexpr_6__1.result;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 621;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 34, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    this.state = 619;
                    this.errorHandler.sync(this);
                    switch (this.interpreter.adaptivePredict(this.tokenStream, 33, this.context) ) {
                    case 1:
                        {
                        localContext = new Lexer_atomexprContext(parentContext, parentState);
                        localContext._lexer_atomexpr_0__1 = previousContext;
                        this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_lexer_atomexpr);
                        this.state = 610;
                        if (!(this.precpred(this.context, 4))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 4)");
                        }
                        this.state = 611;
                        this.match(TypedBNFParser.T__27);
                         localContext!.result = <lexerule> MK_LPlus(<lexerule> _localctx._lexer_atomexpr_0__1.result);
                                              
                        }
                        break;
                    case 2:
                        {
                        localContext = new Lexer_atomexprContext(parentContext, parentState);
                        localContext._lexer_atomexpr_2__1 = previousContext;
                        this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_lexer_atomexpr);
                        this.state = 613;
                        if (!(this.precpred(this.context, 3))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 3)");
                        }
                        this.state = 614;
                        this.match(TypedBNFParser.T__6);
                         localContext!.result = <lexerule> MK_LStar(<lexerule> _localctx._lexer_atomexpr_2__1.result);
                                              
                        }
                        break;
                    case 3:
                        {
                        localContext = new Lexer_atomexprContext(parentContext, parentState);
                        localContext._lexer_atomexpr_4__1 = previousContext;
                        this.pushNewRecursionContext(localContext, _startState, TypedBNFParser.RULE_lexer_atomexpr);
                        this.state = 616;
                        if (!(this.precpred(this.context, 2))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 2)");
                        }
                        this.state = 617;
                        this.match(TypedBNFParser.T__28);
                         localContext!.result = <lexerule> MK_LOptional(<lexerule> _localctx._lexer_atomexpr_4__1.result);
                                              
                        }
                        break;
                    }
                    }
                }
                this.state = 623;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 34, this.context);
            }
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.unrollRecursionContexts(parentContext);
        }
        return localContext;
    }
    public lexer_atom(): Lexer_atomContext {
        let localContext = new Lexer_atomContext(this.context, this.state);
        this.enterRule(localContext, 98, TypedBNFParser.RULE_lexer_atom);
        try {
            this.state = 647;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TypedBNFParser.ESCAPED_STRING:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 624;
                localContext._lexer_atom_0__1 = this.match(TypedBNFParser.ESCAPED_STRING);
                 localContext!.result = <lexerule> MK_LStr(<string> <string> unescape(<string> <string> str(<Token> _localctx._lexer_atom_0__1)));
                            
                }
                break;
            case TypedBNFParser.T__29:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 626;
                this.match(TypedBNFParser.T__29);
                this.state = 627;
                localContext._lexer_atom_2__2 = this.lexer_atom();
                 localContext!.result = <lexerule> MK_LNot(<lexerule> _localctx._lexer_atom_2__2.result);
                            
                }
                break;
            case TypedBNFParser.T__2:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 630;
                this.match(TypedBNFParser.T__2);
                this.state = 631;
                localContext._lexer_atom_4__2 = this.lexer__y_();
                this.state = 632;
                this.match(TypedBNFParser.T__3);
                 localContext!.result = <lexerule> MK_LGroup(<lexerule> _localctx._lexer_atom_4__2.result);
                            
                }
                break;
            case TypedBNFParser.T__30:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 635;
                this.match(TypedBNFParser.T__30);
                 localContext!.result = MK_LNumber;
                            
                }
                break;
            case TypedBNFParser.RANGE:
                this.enterOuterAlt(localContext, 5);
                {
                this.state = 637;
                localContext._lexer_atom_8__1 = this.match(TypedBNFParser.RANGE);
                 localContext!.result = <lexerule> getrange(<string> <string> str(<Token> _localctx._lexer_atom_8__1));
                            
                }
                break;
            case TypedBNFParser.UNICODE_RANGE:
                this.enterOuterAlt(localContext, 6);
                {
                this.state = 639;
                localContext._lexer_atom_10__1 = this.match(TypedBNFParser.UNICODE_RANGE);
                 localContext!.result = <lexerule> getunicoderange(<string> <string> str(<Token> _localctx._lexer_atom_10__1));
                            
                }
                break;
            case TypedBNFParser.T__31:
                this.enterOuterAlt(localContext, 7);
                {
                this.state = 641;
                this.match(TypedBNFParser.T__31);
                 localContext!.result = MK_LWildcard;
                            
                }
                break;
            case TypedBNFParser.T__24:
                this.enterOuterAlt(localContext, 8);
                {
                this.state = 643;
                this.match(TypedBNFParser.T__24);
                 localContext!.result = MK_LWildcard;
                            
                }
                break;
            case TypedBNFParser.CNAMEPLUS:
                this.enterOuterAlt(localContext, 9);
                {
                this.state = 645;
                localContext._lexer_atom_16__1 = this.match(TypedBNFParser.CNAMEPLUS);
                 localContext!.result = <lexerule> MK_LRef(<string> <string> str(<Token> _localctx._lexer_atom_16__1));
                            
                }
                break;
            default:
                throw new antlr.NoViableAltException(this);
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }
    public lexerdef(): LexerdefContext {
        let localContext = new LexerdefContext(this.context, this.state);
        this.enterRule(localContext, 100, TypedBNFParser.RULE_lexerdef);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 649;
            localContext._lexerdef_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
            this.state = 650;
            this.match(TypedBNFParser.T__17);
            this.state = 651;
            localContext._lexerdef_0__3 = this.lexer__y_();
            this.state = 652;
            this.match(TypedBNFParser.T__20);
             localContext!.result = <definition> MK_Deflexer(<string> <string> str(<Token> _localctx._lexerdef_0__1), <lexerule> _localctx._lexerdef_0__3.result, <position> <position> mkpos(<Token> _localctx._lexerdef_0__1));
                        
            }
        }
        catch (re) {
            if (re instanceof antlr.RecognitionException) {
                this.errorHandler.reportError(this, re);
                this.errorHandler.recover(this, re);
            } else {
                throw re;
            }
        }
        finally {
            this.exitRule();
        }
        return localContext;
    }

    public override sempred(localContext: antlr.ParserRuleContext | null, ruleIndex: number, predIndex: number): boolean {
        switch (ruleIndex) {
        case 1:
            return this.list_o_toplevel_p__sempred(localContext as List_o_toplevel_p_Context, predIndex);
        case 5:
            return this.slist_o__i__s__i__s_param_type_p__sempred(localContext as Slist_o__i__s__i__s_param_type_p_Context, predIndex);
        case 9:
            return this.slist_o__i__s__i__s_typ_p__sempred(localContext as Slist_o__i__s__i__s_typ_p_Context, predIndex);
        case 10:
            return this.typ2_sempred(localContext as Typ2Context, predIndex);
        case 11:
            return this.type_product_sempred(localContext as Type_productContext, predIndex);
        case 15:
            return this.slist_o__i__s__i__s_tvar_str_p__sempred(localContext as Slist_o__i__s__i__s_tvar_str_p_Context, predIndex);
        case 18:
            return this.slist_o__i__s__i__s_field_ann_p__sempred(localContext as Slist_o__i__s__i__s_field_ann_p_Context, predIndex);
        case 24:
            return this.slist_o__i__s__i__s_identstr_p__sempred(localContext as Slist_o__i__s__i__s_identstr_p_Context, predIndex);
        case 26:
            return this.productions_sempred(localContext as ProductionsContext, predIndex);
        case 27:
            return this.list_o_psym_p__sempred(localContext as List_o_psym_p_Context, predIndex);
        case 31:
            return this.slist_o__i__s__i__s_psym_p__sempred(localContext as Slist_o__i__s__i__s_psym_p_Context, predIndex);
        case 34:
            return this.slist_o__i__s__i__s_ann_p__sempred(localContext as Slist_o__i__s__i__s_ann_p_Context, predIndex);
        case 39:
            return this.call_sempred(localContext as CallContext, predIndex);
        case 42:
            return this.slist_o__i__s__i__s_expr_p__sempred(localContext as Slist_o__i__s__i__s_expr_p_Context, predIndex);
        case 43:
            return this.atomexp_sempred(localContext as AtomexpContext, predIndex);
        case 44:
            return this.slist_o__i__u__i__s_lexer_and_p__sempred(localContext as Slist_o__i__u__i__s_lexer_and_p_Context, predIndex);
        case 46:
            return this.list_o_lexer_atomexpr_p__sempred(localContext as List_o_lexer_atomexpr_p_Context, predIndex);
        case 48:
            return this.lexer_atomexpr_sempred(localContext as Lexer_atomexprContext, predIndex);
        }
        return true;
    }
    private list_o_toplevel_p__sempred(localContext: List_o_toplevel_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 0:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private slist_o__i__s__i__s_param_type_p__sempred(localContext: Slist_o__i__s__i__s_param_type_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 1:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private slist_o__i__s__i__s_typ_p__sempred(localContext: Slist_o__i__s__i__s_typ_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 2:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private typ2_sempred(localContext: Typ2Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 3:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private type_product_sempred(localContext: Type_productContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 4:
            return this.precpred(this.context, 2);
        }
        return true;
    }
    private slist_o__i__s__i__s_tvar_str_p__sempred(localContext: Slist_o__i__s__i__s_tvar_str_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 5:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private slist_o__i__s__i__s_field_ann_p__sempred(localContext: Slist_o__i__s__i__s_field_ann_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 6:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private slist_o__i__s__i__s_identstr_p__sempred(localContext: Slist_o__i__s__i__s_identstr_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 7:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private productions_sempred(localContext: ProductionsContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 8:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private list_o_psym_p__sempred(localContext: List_o_psym_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 9:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private slist_o__i__s__i__s_psym_p__sempred(localContext: Slist_o__i__s__i__s_psym_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 10:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private slist_o__i__s__i__s_ann_p__sempred(localContext: Slist_o__i__s__i__s_ann_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 11:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private call_sempred(localContext: CallContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 12:
            return this.precpred(this.context, 2);
        }
        return true;
    }
    private slist_o__i__s__i__s_expr_p__sempred(localContext: Slist_o__i__s__i__s_expr_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 13:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private atomexp_sempred(localContext: AtomexpContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 14:
            return this.precpred(this.context, 3);
        }
        return true;
    }
    private slist_o__i__u__i__s_lexer_and_p__sempred(localContext: Slist_o__i__u__i__s_lexer_and_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 15:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private list_o_lexer_atomexpr_p__sempred(localContext: List_o_lexer_atomexpr_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 16:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private lexer_atomexpr_sempred(localContext: Lexer_atomexprContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 17:
            return this.precpred(this.context, 4);
        case 18:
            return this.precpred(this.context, 3);
        case 19:
            return this.precpred(this.context, 2);
        }
        return true;
    }

    public static readonly _serializedATN: number[] = [
        4,1,41,656,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
        6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,
        2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,
        7,20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,
        2,27,7,27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,
        7,33,2,34,7,34,2,35,7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,
        2,40,7,40,2,41,7,41,2,42,7,42,2,43,7,43,2,44,7,44,2,45,7,45,2,46,
        7,46,2,47,7,47,2,48,7,48,2,49,7,49,2,50,7,50,1,0,1,0,1,0,1,0,1,1,
        1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,115,8,1,10,1,12,1,118,9,1,1,2,1,
        2,1,2,1,3,1,3,1,3,1,4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
        5,5,5,138,8,5,10,5,12,5,141,9,5,1,6,1,6,1,6,1,6,3,6,147,8,6,1,7,
        1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,
        1,8,3,8,167,8,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,5,9,178,8,9,
        10,9,12,9,181,9,9,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,
        10,5,10,193,8,10,10,10,12,10,196,9,10,1,11,1,11,1,11,1,11,1,11,1,
        11,1,11,1,11,1,11,5,11,207,8,11,10,11,12,11,210,9,11,1,12,1,12,1,
        12,1,12,1,12,1,12,1,12,1,12,1,12,3,12,221,8,12,1,13,1,13,1,13,1,
        14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,3,14,234,8,14,1,15,1,15,1,
        15,1,15,1,15,1,15,1,15,1,15,1,15,5,15,245,8,15,10,15,12,15,248,9,
        15,1,16,1,16,1,16,1,16,1,16,1,16,3,16,256,8,16,1,17,1,17,1,17,1,
        17,1,17,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,5,18,272,8,
        18,10,18,12,18,275,9,18,1,19,1,19,1,19,1,19,3,19,281,8,19,1,20,1,
        20,1,20,1,21,1,21,1,21,1,21,1,21,1,21,3,21,292,8,21,1,22,1,22,1,
        22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,
        22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,3,22,320,8,
        22,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,
        23,3,23,335,8,23,1,24,1,24,1,24,1,24,1,24,1,24,1,24,1,24,1,24,5,
        24,346,8,24,10,24,12,24,349,9,24,1,25,1,25,1,25,1,25,1,25,1,25,1,
        25,1,25,1,25,1,25,1,25,3,25,362,8,25,1,26,1,26,1,26,1,26,1,26,1,
        26,1,26,1,26,1,26,1,26,5,26,374,8,26,10,26,12,26,377,9,26,1,27,1,
        27,1,27,1,27,1,27,1,27,1,27,1,27,5,27,387,8,27,10,27,12,27,390,9,
        27,1,28,1,28,1,28,1,28,3,28,396,8,28,1,29,1,29,1,29,1,30,1,30,1,
        30,1,30,1,30,1,30,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,1,31,5,
        31,416,8,31,10,31,12,31,419,9,31,1,32,1,32,1,32,1,32,1,32,1,32,1,
        32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,3,32,437,8,32,1,
        33,1,33,1,33,1,33,1,33,1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,
        34,5,34,453,8,34,10,34,12,34,456,9,34,1,35,1,35,1,35,1,35,3,35,462,
        8,35,1,36,1,36,1,36,1,37,1,37,1,37,1,37,1,37,1,38,1,38,1,38,1,38,
        1,38,1,38,1,38,1,38,1,38,1,38,1,38,1,38,1,38,1,38,1,38,1,38,1,38,
        1,38,1,38,1,38,1,38,1,38,3,38,494,8,38,1,39,1,39,1,39,1,39,1,39,
        1,39,1,39,1,39,1,39,1,39,5,39,506,8,39,10,39,12,39,509,9,39,1,40,
        1,40,1,40,1,40,3,40,515,8,40,1,41,1,41,1,41,1,42,1,42,1,42,1,42,
        1,42,1,42,1,42,1,42,1,42,5,42,529,8,42,10,42,12,42,532,9,42,1,43,
        1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,
        1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,
        1,43,1,43,3,43,563,8,43,1,43,1,43,1,43,1,43,5,43,569,8,43,10,43,
        12,43,572,9,43,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,5,44,
        583,8,44,10,44,12,44,586,9,44,1,45,1,45,1,45,1,46,1,46,1,46,1,46,
        1,46,1,46,1,46,1,46,5,46,599,8,46,10,46,12,46,602,9,46,1,47,1,47,
        1,47,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,
        1,48,5,48,620,8,48,10,48,12,48,623,9,48,1,49,1,49,1,49,1,49,1,49,
        1,49,1,49,1,49,1,49,1,49,1,49,1,49,1,49,1,49,1,49,1,49,1,49,1,49,
        1,49,1,49,1,49,1,49,1,49,3,49,648,8,49,1,50,1,50,1,50,1,50,1,50,
        1,50,1,50,0,18,2,10,18,20,22,30,36,48,52,54,62,68,78,84,86,88,92,
        96,51,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,
        42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,
        86,88,90,92,94,96,98,100,0,0,665,0,102,1,0,0,0,2,106,1,0,0,0,4,119,
        1,0,0,0,6,122,1,0,0,0,8,125,1,0,0,0,10,128,1,0,0,0,12,146,1,0,0,
        0,14,148,1,0,0,0,16,166,1,0,0,0,18,168,1,0,0,0,20,182,1,0,0,0,22,
        197,1,0,0,0,24,220,1,0,0,0,26,222,1,0,0,0,28,233,1,0,0,0,30,235,
        1,0,0,0,32,255,1,0,0,0,34,257,1,0,0,0,36,262,1,0,0,0,38,280,1,0,
        0,0,40,282,1,0,0,0,42,291,1,0,0,0,44,319,1,0,0,0,46,334,1,0,0,0,
        48,336,1,0,0,0,50,361,1,0,0,0,52,363,1,0,0,0,54,378,1,0,0,0,56,395,
        1,0,0,0,58,397,1,0,0,0,60,400,1,0,0,0,62,406,1,0,0,0,64,436,1,0,
        0,0,66,438,1,0,0,0,68,443,1,0,0,0,70,461,1,0,0,0,72,463,1,0,0,0,
        74,466,1,0,0,0,76,493,1,0,0,0,78,495,1,0,0,0,80,514,1,0,0,0,82,516,
        1,0,0,0,84,519,1,0,0,0,86,562,1,0,0,0,88,573,1,0,0,0,90,587,1,0,
        0,0,92,590,1,0,0,0,94,603,1,0,0,0,96,606,1,0,0,0,98,647,1,0,0,0,
        100,649,1,0,0,0,102,103,3,4,2,0,103,104,5,0,0,1,104,105,6,0,-1,0,
        105,1,1,0,0,0,106,107,6,1,-1,0,107,108,3,46,23,0,108,109,6,1,-1,
        0,109,116,1,0,0,0,110,111,10,1,0,0,111,112,3,46,23,0,112,113,6,1,
        -1,0,113,115,1,0,0,0,114,110,1,0,0,0,115,118,1,0,0,0,116,114,1,0,
        0,0,116,117,1,0,0,0,117,3,1,0,0,0,118,116,1,0,0,0,119,120,3,2,1,
        0,120,121,6,2,-1,0,121,5,1,0,0,0,122,123,5,35,0,0,123,124,6,3,-1,
        0,124,7,1,0,0,0,125,126,3,16,8,0,126,127,6,4,-1,0,127,9,1,0,0,0,
        128,129,6,5,-1,0,129,130,3,28,14,0,130,131,6,5,-1,0,131,139,1,0,
        0,0,132,133,10,1,0,0,133,134,5,1,0,0,134,135,3,28,14,0,135,136,6,
        5,-1,0,136,138,1,0,0,0,137,132,1,0,0,0,138,141,1,0,0,0,139,137,1,
        0,0,0,139,140,1,0,0,0,140,11,1,0,0,0,141,139,1,0,0,0,142,147,6,6,
        -1,0,143,144,3,10,5,0,144,145,6,6,-1,0,145,147,1,0,0,0,146,142,1,
        0,0,0,146,143,1,0,0,0,147,13,1,0,0,0,148,149,3,12,6,0,149,150,6,
        7,-1,0,150,15,1,0,0,0,151,152,3,20,10,0,152,153,5,2,0,0,153,154,
        3,16,8,0,154,155,6,8,-1,0,155,167,1,0,0,0,156,157,5,3,0,0,157,158,
        3,14,7,0,158,159,5,4,0,0,159,160,5,2,0,0,160,161,3,16,8,0,161,162,
        6,8,-1,0,162,167,1,0,0,0,163,164,3,22,11,0,164,165,6,8,-1,0,165,
        167,1,0,0,0,166,151,1,0,0,0,166,156,1,0,0,0,166,163,1,0,0,0,167,
        17,1,0,0,0,168,169,6,9,-1,0,169,170,3,8,4,0,170,171,6,9,-1,0,171,
        179,1,0,0,0,172,173,10,1,0,0,173,174,5,1,0,0,174,175,3,8,4,0,175,
        176,6,9,-1,0,176,178,1,0,0,0,177,172,1,0,0,0,178,181,1,0,0,0,179,
        177,1,0,0,0,179,180,1,0,0,0,180,19,1,0,0,0,181,179,1,0,0,0,182,183,
        6,10,-1,0,183,184,5,35,0,0,184,185,6,10,-1,0,185,194,1,0,0,0,186,
        187,10,1,0,0,187,188,5,5,0,0,188,189,3,18,9,0,189,190,5,6,0,0,190,
        191,6,10,-1,0,191,193,1,0,0,0,192,186,1,0,0,0,193,196,1,0,0,0,194,
        192,1,0,0,0,194,195,1,0,0,0,195,21,1,0,0,0,196,194,1,0,0,0,197,198,
        6,11,-1,0,198,199,3,20,10,0,199,200,6,11,-1,0,200,208,1,0,0,0,201,
        202,10,2,0,0,202,203,5,7,0,0,203,204,3,20,10,0,204,205,6,11,-1,0,
        205,207,1,0,0,0,206,201,1,0,0,0,207,210,1,0,0,0,208,206,1,0,0,0,
        208,209,1,0,0,0,209,23,1,0,0,0,210,208,1,0,0,0,211,212,5,5,0,0,212,
        213,3,30,15,0,213,214,5,6,0,0,214,215,3,8,4,0,215,216,6,12,-1,0,
        216,221,1,0,0,0,217,218,3,8,4,0,218,219,6,12,-1,0,219,221,1,0,0,
        0,220,211,1,0,0,0,220,217,1,0,0,0,221,25,1,0,0,0,222,223,5,35,0,
        0,223,224,6,13,-1,0,224,27,1,0,0,0,225,226,5,35,0,0,226,227,5,8,
        0,0,227,228,3,8,4,0,228,229,6,14,-1,0,229,234,1,0,0,0,230,231,3,
        8,4,0,231,232,6,14,-1,0,232,234,1,0,0,0,233,225,1,0,0,0,233,230,
        1,0,0,0,234,29,1,0,0,0,235,236,6,15,-1,0,236,237,3,26,13,0,237,238,
        6,15,-1,0,238,246,1,0,0,0,239,240,10,1,0,0,240,241,5,1,0,0,241,242,
        3,26,13,0,242,243,6,15,-1,0,243,245,1,0,0,0,244,239,1,0,0,0,245,
        248,1,0,0,0,246,244,1,0,0,0,246,247,1,0,0,0,247,31,1,0,0,0,248,246,
        1,0,0,0,249,250,5,5,0,0,250,251,3,30,15,0,251,252,5,6,0,0,252,253,
        6,16,-1,0,253,256,1,0,0,0,254,256,6,16,-1,0,255,249,1,0,0,0,255,
        254,1,0,0,0,256,33,1,0,0,0,257,258,5,35,0,0,258,259,5,8,0,0,259,
        260,3,8,4,0,260,261,6,17,-1,0,261,35,1,0,0,0,262,263,6,18,-1,0,263,
        264,3,34,17,0,264,265,6,18,-1,0,265,273,1,0,0,0,266,267,10,1,0,0,
        267,268,5,1,0,0,268,269,3,34,17,0,269,270,6,18,-1,0,270,272,1,0,
        0,0,271,266,1,0,0,0,272,275,1,0,0,0,273,271,1,0,0,0,273,274,1,0,
        0,0,274,37,1,0,0,0,275,273,1,0,0,0,276,281,6,19,-1,0,277,278,3,36,
        18,0,278,279,6,19,-1,0,279,281,1,0,0,0,280,276,1,0,0,0,280,277,1,
        0,0,0,281,39,1,0,0,0,282,283,3,38,19,0,283,284,6,20,-1,0,284,41,
        1,0,0,0,285,286,5,3,0,0,286,287,3,40,20,0,287,288,5,4,0,0,288,289,
        6,21,-1,0,289,292,1,0,0,0,290,292,6,21,-1,0,291,285,1,0,0,0,291,
        290,1,0,0,0,292,43,1,0,0,0,293,294,5,9,0,0,294,295,5,10,0,0,295,
        296,3,6,3,0,296,297,5,8,0,0,297,298,3,24,12,0,298,299,6,22,-1,0,
        299,320,1,0,0,0,300,301,5,11,0,0,301,302,3,6,3,0,302,303,5,8,0,0,
        303,304,3,8,4,0,304,305,6,22,-1,0,305,320,1,0,0,0,306,307,5,9,0,
        0,307,308,5,12,0,0,308,309,3,6,3,0,309,310,3,32,16,0,310,311,3,42,
        21,0,311,312,6,22,-1,0,312,320,1,0,0,0,313,314,5,12,0,0,314,315,
        3,6,3,0,315,316,3,32,16,0,316,317,3,42,21,0,317,318,6,22,-1,0,318,
        320,1,0,0,0,319,293,1,0,0,0,319,300,1,0,0,0,319,306,1,0,0,0,319,
        313,1,0,0,0,320,45,1,0,0,0,321,322,3,50,25,0,322,323,6,23,-1,0,323,
        335,1,0,0,0,324,325,3,44,22,0,325,326,6,23,-1,0,326,335,1,0,0,0,
        327,328,3,100,50,0,328,329,6,23,-1,0,329,335,1,0,0,0,330,331,5,13,
        0,0,331,332,3,48,24,0,332,333,6,23,-1,0,333,335,1,0,0,0,334,321,
        1,0,0,0,334,324,1,0,0,0,334,327,1,0,0,0,334,330,1,0,0,0,335,47,1,
        0,0,0,336,337,6,24,-1,0,337,338,3,6,3,0,338,339,6,24,-1,0,339,347,
        1,0,0,0,340,341,10,1,0,0,341,342,5,1,0,0,342,343,3,6,3,0,343,344,
        6,24,-1,0,344,346,1,0,0,0,345,340,1,0,0,0,346,349,1,0,0,0,347,345,
        1,0,0,0,347,348,1,0,0,0,348,49,1,0,0,0,349,347,1,0,0,0,350,351,5,
        35,0,0,351,352,5,3,0,0,352,353,3,48,24,0,353,354,5,4,0,0,354,355,
        3,52,26,0,355,356,6,25,-1,0,356,362,1,0,0,0,357,358,5,35,0,0,358,
        359,3,52,26,0,359,360,6,25,-1,0,360,362,1,0,0,0,361,350,1,0,0,0,
        361,357,1,0,0,0,362,51,1,0,0,0,363,364,6,26,-1,0,364,365,5,8,0,0,
        365,366,3,60,30,0,366,367,6,26,-1,0,367,375,1,0,0,0,368,369,10,1,
        0,0,369,370,5,14,0,0,370,371,3,60,30,0,371,372,6,26,-1,0,372,374,
        1,0,0,0,373,368,1,0,0,0,374,377,1,0,0,0,375,373,1,0,0,0,375,376,
        1,0,0,0,376,53,1,0,0,0,377,375,1,0,0,0,378,379,6,27,-1,0,379,380,
        3,64,32,0,380,381,6,27,-1,0,381,388,1,0,0,0,382,383,10,1,0,0,383,
        384,3,64,32,0,384,385,6,27,-1,0,385,387,1,0,0,0,386,382,1,0,0,0,
        387,390,1,0,0,0,388,386,1,0,0,0,388,389,1,0,0,0,389,55,1,0,0,0,390,
        388,1,0,0,0,391,396,6,28,-1,0,392,393,3,54,27,0,393,394,6,28,-1,
        0,394,396,1,0,0,0,395,391,1,0,0,0,395,392,1,0,0,0,396,57,1,0,0,0,
        397,398,3,56,28,0,398,399,6,29,-1,0,399,59,1,0,0,0,400,401,3,58,
        29,0,401,402,5,15,0,0,402,403,3,76,38,0,403,404,5,16,0,0,404,405,
        6,30,-1,0,405,61,1,0,0,0,406,407,6,31,-1,0,407,408,3,64,32,0,408,
        409,6,31,-1,0,409,417,1,0,0,0,410,411,10,1,0,0,411,412,5,1,0,0,412,
        413,3,64,32,0,413,414,6,31,-1,0,414,416,1,0,0,0,415,410,1,0,0,0,
        416,419,1,0,0,0,417,415,1,0,0,0,417,418,1,0,0,0,418,63,1,0,0,0,419,
        417,1,0,0,0,420,421,5,5,0,0,421,422,3,6,3,0,422,423,5,6,0,0,423,
        424,6,32,-1,0,424,437,1,0,0,0,425,426,5,39,0,0,426,437,6,32,-1,0,
        427,428,3,6,3,0,428,429,6,32,-1,0,429,437,1,0,0,0,430,431,5,35,0,
        0,431,432,5,3,0,0,432,433,3,62,31,0,433,434,5,4,0,0,434,435,6,32,
        -1,0,435,437,1,0,0,0,436,420,1,0,0,0,436,425,1,0,0,0,436,427,1,0,
        0,0,436,430,1,0,0,0,437,65,1,0,0,0,438,439,3,6,3,0,439,440,5,8,0,
        0,440,441,3,8,4,0,441,442,6,33,-1,0,442,67,1,0,0,0,443,444,6,34,
        -1,0,444,445,3,66,33,0,445,446,6,34,-1,0,446,454,1,0,0,0,447,448,
        10,1,0,0,448,449,5,1,0,0,449,450,3,66,33,0,450,451,6,34,-1,0,451,
        453,1,0,0,0,452,447,1,0,0,0,453,456,1,0,0,0,454,452,1,0,0,0,454,
        455,1,0,0,0,455,69,1,0,0,0,456,454,1,0,0,0,457,462,6,35,-1,0,458,
        459,3,68,34,0,459,460,6,35,-1,0,460,462,1,0,0,0,461,457,1,0,0,0,
        461,458,1,0,0,0,462,71,1,0,0,0,463,464,3,70,35,0,464,465,6,36,-1,
        0,465,73,1,0,0,0,466,467,5,3,0,0,467,468,3,72,36,0,468,469,5,4,0,
        0,469,470,6,37,-1,0,470,75,1,0,0,0,471,472,5,17,0,0,472,473,3,6,
        3,0,473,474,5,18,0,0,474,475,3,76,38,0,475,476,5,19,0,0,476,477,
        3,76,38,0,477,478,6,38,-1,0,478,494,1,0,0,0,479,480,5,20,0,0,480,
        481,3,74,37,0,481,482,5,2,0,0,482,483,3,76,38,0,483,484,6,38,-1,
        0,484,494,1,0,0,0,485,486,3,78,39,0,486,487,6,38,-1,0,487,494,1,
        0,0,0,488,489,3,78,39,0,489,490,5,21,0,0,490,491,3,76,38,0,491,492,
        6,38,-1,0,492,494,1,0,0,0,493,471,1,0,0,0,493,479,1,0,0,0,493,485,
        1,0,0,0,493,488,1,0,0,0,494,77,1,0,0,0,495,496,6,39,-1,0,496,497,
        3,86,43,0,497,498,6,39,-1,0,498,507,1,0,0,0,499,500,10,2,0,0,500,
        501,5,3,0,0,501,502,3,82,41,0,502,503,5,4,0,0,503,504,6,39,-1,0,
        504,506,1,0,0,0,505,499,1,0,0,0,506,509,1,0,0,0,507,505,1,0,0,0,
        507,508,1,0,0,0,508,79,1,0,0,0,509,507,1,0,0,0,510,515,6,40,-1,0,
        511,512,3,84,42,0,512,513,6,40,-1,0,513,515,1,0,0,0,514,510,1,0,
        0,0,514,511,1,0,0,0,515,81,1,0,0,0,516,517,3,80,40,0,517,518,6,41,
        -1,0,518,83,1,0,0,0,519,520,6,42,-1,0,520,521,3,76,38,0,521,522,
        6,42,-1,0,522,530,1,0,0,0,523,524,10,1,0,0,524,525,5,1,0,0,525,526,
        3,76,38,0,526,527,6,42,-1,0,527,529,1,0,0,0,528,523,1,0,0,0,529,
        532,1,0,0,0,530,528,1,0,0,0,530,531,1,0,0,0,531,85,1,0,0,0,532,530,
        1,0,0,0,533,534,6,43,-1,0,534,535,5,36,0,0,535,563,6,43,-1,0,536,
        537,5,38,0,0,537,563,6,43,-1,0,538,539,5,39,0,0,539,563,6,43,-1,
        0,540,541,5,22,0,0,541,542,5,36,0,0,542,563,6,43,-1,0,543,544,5,
        23,0,0,544,545,3,82,41,0,545,546,5,24,0,0,546,547,6,43,-1,0,547,
        563,1,0,0,0,548,549,5,3,0,0,549,550,5,4,0,0,550,563,6,43,-1,0,551,
        552,5,3,0,0,552,553,3,84,42,0,553,554,5,4,0,0,554,555,6,43,-1,0,
        555,563,1,0,0,0,556,557,5,35,0,0,557,563,6,43,-1,0,558,559,5,26,
        0,0,559,563,6,43,-1,0,560,561,5,27,0,0,561,563,6,43,-1,0,562,533,
        1,0,0,0,562,536,1,0,0,0,562,538,1,0,0,0,562,540,1,0,0,0,562,543,
        1,0,0,0,562,548,1,0,0,0,562,551,1,0,0,0,562,556,1,0,0,0,562,558,
        1,0,0,0,562,560,1,0,0,0,563,570,1,0,0,0,564,565,10,3,0,0,565,566,
        5,25,0,0,566,567,5,35,0,0,567,569,6,43,-1,0,568,564,1,0,0,0,569,
        572,1,0,0,0,570,568,1,0,0,0,570,571,1,0,0,0,571,87,1,0,0,0,572,570,
        1,0,0,0,573,574,6,44,-1,0,574,575,3,94,47,0,575,576,6,44,-1,0,576,
        584,1,0,0,0,577,578,10,1,0,0,578,579,5,14,0,0,579,580,3,94,47,0,
        580,581,6,44,-1,0,581,583,1,0,0,0,582,577,1,0,0,0,583,586,1,0,0,
        0,584,582,1,0,0,0,584,585,1,0,0,0,585,89,1,0,0,0,586,584,1,0,0,0,
        587,588,3,88,44,0,588,589,6,45,-1,0,589,91,1,0,0,0,590,591,6,46,
        -1,0,591,592,3,96,48,0,592,593,6,46,-1,0,593,600,1,0,0,0,594,595,
        10,1,0,0,595,596,3,96,48,0,596,597,6,46,-1,0,597,599,1,0,0,0,598,
        594,1,0,0,0,599,602,1,0,0,0,600,598,1,0,0,0,600,601,1,0,0,0,601,
        93,1,0,0,0,602,600,1,0,0,0,603,604,3,92,46,0,604,605,6,47,-1,0,605,
        95,1,0,0,0,606,607,6,48,-1,0,607,608,3,98,49,0,608,609,6,48,-1,0,
        609,621,1,0,0,0,610,611,10,4,0,0,611,612,5,28,0,0,612,620,6,48,-1,
        0,613,614,10,3,0,0,614,615,5,7,0,0,615,620,6,48,-1,0,616,617,10,
        2,0,0,617,618,5,29,0,0,618,620,6,48,-1,0,619,610,1,0,0,0,619,613,
        1,0,0,0,619,616,1,0,0,0,620,623,1,0,0,0,621,619,1,0,0,0,621,622,
        1,0,0,0,622,97,1,0,0,0,623,621,1,0,0,0,624,625,5,39,0,0,625,648,
        6,49,-1,0,626,627,5,30,0,0,627,628,3,98,49,0,628,629,6,49,-1,0,629,
        648,1,0,0,0,630,631,5,3,0,0,631,632,3,90,45,0,632,633,5,4,0,0,633,
        634,6,49,-1,0,634,648,1,0,0,0,635,636,5,31,0,0,636,648,6,49,-1,0,
        637,638,5,34,0,0,638,648,6,49,-1,0,639,640,5,33,0,0,640,648,6,49,
        -1,0,641,642,5,32,0,0,642,648,6,49,-1,0,643,644,5,25,0,0,644,648,
        6,49,-1,0,645,646,5,35,0,0,646,648,6,49,-1,0,647,624,1,0,0,0,647,
        626,1,0,0,0,647,630,1,0,0,0,647,635,1,0,0,0,647,637,1,0,0,0,647,
        639,1,0,0,0,647,641,1,0,0,0,647,643,1,0,0,0,647,645,1,0,0,0,648,
        99,1,0,0,0,649,650,5,35,0,0,650,651,5,18,0,0,651,652,3,90,45,0,652,
        653,5,21,0,0,653,654,6,50,-1,0,654,101,1,0,0,0,36,116,139,146,166,
        179,194,208,220,233,246,255,273,280,291,319,334,347,361,375,388,
        395,417,436,454,461,493,507,514,530,562,570,584,600,619,621,647
    ];

    private static __ATN: antlr.ATN;
    public static get _ATN(): antlr.ATN {
        if (!TypedBNFParser.__ATN) {
            TypedBNFParser.__ATN = new antlr.ATNDeserializer().deserialize(TypedBNFParser._serializedATN);
        }

        return TypedBNFParser.__ATN;
    }


    private static readonly vocabulary = new antlr.Vocabulary(TypedBNFParser.literalNames, TypedBNFParser.symbolicNames, []);

    public override get vocabulary(): antlr.Vocabulary {
        return TypedBNFParser.vocabulary;
    }

    private static readonly decisionsToDFA = TypedBNFParser._ATN.decisionToState.map( (ds: antlr.DecisionState, index: number) => new antlr.DFA(ds, index) );
}

export class StartContext extends antlr.ParserRuleContext {
    public result: Array<definition>;
    public _v?: Start__y_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public EOF(): antlr.TerminalNode {
        return this.getToken(TypedBNFParser.EOF, 0)!;
    }
    public start__y_(): Start__y_Context {
        return this.getRuleContext(0, Start__y_Context)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_start;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterStart) {
             listener.enterStart(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitStart) {
             listener.exitStart(this);
        }
    }
}


export class List_o_toplevel_p_Context extends antlr.ParserRuleContext {
    public result: Array<definition>;
    public _list_o_toplevel_p__2__1?: List_o_toplevel_p_Context;
    public _list_o_toplevel_p__0__1?: ToplevelContext;
    public _list_o_toplevel_p__2__2?: ToplevelContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public toplevel(): ToplevelContext {
        return this.getRuleContext(0, ToplevelContext)!;
    }
    public list_o_toplevel_p_(): List_o_toplevel_p_Context | null {
        return this.getRuleContext(0, List_o_toplevel_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_list_o_toplevel_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterList_o_toplevel_p_) {
             listener.enterList_o_toplevel_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitList_o_toplevel_p_) {
             listener.exitList_o_toplevel_p_(this);
        }
    }
}


export class Start__y_Context extends antlr.ParserRuleContext {
    public result: Array<definition>;
    public _start__y__0__1?: List_o_toplevel_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public list_o_toplevel_p_(): List_o_toplevel_p_Context {
        return this.getRuleContext(0, List_o_toplevel_p_Context)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_start__y_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterStart__y_) {
             listener.enterStart__y_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitStart__y_) {
             listener.exitStart__y_(this);
        }
    }
}


export class IdentstrContext extends antlr.ParserRuleContext {
    public result: string;
    public _identstr_0__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TypedBNFParser.CNAMEPLUS, 0)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_identstr;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterIdentstr) {
             listener.enterIdentstr(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitIdentstr) {
             listener.exitIdentstr(this);
        }
    }
}


export class TypContext extends antlr.ParserRuleContext {
    public result: monot;
    public _typ_0__1?: Arrow_typContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public arrow_typ(): Arrow_typContext {
        return this.getRuleContext(0, Arrow_typContext)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_typ;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterTyp) {
             listener.enterTyp(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitTyp) {
             listener.exitTyp(this);
        }
    }
}


export class Slist_o__i__s__i__s_param_type_p_Context extends antlr.ParserRuleContext {
    public result: Array<[string, monot]>;
    public _slist_o__i__s__i__s_param_type_p__2__1?: Slist_o__i__s__i__s_param_type_p_Context;
    public _slist_o__i__s__i__s_param_type_p__0__1?: Param_typeContext;
    public _slist_o__i__s__i__s_param_type_p__2__3?: Param_typeContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public param_type(): Param_typeContext {
        return this.getRuleContext(0, Param_typeContext)!;
    }
    public slist_o__i__s__i__s_param_type_p_(): Slist_o__i__s__i__s_param_type_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_param_type_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_slist_o__i__s__i__s_param_type_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_param_type_p_) {
             listener.enterSlist_o__i__s__i__s_param_type_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_param_type_p_) {
             listener.exitSlist_o__i__s__i__s_param_type_p_(this);
        }
    }
}


export class Empty_o_slist_o__i__s__i__s_param_type_p__p_Context extends antlr.ParserRuleContext {
    public result: Array<[string, monot]>;
    public _empty_o_slist_o__i__s__i__s_param_type_p__p__2__1?: Slist_o__i__s__i__s_param_type_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_param_type_p_(): Slist_o__i__s__i__s_param_type_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_param_type_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_param_type_p__p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterEmpty_o_slist_o__i__s__i__s_param_type_p__p_) {
             listener.enterEmpty_o_slist_o__i__s__i__s_param_type_p__p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitEmpty_o_slist_o__i__s__i__s_param_type_p__p_) {
             listener.exitEmpty_o_slist_o__i__s__i__s_param_type_p__p_(this);
        }
    }
}


export class Eslist_o__i__s__i__s_param_type_p_Context extends antlr.ParserRuleContext {
    public result: Array<[string, monot]>;
    public _eslist_o__i__s__i__s_param_type_p__0__1?: Empty_o_slist_o__i__s__i__s_param_type_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public empty_o_slist_o__i__s__i__s_param_type_p__p_(): Empty_o_slist_o__i__s__i__s_param_type_p__p_Context {
        return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_param_type_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_eslist_o__i__s__i__s_param_type_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterEslist_o__i__s__i__s_param_type_p_) {
             listener.enterEslist_o__i__s__i__s_param_type_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitEslist_o__i__s__i__s_param_type_p_) {
             listener.exitEslist_o__i__s__i__s_param_type_p_(this);
        }
    }
}


export class Arrow_typContext extends antlr.ParserRuleContext {
    public result: monot;
    public _arrow_typ_0__1?: Typ2Context;
    public _arrow_typ_0__3?: Arrow_typContext;
    public _arrow_typ_2__2?: Eslist_o__i__s__i__s_param_type_p_Context;
    public _arrow_typ_2__5?: Arrow_typContext;
    public _arrow_typ_4__1?: Type_productContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public typ2(): Typ2Context | null {
        return this.getRuleContext(0, Typ2Context);
    }
    public arrow_typ(): Arrow_typContext | null {
        return this.getRuleContext(0, Arrow_typContext);
    }
    public eslist_o__i__s__i__s_param_type_p_(): Eslist_o__i__s__i__s_param_type_p_Context | null {
        return this.getRuleContext(0, Eslist_o__i__s__i__s_param_type_p_Context);
    }
    public type_product(): Type_productContext | null {
        return this.getRuleContext(0, Type_productContext);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_arrow_typ;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterArrow_typ) {
             listener.enterArrow_typ(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitArrow_typ) {
             listener.exitArrow_typ(this);
        }
    }
}


export class Slist_o__i__s__i__s_typ_p_Context extends antlr.ParserRuleContext {
    public result: Array<monot>;
    public _slist_o__i__s__i__s_typ_p__2__1?: Slist_o__i__s__i__s_typ_p_Context;
    public _slist_o__i__s__i__s_typ_p__0__1?: TypContext;
    public _slist_o__i__s__i__s_typ_p__2__3?: TypContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public typ(): TypContext {
        return this.getRuleContext(0, TypContext)!;
    }
    public slist_o__i__s__i__s_typ_p_(): Slist_o__i__s__i__s_typ_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_typ_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_slist_o__i__s__i__s_typ_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_typ_p_) {
             listener.enterSlist_o__i__s__i__s_typ_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_typ_p_) {
             listener.exitSlist_o__i__s__i__s_typ_p_(this);
        }
    }
}


export class Typ2Context extends antlr.ParserRuleContext {
    public result: monot;
    public _typ2_2__1?: Typ2Context;
    public _typ2_0__1?: Token | null;
    public _typ2_2__3?: Slist_o__i__s__i__s_typ_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.CNAMEPLUS, 0);
    }
    public typ2(): Typ2Context | null {
        return this.getRuleContext(0, Typ2Context);
    }
    public slist_o__i__s__i__s_typ_p_(): Slist_o__i__s__i__s_typ_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_typ_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_typ2;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterTyp2) {
             listener.enterTyp2(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitTyp2) {
             listener.exitTyp2(this);
        }
    }
}


export class Type_productContext extends antlr.ParserRuleContext {
    public result: Array<monot>;
    public _type_product_0__1?: Type_productContext;
    public _type_product_2__1?: Typ2Context;
    public _type_product_0__3?: Typ2Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public typ2(): Typ2Context {
        return this.getRuleContext(0, Typ2Context)!;
    }
    public type_product(): Type_productContext | null {
        return this.getRuleContext(0, Type_productContext);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_type_product;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterType_product) {
             listener.enterType_product(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitType_product) {
             listener.exitType_product(this);
        }
    }
}


export class Top_typContext extends antlr.ParserRuleContext {
    public result: polyt;
    public _top_typ_0__2?: Slist_o__i__s__i__s_tvar_str_p_Context;
    public _top_typ_0__4?: TypContext;
    public _top_typ_2__1?: TypContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_tvar_str_p_(): Slist_o__i__s__i__s_tvar_str_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_tvar_str_p_Context);
    }
    public typ(): TypContext {
        return this.getRuleContext(0, TypContext)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_top_typ;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterTop_typ) {
             listener.enterTop_typ(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitTop_typ) {
             listener.exitTop_typ(this);
        }
    }
}


export class Tvar_strContext extends antlr.ParserRuleContext {
    public result: string;
    public _tvar_str_0__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TypedBNFParser.CNAMEPLUS, 0)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_tvar_str;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterTvar_str) {
             listener.enterTvar_str(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitTvar_str) {
             listener.exitTvar_str(this);
        }
    }
}


export class Param_typeContext extends antlr.ParserRuleContext {
    public result: [string, monot];
    public _param_type_0__1?: Token | null;
    public _param_type_0__3?: TypContext;
    public _param_type_2__1?: TypContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.CNAMEPLUS, 0);
    }
    public typ(): TypContext {
        return this.getRuleContext(0, TypContext)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_param_type;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterParam_type) {
             listener.enterParam_type(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitParam_type) {
             listener.exitParam_type(this);
        }
    }
}


export class Slist_o__i__s__i__s_tvar_str_p_Context extends antlr.ParserRuleContext {
    public result: Array<string>;
    public _slist_o__i__s__i__s_tvar_str_p__2__1?: Slist_o__i__s__i__s_tvar_str_p_Context;
    public _slist_o__i__s__i__s_tvar_str_p__0__1?: Tvar_strContext;
    public _slist_o__i__s__i__s_tvar_str_p__2__3?: Tvar_strContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public tvar_str(): Tvar_strContext {
        return this.getRuleContext(0, Tvar_strContext)!;
    }
    public slist_o__i__s__i__s_tvar_str_p_(): Slist_o__i__s__i__s_tvar_str_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_tvar_str_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_tvar_str_p_) {
             listener.enterSlist_o__i__s__i__s_tvar_str_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_tvar_str_p_) {
             listener.exitSlist_o__i__s__i__s_tvar_str_p_(this);
        }
    }
}


export class Type_paramsContext extends antlr.ParserRuleContext {
    public result: Array<string>;
    public _type_params_0__2?: Slist_o__i__s__i__s_tvar_str_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_tvar_str_p_(): Slist_o__i__s__i__s_tvar_str_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_tvar_str_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_type_params;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterType_params) {
             listener.enterType_params(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitType_params) {
             listener.exitType_params(this);
        }
    }
}


export class Field_annContext extends antlr.ParserRuleContext {
    public result: [string, monot, position];
    public _field_ann_0__1?: Token | null;
    public _field_ann_0__3?: TypContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TypedBNFParser.CNAMEPLUS, 0)!;
    }
    public typ(): TypContext {
        return this.getRuleContext(0, TypContext)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_field_ann;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterField_ann) {
             listener.enterField_ann(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitField_ann) {
             listener.exitField_ann(this);
        }
    }
}


export class Slist_o__i__s__i__s_field_ann_p_Context extends antlr.ParserRuleContext {
    public result: Array<[string, monot, position]>;
    public _slist_o__i__s__i__s_field_ann_p__2__1?: Slist_o__i__s__i__s_field_ann_p_Context;
    public _slist_o__i__s__i__s_field_ann_p__0__1?: Field_annContext;
    public _slist_o__i__s__i__s_field_ann_p__2__3?: Field_annContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public field_ann(): Field_annContext {
        return this.getRuleContext(0, Field_annContext)!;
    }
    public slist_o__i__s__i__s_field_ann_p_(): Slist_o__i__s__i__s_field_ann_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_field_ann_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_field_ann_p_) {
             listener.enterSlist_o__i__s__i__s_field_ann_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_field_ann_p_) {
             listener.exitSlist_o__i__s__i__s_field_ann_p_(this);
        }
    }
}


export class Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context extends antlr.ParserRuleContext {
    public result: Array<[string, monot, position]>;
    public _empty_o_slist_o__i__s__i__s_field_ann_p__p__2__1?: Slist_o__i__s__i__s_field_ann_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_field_ann_p_(): Slist_o__i__s__i__s_field_ann_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_field_ann_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterEmpty_o_slist_o__i__s__i__s_field_ann_p__p_) {
             listener.enterEmpty_o_slist_o__i__s__i__s_field_ann_p__p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitEmpty_o_slist_o__i__s__i__s_field_ann_p__p_) {
             listener.exitEmpty_o_slist_o__i__s__i__s_field_ann_p__p_(this);
        }
    }
}


export class Eslist_o__i__s__i__s_field_ann_p_Context extends antlr.ParserRuleContext {
    public result: Array<[string, monot, position]>;
    public _eslist_o__i__s__i__s_field_ann_p__0__1?: Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public empty_o_slist_o__i__s__i__s_field_ann_p__p_(): Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context {
        return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_eslist_o__i__s__i__s_field_ann_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterEslist_o__i__s__i__s_field_ann_p_) {
             listener.enterEslist_o__i__s__i__s_field_ann_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitEslist_o__i__s__i__s_field_ann_p_) {
             listener.exitEslist_o__i__s__i__s_field_ann_p_(this);
        }
    }
}


export class Field_annsContext extends antlr.ParserRuleContext {
    public result: [boolean, Array<[string, monot, position]>];
    public _field_anns_0__2?: Eslist_o__i__s__i__s_field_ann_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public eslist_o__i__s__i__s_field_ann_p_(): Eslist_o__i__s__i__s_field_ann_p_Context | null {
        return this.getRuleContext(0, Eslist_o__i__s__i__s_field_ann_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_field_anns;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterField_anns) {
             listener.enterField_anns(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitField_anns) {
             listener.exitField_anns(this);
        }
    }
}


export class DeclContext extends antlr.ParserRuleContext {
    public result: definition;
    public _decl_0__2?: Token | null;
    public _decl_0__3?: IdentstrContext;
    public _decl_0__5?: Top_typContext;
    public _decl_2__1?: Token | null;
    public _decl_2__2?: IdentstrContext;
    public _decl_2__4?: TypContext;
    public _decl_4__1?: Token | null;
    public _decl_4__3?: IdentstrContext;
    public _decl_4__4?: Type_paramsContext;
    public _decl_4__5?: Field_annsContext;
    public _decl_6__1?: Token | null;
    public _decl_6__2?: IdentstrContext;
    public _decl_6__3?: Type_paramsContext;
    public _decl_6__4?: Field_annsContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public identstr(): IdentstrContext {
        return this.getRuleContext(0, IdentstrContext)!;
    }
    public top_typ(): Top_typContext | null {
        return this.getRuleContext(0, Top_typContext);
    }
    public typ(): TypContext | null {
        return this.getRuleContext(0, TypContext);
    }
    public type_params(): Type_paramsContext | null {
        return this.getRuleContext(0, Type_paramsContext);
    }
    public field_anns(): Field_annsContext | null {
        return this.getRuleContext(0, Field_annsContext);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_decl;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterDecl) {
             listener.enterDecl(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitDecl) {
             listener.exitDecl(this);
        }
    }
}


export class ToplevelContext extends antlr.ParserRuleContext {
    public result: definition;
    public _toplevel_0__1?: DefContext;
    public _toplevel_2__1?: DeclContext;
    public _toplevel_4__1?: LexerdefContext;
    public _toplevel_6__1?: Token | null;
    public _toplevel_6__2?: Slist_o__i__s__i__s_identstr_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public def(): DefContext | null {
        return this.getRuleContext(0, DefContext);
    }
    public decl(): DeclContext | null {
        return this.getRuleContext(0, DeclContext);
    }
    public lexerdef(): LexerdefContext | null {
        return this.getRuleContext(0, LexerdefContext);
    }
    public slist_o__i__s__i__s_identstr_p_(): Slist_o__i__s__i__s_identstr_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_identstr_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_toplevel;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterToplevel) {
             listener.enterToplevel(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitToplevel) {
             listener.exitToplevel(this);
        }
    }
}


export class Slist_o__i__s__i__s_identstr_p_Context extends antlr.ParserRuleContext {
    public result: Array<string>;
    public _slist_o__i__s__i__s_identstr_p__2__1?: Slist_o__i__s__i__s_identstr_p_Context;
    public _slist_o__i__s__i__s_identstr_p__0__1?: IdentstrContext;
    public _slist_o__i__s__i__s_identstr_p__2__3?: IdentstrContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public identstr(): IdentstrContext {
        return this.getRuleContext(0, IdentstrContext)!;
    }
    public slist_o__i__s__i__s_identstr_p_(): Slist_o__i__s__i__s_identstr_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_identstr_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_slist_o__i__s__i__s_identstr_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_identstr_p_) {
             listener.enterSlist_o__i__s__i__s_identstr_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_identstr_p_) {
             listener.exitSlist_o__i__s__i__s_identstr_p_(this);
        }
    }
}


export class DefContext extends antlr.ParserRuleContext {
    public result: definition;
    public _def_0__1?: Token | null;
    public _def_0__3?: Slist_o__i__s__i__s_identstr_p_Context;
    public _def_0__5?: ProductionsContext;
    public _def_2__1?: Token | null;
    public _def_2__2?: ProductionsContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TypedBNFParser.CNAMEPLUS, 0)!;
    }
    public slist_o__i__s__i__s_identstr_p_(): Slist_o__i__s__i__s_identstr_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_identstr_p_Context);
    }
    public productions(): ProductionsContext {
        return this.getRuleContext(0, ProductionsContext)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_def;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterDef) {
             listener.enterDef(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitDef) {
             listener.exitDef(this);
        }
    }
}


export class ProductionsContext extends antlr.ParserRuleContext {
    public result: Array<[position, production]>;
    public _productions_2__1?: ProductionsContext;
    public _productions_0__1?: Token | null;
    public _productions_0__2?: ProductionContext;
    public _productions_2__2?: Token | null;
    public _productions_2__3?: ProductionContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public production(): ProductionContext {
        return this.getRuleContext(0, ProductionContext)!;
    }
    public productions(): ProductionsContext | null {
        return this.getRuleContext(0, ProductionsContext);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_productions;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterProductions) {
             listener.enterProductions(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitProductions) {
             listener.exitProductions(this);
        }
    }
}


export class List_o_psym_p_Context extends antlr.ParserRuleContext {
    public result: Array<symbol>;
    public _list_o_psym_p__2__1?: List_o_psym_p_Context;
    public _list_o_psym_p__0__1?: PsymContext;
    public _list_o_psym_p__2__2?: PsymContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public psym(): PsymContext {
        return this.getRuleContext(0, PsymContext)!;
    }
    public list_o_psym_p_(): List_o_psym_p_Context | null {
        return this.getRuleContext(0, List_o_psym_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_list_o_psym_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterList_o_psym_p_) {
             listener.enterList_o_psym_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitList_o_psym_p_) {
             listener.exitList_o_psym_p_(this);
        }
    }
}


export class Empty_o_list_o_psym_p__p_Context extends antlr.ParserRuleContext {
    public result: Array<symbol>;
    public _empty_o_list_o_psym_p__p__2__1?: List_o_psym_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public list_o_psym_p_(): List_o_psym_p_Context | null {
        return this.getRuleContext(0, List_o_psym_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_empty_o_list_o_psym_p__p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterEmpty_o_list_o_psym_p__p_) {
             listener.enterEmpty_o_list_o_psym_p__p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitEmpty_o_list_o_psym_p__p_) {
             listener.exitEmpty_o_list_o_psym_p__p_(this);
        }
    }
}


export class Elist_o_psym_p_Context extends antlr.ParserRuleContext {
    public result: Array<symbol>;
    public _elist_o_psym_p__0__1?: Empty_o_list_o_psym_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public empty_o_list_o_psym_p__p_(): Empty_o_list_o_psym_p__p_Context {
        return this.getRuleContext(0, Empty_o_list_o_psym_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_elist_o_psym_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterElist_o_psym_p_) {
             listener.enterElist_o_psym_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitElist_o_psym_p_) {
             listener.exitElist_o_psym_p_(this);
        }
    }
}


export class ProductionContext extends antlr.ParserRuleContext {
    public result: production;
    public _production_0__1?: Elist_o_psym_p_Context;
    public _production_0__3?: ExprContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public elist_o_psym_p_(): Elist_o_psym_p_Context {
        return this.getRuleContext(0, Elist_o_psym_p_Context)!;
    }
    public expr(): ExprContext {
        return this.getRuleContext(0, ExprContext)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_production;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterProduction) {
             listener.enterProduction(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitProduction) {
             listener.exitProduction(this);
        }
    }
}


export class Slist_o__i__s__i__s_psym_p_Context extends antlr.ParserRuleContext {
    public result: Array<symbol>;
    public _slist_o__i__s__i__s_psym_p__2__1?: Slist_o__i__s__i__s_psym_p_Context;
    public _slist_o__i__s__i__s_psym_p__0__1?: PsymContext;
    public _slist_o__i__s__i__s_psym_p__2__3?: PsymContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public psym(): PsymContext {
        return this.getRuleContext(0, PsymContext)!;
    }
    public slist_o__i__s__i__s_psym_p_(): Slist_o__i__s__i__s_psym_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_psym_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_slist_o__i__s__i__s_psym_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_psym_p_) {
             listener.enterSlist_o__i__s__i__s_psym_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_psym_p_) {
             listener.exitSlist_o__i__s__i__s_psym_p_(this);
        }
    }
}


export class PsymContext extends antlr.ParserRuleContext {
    public result: symbol;
    public _psym_0__2?: IdentstrContext;
    public _psym_2__1?: Token | null;
    public _psym_4__1?: IdentstrContext;
    public _psym_6__1?: Token | null;
    public _psym_6__3?: Slist_o__i__s__i__s_psym_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public identstr(): IdentstrContext | null {
        return this.getRuleContext(0, IdentstrContext);
    }
    public ESCAPED_STRING(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.ESCAPED_STRING, 0);
    }
    public CNAMEPLUS(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.CNAMEPLUS, 0);
    }
    public slist_o__i__s__i__s_psym_p_(): Slist_o__i__s__i__s_psym_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_psym_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_psym;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterPsym) {
             listener.enterPsym(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitPsym) {
             listener.exitPsym(this);
        }
    }
}


export class AnnContext extends antlr.ParserRuleContext {
    public result: [string, monot];
    public _ann_0__1?: IdentstrContext;
    public _ann_0__3?: TypContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public identstr(): IdentstrContext {
        return this.getRuleContext(0, IdentstrContext)!;
    }
    public typ(): TypContext {
        return this.getRuleContext(0, TypContext)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_ann;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterAnn) {
             listener.enterAnn(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitAnn) {
             listener.exitAnn(this);
        }
    }
}


export class Slist_o__i__s__i__s_ann_p_Context extends antlr.ParserRuleContext {
    public result: Array<[string, monot]>;
    public _slist_o__i__s__i__s_ann_p__2__1?: Slist_o__i__s__i__s_ann_p_Context;
    public _slist_o__i__s__i__s_ann_p__0__1?: AnnContext;
    public _slist_o__i__s__i__s_ann_p__2__3?: AnnContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public ann(): AnnContext {
        return this.getRuleContext(0, AnnContext)!;
    }
    public slist_o__i__s__i__s_ann_p_(): Slist_o__i__s__i__s_ann_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_ann_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_slist_o__i__s__i__s_ann_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_ann_p_) {
             listener.enterSlist_o__i__s__i__s_ann_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_ann_p_) {
             listener.exitSlist_o__i__s__i__s_ann_p_(this);
        }
    }
}


export class Empty_o_slist_o__i__s__i__s_ann_p__p_Context extends antlr.ParserRuleContext {
    public result: Array<[string, monot]>;
    public _empty_o_slist_o__i__s__i__s_ann_p__p__2__1?: Slist_o__i__s__i__s_ann_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_ann_p_(): Slist_o__i__s__i__s_ann_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_ann_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_ann_p__p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterEmpty_o_slist_o__i__s__i__s_ann_p__p_) {
             listener.enterEmpty_o_slist_o__i__s__i__s_ann_p__p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitEmpty_o_slist_o__i__s__i__s_ann_p__p_) {
             listener.exitEmpty_o_slist_o__i__s__i__s_ann_p__p_(this);
        }
    }
}


export class Eslist_o__i__s__i__s_ann_p_Context extends antlr.ParserRuleContext {
    public result: Array<[string, monot]>;
    public _eslist_o__i__s__i__s_ann_p__0__1?: Empty_o_slist_o__i__s__i__s_ann_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public empty_o_slist_o__i__s__i__s_ann_p__p_(): Empty_o_slist_o__i__s__i__s_ann_p__p_Context {
        return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_ann_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_eslist_o__i__s__i__s_ann_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterEslist_o__i__s__i__s_ann_p_) {
             listener.enterEslist_o__i__s__i__s_ann_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitEslist_o__i__s__i__s_ann_p_) {
             listener.exitEslist_o__i__s__i__s_ann_p_(this);
        }
    }
}


export class Func_parametersContext extends antlr.ParserRuleContext {
    public result: Array<[string, monot]>;
    public _func_parameters_0__2?: Eslist_o__i__s__i__s_ann_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public eslist_o__i__s__i__s_ann_p_(): Eslist_o__i__s__i__s_ann_p_Context {
        return this.getRuleContext(0, Eslist_o__i__s__i__s_ann_p_Context)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_func_parameters;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterFunc_parameters) {
             listener.enterFunc_parameters(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitFunc_parameters) {
             listener.exitFunc_parameters(this);
        }
    }
}


export class ExprContext extends antlr.ParserRuleContext {
    public result: expr;
    public _expr_0__1?: Token | null;
    public _expr_0__2?: IdentstrContext;
    public _expr_0__4?: ExprContext;
    public _expr_0__6?: ExprContext;
    public _expr_2__1?: Token | null;
    public _expr_2__2?: Func_parametersContext;
    public _expr_2__4?: ExprContext;
    public _expr_4__1?: CallContext;
    public _expr_6__1?: CallContext;
    public _expr_6__3?: ExprContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public identstr(): IdentstrContext | null {
        return this.getRuleContext(0, IdentstrContext);
    }
    public expr(): ExprContext[];
    public expr(i: number): ExprContext | null;
    public expr(i?: number): ExprContext[] | ExprContext | null {
        if (i === undefined) {
            return this.getRuleContexts(ExprContext);
        }

        return this.getRuleContext(i, ExprContext);
    }
    public func_parameters(): Func_parametersContext | null {
        return this.getRuleContext(0, Func_parametersContext);
    }
    public call(): CallContext | null {
        return this.getRuleContext(0, CallContext);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_expr;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterExpr) {
             listener.enterExpr(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitExpr) {
             listener.exitExpr(this);
        }
    }
}


export class CallContext extends antlr.ParserRuleContext {
    public result: expr;
    public _call_0__1?: CallContext;
    public _call_2__1?: AtomexpContext;
    public _call_0__3?: Eslist_o__i__s__i__s_expr_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public atomexp(): AtomexpContext | null {
        return this.getRuleContext(0, AtomexpContext);
    }
    public call(): CallContext | null {
        return this.getRuleContext(0, CallContext);
    }
    public eslist_o__i__s__i__s_expr_p_(): Eslist_o__i__s__i__s_expr_p_Context | null {
        return this.getRuleContext(0, Eslist_o__i__s__i__s_expr_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_call;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterCall) {
             listener.enterCall(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitCall) {
             listener.exitCall(this);
        }
    }
}


export class Empty_o_slist_o__i__s__i__s_expr_p__p_Context extends antlr.ParserRuleContext {
    public result: Array<expr>;
    public _empty_o_slist_o__i__s__i__s_expr_p__p__2__1?: Slist_o__i__s__i__s_expr_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_expr_p_(): Slist_o__i__s__i__s_expr_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_expr_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_expr_p__p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterEmpty_o_slist_o__i__s__i__s_expr_p__p_) {
             listener.enterEmpty_o_slist_o__i__s__i__s_expr_p__p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitEmpty_o_slist_o__i__s__i__s_expr_p__p_) {
             listener.exitEmpty_o_slist_o__i__s__i__s_expr_p__p_(this);
        }
    }
}


export class Eslist_o__i__s__i__s_expr_p_Context extends antlr.ParserRuleContext {
    public result: Array<expr>;
    public _eslist_o__i__s__i__s_expr_p__0__1?: Empty_o_slist_o__i__s__i__s_expr_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public empty_o_slist_o__i__s__i__s_expr_p__p_(): Empty_o_slist_o__i__s__i__s_expr_p__p_Context {
        return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_expr_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_eslist_o__i__s__i__s_expr_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterEslist_o__i__s__i__s_expr_p_) {
             listener.enterEslist_o__i__s__i__s_expr_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitEslist_o__i__s__i__s_expr_p_) {
             listener.exitEslist_o__i__s__i__s_expr_p_(this);
        }
    }
}


export class Slist_o__i__s__i__s_expr_p_Context extends antlr.ParserRuleContext {
    public result: Array<expr>;
    public _slist_o__i__s__i__s_expr_p__2__1?: Slist_o__i__s__i__s_expr_p_Context;
    public _slist_o__i__s__i__s_expr_p__0__1?: ExprContext;
    public _slist_o__i__s__i__s_expr_p__2__3?: ExprContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public expr(): ExprContext {
        return this.getRuleContext(0, ExprContext)!;
    }
    public slist_o__i__s__i__s_expr_p_(): Slist_o__i__s__i__s_expr_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_expr_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_slist_o__i__s__i__s_expr_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_expr_p_) {
             listener.enterSlist_o__i__s__i__s_expr_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_expr_p_) {
             listener.exitSlist_o__i__s__i__s_expr_p_(this);
        }
    }
}


export class AtomexpContext extends antlr.ParserRuleContext {
    public result: expr;
    public _atomexp_16__1?: AtomexpContext;
    public _atomexp_0__1?: Token | null;
    public _atomexp_2__1?: Token | null;
    public _atomexp_4__1?: Token | null;
    public _atomexp_6__1?: Token | null;
    public _atomexp_6__2?: Token | null;
    public _atomexp_8__1?: Token | null;
    public _atomexp_8__2?: Eslist_o__i__s__i__s_expr_p_Context;
    public _atomexp_10__1?: Token | null;
    public _atomexp_12__1?: Token | null;
    public _atomexp_12__2?: Slist_o__i__s__i__s_expr_p_Context;
    public _atomexp_14__1?: Token | null;
    public _atomexp_18__1?: Token | null;
    public _atomexp_20__1?: Token | null;
    public _atomexp_16__3?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public INT(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.INT, 0);
    }
    public FLOAT(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.FLOAT, 0);
    }
    public ESCAPED_STRING(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.ESCAPED_STRING, 0);
    }
    public eslist_o__i__s__i__s_expr_p_(): Eslist_o__i__s__i__s_expr_p_Context | null {
        return this.getRuleContext(0, Eslist_o__i__s__i__s_expr_p_Context);
    }
    public slist_o__i__s__i__s_expr_p_(): Slist_o__i__s__i__s_expr_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_expr_p_Context);
    }
    public CNAMEPLUS(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.CNAMEPLUS, 0);
    }
    public atomexp(): AtomexpContext | null {
        return this.getRuleContext(0, AtomexpContext);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_atomexp;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterAtomexp) {
             listener.enterAtomexp(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitAtomexp) {
             listener.exitAtomexp(this);
        }
    }
}


export class Slist_o__i__u__i__s_lexer_and_p_Context extends antlr.ParserRuleContext {
    public result: Array<lexerule>;
    public _slist_o__i__u__i__s_lexer_and_p__2__1?: Slist_o__i__u__i__s_lexer_and_p_Context;
    public _slist_o__i__u__i__s_lexer_and_p__0__1?: Lexer_andContext;
    public _slist_o__i__u__i__s_lexer_and_p__2__3?: Lexer_andContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public lexer_and(): Lexer_andContext {
        return this.getRuleContext(0, Lexer_andContext)!;
    }
    public slist_o__i__u__i__s_lexer_and_p_(): Slist_o__i__u__i__s_lexer_and_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__u__i__s_lexer_and_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterSlist_o__i__u__i__s_lexer_and_p_) {
             listener.enterSlist_o__i__u__i__s_lexer_and_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitSlist_o__i__u__i__s_lexer_and_p_) {
             listener.exitSlist_o__i__u__i__s_lexer_and_p_(this);
        }
    }
}


export class Lexer__y_Context extends antlr.ParserRuleContext {
    public result: lexerule;
    public _lexer__y__0__1?: Slist_o__i__u__i__s_lexer_and_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__u__i__s_lexer_and_p_(): Slist_o__i__u__i__s_lexer_and_p_Context {
        return this.getRuleContext(0, Slist_o__i__u__i__s_lexer_and_p_Context)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_lexer__y_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterLexer__y_) {
             listener.enterLexer__y_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitLexer__y_) {
             listener.exitLexer__y_(this);
        }
    }
}


export class List_o_lexer_atomexpr_p_Context extends antlr.ParserRuleContext {
    public result: Array<lexerule>;
    public _list_o_lexer_atomexpr_p__2__1?: List_o_lexer_atomexpr_p_Context;
    public _list_o_lexer_atomexpr_p__0__1?: Lexer_atomexprContext;
    public _list_o_lexer_atomexpr_p__2__2?: Lexer_atomexprContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public lexer_atomexpr(): Lexer_atomexprContext {
        return this.getRuleContext(0, Lexer_atomexprContext)!;
    }
    public list_o_lexer_atomexpr_p_(): List_o_lexer_atomexpr_p_Context | null {
        return this.getRuleContext(0, List_o_lexer_atomexpr_p_Context);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_list_o_lexer_atomexpr_p_;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterList_o_lexer_atomexpr_p_) {
             listener.enterList_o_lexer_atomexpr_p_(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitList_o_lexer_atomexpr_p_) {
             listener.exitList_o_lexer_atomexpr_p_(this);
        }
    }
}


export class Lexer_andContext extends antlr.ParserRuleContext {
    public result: lexerule;
    public _lexer_and_0__1?: List_o_lexer_atomexpr_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public list_o_lexer_atomexpr_p_(): List_o_lexer_atomexpr_p_Context {
        return this.getRuleContext(0, List_o_lexer_atomexpr_p_Context)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_lexer_and;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterLexer_and) {
             listener.enterLexer_and(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitLexer_and) {
             listener.exitLexer_and(this);
        }
    }
}


export class Lexer_atomexprContext extends antlr.ParserRuleContext {
    public result: lexerule;
    public _lexer_atomexpr_0__1?: Lexer_atomexprContext;
    public _lexer_atomexpr_2__1?: Lexer_atomexprContext;
    public _lexer_atomexpr_4__1?: Lexer_atomexprContext;
    public _lexer_atomexpr_6__1?: Lexer_atomContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public lexer_atom(): Lexer_atomContext | null {
        return this.getRuleContext(0, Lexer_atomContext);
    }
    public lexer_atomexpr(): Lexer_atomexprContext | null {
        return this.getRuleContext(0, Lexer_atomexprContext);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_lexer_atomexpr;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterLexer_atomexpr) {
             listener.enterLexer_atomexpr(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitLexer_atomexpr) {
             listener.exitLexer_atomexpr(this);
        }
    }
}


export class Lexer_atomContext extends antlr.ParserRuleContext {
    public result: lexerule;
    public _lexer_atom_0__1?: Token | null;
    public _lexer_atom_2__2?: Lexer_atomContext;
    public _lexer_atom_4__2?: Lexer__y_Context;
    public _lexer_atom_8__1?: Token | null;
    public _lexer_atom_10__1?: Token | null;
    public _lexer_atom_16__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public ESCAPED_STRING(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.ESCAPED_STRING, 0);
    }
    public lexer_atom(): Lexer_atomContext | null {
        return this.getRuleContext(0, Lexer_atomContext);
    }
    public lexer__y_(): Lexer__y_Context | null {
        return this.getRuleContext(0, Lexer__y_Context);
    }
    public RANGE(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.RANGE, 0);
    }
    public UNICODE_RANGE(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.UNICODE_RANGE, 0);
    }
    public CNAMEPLUS(): antlr.TerminalNode | null {
        return this.getToken(TypedBNFParser.CNAMEPLUS, 0);
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_lexer_atom;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterLexer_atom) {
             listener.enterLexer_atom(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitLexer_atom) {
             listener.exitLexer_atom(this);
        }
    }
}


export class LexerdefContext extends antlr.ParserRuleContext {
    public result: definition;
    public _lexerdef_0__1?: Token | null;
    public _lexerdef_0__3?: Lexer__y_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TypedBNFParser.CNAMEPLUS, 0)!;
    }
    public lexer__y_(): Lexer__y_Context {
        return this.getRuleContext(0, Lexer__y_Context)!;
    }
    public override get ruleIndex(): number {
        return TypedBNFParser.RULE_lexerdef;
    }
    public override enterRule(listener: TypedBNFListener): void {
        if(listener.enterLexerdef) {
             listener.enterLexerdef(this);
        }
    }
    public override exitRule(listener: TypedBNFListener): void {
        if(listener.exitLexerdef) {
             listener.exitLexerdef(this);
        }
    }
}
