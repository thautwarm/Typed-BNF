
import * as antlr from "antlr4ng";
import { Token } from "antlr4ng";

import { TBNFListener } from "./TBNFListener.js";
// for running tests with parameters, TODO: discuss strategy for typed parameters in CI
// eslint-disable-next-line no-unused-vars
type int = number;


import { markDef, mark, FLOAT, INT, STR, BRANCH, PRODUCTION, KEYWORD, FIELD, MACRO_IDENT, TYPE_VAR, TYPE_IDENT, EXPR_IDENT, LEX_IDENT, RULE_IDENT, OPERATOR } from "./TBNFConstructor"


export class TBNFParser extends antlr.Parser {
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
    public static readonly RULE_typ = 3;
    public static readonly RULE_slist_o__i__s__i__s_param_type_p_ = 4;
    public static readonly RULE_empty_o_slist_o__i__s__i__s_param_type_p__p_ = 5;
    public static readonly RULE_eslist_o__i__s__i__s_param_type_p_ = 6;
    public static readonly RULE_arrow_typ = 7;
    public static readonly RULE_slist_o__i__s__i__s_typ_p_ = 8;
    public static readonly RULE_typ2 = 9;
    public static readonly RULE_type_product = 10;
    public static readonly RULE_top_typ = 11;
    public static readonly RULE_tvar_str = 12;
    public static readonly RULE_param_type = 13;
    public static readonly RULE_slist_o__i__s__i__s_tvar_str_p_ = 14;
    public static readonly RULE_type_params = 15;
    public static readonly RULE_field_ann = 16;
    public static readonly RULE_slist_o__i__s__i__s_field_ann_p_ = 17;
    public static readonly RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_ = 18;
    public static readonly RULE_eslist_o__i__s__i__s_field_ann_p_ = 19;
    public static readonly RULE_field_anns = 20;
    public static readonly RULE_decl = 21;
    public static readonly RULE_slist_o__i__s__i__s_ignore_item_p_ = 22;
    public static readonly RULE_toplevel = 23;
    public static readonly RULE_ignore_item = 24;
    public static readonly RULE_macro_var = 25;
    public static readonly RULE_slist_o__i__s__i__s_macro_var_p_ = 26;
    public static readonly RULE_def = 27;
    public static readonly RULE_productions = 28;
    public static readonly RULE_list_o_psym_p_ = 29;
    public static readonly RULE_empty_o_list_o_psym_p__p_ = 30;
    public static readonly RULE_elist_o_psym_p_ = 31;
    public static readonly RULE_production = 32;
    public static readonly RULE_slist_o__i__s__i__s_psym_p_ = 33;
    public static readonly RULE_psym = 34;
    public static readonly RULE_ann = 35;
    public static readonly RULE_slist_o__i__s__i__s_ann_p_ = 36;
    public static readonly RULE_empty_o_slist_o__i__s__i__s_ann_p__p_ = 37;
    public static readonly RULE_eslist_o__i__s__i__s_ann_p_ = 38;
    public static readonly RULE_func_parameters = 39;
    public static readonly RULE_expr = 40;
    public static readonly RULE_call = 41;
    public static readonly RULE_empty_o_slist_o__i__s__i__s_expr_p__p_ = 42;
    public static readonly RULE_eslist_o__i__s__i__s_expr_p_ = 43;
    public static readonly RULE_slist_o__i__s__i__s_expr_p_ = 44;
    public static readonly RULE_atomexp = 45;
    public static readonly RULE_slist_o__i__u__i__s_lexer_and_p_ = 46;
    public static readonly RULE_lexer__y_ = 47;
    public static readonly RULE_list_o_lexer_atomexpr_p_ = 48;
    public static readonly RULE_lexer_and = 49;
    public static readonly RULE_lexer_atomexpr = 50;
    public static readonly RULE_lexer_atom = 51;
    public static readonly RULE_lexerdef = 52;

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
        "start", "list_o_toplevel_p_", "start__y_", "typ", "slist_o__i__s__i__s_param_type_p_", 
        "empty_o_slist_o__i__s__i__s_param_type_p__p_", "eslist_o__i__s__i__s_param_type_p_", 
        "arrow_typ", "slist_o__i__s__i__s_typ_p_", "typ2", "type_product", 
        "top_typ", "tvar_str", "param_type", "slist_o__i__s__i__s_tvar_str_p_", 
        "type_params", "field_ann", "slist_o__i__s__i__s_field_ann_p_", 
        "empty_o_slist_o__i__s__i__s_field_ann_p__p_", "eslist_o__i__s__i__s_field_ann_p_", 
        "field_anns", "decl", "slist_o__i__s__i__s_ignore_item_p_", "toplevel", 
        "ignore_item", "macro_var", "slist_o__i__s__i__s_macro_var_p_", 
        "def", "productions", "list_o_psym_p_", "empty_o_list_o_psym_p__p_", 
        "elist_o_psym_p_", "production", "slist_o__i__s__i__s_psym_p_", 
        "psym", "ann", "slist_o__i__s__i__s_ann_p_", "empty_o_slist_o__i__s__i__s_ann_p__p_", 
        "eslist_o__i__s__i__s_ann_p_", "func_parameters", "expr", "call", 
        "empty_o_slist_o__i__s__i__s_expr_p__p_", "eslist_o__i__s__i__s_expr_p_", 
        "slist_o__i__s__i__s_expr_p_", "atomexp", "slist_o__i__u__i__s_lexer_and_p_", 
        "lexer__y_", "list_o_lexer_atomexpr_p_", "lexer_and", "lexer_atomexpr", 
        "lexer_atom", "lexerdef",
    ];

    public get grammarFileName(): string { return "TBNF.g4"; }
    public get literalNames(): (string | null)[] { return TBNFParser.literalNames; }
    public get symbolicNames(): (string | null)[] { return TBNFParser.symbolicNames; }
    public get ruleNames(): string[] { return TBNFParser.ruleNames; }
    public get serializedATN(): number[] { return TBNFParser._serializedATN; }

    protected createFailedPredicateException(predicate?: string, message?: string): antlr.FailedPredicateException {
        return new antlr.FailedPredicateException(this, predicate, message);
    }

    public constructor(input: antlr.TokenStream) {
        super(input);
        this.interpreter = new antlr.ParserATNSimulator(this, TBNFParser._ATN, TBNFParser.decisionsToDFA, new antlr.PredictionContextCache());
    }
    public start(): StartContext {
        let localContext = new StartContext(this.context, this.state);
        this.enterRule(localContext, 0, TBNFParser.RULE_start);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 106;
            localContext._v = this.start__y_();
            this.state = 107;
            this.match(TBNFParser.EOF);
             localContext!.result = localContext._v.result; 
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
        this.enterRecursionRule(localContext, 2, TBNFParser.RULE_list_o_toplevel_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 111;
            this.toplevel();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 120;
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
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_list_o_toplevel_p_);
                    this.state = 114;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 115;
                    this.toplevel();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 122;
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
        this.enterRule(localContext, 4, TBNFParser.RULE_start__y_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 123;
            localContext._start__y__0__1 = this.list_o_toplevel_p_(0);
             localContext!.result = localContext._start__y__0__1.result;
                        
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
        this.enterRule(localContext, 6, TBNFParser.RULE_typ);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 126;
            localContext._typ_0__1 = this.arrow_typ();
             localContext!.result = localContext._typ_0__1.result;
                        
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
        let _startState = 8;
        this.enterRecursionRule(localContext, 8, TBNFParser.RULE_slist_o__i__s__i__s_param_type_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 130;
            this.param_type();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 140;
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
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_slist_o__i__s__i__s_param_type_p_);
                    this.state = 133;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 134;
                    this.match(TBNFParser.T__0);
                    this.state = 135;
                    this.param_type();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 142;
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
        this.enterRule(localContext, 10, TBNFParser.RULE_empty_o_slist_o__i__s__i__s_param_type_p__p_);
        try {
            this.state = 147;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TBNFParser.T__3:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = 0;
                            
                }
                break;
            case TBNFParser.T__2:
            case TBNFParser.CNAMEPLUS:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 144;
                this.slist_o__i__s__i__s_param_type_p_(0);
                 localContext!.result = 0;
                            
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
        this.enterRule(localContext, 12, TBNFParser.RULE_eslist_o__i__s__i__s_param_type_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 149;
            localContext._eslist_o__i__s__i__s_param_type_p__0__1 = this.empty_o_slist_o__i__s__i__s_param_type_p__p_();
             localContext!.result = localContext._eslist_o__i__s__i__s_param_type_p__0__1.result;
                        
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
        this.enterRule(localContext, 14, TBNFParser.RULE_arrow_typ);
        try {
            this.state = 167;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 3, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 152;
                this.typ2(0);
                this.state = 153;
                localContext._arrow_typ_0__2 = this.match(TBNFParser.T__1);
                this.state = 154;
                this.arrow_typ();
                 localContext!.result = <number> mark(<antlr.Token> localContext._arrow_typ_0__2, <number> OPERATOR);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 157;
                this.match(TBNFParser.T__2);
                this.state = 158;
                this.eslist_o__i__s__i__s_param_type_p_();
                this.state = 159;
                this.match(TBNFParser.T__3);
                this.state = 160;
                localContext._arrow_typ_2__4 = this.match(TBNFParser.T__1);
                this.state = 161;
                this.arrow_typ();
                 localContext!.result = <number> mark(<antlr.Token> localContext._arrow_typ_2__4, <number> OPERATOR);
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 164;
                this.type_product(0);
                 localContext!.result = 0;
                            
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
        let _startState = 16;
        this.enterRecursionRule(localContext, 16, TBNFParser.RULE_slist_o__i__s__i__s_typ_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 170;
            this.typ();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 180;
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
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_slist_o__i__s__i__s_typ_p_);
                    this.state = 173;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 174;
                    this.match(TBNFParser.T__0);
                    this.state = 175;
                    this.typ();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 182;
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
        let _startState = 18;
        this.enterRecursionRule(localContext, 18, TBNFParser.RULE_typ2, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 184;
            localContext._typ2_0__1 = this.match(TBNFParser.CNAMEPLUS);
             localContext!.result = <number> mark(<antlr.Token> localContext._typ2_0__1, <number> TYPE_IDENT);
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 195;
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
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_typ2);
                    this.state = 187;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 188;
                    this.match(TBNFParser.T__4);
                    this.state = 189;
                    this.slist_o__i__s__i__s_typ_p_(0);
                    this.state = 190;
                    this.match(TBNFParser.T__5);
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 197;
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
        let _startState = 20;
        this.enterRecursionRule(localContext, 20, TBNFParser.RULE_type_product, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 199;
            this.typ2(0);
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 209;
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
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_type_product);
                    this.state = 202;
                    if (!(this.precpred(this.context, 2))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 2)");
                    }
                    this.state = 203;
                    localContext._type_product_0__2 = this.match(TBNFParser.T__6);
                    this.state = 204;
                    this.typ2(0);
                     localContext!.result = <number> mark(<antlr.Token> localContext._type_product_0__2, <number> OPERATOR);
                                          
                    }
                    }
                }
                this.state = 211;
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
        this.enterRule(localContext, 22, TBNFParser.RULE_top_typ);
        try {
            this.state = 221;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TBNFParser.T__4:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 212;
                this.match(TBNFParser.T__4);
                this.state = 213;
                this.slist_o__i__s__i__s_tvar_str_p_(0);
                this.state = 214;
                this.match(TBNFParser.T__5);
                this.state = 215;
                this.typ();
                 localContext!.result = 0;
                            
                }
                break;
            case TBNFParser.T__2:
            case TBNFParser.CNAMEPLUS:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 218;
                this.typ();
                 localContext!.result = 0;
                            
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
        this.enterRule(localContext, 24, TBNFParser.RULE_tvar_str);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 223;
            localContext._tvar_str_0__1 = this.match(TBNFParser.CNAMEPLUS);
             localContext!.result = <number> mark(<antlr.Token> localContext._tvar_str_0__1, <number> TYPE_VAR);
                        
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
        this.enterRule(localContext, 26, TBNFParser.RULE_param_type);
        try {
            this.state = 234;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 8, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 226;
                this.match(TBNFParser.CNAMEPLUS);
                this.state = 227;
                this.match(TBNFParser.T__7);
                this.state = 228;
                this.typ();
                 localContext!.result = 0;
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 231;
                this.typ();
                 localContext!.result = 0;
                            
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
        let _startState = 28;
        this.enterRecursionRule(localContext, 28, TBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 237;
            this.tvar_str();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 247;
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
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_);
                    this.state = 240;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 241;
                    this.match(TBNFParser.T__0);
                    this.state = 242;
                    this.tvar_str();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 249;
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
        this.enterRule(localContext, 30, TBNFParser.RULE_type_params);
        try {
            this.state = 256;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 10, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 250;
                this.match(TBNFParser.T__4);
                this.state = 251;
                this.slist_o__i__s__i__s_tvar_str_p_(0);
                this.state = 252;
                this.match(TBNFParser.T__5);
                 localContext!.result = 0;
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = 0;
                            
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
        this.enterRule(localContext, 32, TBNFParser.RULE_field_ann);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 258;
            localContext._field_ann_0__1 = this.match(TBNFParser.CNAMEPLUS);
            this.state = 259;
            this.match(TBNFParser.T__7);
            this.state = 260;
            this.typ();
             localContext!.result = <number> mark(<antlr.Token> localContext._field_ann_0__1, <number> FIELD);
                        
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
        let _startState = 34;
        this.enterRecursionRule(localContext, 34, TBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 264;
            this.field_ann();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 274;
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
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_);
                    this.state = 267;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 268;
                    this.match(TBNFParser.T__0);
                    this.state = 269;
                    this.field_ann();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 276;
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
        this.enterRule(localContext, 36, TBNFParser.RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_);
        try {
            this.state = 281;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TBNFParser.T__3:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = 0;
                            
                }
                break;
            case TBNFParser.CNAMEPLUS:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 278;
                this.slist_o__i__s__i__s_field_ann_p_(0);
                 localContext!.result = 0;
                            
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
        this.enterRule(localContext, 38, TBNFParser.RULE_eslist_o__i__s__i__s_field_ann_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 283;
            localContext._eslist_o__i__s__i__s_field_ann_p__0__1 = this.empty_o_slist_o__i__s__i__s_field_ann_p__p_();
             localContext!.result = localContext._eslist_o__i__s__i__s_field_ann_p__0__1.result;
                        
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
        this.enterRule(localContext, 40, TBNFParser.RULE_field_anns);
        try {
            this.state = 292;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 13, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 286;
                this.match(TBNFParser.T__2);
                this.state = 287;
                this.eslist_o__i__s__i__s_field_ann_p_();
                this.state = 288;
                this.match(TBNFParser.T__3);
                 localContext!.result = 0;
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = 0;
                            
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
        this.enterRule(localContext, 42, TBNFParser.RULE_decl);
        try {
            this.state = 320;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 14, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 294;
                localContext._decl_0__1 = this.match(TBNFParser.T__8);
                this.state = 295;
                localContext._decl_0__2 = this.match(TBNFParser.T__9);
                this.state = 296;
                this.match(TBNFParser.CNAMEPLUS);
                this.state = 297;
                this.match(TBNFParser.T__7);
                this.state = 298;
                this.top_typ();
                 let _ : number = <number> mark(<antlr.Token> localContext._decl_0__1, <number> KEYWORD);
                                let ___98_ : number = <number> mark(<antlr.Token> localContext._decl_0__2, <number> EXPR_IDENT);
                                localContext!.result = <number> mark(<antlr.Token> localContext._decl_0__2, <number> KEYWORD);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 301;
                localContext._decl_2__1 = this.match(TBNFParser.T__10);
                this.state = 302;
                localContext._decl_2__2 = this.match(TBNFParser.CNAMEPLUS);
                this.state = 303;
                this.match(TBNFParser.T__7);
                this.state = 304;
                this.typ();
                 let ___98___103_ : number = <number> mark(<antlr.Token> localContext._decl_2__1, <number> KEYWORD);
                                localContext!.result = <number> mark(<antlr.Token> localContext._decl_2__2, <number> EXPR_IDENT);
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 307;
                localContext._decl_4__1 = this.match(TBNFParser.T__8);
                this.state = 308;
                localContext._decl_4__2 = this.match(TBNFParser.T__11);
                this.state = 309;
                localContext._decl_4__3 = this.match(TBNFParser.CNAMEPLUS);
                this.state = 310;
                this.type_params();
                this.state = 311;
                this.field_anns();
                 let ___98___103___109_ : number = <number> mark(<antlr.Token> localContext._decl_4__1, <number> KEYWORD);
                                let ___98___103___109___115_ : number = <number> mark(<antlr.Token> localContext._decl_4__2, <number> KEYWORD);
                                localContext!.result = <number> mark(<antlr.Token> localContext._decl_4__3, <number> TYPE_IDENT);
                            
                }
                break;
            case 4:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 314;
                localContext._decl_6__1 = this.match(TBNFParser.T__11);
                this.state = 315;
                localContext._decl_6__2 = this.match(TBNFParser.CNAMEPLUS);
                this.state = 316;
                this.type_params();
                this.state = 317;
                this.field_anns();
                 let ___98___103___109___115___121_ : number = <number> mark(<antlr.Token> localContext._decl_6__1, <number> KEYWORD);
                                localContext!.result = <number> mark(<antlr.Token> localContext._decl_6__2, <number> TYPE_IDENT);
                            
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

    public slist_o__i__s__i__s_ignore_item_p_(): Slist_o__i__s__i__s_ignore_item_p_Context;
    public slist_o__i__s__i__s_ignore_item_p_(_p: number): Slist_o__i__s__i__s_ignore_item_p_Context;
    public slist_o__i__s__i__s_ignore_item_p_(_p?: number): Slist_o__i__s__i__s_ignore_item_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Slist_o__i__s__i__s_ignore_item_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 44;
        this.enterRecursionRule(localContext, 44, TBNFParser.RULE_slist_o__i__s__i__s_ignore_item_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 323;
            this.ignore_item();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 333;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 15, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_ignore_item_p_Context(parentContext, parentState);
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_slist_o__i__s__i__s_ignore_item_p_);
                    this.state = 326;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 327;
                    this.match(TBNFParser.T__0);
                    this.state = 328;
                    this.ignore_item();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 335;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 15, this.context);
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
    public toplevel(): ToplevelContext {
        let localContext = new ToplevelContext(this.context, this.state);
        this.enterRule(localContext, 46, TBNFParser.RULE_toplevel);
        try {
            this.state = 349;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 16, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 336;
                this.def();
                 localContext!.result = 0;
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 339;
                this.decl();
                 localContext!.result = 0;
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 342;
                this.lexerdef();
                 localContext!.result = 0;
                            
                }
                break;
            case 4:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 345;
                localContext._toplevel_6__1 = this.match(TBNFParser.T__12);
                this.state = 346;
                this.slist_o__i__s__i__s_ignore_item_p_(0);
                 localContext!.result = <number> mark(<antlr.Token> localContext._toplevel_6__1, <number> KEYWORD);
                            
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
    public ignore_item(): Ignore_itemContext {
        let localContext = new Ignore_itemContext(this.context, this.state);
        this.enterRule(localContext, 48, TBNFParser.RULE_ignore_item);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 351;
            localContext._ignore_item_0__1 = this.match(TBNFParser.CNAMEPLUS);
             localContext!.result = <number> mark(<antlr.Token> localContext._ignore_item_0__1, <number> RULE_IDENT);
                        
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
    public macro_var(): Macro_varContext {
        let localContext = new Macro_varContext(this.context, this.state);
        this.enterRule(localContext, 50, TBNFParser.RULE_macro_var);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 354;
            localContext._macro_var_0__1 = this.match(TBNFParser.CNAMEPLUS);
             localContext!.result = <number> mark(<antlr.Token> localContext._macro_var_0__1, <number> RULE_IDENT);
                        
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

    public slist_o__i__s__i__s_macro_var_p_(): Slist_o__i__s__i__s_macro_var_p_Context;
    public slist_o__i__s__i__s_macro_var_p_(_p: number): Slist_o__i__s__i__s_macro_var_p_Context;
    public slist_o__i__s__i__s_macro_var_p_(_p?: number): Slist_o__i__s__i__s_macro_var_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Slist_o__i__s__i__s_macro_var_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 52;
        this.enterRecursionRule(localContext, 52, TBNFParser.RULE_slist_o__i__s__i__s_macro_var_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 358;
            this.macro_var();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 368;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 17, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_macro_var_p_Context(parentContext, parentState);
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_slist_o__i__s__i__s_macro_var_p_);
                    this.state = 361;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 362;
                    this.match(TBNFParser.T__0);
                    this.state = 363;
                    this.macro_var();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 370;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 17, this.context);
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
        this.enterRule(localContext, 54, TBNFParser.RULE_def);
        try {
            this.state = 382;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 18, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 371;
                localContext._def_0__1 = this.match(TBNFParser.CNAMEPLUS);
                this.state = 372;
                this.match(TBNFParser.T__2);
                this.state = 373;
                this.slist_o__i__s__i__s_macro_var_p_(0);
                this.state = 374;
                this.match(TBNFParser.T__3);
                this.state = 375;
                this.productions(0);
                 let ___98___103___109___115___121___101_ : number = <number> mark(<antlr.Token> localContext._def_0__1, <number> RULE_IDENT);
                                localContext!.result = <number> markDef(<antlr.Token> localContext._def_0__1, <number> MACRO_IDENT);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 378;
                localContext._def_2__1 = this.match(TBNFParser.CNAMEPLUS);
                this.state = 379;
                this.productions(0);
                 let ___98___103___109___115___121___101___107_ : number = <number> mark(<antlr.Token> localContext._def_2__1, <number> RULE_IDENT);
                                localContext!.result = <number> markDef(<antlr.Token> localContext._def_2__1, <number> RULE_IDENT);
                            
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
        let _startState = 56;
        this.enterRecursionRule(localContext, 56, TBNFParser.RULE_productions, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 385;
            localContext._productions_0__1 = this.match(TBNFParser.T__7);
            this.state = 386;
            this.production();
             localContext!.result = <number> mark(<antlr.Token> localContext._productions_0__1, <number> PRODUCTION);
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 396;
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
                    localContext = new ProductionsContext(parentContext, parentState);
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_productions);
                    this.state = 389;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 390;
                    localContext._productions_2__2 = this.match(TBNFParser.T__13);
                    this.state = 391;
                    this.production();
                     localContext!.result = <number> mark(<antlr.Token> localContext._productions_2__2, <number> BRANCH);
                                          
                    }
                    }
                }
                this.state = 398;
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
        let _startState = 58;
        this.enterRecursionRule(localContext, 58, TBNFParser.RULE_list_o_psym_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 400;
            this.psym();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 409;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 20, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new List_o_psym_p_Context(parentContext, parentState);
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_list_o_psym_p_);
                    this.state = 403;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 404;
                    this.psym();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 411;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 20, this.context);
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
        this.enterRule(localContext, 60, TBNFParser.RULE_empty_o_list_o_psym_p__p_);
        try {
            this.state = 416;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TBNFParser.T__14:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = 0;
                            
                }
                break;
            case TBNFParser.T__4:
            case TBNFParser.CNAMEPLUS:
            case TBNFParser.ESCAPED_STRING:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 413;
                this.list_o_psym_p_(0);
                 localContext!.result = 0;
                            
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
        this.enterRule(localContext, 62, TBNFParser.RULE_elist_o_psym_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 418;
            localContext._elist_o_psym_p__0__1 = this.empty_o_list_o_psym_p__p_();
             localContext!.result = localContext._elist_o_psym_p__0__1.result;
                        
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
        this.enterRule(localContext, 64, TBNFParser.RULE_production);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 421;
            this.elist_o_psym_p_();
            this.state = 422;
            this.match(TBNFParser.T__14);
            this.state = 423;
            this.expr();
            this.state = 424;
            this.match(TBNFParser.T__15);
             localContext!.result = 0;
                        
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
        let _startState = 66;
        this.enterRecursionRule(localContext, 66, TBNFParser.RULE_slist_o__i__s__i__s_psym_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 428;
            this.psym();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 438;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 22, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_psym_p_Context(parentContext, parentState);
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_slist_o__i__s__i__s_psym_p_);
                    this.state = 431;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 432;
                    this.match(TBNFParser.T__0);
                    this.state = 433;
                    this.psym();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 440;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 22, this.context);
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
        this.enterRule(localContext, 68, TBNFParser.RULE_psym);
        try {
            this.state = 455;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 23, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 441;
                this.match(TBNFParser.T__4);
                this.state = 442;
                localContext._psym_0__2 = this.match(TBNFParser.CNAMEPLUS);
                this.state = 443;
                this.match(TBNFParser.T__5);
                 localContext!.result = <number> mark(<antlr.Token> localContext._psym_0__2, <number> LEX_IDENT);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 445;
                localContext._psym_2__1 = this.match(TBNFParser.ESCAPED_STRING);
                 localContext!.result = <number> mark(<antlr.Token> localContext._psym_2__1, <number> STR);
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 447;
                localContext._psym_4__1 = this.match(TBNFParser.CNAMEPLUS);
                 localContext!.result = <number> mark(<antlr.Token> localContext._psym_4__1, <number> RULE_IDENT);
                            
                }
                break;
            case 4:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 449;
                localContext._psym_6__1 = this.match(TBNFParser.CNAMEPLUS);
                this.state = 450;
                this.match(TBNFParser.T__2);
                this.state = 451;
                this.slist_o__i__s__i__s_psym_p_(0);
                this.state = 452;
                this.match(TBNFParser.T__3);
                 localContext!.result = <number> mark(<antlr.Token> localContext._psym_6__1, <number> MACRO_IDENT);
                            
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
        this.enterRule(localContext, 70, TBNFParser.RULE_ann);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 457;
            localContext._ann_0__1 = this.match(TBNFParser.CNAMEPLUS);
            this.state = 458;
            this.match(TBNFParser.T__7);
            this.state = 459;
            this.typ();
             localContext!.result = <number> mark(<antlr.Token> localContext._ann_0__1, <number> EXPR_IDENT);
                        
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
        let _startState = 72;
        this.enterRecursionRule(localContext, 72, TBNFParser.RULE_slist_o__i__s__i__s_ann_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 463;
            this.ann();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 473;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 24, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_ann_p_Context(parentContext, parentState);
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_slist_o__i__s__i__s_ann_p_);
                    this.state = 466;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 467;
                    this.match(TBNFParser.T__0);
                    this.state = 468;
                    this.ann();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 475;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 24, this.context);
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
        this.enterRule(localContext, 74, TBNFParser.RULE_empty_o_slist_o__i__s__i__s_ann_p__p_);
        try {
            this.state = 480;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TBNFParser.T__3:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = 0;
                            
                }
                break;
            case TBNFParser.CNAMEPLUS:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 477;
                this.slist_o__i__s__i__s_ann_p_(0);
                 localContext!.result = 0;
                            
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
        this.enterRule(localContext, 76, TBNFParser.RULE_eslist_o__i__s__i__s_ann_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 482;
            localContext._eslist_o__i__s__i__s_ann_p__0__1 = this.empty_o_slist_o__i__s__i__s_ann_p__p_();
             localContext!.result = localContext._eslist_o__i__s__i__s_ann_p__0__1.result;
                        
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
        this.enterRule(localContext, 78, TBNFParser.RULE_func_parameters);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 485;
            this.match(TBNFParser.T__2);
            this.state = 486;
            this.eslist_o__i__s__i__s_ann_p_();
            this.state = 487;
            this.match(TBNFParser.T__3);
             localContext!.result = 0;
                        
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
        this.enterRule(localContext, 80, TBNFParser.RULE_expr);
        try {
            this.state = 512;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 26, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 490;
                localContext._expr_0__1 = this.match(TBNFParser.T__16);
                this.state = 491;
                localContext._expr_0__2 = this.match(TBNFParser.CNAMEPLUS);
                this.state = 492;
                localContext._expr_0__3 = this.match(TBNFParser.T__17);
                this.state = 493;
                this.expr();
                this.state = 494;
                localContext._expr_0__5 = this.match(TBNFParser.T__18);
                this.state = 495;
                this.expr();
                 let ___98___103___109___115___121___101___107___113_ : number = <number> mark(<antlr.Token> localContext._expr_0__1, <number> KEYWORD);
                                let ___98___103___109___115___121___101___107___113___119_ : number = <number> mark(<antlr.Token> localContext._expr_0__2, <number> EXPR_IDENT);
                                let ___98___103___109___115___121___101___107___113___119___99_ : number = <number> mark(<antlr.Token> localContext._expr_0__3, <number> KEYWORD);
                                localContext!.result = <number> mark(<antlr.Token> localContext._expr_0__5, <number> KEYWORD);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 498;
                localContext._expr_2__1 = this.match(TBNFParser.T__19);
                this.state = 499;
                this.func_parameters();
                this.state = 500;
                localContext._expr_2__3 = this.match(TBNFParser.T__1);
                this.state = 501;
                this.expr();
                 let ___98___103___109___115___121___101___107___113___119___99___104_ : number = <number> mark(<antlr.Token> localContext._expr_2__1, <number> KEYWORD);
                                localContext!.result = <number> mark(<antlr.Token> localContext._expr_2__3, <number> KEYWORD);
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 504;
                this.call(0);
                 localContext!.result = 0;
                            
                }
                break;
            case 4:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 507;
                this.call(0);
                this.state = 508;
                this.match(TBNFParser.T__20);
                this.state = 509;
                this.expr();
                 localContext!.result = 0;
                            
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
        let _startState = 82;
        this.enterRecursionRule(localContext, 82, TBNFParser.RULE_call, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 515;
            this.atomexp(0);
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 526;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 27, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new CallContext(parentContext, parentState);
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_call);
                    this.state = 518;
                    if (!(this.precpred(this.context, 2))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 2)");
                    }
                    this.state = 519;
                    this.match(TBNFParser.T__2);
                    this.state = 520;
                    this.eslist_o__i__s__i__s_expr_p_();
                    this.state = 521;
                    this.match(TBNFParser.T__3);
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 528;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 27, this.context);
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
        this.enterRule(localContext, 84, TBNFParser.RULE_empty_o_slist_o__i__s__i__s_expr_p__p_);
        try {
            this.state = 533;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TBNFParser.T__3:
            case TBNFParser.T__23:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = 0;
                            
                }
                break;
            case TBNFParser.T__2:
            case TBNFParser.T__16:
            case TBNFParser.T__19:
            case TBNFParser.T__21:
            case TBNFParser.T__22:
            case TBNFParser.T__25:
            case TBNFParser.T__26:
            case TBNFParser.CNAMEPLUS:
            case TBNFParser.INT:
            case TBNFParser.FLOAT:
            case TBNFParser.ESCAPED_STRING:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 530;
                this.slist_o__i__s__i__s_expr_p_(0);
                 localContext!.result = 0;
                            
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
        this.enterRule(localContext, 86, TBNFParser.RULE_eslist_o__i__s__i__s_expr_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 535;
            localContext._eslist_o__i__s__i__s_expr_p__0__1 = this.empty_o_slist_o__i__s__i__s_expr_p__p_();
             localContext!.result = localContext._eslist_o__i__s__i__s_expr_p__0__1.result;
                        
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
        let _startState = 88;
        this.enterRecursionRule(localContext, 88, TBNFParser.RULE_slist_o__i__s__i__s_expr_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 539;
            this.expr();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 549;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 29, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Slist_o__i__s__i__s_expr_p_Context(parentContext, parentState);
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_slist_o__i__s__i__s_expr_p_);
                    this.state = 542;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 543;
                    this.match(TBNFParser.T__0);
                    this.state = 544;
                    this.expr();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 551;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 29, this.context);
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
        let _startState = 90;
        this.enterRecursionRule(localContext, 90, TBNFParser.RULE_atomexp, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 581;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 30, this.context) ) {
            case 1:
                {
                this.state = 553;
                localContext._atomexp_0__1 = this.match(TBNFParser.INT);
                 localContext!.result = <number> mark(<antlr.Token> localContext._atomexp_0__1, <number> INT);
                            
                }
                break;
            case 2:
                {
                this.state = 555;
                localContext._atomexp_2__1 = this.match(TBNFParser.FLOAT);
                 localContext!.result = <number> mark(<antlr.Token> localContext._atomexp_2__1, <number> FLOAT);
                            
                }
                break;
            case 3:
                {
                this.state = 557;
                localContext._atomexp_4__1 = this.match(TBNFParser.ESCAPED_STRING);
                 localContext!.result = <number> mark(<antlr.Token> localContext._atomexp_4__1, <number> STR);
                            
                }
                break;
            case 4:
                {
                this.state = 559;
                localContext._atomexp_6__1 = this.match(TBNFParser.T__21);
                this.state = 560;
                localContext._atomexp_6__2 = this.match(TBNFParser.INT);
                 let ___98___103___109___115___121___101___107___113___119___99___104___110_ : number = <number> mark(<antlr.Token> localContext._atomexp_6__1, <number> KEYWORD);
                                localContext!.result = <number> mark(<antlr.Token> localContext._atomexp_6__2, <number> INT);
                            
                }
                break;
            case 5:
                {
                this.state = 562;
                this.match(TBNFParser.T__22);
                this.state = 563;
                this.eslist_o__i__s__i__s_expr_p_();
                this.state = 564;
                this.match(TBNFParser.T__23);
                 localContext!.result = 0;
                            
                }
                break;
            case 6:
                {
                this.state = 567;
                this.match(TBNFParser.T__2);
                this.state = 568;
                this.match(TBNFParser.T__3);
                 localContext!.result = 0;
                            
                }
                break;
            case 7:
                {
                this.state = 570;
                this.match(TBNFParser.T__2);
                this.state = 571;
                this.slist_o__i__s__i__s_expr_p_(0);
                this.state = 572;
                this.match(TBNFParser.T__3);
                 localContext!.result = 0;
                            
                }
                break;
            case 8:
                {
                this.state = 575;
                localContext._atomexp_14__1 = this.match(TBNFParser.CNAMEPLUS);
                 localContext!.result = <number> mark(<antlr.Token> localContext._atomexp_14__1, <number> EXPR_IDENT);
                            
                }
                break;
            case 9:
                {
                this.state = 577;
                localContext._atomexp_18__1 = this.match(TBNFParser.T__25);
                 localContext!.result = <number> mark(<antlr.Token> localContext._atomexp_18__1, <number> KEYWORD);
                            
                }
                break;
            case 10:
                {
                this.state = 579;
                localContext._atomexp_20__1 = this.match(TBNFParser.T__26);
                 localContext!.result = <number> mark(<antlr.Token> localContext._atomexp_20__1, <number> KEYWORD);
                            
                }
                break;
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 589;
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
                    localContext = new AtomexpContext(parentContext, parentState);
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_atomexp);
                    this.state = 583;
                    if (!(this.precpred(this.context, 3))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 3)");
                    }
                    this.state = 584;
                    this.match(TBNFParser.T__24);
                    this.state = 585;
                    localContext._atomexp_16__3 = this.match(TBNFParser.CNAMEPLUS);
                     localContext!.result = <number> mark(<antlr.Token> localContext._atomexp_16__3, <number> FIELD);
                                          
                    }
                    }
                }
                this.state = 591;
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
        let _startState = 92;
        this.enterRecursionRule(localContext, 92, TBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 593;
            this.lexer_and();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 603;
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
                    localContext = new Slist_o__i__u__i__s_lexer_and_p_Context(parentContext, parentState);
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_);
                    this.state = 596;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 597;
                    this.match(TBNFParser.T__13);
                    this.state = 598;
                    this.lexer_and();
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 605;
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
    public lexer__y_(): Lexer__y_Context {
        let localContext = new Lexer__y_Context(this.context, this.state);
        this.enterRule(localContext, 94, TBNFParser.RULE_lexer__y_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 606;
            this.slist_o__i__u__i__s_lexer_and_p_(0);
             localContext!.result = 0;
                        
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
        let _startState = 96;
        this.enterRecursionRule(localContext, 96, TBNFParser.RULE_list_o_lexer_atomexpr_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 610;
            this.lexer_atomexpr(0);
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 619;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 33, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new List_o_lexer_atomexpr_p_Context(parentContext, parentState);
                    this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_list_o_lexer_atomexpr_p_);
                    this.state = 613;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 614;
                    this.lexer_atomexpr(0);
                     localContext!.result = 0;
                                          
                    }
                    }
                }
                this.state = 621;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 33, this.context);
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
        this.enterRule(localContext, 98, TBNFParser.RULE_lexer_and);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 622;
            this.list_o_lexer_atomexpr_p_(0);
             localContext!.result = 0;
                        
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
        let _startState = 100;
        this.enterRecursionRule(localContext, 100, TBNFParser.RULE_lexer_atomexpr, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 626;
            this.lexer_atom();
             localContext!.result = 0;
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 640;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 35, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    this.state = 638;
                    this.errorHandler.sync(this);
                    switch (this.interpreter.adaptivePredict(this.tokenStream, 34, this.context) ) {
                    case 1:
                        {
                        localContext = new Lexer_atomexprContext(parentContext, parentState);
                        this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_lexer_atomexpr);
                        this.state = 629;
                        if (!(this.precpred(this.context, 4))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 4)");
                        }
                        this.state = 630;
                        this.match(TBNFParser.T__27);
                         localContext!.result = 0;
                                              
                        }
                        break;
                    case 2:
                        {
                        localContext = new Lexer_atomexprContext(parentContext, parentState);
                        this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_lexer_atomexpr);
                        this.state = 632;
                        if (!(this.precpred(this.context, 3))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 3)");
                        }
                        this.state = 633;
                        this.match(TBNFParser.T__6);
                         localContext!.result = 0;
                                              
                        }
                        break;
                    case 3:
                        {
                        localContext = new Lexer_atomexprContext(parentContext, parentState);
                        this.pushNewRecursionContext(localContext, _startState, TBNFParser.RULE_lexer_atomexpr);
                        this.state = 635;
                        if (!(this.precpred(this.context, 2))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 2)");
                        }
                        this.state = 636;
                        this.match(TBNFParser.T__28);
                         localContext!.result = 0;
                                              
                        }
                        break;
                    }
                    }
                }
                this.state = 642;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 35, this.context);
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
        this.enterRule(localContext, 102, TBNFParser.RULE_lexer_atom);
        try {
            this.state = 666;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case TBNFParser.ESCAPED_STRING:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 643;
                localContext._lexer_atom_0__1 = this.match(TBNFParser.ESCAPED_STRING);
                 localContext!.result = <number> mark(<antlr.Token> localContext._lexer_atom_0__1, <number> STR);
                            
                }
                break;
            case TBNFParser.T__29:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 645;
                this.match(TBNFParser.T__29);
                this.state = 646;
                this.lexer_atom();
                 localContext!.result = 0;
                            
                }
                break;
            case TBNFParser.T__2:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 649;
                this.match(TBNFParser.T__2);
                this.state = 650;
                this.lexer__y_();
                this.state = 651;
                this.match(TBNFParser.T__3);
                 localContext!.result = 0;
                            
                }
                break;
            case TBNFParser.T__30:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 654;
                localContext._lexer_atom_6__1 = this.match(TBNFParser.T__30);
                 localContext!.result = <number> mark(<antlr.Token> localContext._lexer_atom_6__1, <number> INT);
                            
                }
                break;
            case TBNFParser.RANGE:
                this.enterOuterAlt(localContext, 5);
                {
                this.state = 656;
                localContext._lexer_atom_8__1 = this.match(TBNFParser.RANGE);
                 localContext!.result = <number> mark(<antlr.Token> localContext._lexer_atom_8__1, <number> INT);
                            
                }
                break;
            case TBNFParser.UNICODE_RANGE:
                this.enterOuterAlt(localContext, 6);
                {
                this.state = 658;
                localContext._lexer_atom_10__1 = this.match(TBNFParser.UNICODE_RANGE);
                 localContext!.result = <number> mark(<antlr.Token> localContext._lexer_atom_10__1, <number> INT);
                            
                }
                break;
            case TBNFParser.T__31:
                this.enterOuterAlt(localContext, 7);
                {
                this.state = 660;
                localContext._lexer_atom_12__1 = this.match(TBNFParser.T__31);
                 localContext!.result = <number> mark(<antlr.Token> localContext._lexer_atom_12__1, <number> KEYWORD);
                            
                }
                break;
            case TBNFParser.T__24:
                this.enterOuterAlt(localContext, 8);
                {
                this.state = 662;
                localContext._lexer_atom_14__1 = this.match(TBNFParser.T__24);
                 localContext!.result = <number> mark(<antlr.Token> localContext._lexer_atom_14__1, <number> KEYWORD);
                            
                }
                break;
            case TBNFParser.CNAMEPLUS:
                this.enterOuterAlt(localContext, 9);
                {
                this.state = 664;
                localContext._lexer_atom_16__1 = this.match(TBNFParser.CNAMEPLUS);
                 localContext!.result = <number> mark(<antlr.Token> localContext._lexer_atom_16__1, <number> LEX_IDENT);
                            
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
        this.enterRule(localContext, 104, TBNFParser.RULE_lexerdef);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 668;
            localContext._lexerdef_0__1 = this.match(TBNFParser.CNAMEPLUS);
            this.state = 669;
            localContext._lexerdef_0__2 = this.match(TBNFParser.T__17);
            this.state = 670;
            this.lexer__y_();
            this.state = 671;
            this.match(TBNFParser.T__20);
             let ___98___103___109___115___121___101___107___113___119___99___104___110___116_ : number = <number> mark(<antlr.Token> localContext._lexerdef_0__1, <number> LEX_IDENT);
                            let ___98___103___109___115___121___101___107___113___119___99___104___110___116___122_ : number = <number> mark(<antlr.Token> localContext._lexerdef_0__2, <number> KEYWORD);
                            localContext!.result = <number> markDef(<antlr.Token> localContext._lexerdef_0__1, <number> LEX_IDENT);
                        
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
        case 4:
            return this.slist_o__i__s__i__s_param_type_p__sempred(localContext as Slist_o__i__s__i__s_param_type_p_Context, predIndex);
        case 8:
            return this.slist_o__i__s__i__s_typ_p__sempred(localContext as Slist_o__i__s__i__s_typ_p_Context, predIndex);
        case 9:
            return this.typ2_sempred(localContext as Typ2Context, predIndex);
        case 10:
            return this.type_product_sempred(localContext as Type_productContext, predIndex);
        case 14:
            return this.slist_o__i__s__i__s_tvar_str_p__sempred(localContext as Slist_o__i__s__i__s_tvar_str_p_Context, predIndex);
        case 17:
            return this.slist_o__i__s__i__s_field_ann_p__sempred(localContext as Slist_o__i__s__i__s_field_ann_p_Context, predIndex);
        case 22:
            return this.slist_o__i__s__i__s_ignore_item_p__sempred(localContext as Slist_o__i__s__i__s_ignore_item_p_Context, predIndex);
        case 26:
            return this.slist_o__i__s__i__s_macro_var_p__sempred(localContext as Slist_o__i__s__i__s_macro_var_p_Context, predIndex);
        case 28:
            return this.productions_sempred(localContext as ProductionsContext, predIndex);
        case 29:
            return this.list_o_psym_p__sempred(localContext as List_o_psym_p_Context, predIndex);
        case 33:
            return this.slist_o__i__s__i__s_psym_p__sempred(localContext as Slist_o__i__s__i__s_psym_p_Context, predIndex);
        case 36:
            return this.slist_o__i__s__i__s_ann_p__sempred(localContext as Slist_o__i__s__i__s_ann_p_Context, predIndex);
        case 41:
            return this.call_sempred(localContext as CallContext, predIndex);
        case 44:
            return this.slist_o__i__s__i__s_expr_p__sempred(localContext as Slist_o__i__s__i__s_expr_p_Context, predIndex);
        case 45:
            return this.atomexp_sempred(localContext as AtomexpContext, predIndex);
        case 46:
            return this.slist_o__i__u__i__s_lexer_and_p__sempred(localContext as Slist_o__i__u__i__s_lexer_and_p_Context, predIndex);
        case 48:
            return this.list_o_lexer_atomexpr_p__sempred(localContext as List_o_lexer_atomexpr_p_Context, predIndex);
        case 50:
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
    private slist_o__i__s__i__s_ignore_item_p__sempred(localContext: Slist_o__i__s__i__s_ignore_item_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 7:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private slist_o__i__s__i__s_macro_var_p__sempred(localContext: Slist_o__i__s__i__s_macro_var_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 8:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private productions_sempred(localContext: ProductionsContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 9:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private list_o_psym_p__sempred(localContext: List_o_psym_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 10:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private slist_o__i__s__i__s_psym_p__sempred(localContext: Slist_o__i__s__i__s_psym_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 11:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private slist_o__i__s__i__s_ann_p__sempred(localContext: Slist_o__i__s__i__s_ann_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 12:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private call_sempred(localContext: CallContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 13:
            return this.precpred(this.context, 2);
        }
        return true;
    }
    private slist_o__i__s__i__s_expr_p__sempred(localContext: Slist_o__i__s__i__s_expr_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 14:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private atomexp_sempred(localContext: AtomexpContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 15:
            return this.precpred(this.context, 3);
        }
        return true;
    }
    private slist_o__i__u__i__s_lexer_and_p__sempred(localContext: Slist_o__i__u__i__s_lexer_and_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 16:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private list_o_lexer_atomexpr_p__sempred(localContext: List_o_lexer_atomexpr_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 17:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private lexer_atomexpr_sempred(localContext: Lexer_atomexprContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 18:
            return this.precpred(this.context, 4);
        case 19:
            return this.precpred(this.context, 3);
        case 20:
            return this.precpred(this.context, 2);
        }
        return true;
    }

    public static readonly _serializedATN: number[] = [
        4,1,41,675,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
        6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,
        2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,
        7,20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,
        2,27,7,27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,
        7,33,2,34,7,34,2,35,7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,
        2,40,7,40,2,41,7,41,2,42,7,42,2,43,7,43,2,44,7,44,2,45,7,45,2,46,
        7,46,2,47,7,47,2,48,7,48,2,49,7,49,2,50,7,50,2,51,7,51,2,52,7,52,
        1,0,1,0,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,119,8,1,10,1,
        12,1,122,9,1,1,2,1,2,1,2,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,4,1,4,1,4,
        1,4,1,4,5,4,139,8,4,10,4,12,4,142,9,4,1,5,1,5,1,5,1,5,3,5,148,8,
        5,1,6,1,6,1,6,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,
        7,1,7,1,7,3,7,168,8,7,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,5,8,179,
        8,8,10,8,12,8,182,9,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,5,
        9,194,8,9,10,9,12,9,197,9,9,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,
        10,1,10,5,10,208,8,10,10,10,12,10,211,9,10,1,11,1,11,1,11,1,11,1,
        11,1,11,1,11,1,11,1,11,3,11,222,8,11,1,12,1,12,1,12,1,13,1,13,1,
        13,1,13,1,13,1,13,1,13,1,13,3,13,235,8,13,1,14,1,14,1,14,1,14,1,
        14,1,14,1,14,1,14,1,14,5,14,246,8,14,10,14,12,14,249,9,14,1,15,1,
        15,1,15,1,15,1,15,1,15,3,15,257,8,15,1,16,1,16,1,16,1,16,1,16,1,
        17,1,17,1,17,1,17,1,17,1,17,1,17,1,17,1,17,5,17,273,8,17,10,17,12,
        17,276,9,17,1,18,1,18,1,18,1,18,3,18,282,8,18,1,19,1,19,1,19,1,20,
        1,20,1,20,1,20,1,20,1,20,3,20,293,8,20,1,21,1,21,1,21,1,21,1,21,
        1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,
        1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,3,21,321,8,21,1,22,1,22,
        1,22,1,22,1,22,1,22,1,22,1,22,1,22,5,22,332,8,22,10,22,12,22,335,
        9,22,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,
        1,23,3,23,350,8,23,1,24,1,24,1,24,1,25,1,25,1,25,1,26,1,26,1,26,
        1,26,1,26,1,26,1,26,1,26,1,26,5,26,367,8,26,10,26,12,26,370,9,26,
        1,27,1,27,1,27,1,27,1,27,1,27,1,27,1,27,1,27,1,27,1,27,3,27,383,
        8,27,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,28,5,28,395,
        8,28,10,28,12,28,398,9,28,1,29,1,29,1,29,1,29,1,29,1,29,1,29,1,29,
        5,29,408,8,29,10,29,12,29,411,9,29,1,30,1,30,1,30,1,30,3,30,417,
        8,30,1,31,1,31,1,31,1,32,1,32,1,32,1,32,1,32,1,32,1,33,1,33,1,33,
        1,33,1,33,1,33,1,33,1,33,1,33,5,33,437,8,33,10,33,12,33,440,9,33,
        1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,34,
        1,34,3,34,456,8,34,1,35,1,35,1,35,1,35,1,35,1,36,1,36,1,36,1,36,
        1,36,1,36,1,36,1,36,1,36,5,36,472,8,36,10,36,12,36,475,9,36,1,37,
        1,37,1,37,1,37,3,37,481,8,37,1,38,1,38,1,38,1,39,1,39,1,39,1,39,
        1,39,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,
        1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,3,40,513,8,40,
        1,41,1,41,1,41,1,41,1,41,1,41,1,41,1,41,1,41,1,41,5,41,525,8,41,
        10,41,12,41,528,9,41,1,42,1,42,1,42,1,42,3,42,534,8,42,1,43,1,43,
        1,43,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,5,44,548,8,44,
        10,44,12,44,551,9,44,1,45,1,45,1,45,1,45,1,45,1,45,1,45,1,45,1,45,
        1,45,1,45,1,45,1,45,1,45,1,45,1,45,1,45,1,45,1,45,1,45,1,45,1,45,
        1,45,1,45,1,45,1,45,1,45,1,45,1,45,3,45,582,8,45,1,45,1,45,1,45,
        1,45,5,45,588,8,45,10,45,12,45,591,9,45,1,46,1,46,1,46,1,46,1,46,
        1,46,1,46,1,46,1,46,5,46,602,8,46,10,46,12,46,605,9,46,1,47,1,47,
        1,47,1,48,1,48,1,48,1,48,1,48,1,48,1,48,1,48,5,48,618,8,48,10,48,
        12,48,621,9,48,1,49,1,49,1,49,1,50,1,50,1,50,1,50,1,50,1,50,1,50,
        1,50,1,50,1,50,1,50,1,50,1,50,5,50,639,8,50,10,50,12,50,642,9,50,
        1,51,1,51,1,51,1,51,1,51,1,51,1,51,1,51,1,51,1,51,1,51,1,51,1,51,
        1,51,1,51,1,51,1,51,1,51,1,51,1,51,1,51,1,51,1,51,3,51,667,8,51,
        1,52,1,52,1,52,1,52,1,52,1,52,1,52,0,19,2,8,16,18,20,28,34,44,52,
        56,58,66,72,82,88,90,92,96,100,53,0,2,4,6,8,10,12,14,16,18,20,22,
        24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,
        68,70,72,74,76,78,80,82,84,86,88,90,92,94,96,98,100,102,104,0,0,
        683,0,106,1,0,0,0,2,110,1,0,0,0,4,123,1,0,0,0,6,126,1,0,0,0,8,129,
        1,0,0,0,10,147,1,0,0,0,12,149,1,0,0,0,14,167,1,0,0,0,16,169,1,0,
        0,0,18,183,1,0,0,0,20,198,1,0,0,0,22,221,1,0,0,0,24,223,1,0,0,0,
        26,234,1,0,0,0,28,236,1,0,0,0,30,256,1,0,0,0,32,258,1,0,0,0,34,263,
        1,0,0,0,36,281,1,0,0,0,38,283,1,0,0,0,40,292,1,0,0,0,42,320,1,0,
        0,0,44,322,1,0,0,0,46,349,1,0,0,0,48,351,1,0,0,0,50,354,1,0,0,0,
        52,357,1,0,0,0,54,382,1,0,0,0,56,384,1,0,0,0,58,399,1,0,0,0,60,416,
        1,0,0,0,62,418,1,0,0,0,64,421,1,0,0,0,66,427,1,0,0,0,68,455,1,0,
        0,0,70,457,1,0,0,0,72,462,1,0,0,0,74,480,1,0,0,0,76,482,1,0,0,0,
        78,485,1,0,0,0,80,512,1,0,0,0,82,514,1,0,0,0,84,533,1,0,0,0,86,535,
        1,0,0,0,88,538,1,0,0,0,90,581,1,0,0,0,92,592,1,0,0,0,94,606,1,0,
        0,0,96,609,1,0,0,0,98,622,1,0,0,0,100,625,1,0,0,0,102,666,1,0,0,
        0,104,668,1,0,0,0,106,107,3,4,2,0,107,108,5,0,0,1,108,109,6,0,-1,
        0,109,1,1,0,0,0,110,111,6,1,-1,0,111,112,3,46,23,0,112,113,6,1,-1,
        0,113,120,1,0,0,0,114,115,10,1,0,0,115,116,3,46,23,0,116,117,6,1,
        -1,0,117,119,1,0,0,0,118,114,1,0,0,0,119,122,1,0,0,0,120,118,1,0,
        0,0,120,121,1,0,0,0,121,3,1,0,0,0,122,120,1,0,0,0,123,124,3,2,1,
        0,124,125,6,2,-1,0,125,5,1,0,0,0,126,127,3,14,7,0,127,128,6,3,-1,
        0,128,7,1,0,0,0,129,130,6,4,-1,0,130,131,3,26,13,0,131,132,6,4,-1,
        0,132,140,1,0,0,0,133,134,10,1,0,0,134,135,5,1,0,0,135,136,3,26,
        13,0,136,137,6,4,-1,0,137,139,1,0,0,0,138,133,1,0,0,0,139,142,1,
        0,0,0,140,138,1,0,0,0,140,141,1,0,0,0,141,9,1,0,0,0,142,140,1,0,
        0,0,143,148,6,5,-1,0,144,145,3,8,4,0,145,146,6,5,-1,0,146,148,1,
        0,0,0,147,143,1,0,0,0,147,144,1,0,0,0,148,11,1,0,0,0,149,150,3,10,
        5,0,150,151,6,6,-1,0,151,13,1,0,0,0,152,153,3,18,9,0,153,154,5,2,
        0,0,154,155,3,14,7,0,155,156,6,7,-1,0,156,168,1,0,0,0,157,158,5,
        3,0,0,158,159,3,12,6,0,159,160,5,4,0,0,160,161,5,2,0,0,161,162,3,
        14,7,0,162,163,6,7,-1,0,163,168,1,0,0,0,164,165,3,20,10,0,165,166,
        6,7,-1,0,166,168,1,0,0,0,167,152,1,0,0,0,167,157,1,0,0,0,167,164,
        1,0,0,0,168,15,1,0,0,0,169,170,6,8,-1,0,170,171,3,6,3,0,171,172,
        6,8,-1,0,172,180,1,0,0,0,173,174,10,1,0,0,174,175,5,1,0,0,175,176,
        3,6,3,0,176,177,6,8,-1,0,177,179,1,0,0,0,178,173,1,0,0,0,179,182,
        1,0,0,0,180,178,1,0,0,0,180,181,1,0,0,0,181,17,1,0,0,0,182,180,1,
        0,0,0,183,184,6,9,-1,0,184,185,5,35,0,0,185,186,6,9,-1,0,186,195,
        1,0,0,0,187,188,10,1,0,0,188,189,5,5,0,0,189,190,3,16,8,0,190,191,
        5,6,0,0,191,192,6,9,-1,0,192,194,1,0,0,0,193,187,1,0,0,0,194,197,
        1,0,0,0,195,193,1,0,0,0,195,196,1,0,0,0,196,19,1,0,0,0,197,195,1,
        0,0,0,198,199,6,10,-1,0,199,200,3,18,9,0,200,201,6,10,-1,0,201,209,
        1,0,0,0,202,203,10,2,0,0,203,204,5,7,0,0,204,205,3,18,9,0,205,206,
        6,10,-1,0,206,208,1,0,0,0,207,202,1,0,0,0,208,211,1,0,0,0,209,207,
        1,0,0,0,209,210,1,0,0,0,210,21,1,0,0,0,211,209,1,0,0,0,212,213,5,
        5,0,0,213,214,3,28,14,0,214,215,5,6,0,0,215,216,3,6,3,0,216,217,
        6,11,-1,0,217,222,1,0,0,0,218,219,3,6,3,0,219,220,6,11,-1,0,220,
        222,1,0,0,0,221,212,1,0,0,0,221,218,1,0,0,0,222,23,1,0,0,0,223,224,
        5,35,0,0,224,225,6,12,-1,0,225,25,1,0,0,0,226,227,5,35,0,0,227,228,
        5,8,0,0,228,229,3,6,3,0,229,230,6,13,-1,0,230,235,1,0,0,0,231,232,
        3,6,3,0,232,233,6,13,-1,0,233,235,1,0,0,0,234,226,1,0,0,0,234,231,
        1,0,0,0,235,27,1,0,0,0,236,237,6,14,-1,0,237,238,3,24,12,0,238,239,
        6,14,-1,0,239,247,1,0,0,0,240,241,10,1,0,0,241,242,5,1,0,0,242,243,
        3,24,12,0,243,244,6,14,-1,0,244,246,1,0,0,0,245,240,1,0,0,0,246,
        249,1,0,0,0,247,245,1,0,0,0,247,248,1,0,0,0,248,29,1,0,0,0,249,247,
        1,0,0,0,250,251,5,5,0,0,251,252,3,28,14,0,252,253,5,6,0,0,253,254,
        6,15,-1,0,254,257,1,0,0,0,255,257,6,15,-1,0,256,250,1,0,0,0,256,
        255,1,0,0,0,257,31,1,0,0,0,258,259,5,35,0,0,259,260,5,8,0,0,260,
        261,3,6,3,0,261,262,6,16,-1,0,262,33,1,0,0,0,263,264,6,17,-1,0,264,
        265,3,32,16,0,265,266,6,17,-1,0,266,274,1,0,0,0,267,268,10,1,0,0,
        268,269,5,1,0,0,269,270,3,32,16,0,270,271,6,17,-1,0,271,273,1,0,
        0,0,272,267,1,0,0,0,273,276,1,0,0,0,274,272,1,0,0,0,274,275,1,0,
        0,0,275,35,1,0,0,0,276,274,1,0,0,0,277,282,6,18,-1,0,278,279,3,34,
        17,0,279,280,6,18,-1,0,280,282,1,0,0,0,281,277,1,0,0,0,281,278,1,
        0,0,0,282,37,1,0,0,0,283,284,3,36,18,0,284,285,6,19,-1,0,285,39,
        1,0,0,0,286,287,5,3,0,0,287,288,3,38,19,0,288,289,5,4,0,0,289,290,
        6,20,-1,0,290,293,1,0,0,0,291,293,6,20,-1,0,292,286,1,0,0,0,292,
        291,1,0,0,0,293,41,1,0,0,0,294,295,5,9,0,0,295,296,5,10,0,0,296,
        297,5,35,0,0,297,298,5,8,0,0,298,299,3,22,11,0,299,300,6,21,-1,0,
        300,321,1,0,0,0,301,302,5,11,0,0,302,303,5,35,0,0,303,304,5,8,0,
        0,304,305,3,6,3,0,305,306,6,21,-1,0,306,321,1,0,0,0,307,308,5,9,
        0,0,308,309,5,12,0,0,309,310,5,35,0,0,310,311,3,30,15,0,311,312,
        3,40,20,0,312,313,6,21,-1,0,313,321,1,0,0,0,314,315,5,12,0,0,315,
        316,5,35,0,0,316,317,3,30,15,0,317,318,3,40,20,0,318,319,6,21,-1,
        0,319,321,1,0,0,0,320,294,1,0,0,0,320,301,1,0,0,0,320,307,1,0,0,
        0,320,314,1,0,0,0,321,43,1,0,0,0,322,323,6,22,-1,0,323,324,3,48,
        24,0,324,325,6,22,-1,0,325,333,1,0,0,0,326,327,10,1,0,0,327,328,
        5,1,0,0,328,329,3,48,24,0,329,330,6,22,-1,0,330,332,1,0,0,0,331,
        326,1,0,0,0,332,335,1,0,0,0,333,331,1,0,0,0,333,334,1,0,0,0,334,
        45,1,0,0,0,335,333,1,0,0,0,336,337,3,54,27,0,337,338,6,23,-1,0,338,
        350,1,0,0,0,339,340,3,42,21,0,340,341,6,23,-1,0,341,350,1,0,0,0,
        342,343,3,104,52,0,343,344,6,23,-1,0,344,350,1,0,0,0,345,346,5,13,
        0,0,346,347,3,44,22,0,347,348,6,23,-1,0,348,350,1,0,0,0,349,336,
        1,0,0,0,349,339,1,0,0,0,349,342,1,0,0,0,349,345,1,0,0,0,350,47,1,
        0,0,0,351,352,5,35,0,0,352,353,6,24,-1,0,353,49,1,0,0,0,354,355,
        5,35,0,0,355,356,6,25,-1,0,356,51,1,0,0,0,357,358,6,26,-1,0,358,
        359,3,50,25,0,359,360,6,26,-1,0,360,368,1,0,0,0,361,362,10,1,0,0,
        362,363,5,1,0,0,363,364,3,50,25,0,364,365,6,26,-1,0,365,367,1,0,
        0,0,366,361,1,0,0,0,367,370,1,0,0,0,368,366,1,0,0,0,368,369,1,0,
        0,0,369,53,1,0,0,0,370,368,1,0,0,0,371,372,5,35,0,0,372,373,5,3,
        0,0,373,374,3,52,26,0,374,375,5,4,0,0,375,376,3,56,28,0,376,377,
        6,27,-1,0,377,383,1,0,0,0,378,379,5,35,0,0,379,380,3,56,28,0,380,
        381,6,27,-1,0,381,383,1,0,0,0,382,371,1,0,0,0,382,378,1,0,0,0,383,
        55,1,0,0,0,384,385,6,28,-1,0,385,386,5,8,0,0,386,387,3,64,32,0,387,
        388,6,28,-1,0,388,396,1,0,0,0,389,390,10,1,0,0,390,391,5,14,0,0,
        391,392,3,64,32,0,392,393,6,28,-1,0,393,395,1,0,0,0,394,389,1,0,
        0,0,395,398,1,0,0,0,396,394,1,0,0,0,396,397,1,0,0,0,397,57,1,0,0,
        0,398,396,1,0,0,0,399,400,6,29,-1,0,400,401,3,68,34,0,401,402,6,
        29,-1,0,402,409,1,0,0,0,403,404,10,1,0,0,404,405,3,68,34,0,405,406,
        6,29,-1,0,406,408,1,0,0,0,407,403,1,0,0,0,408,411,1,0,0,0,409,407,
        1,0,0,0,409,410,1,0,0,0,410,59,1,0,0,0,411,409,1,0,0,0,412,417,6,
        30,-1,0,413,414,3,58,29,0,414,415,6,30,-1,0,415,417,1,0,0,0,416,
        412,1,0,0,0,416,413,1,0,0,0,417,61,1,0,0,0,418,419,3,60,30,0,419,
        420,6,31,-1,0,420,63,1,0,0,0,421,422,3,62,31,0,422,423,5,15,0,0,
        423,424,3,80,40,0,424,425,5,16,0,0,425,426,6,32,-1,0,426,65,1,0,
        0,0,427,428,6,33,-1,0,428,429,3,68,34,0,429,430,6,33,-1,0,430,438,
        1,0,0,0,431,432,10,1,0,0,432,433,5,1,0,0,433,434,3,68,34,0,434,435,
        6,33,-1,0,435,437,1,0,0,0,436,431,1,0,0,0,437,440,1,0,0,0,438,436,
        1,0,0,0,438,439,1,0,0,0,439,67,1,0,0,0,440,438,1,0,0,0,441,442,5,
        5,0,0,442,443,5,35,0,0,443,444,5,6,0,0,444,456,6,34,-1,0,445,446,
        5,39,0,0,446,456,6,34,-1,0,447,448,5,35,0,0,448,456,6,34,-1,0,449,
        450,5,35,0,0,450,451,5,3,0,0,451,452,3,66,33,0,452,453,5,4,0,0,453,
        454,6,34,-1,0,454,456,1,0,0,0,455,441,1,0,0,0,455,445,1,0,0,0,455,
        447,1,0,0,0,455,449,1,0,0,0,456,69,1,0,0,0,457,458,5,35,0,0,458,
        459,5,8,0,0,459,460,3,6,3,0,460,461,6,35,-1,0,461,71,1,0,0,0,462,
        463,6,36,-1,0,463,464,3,70,35,0,464,465,6,36,-1,0,465,473,1,0,0,
        0,466,467,10,1,0,0,467,468,5,1,0,0,468,469,3,70,35,0,469,470,6,36,
        -1,0,470,472,1,0,0,0,471,466,1,0,0,0,472,475,1,0,0,0,473,471,1,0,
        0,0,473,474,1,0,0,0,474,73,1,0,0,0,475,473,1,0,0,0,476,481,6,37,
        -1,0,477,478,3,72,36,0,478,479,6,37,-1,0,479,481,1,0,0,0,480,476,
        1,0,0,0,480,477,1,0,0,0,481,75,1,0,0,0,482,483,3,74,37,0,483,484,
        6,38,-1,0,484,77,1,0,0,0,485,486,5,3,0,0,486,487,3,76,38,0,487,488,
        5,4,0,0,488,489,6,39,-1,0,489,79,1,0,0,0,490,491,5,17,0,0,491,492,
        5,35,0,0,492,493,5,18,0,0,493,494,3,80,40,0,494,495,5,19,0,0,495,
        496,3,80,40,0,496,497,6,40,-1,0,497,513,1,0,0,0,498,499,5,20,0,0,
        499,500,3,78,39,0,500,501,5,2,0,0,501,502,3,80,40,0,502,503,6,40,
        -1,0,503,513,1,0,0,0,504,505,3,82,41,0,505,506,6,40,-1,0,506,513,
        1,0,0,0,507,508,3,82,41,0,508,509,5,21,0,0,509,510,3,80,40,0,510,
        511,6,40,-1,0,511,513,1,0,0,0,512,490,1,0,0,0,512,498,1,0,0,0,512,
        504,1,0,0,0,512,507,1,0,0,0,513,81,1,0,0,0,514,515,6,41,-1,0,515,
        516,3,90,45,0,516,517,6,41,-1,0,517,526,1,0,0,0,518,519,10,2,0,0,
        519,520,5,3,0,0,520,521,3,86,43,0,521,522,5,4,0,0,522,523,6,41,-1,
        0,523,525,1,0,0,0,524,518,1,0,0,0,525,528,1,0,0,0,526,524,1,0,0,
        0,526,527,1,0,0,0,527,83,1,0,0,0,528,526,1,0,0,0,529,534,6,42,-1,
        0,530,531,3,88,44,0,531,532,6,42,-1,0,532,534,1,0,0,0,533,529,1,
        0,0,0,533,530,1,0,0,0,534,85,1,0,0,0,535,536,3,84,42,0,536,537,6,
        43,-1,0,537,87,1,0,0,0,538,539,6,44,-1,0,539,540,3,80,40,0,540,541,
        6,44,-1,0,541,549,1,0,0,0,542,543,10,1,0,0,543,544,5,1,0,0,544,545,
        3,80,40,0,545,546,6,44,-1,0,546,548,1,0,0,0,547,542,1,0,0,0,548,
        551,1,0,0,0,549,547,1,0,0,0,549,550,1,0,0,0,550,89,1,0,0,0,551,549,
        1,0,0,0,552,553,6,45,-1,0,553,554,5,36,0,0,554,582,6,45,-1,0,555,
        556,5,38,0,0,556,582,6,45,-1,0,557,558,5,39,0,0,558,582,6,45,-1,
        0,559,560,5,22,0,0,560,561,5,36,0,0,561,582,6,45,-1,0,562,563,5,
        23,0,0,563,564,3,86,43,0,564,565,5,24,0,0,565,566,6,45,-1,0,566,
        582,1,0,0,0,567,568,5,3,0,0,568,569,5,4,0,0,569,582,6,45,-1,0,570,
        571,5,3,0,0,571,572,3,88,44,0,572,573,5,4,0,0,573,574,6,45,-1,0,
        574,582,1,0,0,0,575,576,5,35,0,0,576,582,6,45,-1,0,577,578,5,26,
        0,0,578,582,6,45,-1,0,579,580,5,27,0,0,580,582,6,45,-1,0,581,552,
        1,0,0,0,581,555,1,0,0,0,581,557,1,0,0,0,581,559,1,0,0,0,581,562,
        1,0,0,0,581,567,1,0,0,0,581,570,1,0,0,0,581,575,1,0,0,0,581,577,
        1,0,0,0,581,579,1,0,0,0,582,589,1,0,0,0,583,584,10,3,0,0,584,585,
        5,25,0,0,585,586,5,35,0,0,586,588,6,45,-1,0,587,583,1,0,0,0,588,
        591,1,0,0,0,589,587,1,0,0,0,589,590,1,0,0,0,590,91,1,0,0,0,591,589,
        1,0,0,0,592,593,6,46,-1,0,593,594,3,98,49,0,594,595,6,46,-1,0,595,
        603,1,0,0,0,596,597,10,1,0,0,597,598,5,14,0,0,598,599,3,98,49,0,
        599,600,6,46,-1,0,600,602,1,0,0,0,601,596,1,0,0,0,602,605,1,0,0,
        0,603,601,1,0,0,0,603,604,1,0,0,0,604,93,1,0,0,0,605,603,1,0,0,0,
        606,607,3,92,46,0,607,608,6,47,-1,0,608,95,1,0,0,0,609,610,6,48,
        -1,0,610,611,3,100,50,0,611,612,6,48,-1,0,612,619,1,0,0,0,613,614,
        10,1,0,0,614,615,3,100,50,0,615,616,6,48,-1,0,616,618,1,0,0,0,617,
        613,1,0,0,0,618,621,1,0,0,0,619,617,1,0,0,0,619,620,1,0,0,0,620,
        97,1,0,0,0,621,619,1,0,0,0,622,623,3,96,48,0,623,624,6,49,-1,0,624,
        99,1,0,0,0,625,626,6,50,-1,0,626,627,3,102,51,0,627,628,6,50,-1,
        0,628,640,1,0,0,0,629,630,10,4,0,0,630,631,5,28,0,0,631,639,6,50,
        -1,0,632,633,10,3,0,0,633,634,5,7,0,0,634,639,6,50,-1,0,635,636,
        10,2,0,0,636,637,5,29,0,0,637,639,6,50,-1,0,638,629,1,0,0,0,638,
        632,1,0,0,0,638,635,1,0,0,0,639,642,1,0,0,0,640,638,1,0,0,0,640,
        641,1,0,0,0,641,101,1,0,0,0,642,640,1,0,0,0,643,644,5,39,0,0,644,
        667,6,51,-1,0,645,646,5,30,0,0,646,647,3,102,51,0,647,648,6,51,-1,
        0,648,667,1,0,0,0,649,650,5,3,0,0,650,651,3,94,47,0,651,652,5,4,
        0,0,652,653,6,51,-1,0,653,667,1,0,0,0,654,655,5,31,0,0,655,667,6,
        51,-1,0,656,657,5,34,0,0,657,667,6,51,-1,0,658,659,5,33,0,0,659,
        667,6,51,-1,0,660,661,5,32,0,0,661,667,6,51,-1,0,662,663,5,25,0,
        0,663,667,6,51,-1,0,664,665,5,35,0,0,665,667,6,51,-1,0,666,643,1,
        0,0,0,666,645,1,0,0,0,666,649,1,0,0,0,666,654,1,0,0,0,666,656,1,
        0,0,0,666,658,1,0,0,0,666,660,1,0,0,0,666,662,1,0,0,0,666,664,1,
        0,0,0,667,103,1,0,0,0,668,669,5,35,0,0,669,670,5,18,0,0,670,671,
        3,94,47,0,671,672,5,21,0,0,672,673,6,52,-1,0,673,105,1,0,0,0,37,
        120,140,147,167,180,195,209,221,234,247,256,274,281,292,320,333,
        349,368,382,396,409,416,438,455,473,480,512,526,533,549,581,589,
        603,619,638,640,666
    ];

    private static __ATN: antlr.ATN;
    public static get _ATN(): antlr.ATN {
        if (!TBNFParser.__ATN) {
            TBNFParser.__ATN = new antlr.ATNDeserializer().deserialize(TBNFParser._serializedATN);
        }

        return TBNFParser.__ATN;
    }


    private static readonly vocabulary = new antlr.Vocabulary(TBNFParser.literalNames, TBNFParser.symbolicNames, []);

    public override get vocabulary(): antlr.Vocabulary {
        return TBNFParser.vocabulary;
    }

    private static readonly decisionsToDFA = TBNFParser._ATN.decisionToState.map( (ds: antlr.DecisionState, index: number) => new antlr.DFA(ds, index) );
}

export class StartContext extends antlr.ParserRuleContext {
    public result: number;
    public _v?: Start__y_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public EOF(): antlr.TerminalNode {
        return this.getToken(TBNFParser.EOF, 0)!;
    }
    public start__y_(): Start__y_Context {
        return this.getRuleContext(0, Start__y_Context)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_start;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterStart) {
             listener.enterStart(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitStart) {
             listener.exitStart(this);
        }
    }
}


export class List_o_toplevel_p_Context extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_list_o_toplevel_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterList_o_toplevel_p_) {
             listener.enterList_o_toplevel_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitList_o_toplevel_p_) {
             listener.exitList_o_toplevel_p_(this);
        }
    }
}


export class Start__y_Context extends antlr.ParserRuleContext {
    public result: number;
    public _start__y__0__1?: List_o_toplevel_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public list_o_toplevel_p_(): List_o_toplevel_p_Context {
        return this.getRuleContext(0, List_o_toplevel_p_Context)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_start__y_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterStart__y_) {
             listener.enterStart__y_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitStart__y_) {
             listener.exitStart__y_(this);
        }
    }
}


export class TypContext extends antlr.ParserRuleContext {
    public result: number;
    public _typ_0__1?: Arrow_typContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public arrow_typ(): Arrow_typContext {
        return this.getRuleContext(0, Arrow_typContext)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_typ;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterTyp) {
             listener.enterTyp(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitTyp) {
             listener.exitTyp(this);
        }
    }
}


export class Slist_o__i__s__i__s_param_type_p_Context extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_slist_o__i__s__i__s_param_type_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_param_type_p_) {
             listener.enterSlist_o__i__s__i__s_param_type_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_param_type_p_) {
             listener.exitSlist_o__i__s__i__s_param_type_p_(this);
        }
    }
}


export class Empty_o_slist_o__i__s__i__s_param_type_p__p_Context extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_param_type_p_(): Slist_o__i__s__i__s_param_type_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_param_type_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_empty_o_slist_o__i__s__i__s_param_type_p__p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterEmpty_o_slist_o__i__s__i__s_param_type_p__p_) {
             listener.enterEmpty_o_slist_o__i__s__i__s_param_type_p__p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitEmpty_o_slist_o__i__s__i__s_param_type_p__p_) {
             listener.exitEmpty_o_slist_o__i__s__i__s_param_type_p__p_(this);
        }
    }
}


export class Eslist_o__i__s__i__s_param_type_p_Context extends antlr.ParserRuleContext {
    public result: number;
    public _eslist_o__i__s__i__s_param_type_p__0__1?: Empty_o_slist_o__i__s__i__s_param_type_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public empty_o_slist_o__i__s__i__s_param_type_p__p_(): Empty_o_slist_o__i__s__i__s_param_type_p__p_Context {
        return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_param_type_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_eslist_o__i__s__i__s_param_type_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterEslist_o__i__s__i__s_param_type_p_) {
             listener.enterEslist_o__i__s__i__s_param_type_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitEslist_o__i__s__i__s_param_type_p_) {
             listener.exitEslist_o__i__s__i__s_param_type_p_(this);
        }
    }
}


export class Arrow_typContext extends antlr.ParserRuleContext {
    public result: number;
    public _arrow_typ_0__2?: Token | null;
    public _arrow_typ_2__4?: Token | null;
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
        return TBNFParser.RULE_arrow_typ;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterArrow_typ) {
             listener.enterArrow_typ(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitArrow_typ) {
             listener.exitArrow_typ(this);
        }
    }
}


export class Slist_o__i__s__i__s_typ_p_Context extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_slist_o__i__s__i__s_typ_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_typ_p_) {
             listener.enterSlist_o__i__s__i__s_typ_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_typ_p_) {
             listener.exitSlist_o__i__s__i__s_typ_p_(this);
        }
    }
}


export class Typ2Context extends antlr.ParserRuleContext {
    public result: number;
    public _typ2_0__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.CNAMEPLUS, 0);
    }
    public typ2(): Typ2Context | null {
        return this.getRuleContext(0, Typ2Context);
    }
    public slist_o__i__s__i__s_typ_p_(): Slist_o__i__s__i__s_typ_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_typ_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_typ2;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterTyp2) {
             listener.enterTyp2(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitTyp2) {
             listener.exitTyp2(this);
        }
    }
}


export class Type_productContext extends antlr.ParserRuleContext {
    public result: number;
    public _type_product_0__2?: Token | null;
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
        return TBNFParser.RULE_type_product;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterType_product) {
             listener.enterType_product(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitType_product) {
             listener.exitType_product(this);
        }
    }
}


export class Top_typContext extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_top_typ;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterTop_typ) {
             listener.enterTop_typ(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitTop_typ) {
             listener.exitTop_typ(this);
        }
    }
}


export class Tvar_strContext extends antlr.ParserRuleContext {
    public result: number;
    public _tvar_str_0__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TBNFParser.CNAMEPLUS, 0)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_tvar_str;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterTvar_str) {
             listener.enterTvar_str(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitTvar_str) {
             listener.exitTvar_str(this);
        }
    }
}


export class Param_typeContext extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.CNAMEPLUS, 0);
    }
    public typ(): TypContext {
        return this.getRuleContext(0, TypContext)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_param_type;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterParam_type) {
             listener.enterParam_type(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitParam_type) {
             listener.exitParam_type(this);
        }
    }
}


export class Slist_o__i__s__i__s_tvar_str_p_Context extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_tvar_str_p_) {
             listener.enterSlist_o__i__s__i__s_tvar_str_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_tvar_str_p_) {
             listener.exitSlist_o__i__s__i__s_tvar_str_p_(this);
        }
    }
}


export class Type_paramsContext extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_tvar_str_p_(): Slist_o__i__s__i__s_tvar_str_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_tvar_str_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_type_params;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterType_params) {
             listener.enterType_params(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitType_params) {
             listener.exitType_params(this);
        }
    }
}


export class Field_annContext extends antlr.ParserRuleContext {
    public result: number;
    public _field_ann_0__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public typ(): TypContext {
        return this.getRuleContext(0, TypContext)!;
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TBNFParser.CNAMEPLUS, 0)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_field_ann;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterField_ann) {
             listener.enterField_ann(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitField_ann) {
             listener.exitField_ann(this);
        }
    }
}


export class Slist_o__i__s__i__s_field_ann_p_Context extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_field_ann_p_) {
             listener.enterSlist_o__i__s__i__s_field_ann_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_field_ann_p_) {
             listener.exitSlist_o__i__s__i__s_field_ann_p_(this);
        }
    }
}


export class Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_field_ann_p_(): Slist_o__i__s__i__s_field_ann_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_field_ann_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterEmpty_o_slist_o__i__s__i__s_field_ann_p__p_) {
             listener.enterEmpty_o_slist_o__i__s__i__s_field_ann_p__p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitEmpty_o_slist_o__i__s__i__s_field_ann_p__p_) {
             listener.exitEmpty_o_slist_o__i__s__i__s_field_ann_p__p_(this);
        }
    }
}


export class Eslist_o__i__s__i__s_field_ann_p_Context extends antlr.ParserRuleContext {
    public result: number;
    public _eslist_o__i__s__i__s_field_ann_p__0__1?: Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public empty_o_slist_o__i__s__i__s_field_ann_p__p_(): Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context {
        return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_eslist_o__i__s__i__s_field_ann_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterEslist_o__i__s__i__s_field_ann_p_) {
             listener.enterEslist_o__i__s__i__s_field_ann_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitEslist_o__i__s__i__s_field_ann_p_) {
             listener.exitEslist_o__i__s__i__s_field_ann_p_(this);
        }
    }
}


export class Field_annsContext extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public eslist_o__i__s__i__s_field_ann_p_(): Eslist_o__i__s__i__s_field_ann_p_Context | null {
        return this.getRuleContext(0, Eslist_o__i__s__i__s_field_ann_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_field_anns;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterField_anns) {
             listener.enterField_anns(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitField_anns) {
             listener.exitField_anns(this);
        }
    }
}


export class DeclContext extends antlr.ParserRuleContext {
    public result: number;
    public _decl_0__1?: Token | null;
    public _decl_0__2?: Token | null;
    public _decl_2__1?: Token | null;
    public _decl_2__2?: Token | null;
    public _decl_4__1?: Token | null;
    public _decl_4__2?: Token | null;
    public _decl_4__3?: Token | null;
    public _decl_6__1?: Token | null;
    public _decl_6__2?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TBNFParser.CNAMEPLUS, 0)!;
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
        return TBNFParser.RULE_decl;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterDecl) {
             listener.enterDecl(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitDecl) {
             listener.exitDecl(this);
        }
    }
}


export class Slist_o__i__s__i__s_ignore_item_p_Context extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public ignore_item(): Ignore_itemContext {
        return this.getRuleContext(0, Ignore_itemContext)!;
    }
    public slist_o__i__s__i__s_ignore_item_p_(): Slist_o__i__s__i__s_ignore_item_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_ignore_item_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_slist_o__i__s__i__s_ignore_item_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_ignore_item_p_) {
             listener.enterSlist_o__i__s__i__s_ignore_item_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_ignore_item_p_) {
             listener.exitSlist_o__i__s__i__s_ignore_item_p_(this);
        }
    }
}


export class ToplevelContext extends antlr.ParserRuleContext {
    public result: number;
    public _toplevel_6__1?: Token | null;
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
    public slist_o__i__s__i__s_ignore_item_p_(): Slist_o__i__s__i__s_ignore_item_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_ignore_item_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_toplevel;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterToplevel) {
             listener.enterToplevel(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitToplevel) {
             listener.exitToplevel(this);
        }
    }
}


export class Ignore_itemContext extends antlr.ParserRuleContext {
    public result: number;
    public _ignore_item_0__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TBNFParser.CNAMEPLUS, 0)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_ignore_item;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterIgnore_item) {
             listener.enterIgnore_item(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitIgnore_item) {
             listener.exitIgnore_item(this);
        }
    }
}


export class Macro_varContext extends antlr.ParserRuleContext {
    public result: number;
    public _macro_var_0__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TBNFParser.CNAMEPLUS, 0)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_macro_var;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterMacro_var) {
             listener.enterMacro_var(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitMacro_var) {
             listener.exitMacro_var(this);
        }
    }
}


export class Slist_o__i__s__i__s_macro_var_p_Context extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public macro_var(): Macro_varContext {
        return this.getRuleContext(0, Macro_varContext)!;
    }
    public slist_o__i__s__i__s_macro_var_p_(): Slist_o__i__s__i__s_macro_var_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_macro_var_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_slist_o__i__s__i__s_macro_var_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_macro_var_p_) {
             listener.enterSlist_o__i__s__i__s_macro_var_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_macro_var_p_) {
             listener.exitSlist_o__i__s__i__s_macro_var_p_(this);
        }
    }
}


export class DefContext extends antlr.ParserRuleContext {
    public result: number;
    public _def_0__1?: Token | null;
    public _def_2__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_macro_var_p_(): Slist_o__i__s__i__s_macro_var_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_macro_var_p_Context);
    }
    public productions(): ProductionsContext {
        return this.getRuleContext(0, ProductionsContext)!;
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TBNFParser.CNAMEPLUS, 0)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_def;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterDef) {
             listener.enterDef(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitDef) {
             listener.exitDef(this);
        }
    }
}


export class ProductionsContext extends antlr.ParserRuleContext {
    public result: number;
    public _productions_0__1?: Token | null;
    public _productions_2__2?: Token | null;
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
        return TBNFParser.RULE_productions;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterProductions) {
             listener.enterProductions(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitProductions) {
             listener.exitProductions(this);
        }
    }
}


export class List_o_psym_p_Context extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_list_o_psym_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterList_o_psym_p_) {
             listener.enterList_o_psym_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitList_o_psym_p_) {
             listener.exitList_o_psym_p_(this);
        }
    }
}


export class Empty_o_list_o_psym_p__p_Context extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public list_o_psym_p_(): List_o_psym_p_Context | null {
        return this.getRuleContext(0, List_o_psym_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_empty_o_list_o_psym_p__p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterEmpty_o_list_o_psym_p__p_) {
             listener.enterEmpty_o_list_o_psym_p__p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitEmpty_o_list_o_psym_p__p_) {
             listener.exitEmpty_o_list_o_psym_p__p_(this);
        }
    }
}


export class Elist_o_psym_p_Context extends antlr.ParserRuleContext {
    public result: number;
    public _elist_o_psym_p__0__1?: Empty_o_list_o_psym_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public empty_o_list_o_psym_p__p_(): Empty_o_list_o_psym_p__p_Context {
        return this.getRuleContext(0, Empty_o_list_o_psym_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_elist_o_psym_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterElist_o_psym_p_) {
             listener.enterElist_o_psym_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitElist_o_psym_p_) {
             listener.exitElist_o_psym_p_(this);
        }
    }
}


export class ProductionContext extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_production;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterProduction) {
             listener.enterProduction(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitProduction) {
             listener.exitProduction(this);
        }
    }
}


export class Slist_o__i__s__i__s_psym_p_Context extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_slist_o__i__s__i__s_psym_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_psym_p_) {
             listener.enterSlist_o__i__s__i__s_psym_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_psym_p_) {
             listener.exitSlist_o__i__s__i__s_psym_p_(this);
        }
    }
}


export class PsymContext extends antlr.ParserRuleContext {
    public result: number;
    public _psym_0__2?: Token | null;
    public _psym_2__1?: Token | null;
    public _psym_4__1?: Token | null;
    public _psym_6__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public CNAMEPLUS(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.CNAMEPLUS, 0);
    }
    public ESCAPED_STRING(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.ESCAPED_STRING, 0);
    }
    public slist_o__i__s__i__s_psym_p_(): Slist_o__i__s__i__s_psym_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_psym_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_psym;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterPsym) {
             listener.enterPsym(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitPsym) {
             listener.exitPsym(this);
        }
    }
}


export class AnnContext extends antlr.ParserRuleContext {
    public result: number;
    public _ann_0__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public typ(): TypContext {
        return this.getRuleContext(0, TypContext)!;
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TBNFParser.CNAMEPLUS, 0)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_ann;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterAnn) {
             listener.enterAnn(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitAnn) {
             listener.exitAnn(this);
        }
    }
}


export class Slist_o__i__s__i__s_ann_p_Context extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_slist_o__i__s__i__s_ann_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_ann_p_) {
             listener.enterSlist_o__i__s__i__s_ann_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_ann_p_) {
             listener.exitSlist_o__i__s__i__s_ann_p_(this);
        }
    }
}


export class Empty_o_slist_o__i__s__i__s_ann_p__p_Context extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_ann_p_(): Slist_o__i__s__i__s_ann_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_ann_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_empty_o_slist_o__i__s__i__s_ann_p__p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterEmpty_o_slist_o__i__s__i__s_ann_p__p_) {
             listener.enterEmpty_o_slist_o__i__s__i__s_ann_p__p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitEmpty_o_slist_o__i__s__i__s_ann_p__p_) {
             listener.exitEmpty_o_slist_o__i__s__i__s_ann_p__p_(this);
        }
    }
}


export class Eslist_o__i__s__i__s_ann_p_Context extends antlr.ParserRuleContext {
    public result: number;
    public _eslist_o__i__s__i__s_ann_p__0__1?: Empty_o_slist_o__i__s__i__s_ann_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public empty_o_slist_o__i__s__i__s_ann_p__p_(): Empty_o_slist_o__i__s__i__s_ann_p__p_Context {
        return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_ann_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_eslist_o__i__s__i__s_ann_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterEslist_o__i__s__i__s_ann_p_) {
             listener.enterEslist_o__i__s__i__s_ann_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitEslist_o__i__s__i__s_ann_p_) {
             listener.exitEslist_o__i__s__i__s_ann_p_(this);
        }
    }
}


export class Func_parametersContext extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public eslist_o__i__s__i__s_ann_p_(): Eslist_o__i__s__i__s_ann_p_Context {
        return this.getRuleContext(0, Eslist_o__i__s__i__s_ann_p_Context)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_func_parameters;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterFunc_parameters) {
             listener.enterFunc_parameters(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitFunc_parameters) {
             listener.exitFunc_parameters(this);
        }
    }
}


export class ExprContext extends antlr.ParserRuleContext {
    public result: number;
    public _expr_0__1?: Token | null;
    public _expr_0__2?: Token | null;
    public _expr_0__3?: Token | null;
    public _expr_0__5?: Token | null;
    public _expr_2__1?: Token | null;
    public _expr_2__3?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public expr(): ExprContext[];
    public expr(i: number): ExprContext | null;
    public expr(i?: number): ExprContext[] | ExprContext | null {
        if (i === undefined) {
            return this.getRuleContexts(ExprContext);
        }

        return this.getRuleContext(i, ExprContext);
    }
    public CNAMEPLUS(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.CNAMEPLUS, 0);
    }
    public func_parameters(): Func_parametersContext | null {
        return this.getRuleContext(0, Func_parametersContext);
    }
    public call(): CallContext | null {
        return this.getRuleContext(0, CallContext);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_expr;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterExpr) {
             listener.enterExpr(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitExpr) {
             listener.exitExpr(this);
        }
    }
}


export class CallContext extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_call;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterCall) {
             listener.enterCall(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitCall) {
             listener.exitCall(this);
        }
    }
}


export class Empty_o_slist_o__i__s__i__s_expr_p__p_Context extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__s__i__s_expr_p_(): Slist_o__i__s__i__s_expr_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_expr_p_Context);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_empty_o_slist_o__i__s__i__s_expr_p__p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterEmpty_o_slist_o__i__s__i__s_expr_p__p_) {
             listener.enterEmpty_o_slist_o__i__s__i__s_expr_p__p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitEmpty_o_slist_o__i__s__i__s_expr_p__p_) {
             listener.exitEmpty_o_slist_o__i__s__i__s_expr_p__p_(this);
        }
    }
}


export class Eslist_o__i__s__i__s_expr_p_Context extends antlr.ParserRuleContext {
    public result: number;
    public _eslist_o__i__s__i__s_expr_p__0__1?: Empty_o_slist_o__i__s__i__s_expr_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public empty_o_slist_o__i__s__i__s_expr_p__p_(): Empty_o_slist_o__i__s__i__s_expr_p__p_Context {
        return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_expr_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_eslist_o__i__s__i__s_expr_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterEslist_o__i__s__i__s_expr_p_) {
             listener.enterEslist_o__i__s__i__s_expr_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitEslist_o__i__s__i__s_expr_p_) {
             listener.exitEslist_o__i__s__i__s_expr_p_(this);
        }
    }
}


export class Slist_o__i__s__i__s_expr_p_Context extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_slist_o__i__s__i__s_expr_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterSlist_o__i__s__i__s_expr_p_) {
             listener.enterSlist_o__i__s__i__s_expr_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitSlist_o__i__s__i__s_expr_p_) {
             listener.exitSlist_o__i__s__i__s_expr_p_(this);
        }
    }
}


export class AtomexpContext extends antlr.ParserRuleContext {
    public result: number;
    public _atomexp_0__1?: Token | null;
    public _atomexp_2__1?: Token | null;
    public _atomexp_4__1?: Token | null;
    public _atomexp_6__1?: Token | null;
    public _atomexp_6__2?: Token | null;
    public _atomexp_14__1?: Token | null;
    public _atomexp_18__1?: Token | null;
    public _atomexp_20__1?: Token | null;
    public _atomexp_16__3?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public INT(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.INT, 0);
    }
    public FLOAT(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.FLOAT, 0);
    }
    public ESCAPED_STRING(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.ESCAPED_STRING, 0);
    }
    public eslist_o__i__s__i__s_expr_p_(): Eslist_o__i__s__i__s_expr_p_Context | null {
        return this.getRuleContext(0, Eslist_o__i__s__i__s_expr_p_Context);
    }
    public slist_o__i__s__i__s_expr_p_(): Slist_o__i__s__i__s_expr_p_Context | null {
        return this.getRuleContext(0, Slist_o__i__s__i__s_expr_p_Context);
    }
    public CNAMEPLUS(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.CNAMEPLUS, 0);
    }
    public atomexp(): AtomexpContext | null {
        return this.getRuleContext(0, AtomexpContext);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_atomexp;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterAtomexp) {
             listener.enterAtomexp(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitAtomexp) {
             listener.exitAtomexp(this);
        }
    }
}


export class Slist_o__i__u__i__s_lexer_and_p_Context extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterSlist_o__i__u__i__s_lexer_and_p_) {
             listener.enterSlist_o__i__u__i__s_lexer_and_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitSlist_o__i__u__i__s_lexer_and_p_) {
             listener.exitSlist_o__i__u__i__s_lexer_and_p_(this);
        }
    }
}


export class Lexer__y_Context extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public slist_o__i__u__i__s_lexer_and_p_(): Slist_o__i__u__i__s_lexer_and_p_Context {
        return this.getRuleContext(0, Slist_o__i__u__i__s_lexer_and_p_Context)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_lexer__y_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterLexer__y_) {
             listener.enterLexer__y_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitLexer__y_) {
             listener.exitLexer__y_(this);
        }
    }
}


export class List_o_lexer_atomexpr_p_Context extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_list_o_lexer_atomexpr_p_;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterList_o_lexer_atomexpr_p_) {
             listener.enterList_o_lexer_atomexpr_p_(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitList_o_lexer_atomexpr_p_) {
             listener.exitList_o_lexer_atomexpr_p_(this);
        }
    }
}


export class Lexer_andContext extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public list_o_lexer_atomexpr_p_(): List_o_lexer_atomexpr_p_Context {
        return this.getRuleContext(0, List_o_lexer_atomexpr_p_Context)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_lexer_and;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterLexer_and) {
             listener.enterLexer_and(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitLexer_and) {
             listener.exitLexer_and(this);
        }
    }
}


export class Lexer_atomexprContext extends antlr.ParserRuleContext {
    public result: number;
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
        return TBNFParser.RULE_lexer_atomexpr;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterLexer_atomexpr) {
             listener.enterLexer_atomexpr(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitLexer_atomexpr) {
             listener.exitLexer_atomexpr(this);
        }
    }
}


export class Lexer_atomContext extends antlr.ParserRuleContext {
    public result: number;
    public _lexer_atom_0__1?: Token | null;
    public _lexer_atom_6__1?: Token | null;
    public _lexer_atom_8__1?: Token | null;
    public _lexer_atom_10__1?: Token | null;
    public _lexer_atom_12__1?: Token | null;
    public _lexer_atom_14__1?: Token | null;
    public _lexer_atom_16__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public ESCAPED_STRING(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.ESCAPED_STRING, 0);
    }
    public lexer_atom(): Lexer_atomContext | null {
        return this.getRuleContext(0, Lexer_atomContext);
    }
    public lexer__y_(): Lexer__y_Context | null {
        return this.getRuleContext(0, Lexer__y_Context);
    }
    public RANGE(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.RANGE, 0);
    }
    public UNICODE_RANGE(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.UNICODE_RANGE, 0);
    }
    public CNAMEPLUS(): antlr.TerminalNode | null {
        return this.getToken(TBNFParser.CNAMEPLUS, 0);
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_lexer_atom;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterLexer_atom) {
             listener.enterLexer_atom(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitLexer_atom) {
             listener.exitLexer_atom(this);
        }
    }
}


export class LexerdefContext extends antlr.ParserRuleContext {
    public result: number;
    public _lexerdef_0__1?: Token | null;
    public _lexerdef_0__2?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public lexer__y_(): Lexer__y_Context {
        return this.getRuleContext(0, Lexer__y_Context)!;
    }
    public CNAMEPLUS(): antlr.TerminalNode {
        return this.getToken(TBNFParser.CNAMEPLUS, 0)!;
    }
    public override get ruleIndex(): number {
        return TBNFParser.RULE_lexerdef;
    }
    public override enterRule(listener: TBNFListener): void {
        if(listener.enterLexerdef) {
             listener.enterLexerdef(this);
        }
    }
    public override exitRule(listener: TBNFListener): void {
        if(listener.exitLexerdef) {
             listener.exitLexerdef(this);
        }
    }
}
