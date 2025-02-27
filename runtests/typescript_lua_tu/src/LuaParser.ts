
import * as antlr from "antlr4ng";
import { Token } from "antlr4ng";

import { LuaListener } from "./LuaListener.js";
// for running tests with parameters, TODO: discuss strategy for typed parameters in CI
// eslint-disable-next-line no-unused-vars
type int = number;


import { DotName, MethodName, VarName, funcname_t, PositionalArgs, StringArg, TableArgs, arguments_t, TableConstructor, table_t, ElementField, IndexField, NameField, table_field_t, Assignment, BreakStmt, DoStmt, EmptyStmt, ExprStmt, ForInStmt, ForRangeStmt, GotoStmt, IfStmt, LabelStmt, RepeatStmt, ReturnStmt, WhileStmt, stmt_t, Attr, Bin, Bool, CallFunc, CallMethod, Ellipse, Exponent, FuncDef, Index, Inv, Len, Neg, NestedExp, Nil, Not, Num, String, TableExpr, UnsolvedBin, Var, expr_t, block_t, block, range_t, range, if_elseif_t, if_elseif, if_else_t, if_else, params_t, params, op_t, maybe_t, mkBinOpSeq, mkOperand, mkOperator, none, some, listMap, appendList } from "./LuaConstructor"


export class LuaParser extends antlr.Parser {
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
    public static readonly T__32 = 33;
    public static readonly T__33 = 34;
    public static readonly T__34 = 35;
    public static readonly T__35 = 36;
    public static readonly T__36 = 37;
    public static readonly T__37 = 38;
    public static readonly T__38 = 39;
    public static readonly T__39 = 40;
    public static readonly T__40 = 41;
    public static readonly T__41 = 42;
    public static readonly T__42 = 43;
    public static readonly T__43 = 44;
    public static readonly T__44 = 45;
    public static readonly T__45 = 46;
    public static readonly T__46 = 47;
    public static readonly T__47 = 48;
    public static readonly T__48 = 49;
    public static readonly T__49 = 50;
    public static readonly T__50 = 51;
    public static readonly T__51 = 52;
    public static readonly T__52 = 53;
    public static readonly T__53 = 54;
    public static readonly T__54 = 55;
    public static readonly LINE_COMMENT = 56;
    public static readonly SPACE = 57;
    public static readonly NAME = 58;
    public static readonly NUMERAL = 59;
    public static readonly STR_LIT = 60;
    public static readonly NESTED_STR = 61;
    public static readonly RULE_start = 0;
    public static readonly RULE_start__y_ = 1;
    public static readonly RULE_nempty_list_o_stat_p_ = 2;
    public static readonly RULE_allow_empty_o_nempty_list_o_stat_p__p_ = 3;
    public static readonly RULE_list_o_stat_p_ = 4;
    public static readonly RULE_opt_o_retstat_p_ = 5;
    public static readonly RULE_block = 6;
    public static readonly RULE_opt_o__i__h__i__p_ = 7;
    public static readonly RULE_retstat = 8;
    public static readonly RULE_nempty_list_o_elseif_p_ = 9;
    public static readonly RULE_allow_empty_o_nempty_list_o_elseif_p__p_ = 10;
    public static readonly RULE_list_o_elseif_p_ = 11;
    public static readonly RULE_opt_o_else_p_ = 12;
    public static readonly RULE_stat = 13;
    public static readonly RULE_opt_assign_rhs = 14;
    public static readonly RULE_range = 15;
    public static readonly RULE_range_tail = 16;
    public static readonly RULE_elseif = 17;
    public static readonly RULE_else__x_ = 18;
    public static readonly RULE_exp = 19;
    public static readonly RULE_binexp = 20;
    public static readonly RULE_binseq = 21;
    public static readonly RULE_binoperand = 22;
    public static readonly RULE_unaryexp = 23;
    public static readonly RULE_exponent = 24;
    public static readonly RULE_prefixexp = 25;
    public static readonly RULE_atom = 26;
    public static readonly RULE_nempty_seplist_o__i__s__i__s_exp_p_ = 27;
    public static readonly RULE_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_ = 28;
    public static readonly RULE_seplist_o__i__s__i__s_exp_p_ = 29;
    public static readonly RULE_args = 30;
    public static readonly RULE_opt_o_funcname_p_ = 31;
    public static readonly RULE_opt_o_parlist_p_ = 32;
    public static readonly RULE_functiondef = 33;
    public static readonly RULE_varargs = 34;
    public static readonly RULE_nempty_seplist_o__i__s__i__s__i_name_k__p_ = 35;
    public static readonly RULE_parlist = 36;
    public static readonly RULE_nempty_seplist_o_fieldsep_s_field_p_ = 37;
    public static readonly RULE_opt_o_fieldsep_p_ = 38;
    public static readonly RULE_tableconstructor = 39;
    public static readonly RULE_funcname = 40;
    public static readonly RULE_field = 41;
    public static readonly RULE_fieldsep = 42;
    public static readonly RULE_binop = 43;

    public static readonly literalNames = [
        null, "';'", "'return'", "'='", "'::'", "'break'", "'goto'", "'do'", 
        "'end'", "'while'", "'repeat'", "'until'", "'if'", "'then'", "'for'", 
        "'in'", "'local'", "'function'", "'('", "')'", "','", "'elseif'", 
        "'else'", "'#'", "'-'", "'~'", "'not'", "'^'", "':'", "'['", "']'", 
        "'.'", "'nil'", "'false'", "'true'", "'...'", "'{'", "'}'", "'or'", 
        "'and'", "'<'", "'>'", "'<='", "'>='", "'~='", "'=='", "'|'", "'&'", 
        "'<<'", "'>>'", "'..'", "'+'", "'*'", "'/'", "'//'", "'%'"
    ];

    public static readonly symbolicNames = [
        null, null, null, null, null, null, null, null, null, null, null, 
        null, null, null, null, null, null, null, null, null, null, null, 
        null, null, null, null, null, null, null, null, null, null, null, 
        null, null, null, null, null, null, null, null, null, null, null, 
        null, null, null, null, null, null, null, null, null, null, null, 
        null, "LINE_COMMENT", "SPACE", "NAME", "NUMERAL", "STR_LIT", "NESTED_STR"
    ];
    public static readonly ruleNames = [
        "start", "start__y_", "nempty_list_o_stat_p_", "allow_empty_o_nempty_list_o_stat_p__p_", 
        "list_o_stat_p_", "opt_o_retstat_p_", "block", "opt_o__i__h__i__p_", 
        "retstat", "nempty_list_o_elseif_p_", "allow_empty_o_nempty_list_o_elseif_p__p_", 
        "list_o_elseif_p_", "opt_o_else_p_", "stat", "opt_assign_rhs", "range", 
        "range_tail", "elseif", "else__x_", "exp", "binexp", "binseq", "binoperand", 
        "unaryexp", "exponent", "prefixexp", "atom", "nempty_seplist_o__i__s__i__s_exp_p_", 
        "allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_", "seplist_o__i__s__i__s_exp_p_", 
        "args", "opt_o_funcname_p_", "opt_o_parlist_p_", "functiondef", 
        "varargs", "nempty_seplist_o__i__s__i__s__i_name_k__p_", "parlist", 
        "nempty_seplist_o_fieldsep_s_field_p_", "opt_o_fieldsep_p_", "tableconstructor", 
        "funcname", "field", "fieldsep", "binop",
    ];

    public get grammarFileName(): string { return "Lua.g4"; }
    public get literalNames(): (string | null)[] { return LuaParser.literalNames; }
    public get symbolicNames(): (string | null)[] { return LuaParser.symbolicNames; }
    public get ruleNames(): string[] { return LuaParser.ruleNames; }
    public get serializedATN(): number[] { return LuaParser._serializedATN; }

    protected createFailedPredicateException(predicate?: string, message?: string): antlr.FailedPredicateException {
        return new antlr.FailedPredicateException(this, predicate, message);
    }

    public constructor(input: antlr.TokenStream) {
        super(input);
        this.interpreter = new antlr.ParserATNSimulator(this, LuaParser._ATN, LuaParser.decisionsToDFA, new antlr.PredictionContextCache());
    }
    public start(): StartContext {
        let localContext = new StartContext(this.context, this.state);
        this.enterRule(localContext, 0, LuaParser.RULE_start);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 88;
            localContext._v = this.start__y_();
            this.state = 89;
            this.match(LuaParser.EOF);
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
    public start__y_(): Start__y_Context {
        let localContext = new Start__y_Context(this.context, this.state);
        this.enterRule(localContext, 2, LuaParser.RULE_start__y_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 92;
            localContext._start__y__0__1 = this.block();
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

    public nempty_list_o_stat_p_(): Nempty_list_o_stat_p_Context;
    public nempty_list_o_stat_p_(_p: number): Nempty_list_o_stat_p_Context;
    public nempty_list_o_stat_p_(_p?: number): Nempty_list_o_stat_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Nempty_list_o_stat_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 4;
        this.enterRecursionRule(localContext, 4, LuaParser.RULE_nempty_list_o_stat_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 96;
            localContext._nempty_list_o_stat_p__0__1 = this.stat();
             localContext!.result = <Array<stmt_t>>[ localContext._nempty_list_o_stat_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 105;
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
                    localContext = new Nempty_list_o_stat_p_Context(parentContext, parentState);
                    localContext._nempty_list_o_stat_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_nempty_list_o_stat_p_);
                    this.state = 99;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 100;
                    localContext._nempty_list_o_stat_p__2__2 = this.stat();
                     localContext!.result = <Array<stmt_t>> appendList<stmt_t>(<Array<stmt_t>> localContext._nempty_list_o_stat_p__2__1.result, <stmt_t> localContext._nempty_list_o_stat_p__2__2.result);
                                          
                    }
                    }
                }
                this.state = 107;
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
    public allow_empty_o_nempty_list_o_stat_p__p_(): Allow_empty_o_nempty_list_o_stat_p__p_Context {
        let localContext = new Allow_empty_o_nempty_list_o_stat_p__p_Context(this.context, this.state);
        this.enterRule(localContext, 6, LuaParser.RULE_allow_empty_o_nempty_list_o_stat_p__p_);
        try {
            this.state = 112;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 1, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = <Array<stmt_t>>[  ];
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 109;
                localContext._allow_empty_o_nempty_list_o_stat_p__p__2__1 = this.nempty_list_o_stat_p_(0);
                 localContext!.result = localContext._allow_empty_o_nempty_list_o_stat_p__p__2__1.result;
                            
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
    public list_o_stat_p_(): List_o_stat_p_Context {
        let localContext = new List_o_stat_p_Context(this.context, this.state);
        this.enterRule(localContext, 8, LuaParser.RULE_list_o_stat_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 114;
            localContext._list_o_stat_p__0__1 = this.allow_empty_o_nempty_list_o_stat_p__p_();
             localContext!.result = localContext._list_o_stat_p__0__1.result;
                        
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
    public opt_o_retstat_p_(): Opt_o_retstat_p_Context {
        let localContext = new Opt_o_retstat_p_Context(this.context, this.state);
        this.enterRule(localContext, 10, LuaParser.RULE_opt_o_retstat_p_);
        try {
            this.state = 121;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 2, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 117;
                localContext._opt_o_retstat_p__0__1 = this.retstat();
                 localContext!.result = <maybe_t<stmt_t>> some<stmt_t>(<stmt_t> localContext._opt_o_retstat_p__0__1.result);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = <maybe_t<stmt_t>> none<stmt_t>();
                            
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
    public block(): BlockContext {
        let localContext = new BlockContext(this.context, this.state);
        this.enterRule(localContext, 12, LuaParser.RULE_block);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 123;
            localContext._block_0__1 = this.list_o_stat_p_();
            this.state = 124;
            localContext._block_0__2 = this.opt_o_retstat_p_();
             localContext!.result = <block_t> block(<Array<stmt_t>> localContext._block_0__1.result, <maybe_t<stmt_t>> localContext._block_0__2.result);
                        
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
    public opt_o__i__h__i__p_(): Opt_o__i__h__i__p_Context {
        let localContext = new Opt_o__i__h__i__p_Context(this.context, this.state);
        this.enterRule(localContext, 14, LuaParser.RULE_opt_o__i__h__i__p_);
        try {
            this.state = 130;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 3, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 127;
                localContext._opt_o__i__h__i__p__0__1 = this.match(LuaParser.T__0);
                 localContext!.result = <maybe_t<antlr.Token>> some<antlr.Token>(<antlr.Token> localContext._opt_o__i__h__i__p__0__1);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = <maybe_t<antlr.Token>> none<antlr.Token>();
                            
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
    public retstat(): RetstatContext {
        let localContext = new RetstatContext(this.context, this.state);
        this.enterRule(localContext, 16, LuaParser.RULE_retstat);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 132;
            localContext._retstat_0__1 = this.match(LuaParser.T__1);
            this.state = 133;
            localContext._retstat_0__2 = this.seplist_o__i__s__i__s_exp_p_();
            this.state = 134;
            this.opt_o__i__h__i__p_();
             localContext!.result = <stmt_t> ReturnStmt(<antlr.Token> localContext._retstat_0__1, <Array<expr_t>> localContext._retstat_0__2.result);
                        
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

    public nempty_list_o_elseif_p_(): Nempty_list_o_elseif_p_Context;
    public nempty_list_o_elseif_p_(_p: number): Nempty_list_o_elseif_p_Context;
    public nempty_list_o_elseif_p_(_p?: number): Nempty_list_o_elseif_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Nempty_list_o_elseif_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 18;
        this.enterRecursionRule(localContext, 18, LuaParser.RULE_nempty_list_o_elseif_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 138;
            localContext._nempty_list_o_elseif_p__0__1 = this.elseif();
             localContext!.result = <Array<if_elseif_t>>[ localContext._nempty_list_o_elseif_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 147;
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
                    localContext = new Nempty_list_o_elseif_p_Context(parentContext, parentState);
                    localContext._nempty_list_o_elseif_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_nempty_list_o_elseif_p_);
                    this.state = 141;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 142;
                    localContext._nempty_list_o_elseif_p__2__2 = this.elseif();
                     localContext!.result = <Array<if_elseif_t>> appendList<if_elseif_t>(<Array<if_elseif_t>> localContext._nempty_list_o_elseif_p__2__1.result, <if_elseif_t> localContext._nempty_list_o_elseif_p__2__2.result);
                                          
                    }
                    }
                }
                this.state = 149;
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
    public allow_empty_o_nempty_list_o_elseif_p__p_(): Allow_empty_o_nempty_list_o_elseif_p__p_Context {
        let localContext = new Allow_empty_o_nempty_list_o_elseif_p__p_Context(this.context, this.state);
        this.enterRule(localContext, 20, LuaParser.RULE_allow_empty_o_nempty_list_o_elseif_p__p_);
        try {
            this.state = 154;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__7:
            case LuaParser.T__21:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = <Array<if_elseif_t>>[  ];
                            
                }
                break;
            case LuaParser.T__20:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 151;
                localContext._allow_empty_o_nempty_list_o_elseif_p__p__2__1 = this.nempty_list_o_elseif_p_(0);
                 localContext!.result = localContext._allow_empty_o_nempty_list_o_elseif_p__p__2__1.result;
                            
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
    public list_o_elseif_p_(): List_o_elseif_p_Context {
        let localContext = new List_o_elseif_p_Context(this.context, this.state);
        this.enterRule(localContext, 22, LuaParser.RULE_list_o_elseif_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 156;
            localContext._list_o_elseif_p__0__1 = this.allow_empty_o_nempty_list_o_elseif_p__p_();
             localContext!.result = localContext._list_o_elseif_p__0__1.result;
                        
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
    public opt_o_else_p_(): Opt_o_else_p_Context {
        let localContext = new Opt_o_else_p_Context(this.context, this.state);
        this.enterRule(localContext, 24, LuaParser.RULE_opt_o_else_p_);
        try {
            this.state = 163;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__21:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 159;
                localContext._opt_o_else_p__0__1 = this.else__x_();
                 localContext!.result = <maybe_t<if_else_t>> some<if_else_t>(<if_else_t> localContext._opt_o_else_p__0__1.result);
                            
                }
                break;
            case LuaParser.T__7:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = <maybe_t<if_else_t>> none<if_else_t>();
                            
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
    public stat(): StatContext {
        let localContext = new StatContext(this.context, this.state);
        this.enterRule(localContext, 26, LuaParser.RULE_stat);
        try {
            this.state = 244;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 7, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 165;
                localContext._stat_0__1 = this.match(LuaParser.T__0);
                 localContext!.result = <stmt_t> EmptyStmt(<antlr.Token> localContext._stat_0__1);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 167;
                localContext._stat_2__1 = this.nempty_seplist_o__i__s__i__s_exp_p_(0);
                this.state = 168;
                this.match(LuaParser.T__2);
                this.state = 169;
                localContext._stat_2__3 = this.nempty_seplist_o__i__s__i__s_exp_p_(0);
                 localContext!.result = <stmt_t> Assignment(<boolean> false, <Array<expr_t>> localContext._stat_2__1.result, <maybe_t<Array<expr_t>>> <maybe_t<Array<expr_t>>> some<Array<expr_t>>(<Array<expr_t>> localContext._stat_2__3.result));
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 172;
                localContext._stat_4__1 = this.exp();
                 localContext!.result = <stmt_t> ExprStmt(<expr_t> localContext._stat_4__1.result);
                            
                }
                break;
            case 4:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 175;
                this.match(LuaParser.T__3);
                this.state = 176;
                localContext._stat_6__2 = this.match(LuaParser.NAME);
                this.state = 177;
                this.match(LuaParser.T__3);
                 localContext!.result = <stmt_t> LabelStmt(<antlr.Token> localContext._stat_6__2);
                            
                }
                break;
            case 5:
                this.enterOuterAlt(localContext, 5);
                {
                this.state = 179;
                localContext._stat_8__1 = this.match(LuaParser.T__4);
                 localContext!.result = <stmt_t> BreakStmt(<antlr.Token> localContext._stat_8__1);
                            
                }
                break;
            case 6:
                this.enterOuterAlt(localContext, 6);
                {
                this.state = 181;
                localContext._stat_10__1 = this.match(LuaParser.T__5);
                this.state = 182;
                localContext._stat_10__2 = this.match(LuaParser.NAME);
                 localContext!.result = <stmt_t> GotoStmt(<antlr.Token> localContext._stat_10__1, <antlr.Token> localContext._stat_10__2);
                            
                }
                break;
            case 7:
                this.enterOuterAlt(localContext, 7);
                {
                this.state = 184;
                localContext._stat_12__1 = this.match(LuaParser.T__6);
                this.state = 185;
                localContext._stat_12__2 = this.block();
                this.state = 186;
                this.match(LuaParser.T__7);
                 localContext!.result = <stmt_t> DoStmt(<antlr.Token> localContext._stat_12__1, <block_t> localContext._stat_12__2.result);
                            
                }
                break;
            case 8:
                this.enterOuterAlt(localContext, 8);
                {
                this.state = 189;
                localContext._stat_14__1 = this.match(LuaParser.T__8);
                this.state = 190;
                localContext._stat_14__2 = this.exp();
                this.state = 191;
                this.match(LuaParser.T__6);
                this.state = 192;
                localContext._stat_14__4 = this.block();
                this.state = 193;
                this.match(LuaParser.T__7);
                 localContext!.result = <stmt_t> WhileStmt(<antlr.Token> localContext._stat_14__1, <expr_t> localContext._stat_14__2.result, <block_t> localContext._stat_14__4.result);
                            
                }
                break;
            case 9:
                this.enterOuterAlt(localContext, 9);
                {
                this.state = 196;
                localContext._stat_16__1 = this.match(LuaParser.T__9);
                this.state = 197;
                localContext._stat_16__2 = this.block();
                this.state = 198;
                this.match(LuaParser.T__10);
                this.state = 199;
                localContext._stat_16__4 = this.exp();
                 localContext!.result = <stmt_t> RepeatStmt(<antlr.Token> localContext._stat_16__1, <block_t> localContext._stat_16__2.result, <expr_t> localContext._stat_16__4.result);
                            
                }
                break;
            case 10:
                this.enterOuterAlt(localContext, 10);
                {
                this.state = 202;
                localContext._stat_18__1 = this.match(LuaParser.T__11);
                this.state = 203;
                localContext._stat_18__2 = this.exp();
                this.state = 204;
                this.match(LuaParser.T__12);
                this.state = 205;
                localContext._stat_18__4 = this.block();
                this.state = 206;
                localContext._stat_18__5 = this.list_o_elseif_p_();
                this.state = 207;
                localContext._stat_18__6 = this.opt_o_else_p_();
                this.state = 208;
                this.match(LuaParser.T__7);
                 localContext!.result = <stmt_t> IfStmt(<antlr.Token> localContext._stat_18__1, <expr_t> localContext._stat_18__2.result, <block_t> localContext._stat_18__4.result, <Array<if_elseif_t>> localContext._stat_18__5.result, <maybe_t<if_else_t>> localContext._stat_18__6.result);
                            
                }
                break;
            case 11:
                this.enterOuterAlt(localContext, 11);
                {
                this.state = 211;
                localContext._stat_20__1 = this.match(LuaParser.T__13);
                this.state = 212;
                localContext._stat_20__2 = this.match(LuaParser.NAME);
                this.state = 213;
                this.match(LuaParser.T__2);
                this.state = 214;
                localContext._stat_20__4 = this.range();
                this.state = 215;
                this.match(LuaParser.T__6);
                this.state = 216;
                localContext._stat_20__6 = this.block();
                this.state = 217;
                this.match(LuaParser.T__7);
                 localContext!.result = <stmt_t> ForRangeStmt(<antlr.Token> localContext._stat_20__1, <antlr.Token> localContext._stat_20__2, <range_t> localContext._stat_20__4.result, <block_t> localContext._stat_20__6.result);
                            
                }
                break;
            case 12:
                this.enterOuterAlt(localContext, 12);
                {
                this.state = 220;
                localContext._stat_22__1 = this.match(LuaParser.T__13);
                this.state = 221;
                localContext._stat_22__2 = this.nempty_seplist_o__i__s__i__s__i_name_k__p_(0);
                this.state = 222;
                this.match(LuaParser.T__14);
                this.state = 223;
                localContext._stat_22__4 = this.nempty_seplist_o__i__s__i__s_exp_p_(0);
                this.state = 224;
                this.match(LuaParser.T__6);
                this.state = 225;
                localContext._stat_22__6 = this.block();
                this.state = 226;
                this.match(LuaParser.T__7);
                 localContext!.result = <stmt_t> ForInStmt(<antlr.Token> localContext._stat_22__1, <Array<antlr.Token>> localContext._stat_22__2.result, <Array<expr_t>> localContext._stat_22__4.result, <block_t> localContext._stat_22__6.result);
                            
                }
                break;
            case 13:
                this.enterOuterAlt(localContext, 13);
                {
                this.state = 229;
                localContext._stat_24__1 = this.match(LuaParser.T__15);
                this.state = 230;
                this.match(LuaParser.T__16);
                this.state = 231;
                localContext._stat_24__3 = this.funcname(0);
                this.state = 232;
                this.match(LuaParser.T__17);
                this.state = 233;
                localContext._stat_24__5 = this.opt_o_parlist_p_();
                this.state = 234;
                this.match(LuaParser.T__18);
                this.state = 235;
                localContext._stat_24__7 = this.block();
                this.state = 236;
                this.match(LuaParser.T__7);
                 localContext!.result = <stmt_t> ExprStmt(<expr_t> <expr_t> FuncDef(<antlr.Token> localContext._stat_24__1, <boolean> true, <maybe_t<funcname_t>> <maybe_t<funcname_t>> some<funcname_t>(<funcname_t> localContext._stat_24__3.result), <maybe_t<params_t>> localContext._stat_24__5.result, <block_t> localContext._stat_24__7.result));
                            
                }
                break;
            case 14:
                this.enterOuterAlt(localContext, 14);
                {
                this.state = 239;
                this.match(LuaParser.T__15);
                this.state = 240;
                localContext._stat_26__2 = this.nempty_seplist_o__i__s__i__s__i_name_k__p_(0);
                this.state = 241;
                localContext._stat_26__3 = this.opt_assign_rhs();
                 localContext!.result = <stmt_t> Assignment(<boolean> true, <Array<expr_t>> <Array<expr_t>> listMap<antlr.Token, expr_t>(<Array<antlr.Token>> localContext._stat_26__2.result, <(value:antlr.Token) => expr_t> Var), <maybe_t<Array<expr_t>>> localContext._stat_26__3.result);
                            
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
    public opt_assign_rhs(): Opt_assign_rhsContext {
        let localContext = new Opt_assign_rhsContext(this.context, this.state);
        this.enterRule(localContext, 28, LuaParser.RULE_opt_assign_rhs);
        try {
            this.state = 251;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 8, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 246;
                this.match(LuaParser.T__2);
                this.state = 247;
                localContext._opt_assign_rhs_0__2 = this.nempty_seplist_o__i__s__i__s_exp_p_(0);
                 localContext!.result = <maybe_t<Array<expr_t>>> some<Array<expr_t>>(<Array<expr_t>> localContext._opt_assign_rhs_0__2.result);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = <maybe_t<Array<expr_t>>> none<Array<expr_t>>();
                            
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
    public range(): RangeContext {
        let localContext = new RangeContext(this.context, this.state);
        this.enterRule(localContext, 30, LuaParser.RULE_range);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 253;
            localContext._range_0__1 = this.exp();
            this.state = 254;
            this.match(LuaParser.T__19);
            this.state = 255;
            localContext._range_0__3 = this.exp();
            this.state = 256;
            localContext._range_0__4 = this.range_tail();
             localContext!.result = <range_t> range(<expr_t> localContext._range_0__1.result, <expr_t> localContext._range_0__3.result, <maybe_t<expr_t>> localContext._range_0__4.result);
                        
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
    public range_tail(): Range_tailContext {
        let localContext = new Range_tailContext(this.context, this.state);
        this.enterRule(localContext, 32, LuaParser.RULE_range_tail);
        try {
            this.state = 264;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__19:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 259;
                this.match(LuaParser.T__19);
                this.state = 260;
                localContext._range_tail_0__2 = this.exp();
                 localContext!.result = <maybe_t<expr_t>> some<expr_t>(<expr_t> localContext._range_tail_0__2.result);
                            
                }
                break;
            case LuaParser.T__6:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = <maybe_t<expr_t>> none<expr_t>();
                            
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
    public elseif(): ElseifContext {
        let localContext = new ElseifContext(this.context, this.state);
        this.enterRule(localContext, 34, LuaParser.RULE_elseif);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 266;
            localContext._elseif_0__1 = this.match(LuaParser.T__20);
            this.state = 267;
            localContext._elseif_0__2 = this.exp();
            this.state = 268;
            this.match(LuaParser.T__12);
            this.state = 269;
            localContext._elseif_0__4 = this.block();
             localContext!.result = <if_elseif_t> if_elseif(<antlr.Token> localContext._elseif_0__1, <expr_t> localContext._elseif_0__2.result, <block_t> localContext._elseif_0__4.result);
                        
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
    public else__x_(): Else__x_Context {
        let localContext = new Else__x_Context(this.context, this.state);
        this.enterRule(localContext, 36, LuaParser.RULE_else__x_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 272;
            localContext._else__x__0__1 = this.match(LuaParser.T__21);
            this.state = 273;
            localContext._else__x__0__2 = this.block();
             localContext!.result = <if_else_t> if_else(<antlr.Token> localContext._else__x__0__1, <block_t> localContext._else__x__0__2.result);
                        
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
    public exp(): ExpContext {
        let localContext = new ExpContext(this.context, this.state);
        this.enterRule(localContext, 38, LuaParser.RULE_exp);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 276;
            localContext._exp_0__1 = this.binexp();
             let _ : number = 0;
                            localContext!.result = localContext._exp_0__1.result;
                        
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
    public binexp(): BinexpContext {
        let localContext = new BinexpContext(this.context, this.state);
        this.enterRule(localContext, 40, LuaParser.RULE_binexp);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 279;
            localContext._binexp_0__1 = this.binseq(0);
             localContext!.result = <expr_t> mkBinOpSeq(<Array<op_t<expr_t>>> localContext._binexp_0__1.result, <(op:antlr.Token, l:expr_t, r:expr_t) => expr_t> Bin, <(value:Array<op_t<expr_t>>) => expr_t> UnsolvedBin);
                        
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

    public binseq(): BinseqContext;
    public binseq(_p: number): BinseqContext;
    public binseq(_p?: number): BinseqContext {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new BinseqContext(this.context, parentState);
        let previousContext = localContext;
        let _startState = 42;
        this.enterRecursionRule(localContext, 42, LuaParser.RULE_binseq, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 283;
            localContext._binseq_2__1 = this.binoperand();
             localContext!.result = <Array<op_t<expr_t>>>[ localContext._binseq_2__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 293;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 10, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new BinseqContext(parentContext, parentState);
                    localContext._binseq_0__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_binseq);
                    this.state = 286;
                    if (!(this.precpred(this.context, 2))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 2)");
                    }
                    this.state = 287;
                    localContext._binseq_0__2 = this.binop();
                    this.state = 288;
                    localContext._binseq_0__3 = this.binoperand();
                     localContext!.result = <Array<op_t<expr_t>>> appendList<op_t<expr_t>>(<Array<op_t<expr_t>>> <Array<op_t<expr_t>>> appendList<op_t<expr_t>>(<Array<op_t<expr_t>>> localContext._binseq_0__1.result, <op_t<expr_t>> localContext._binseq_0__2.result), <op_t<expr_t>> localContext._binseq_0__3.result);
                                          
                    }
                    }
                }
                this.state = 295;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 10, this.context);
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
    public binoperand(): BinoperandContext {
        let localContext = new BinoperandContext(this.context, this.state);
        this.enterRule(localContext, 44, LuaParser.RULE_binoperand);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 296;
            localContext._binoperand_0__1 = this.unaryexp();
             localContext!.result = <op_t<expr_t>> mkOperand(<expr_t> localContext._binoperand_0__1.result);
                        
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
    public unaryexp(): UnaryexpContext {
        let localContext = new UnaryexpContext(this.context, this.state);
        this.enterRule(localContext, 46, LuaParser.RULE_unaryexp);
        try {
            this.state = 318;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__22:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 299;
                localContext._unaryexp_0__1 = this.match(LuaParser.T__22);
                this.state = 300;
                localContext._unaryexp_0__2 = this.exponent();
                 localContext!.result = <expr_t> Len(<antlr.Token> localContext._unaryexp_0__1, <expr_t> localContext._unaryexp_0__2.result);
                            
                }
                break;
            case LuaParser.T__23:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 303;
                localContext._unaryexp_2__1 = this.match(LuaParser.T__23);
                this.state = 304;
                localContext._unaryexp_2__2 = this.exponent();
                 localContext!.result = <expr_t> Neg(<antlr.Token> localContext._unaryexp_2__1, <expr_t> localContext._unaryexp_2__2.result);
                            
                }
                break;
            case LuaParser.T__24:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 307;
                localContext._unaryexp_4__1 = this.match(LuaParser.T__24);
                this.state = 308;
                localContext._unaryexp_4__2 = this.exponent();
                 localContext!.result = <expr_t> Inv(<antlr.Token> localContext._unaryexp_4__1, <expr_t> localContext._unaryexp_4__2.result);
                            
                }
                break;
            case LuaParser.T__25:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 311;
                localContext._unaryexp_6__1 = this.match(LuaParser.T__25);
                this.state = 312;
                localContext._unaryexp_6__2 = this.exponent();
                 localContext!.result = <expr_t> Not(<antlr.Token> localContext._unaryexp_6__1, <expr_t> localContext._unaryexp_6__2.result);
                            
                }
                break;
            case LuaParser.T__16:
            case LuaParser.T__17:
            case LuaParser.T__31:
            case LuaParser.T__32:
            case LuaParser.T__33:
            case LuaParser.T__34:
            case LuaParser.T__35:
            case LuaParser.NAME:
            case LuaParser.NUMERAL:
            case LuaParser.STR_LIT:
            case LuaParser.NESTED_STR:
                this.enterOuterAlt(localContext, 5);
                {
                this.state = 315;
                localContext._unaryexp_8__1 = this.exponent();
                 localContext!.result = localContext._unaryexp_8__1.result;
                            
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
    public exponent(): ExponentContext {
        let localContext = new ExponentContext(this.context, this.state);
        this.enterRule(localContext, 48, LuaParser.RULE_exponent);
        try {
            this.state = 328;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 12, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 320;
                localContext._exponent_0__1 = this.prefixexp(0);
                this.state = 321;
                this.match(LuaParser.T__26);
                this.state = 322;
                localContext._exponent_0__3 = this.exponent();
                 localContext!.result = <expr_t> Exponent(<expr_t> localContext._exponent_0__1.result, <expr_t> localContext._exponent_0__3.result);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 325;
                localContext._exponent_2__1 = this.prefixexp(0);
                 localContext!.result = localContext._exponent_2__1.result;
                            
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

    public prefixexp(): PrefixexpContext;
    public prefixexp(_p: number): PrefixexpContext;
    public prefixexp(_p?: number): PrefixexpContext {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new PrefixexpContext(this.context, parentState);
        let previousContext = localContext;
        let _startState = 50;
        this.enterRecursionRule(localContext, 50, LuaParser.RULE_prefixexp, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 341;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.NAME:
                {
                this.state = 331;
                localContext._prefixexp_0__1 = this.match(LuaParser.NAME);
                 localContext!.result = <expr_t> Var(<antlr.Token> localContext._prefixexp_0__1);
                            
                }
                break;
            case LuaParser.T__17:
                {
                this.state = 333;
                localContext._prefixexp_2__1 = this.match(LuaParser.T__17);
                this.state = 334;
                localContext._prefixexp_2__2 = this.exp();
                this.state = 335;
                this.match(LuaParser.T__18);
                 localContext!.result = <expr_t> NestedExp(<antlr.Token> localContext._prefixexp_2__1, <expr_t> localContext._prefixexp_2__2.result);
                            
                }
                break;
            case LuaParser.T__16:
            case LuaParser.T__31:
            case LuaParser.T__32:
            case LuaParser.T__33:
            case LuaParser.T__34:
            case LuaParser.T__35:
            case LuaParser.NUMERAL:
            case LuaParser.STR_LIT:
            case LuaParser.NESTED_STR:
                {
                this.state = 338;
                localContext._prefixexp_12__1 = this.atom();
                 localContext!.result = localContext._prefixexp_12__1.result;
                            
                }
                break;
            default:
                throw new antlr.NoViableAltException(this);
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 365;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 15, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    this.state = 363;
                    this.errorHandler.sync(this);
                    switch (this.interpreter.adaptivePredict(this.tokenStream, 14, this.context) ) {
                    case 1:
                        {
                        localContext = new PrefixexpContext(parentContext, parentState);
                        localContext._prefixexp_4__1 = previousContext;
                        this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_prefixexp);
                        this.state = 343;
                        if (!(this.precpred(this.context, 5))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 5)");
                        }
                        this.state = 344;
                        localContext._prefixexp_4__2 = this.args();
                         localContext!.result = <expr_t> CallFunc(<expr_t> localContext._prefixexp_4__1.result, <arguments_t> localContext._prefixexp_4__2.result);
                                              
                        }
                        break;
                    case 2:
                        {
                        localContext = new PrefixexpContext(parentContext, parentState);
                        localContext._prefixexp_6__1 = previousContext;
                        this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_prefixexp);
                        this.state = 347;
                        if (!(this.precpred(this.context, 4))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 4)");
                        }
                        this.state = 348;
                        this.match(LuaParser.T__27);
                        this.state = 349;
                        localContext._prefixexp_6__3 = this.match(LuaParser.NAME);
                        this.state = 350;
                        localContext._prefixexp_6__4 = this.args();
                         localContext!.result = <expr_t> CallMethod(<expr_t> localContext._prefixexp_6__1.result, <antlr.Token> localContext._prefixexp_6__3, <arguments_t> localContext._prefixexp_6__4.result);
                                              
                        }
                        break;
                    case 3:
                        {
                        localContext = new PrefixexpContext(parentContext, parentState);
                        localContext._prefixexp_8__1 = previousContext;
                        this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_prefixexp);
                        this.state = 353;
                        if (!(this.precpred(this.context, 3))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 3)");
                        }
                        this.state = 354;
                        this.match(LuaParser.T__28);
                        this.state = 355;
                        localContext._prefixexp_8__3 = this.exp();
                        this.state = 356;
                        this.match(LuaParser.T__29);
                         localContext!.result = <expr_t> Index(<expr_t> localContext._prefixexp_8__1.result, <expr_t> localContext._prefixexp_8__3.result);
                                              
                        }
                        break;
                    case 4:
                        {
                        localContext = new PrefixexpContext(parentContext, parentState);
                        localContext._prefixexp_10__1 = previousContext;
                        this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_prefixexp);
                        this.state = 359;
                        if (!(this.precpred(this.context, 2))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 2)");
                        }
                        this.state = 360;
                        this.match(LuaParser.T__30);
                        this.state = 361;
                        localContext._prefixexp_10__3 = this.match(LuaParser.NAME);
                         localContext!.result = <expr_t> Attr(<expr_t> localContext._prefixexp_10__1.result, <antlr.Token> localContext._prefixexp_10__3);
                                              
                        }
                        break;
                    }
                    }
                }
                this.state = 367;
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
    public atom(): AtomContext {
        let localContext = new AtomContext(this.context, this.state);
        this.enterRule(localContext, 52, LuaParser.RULE_atom);
        try {
            this.state = 388;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__31:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 368;
                localContext._atom_0__1 = this.match(LuaParser.T__31);
                 localContext!.result = <expr_t> Nil(<antlr.Token> localContext._atom_0__1);
                            
                }
                break;
            case LuaParser.T__32:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 370;
                localContext._atom_2__1 = this.match(LuaParser.T__32);
                 localContext!.result = <expr_t> Bool(<antlr.Token> localContext._atom_2__1, <boolean> false);
                            
                }
                break;
            case LuaParser.T__33:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 372;
                localContext._atom_4__1 = this.match(LuaParser.T__33);
                 localContext!.result = <expr_t> Bool(<antlr.Token> localContext._atom_4__1, <boolean> true);
                            
                }
                break;
            case LuaParser.NUMERAL:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 374;
                localContext._atom_6__1 = this.match(LuaParser.NUMERAL);
                 localContext!.result = <expr_t> Num(<antlr.Token> localContext._atom_6__1);
                            
                }
                break;
            case LuaParser.STR_LIT:
                this.enterOuterAlt(localContext, 5);
                {
                this.state = 376;
                localContext._atom_8__1 = this.match(LuaParser.STR_LIT);
                 localContext!.result = <expr_t> String(<antlr.Token> localContext._atom_8__1);
                            
                }
                break;
            case LuaParser.NESTED_STR:
                this.enterOuterAlt(localContext, 6);
                {
                this.state = 378;
                localContext._atom_10__1 = this.match(LuaParser.NESTED_STR);
                 localContext!.result = <expr_t> String(<antlr.Token> localContext._atom_10__1);
                            
                }
                break;
            case LuaParser.T__34:
                this.enterOuterAlt(localContext, 7);
                {
                this.state = 380;
                localContext._atom_12__1 = this.match(LuaParser.T__34);
                 localContext!.result = <expr_t> Ellipse(<antlr.Token> localContext._atom_12__1);
                            
                }
                break;
            case LuaParser.T__16:
                this.enterOuterAlt(localContext, 8);
                {
                this.state = 382;
                localContext._atom_14__1 = this.functiondef();
                 localContext!.result = localContext._atom_14__1.result;
                            
                }
                break;
            case LuaParser.T__35:
                this.enterOuterAlt(localContext, 9);
                {
                this.state = 385;
                localContext._atom_16__1 = this.tableconstructor();
                 localContext!.result = <expr_t> TableExpr(<table_t> localContext._atom_16__1.result);
                            
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

    public nempty_seplist_o__i__s__i__s_exp_p_(): Nempty_seplist_o__i__s__i__s_exp_p_Context;
    public nempty_seplist_o__i__s__i__s_exp_p_(_p: number): Nempty_seplist_o__i__s__i__s_exp_p_Context;
    public nempty_seplist_o__i__s__i__s_exp_p_(_p?: number): Nempty_seplist_o__i__s__i__s_exp_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Nempty_seplist_o__i__s__i__s_exp_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 54;
        this.enterRecursionRule(localContext, 54, LuaParser.RULE_nempty_seplist_o__i__s__i__s_exp_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 391;
            localContext._nempty_seplist_o__i__s__i__s_exp_p__0__1 = this.exp();
             localContext!.result = <Array<expr_t>>[ localContext._nempty_seplist_o__i__s__i__s_exp_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 401;
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
                    localContext = new Nempty_seplist_o__i__s__i__s_exp_p_Context(parentContext, parentState);
                    localContext._nempty_seplist_o__i__s__i__s_exp_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_nempty_seplist_o__i__s__i__s_exp_p_);
                    this.state = 394;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 395;
                    this.match(LuaParser.T__19);
                    this.state = 396;
                    localContext._nempty_seplist_o__i__s__i__s_exp_p__2__3 = this.exp();
                     localContext!.result = <Array<expr_t>> appendList<expr_t>(<Array<expr_t>> localContext._nempty_seplist_o__i__s__i__s_exp_p__2__1.result, <expr_t> localContext._nempty_seplist_o__i__s__i__s_exp_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 403;
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
    public allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_(): Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context {
        let localContext = new Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context(this.context, this.state);
        this.enterRule(localContext, 56, LuaParser.RULE_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_);
        try {
            this.state = 408;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 18, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                 localContext!.result = <Array<expr_t>>[  ];
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 405;
                localContext._allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__2__1 = this.nempty_seplist_o__i__s__i__s_exp_p_(0);
                 localContext!.result = localContext._allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__2__1.result;
                            
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
    public seplist_o__i__s__i__s_exp_p_(): Seplist_o__i__s__i__s_exp_p_Context {
        let localContext = new Seplist_o__i__s__i__s_exp_p_Context(this.context, this.state);
        this.enterRule(localContext, 58, LuaParser.RULE_seplist_o__i__s__i__s_exp_p_);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 410;
            localContext._seplist_o__i__s__i__s_exp_p__0__1 = this.allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_();
             localContext!.result = localContext._seplist_o__i__s__i__s_exp_p__0__1.result;
                        
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
    public args(): ArgsContext {
        let localContext = new ArgsContext(this.context, this.state);
        this.enterRule(localContext, 60, LuaParser.RULE_args);
        try {
            this.state = 423;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__17:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 413;
                localContext._args_0__1 = this.match(LuaParser.T__17);
                this.state = 414;
                localContext._args_0__2 = this.seplist_o__i__s__i__s_exp_p_();
                this.state = 415;
                this.match(LuaParser.T__18);
                 localContext!.result = <arguments_t> PositionalArgs(<antlr.Token> localContext._args_0__1, <Array<expr_t>> localContext._args_0__2.result);
                            
                }
                break;
            case LuaParser.T__35:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 418;
                localContext._args_2__1 = this.tableconstructor();
                 localContext!.result = <arguments_t> TableArgs(<table_t> localContext._args_2__1.result);
                            
                }
                break;
            case LuaParser.STR_LIT:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 421;
                localContext._args_4__1 = this.match(LuaParser.STR_LIT);
                 localContext!.result = <arguments_t> StringArg(<antlr.Token> localContext._args_4__1);
                            
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
    public opt_o_funcname_p_(): Opt_o_funcname_p_Context {
        let localContext = new Opt_o_funcname_p_Context(this.context, this.state);
        this.enterRule(localContext, 62, LuaParser.RULE_opt_o_funcname_p_);
        try {
            this.state = 429;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.NAME:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 425;
                localContext._opt_o_funcname_p__0__1 = this.funcname(0);
                 localContext!.result = <maybe_t<funcname_t>> some<funcname_t>(<funcname_t> localContext._opt_o_funcname_p__0__1.result);
                            
                }
                break;
            case LuaParser.T__17:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = <maybe_t<funcname_t>> none<funcname_t>();
                            
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
    public opt_o_parlist_p_(): Opt_o_parlist_p_Context {
        let localContext = new Opt_o_parlist_p_Context(this.context, this.state);
        this.enterRule(localContext, 64, LuaParser.RULE_opt_o_parlist_p_);
        try {
            this.state = 435;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__34:
            case LuaParser.NAME:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 431;
                localContext._opt_o_parlist_p__0__1 = this.parlist();
                 localContext!.result = <maybe_t<params_t>> some<params_t>(<params_t> localContext._opt_o_parlist_p__0__1.result);
                            
                }
                break;
            case LuaParser.T__18:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = <maybe_t<params_t>> none<params_t>();
                            
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
    public functiondef(): FunctiondefContext {
        let localContext = new FunctiondefContext(this.context, this.state);
        this.enterRule(localContext, 66, LuaParser.RULE_functiondef);
        try {
            this.enterOuterAlt(localContext, 1);
            {
            this.state = 437;
            localContext._functiondef_0__1 = this.match(LuaParser.T__16);
            this.state = 438;
            localContext._functiondef_0__2 = this.opt_o_funcname_p_();
            this.state = 439;
            this.match(LuaParser.T__17);
            this.state = 440;
            localContext._functiondef_0__4 = this.opt_o_parlist_p_();
            this.state = 441;
            this.match(LuaParser.T__18);
            this.state = 442;
            localContext._functiondef_0__6 = this.block();
            this.state = 443;
            this.match(LuaParser.T__7);
             localContext!.result = <expr_t> FuncDef(<antlr.Token> localContext._functiondef_0__1, <boolean> false, <maybe_t<funcname_t>> localContext._functiondef_0__2.result, <maybe_t<params_t>> localContext._functiondef_0__4.result, <block_t> localContext._functiondef_0__6.result);
                        
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
    public varargs(): VarargsContext {
        let localContext = new VarargsContext(this.context, this.state);
        this.enterRule(localContext, 68, LuaParser.RULE_varargs);
        try {
            this.state = 450;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__19:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 446;
                this.match(LuaParser.T__19);
                this.state = 447;
                localContext._varargs_0__2 = this.match(LuaParser.T__34);
                 localContext!.result = <maybe_t<antlr.Token>> some<antlr.Token>(<antlr.Token> localContext._varargs_0__2);
                            
                }
                break;
            case LuaParser.T__18:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = <maybe_t<antlr.Token>> none<antlr.Token>();
                            
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

    public nempty_seplist_o__i__s__i__s__i_name_k__p_(): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
    public nempty_seplist_o__i__s__i__s__i_name_k__p_(_p: number): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
    public nempty_seplist_o__i__s__i__s__i_name_k__p_(_p?: number): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Nempty_seplist_o__i__s__i__s__i_name_k__p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 70;
        this.enterRecursionRule(localContext, 70, LuaParser.RULE_nempty_seplist_o__i__s__i__s__i_name_k__p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 453;
            localContext._nempty_seplist_o__i__s__i__s__i_name_k__p__0__1 = this.match(LuaParser.NAME);
             localContext!.result = <Array<antlr.Token>>[ localContext._nempty_seplist_o__i__s__i__s__i_name_k__p__0__1 ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 462;
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
                    localContext = new Nempty_seplist_o__i__s__i__s__i_name_k__p_Context(parentContext, parentState);
                    localContext._nempty_seplist_o__i__s__i__s__i_name_k__p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_nempty_seplist_o__i__s__i__s__i_name_k__p_);
                    this.state = 456;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 457;
                    this.match(LuaParser.T__19);
                    this.state = 458;
                    localContext._nempty_seplist_o__i__s__i__s__i_name_k__p__2__3 = this.match(LuaParser.NAME);
                     localContext!.result = <Array<antlr.Token>> appendList<antlr.Token>(<Array<antlr.Token>> localContext._nempty_seplist_o__i__s__i__s__i_name_k__p__2__1.result, <antlr.Token> localContext._nempty_seplist_o__i__s__i__s__i_name_k__p__2__3);
                                          
                    }
                    }
                }
                this.state = 464;
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
    public parlist(): ParlistContext {
        let localContext = new ParlistContext(this.context, this.state);
        this.enterRule(localContext, 72, LuaParser.RULE_parlist);
        try {
            this.state = 471;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__34:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 465;
                localContext._parlist_0__1 = this.match(LuaParser.T__34);
                 localContext!.result = <params_t> params(<Array<antlr.Token>> <Array<antlr.Token>>[  ], <maybe_t<antlr.Token>> <maybe_t<antlr.Token>> some<antlr.Token>(<antlr.Token> localContext._parlist_0__1));
                            
                }
                break;
            case LuaParser.NAME:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 467;
                localContext._parlist_2__1 = this.nempty_seplist_o__i__s__i__s__i_name_k__p_(0);
                this.state = 468;
                localContext._parlist_2__2 = this.varargs();
                 localContext!.result = <params_t> params(<Array<antlr.Token>> localContext._parlist_2__1.result, <maybe_t<antlr.Token>> localContext._parlist_2__2.result);
                            
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

    public nempty_seplist_o_fieldsep_s_field_p_(): Nempty_seplist_o_fieldsep_s_field_p_Context;
    public nempty_seplist_o_fieldsep_s_field_p_(_p: number): Nempty_seplist_o_fieldsep_s_field_p_Context;
    public nempty_seplist_o_fieldsep_s_field_p_(_p?: number): Nempty_seplist_o_fieldsep_s_field_p_Context {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new Nempty_seplist_o_fieldsep_s_field_p_Context(this.context, parentState);
        let previousContext = localContext;
        let _startState = 74;
        this.enterRecursionRule(localContext, 74, LuaParser.RULE_nempty_seplist_o_fieldsep_s_field_p_, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 474;
            localContext._nempty_seplist_o_fieldsep_s_field_p__0__1 = this.field();
             localContext!.result = <Array<table_field_t>>[ localContext._nempty_seplist_o_fieldsep_s_field_p__0__1.result ];
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 484;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 25, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    {
                    localContext = new Nempty_seplist_o_fieldsep_s_field_p_Context(parentContext, parentState);
                    localContext._nempty_seplist_o_fieldsep_s_field_p__2__1 = previousContext;
                    this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_nempty_seplist_o_fieldsep_s_field_p_);
                    this.state = 477;
                    if (!(this.precpred(this.context, 1))) {
                        throw this.createFailedPredicateException("this.precpred(this.context, 1)");
                    }
                    this.state = 478;
                    this.fieldsep();
                    this.state = 479;
                    localContext._nempty_seplist_o_fieldsep_s_field_p__2__3 = this.field();
                     localContext!.result = <Array<table_field_t>> appendList<table_field_t>(<Array<table_field_t>> localContext._nempty_seplist_o_fieldsep_s_field_p__2__1.result, <table_field_t> localContext._nempty_seplist_o_fieldsep_s_field_p__2__3.result);
                                          
                    }
                    }
                }
                this.state = 486;
                this.errorHandler.sync(this);
                alternative = this.interpreter.adaptivePredict(this.tokenStream, 25, this.context);
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
    public opt_o_fieldsep_p_(): Opt_o_fieldsep_p_Context {
        let localContext = new Opt_o_fieldsep_p_Context(this.context, this.state);
        this.enterRule(localContext, 76, LuaParser.RULE_opt_o_fieldsep_p_);
        try {
            this.state = 491;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__0:
            case LuaParser.T__19:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 487;
                localContext._opt_o_fieldsep_p__0__1 = this.fieldsep();
                 localContext!.result = <maybe_t<number>> some<number>(<number> localContext._opt_o_fieldsep_p__0__1.result);
                            
                }
                break;
            case LuaParser.T__36:
                this.enterOuterAlt(localContext, 2);
                {
                 localContext!.result = <maybe_t<number>> none<number>();
                            
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
    public tableconstructor(): TableconstructorContext {
        let localContext = new TableconstructorContext(this.context, this.state);
        this.enterRule(localContext, 78, LuaParser.RULE_tableconstructor);
        try {
            this.state = 502;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 27, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 493;
                localContext._tableconstructor_0__1 = this.match(LuaParser.T__35);
                this.state = 494;
                localContext._tableconstructor_0__2 = this.nempty_seplist_o_fieldsep_s_field_p_(0);
                this.state = 495;
                this.opt_o_fieldsep_p_();
                this.state = 496;
                this.match(LuaParser.T__36);
                 localContext!.result = <table_t> TableConstructor(<antlr.Token> localContext._tableconstructor_0__1, <Array<table_field_t>> localContext._tableconstructor_0__2.result);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 499;
                localContext._tableconstructor_2__1 = this.match(LuaParser.T__35);
                this.state = 500;
                this.match(LuaParser.T__36);
                 localContext!.result = <table_t> TableConstructor(<antlr.Token> localContext._tableconstructor_2__1, <Array<table_field_t>> <Array<table_field_t>>[  ]);
                            
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

    public funcname(): FuncnameContext;
    public funcname(_p: number): FuncnameContext;
    public funcname(_p?: number): FuncnameContext {
        if (_p === undefined) {
            _p = 0;
        }

        let parentContext = this.context;
        let parentState = this.state;
        let localContext = new FuncnameContext(this.context, parentState);
        let previousContext = localContext;
        let _startState = 80;
        this.enterRecursionRule(localContext, 80, LuaParser.RULE_funcname, _p);
        try {
            let alternative: number;
            this.enterOuterAlt(localContext, 1);
            {
            {
            this.state = 505;
            localContext._funcname_4__1 = this.match(LuaParser.NAME);
             localContext!.result = <funcname_t> VarName(<antlr.Token> localContext._funcname_4__1);
                        
            }
            this.context!.stop = this.tokenStream.LT(-1);
            this.state = 518;
            this.errorHandler.sync(this);
            alternative = this.interpreter.adaptivePredict(this.tokenStream, 29, this.context);
            while (alternative !== 2 && alternative !== antlr.ATN.INVALID_ALT_NUMBER) {
                if (alternative === 1) {
                    if (this.parseListeners != null) {
                        this.triggerExitRuleEvent();
                    }
                    previousContext = localContext;
                    {
                    this.state = 516;
                    this.errorHandler.sync(this);
                    switch (this.interpreter.adaptivePredict(this.tokenStream, 28, this.context) ) {
                    case 1:
                        {
                        localContext = new FuncnameContext(parentContext, parentState);
                        localContext._funcname_0__1 = previousContext;
                        this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_funcname);
                        this.state = 508;
                        if (!(this.precpred(this.context, 3))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 3)");
                        }
                        this.state = 509;
                        this.match(LuaParser.T__30);
                        this.state = 510;
                        localContext._funcname_0__3 = this.match(LuaParser.NAME);
                         localContext!.result = <funcname_t> DotName(<funcname_t> localContext._funcname_0__1.result, <antlr.Token> localContext._funcname_0__3);
                                              
                        }
                        break;
                    case 2:
                        {
                        localContext = new FuncnameContext(parentContext, parentState);
                        localContext._funcname_2__1 = previousContext;
                        this.pushNewRecursionContext(localContext, _startState, LuaParser.RULE_funcname);
                        this.state = 512;
                        if (!(this.precpred(this.context, 2))) {
                            throw this.createFailedPredicateException("this.precpred(this.context, 2)");
                        }
                        this.state = 513;
                        this.match(LuaParser.T__27);
                        this.state = 514;
                        localContext._funcname_2__3 = this.match(LuaParser.NAME);
                         localContext!.result = <funcname_t> MethodName(<funcname_t> localContext._funcname_2__1.result, <antlr.Token> localContext._funcname_2__3);
                                              
                        }
                        break;
                    }
                    }
                }
                this.state = 520;
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
    public field(): FieldContext {
        let localContext = new FieldContext(this.context, this.state);
        this.enterRule(localContext, 82, LuaParser.RULE_field);
        try {
            this.state = 536;
            this.errorHandler.sync(this);
            switch (this.interpreter.adaptivePredict(this.tokenStream, 30, this.context) ) {
            case 1:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 521;
                localContext._field_0__1 = this.match(LuaParser.T__28);
                this.state = 522;
                localContext._field_0__2 = this.exp();
                this.state = 523;
                this.match(LuaParser.T__29);
                this.state = 524;
                this.match(LuaParser.T__2);
                this.state = 525;
                localContext._field_0__5 = this.exp();
                 localContext!.result = <table_field_t> IndexField(<antlr.Token> localContext._field_0__1, <expr_t> localContext._field_0__2.result, <expr_t> localContext._field_0__5.result);
                            
                }
                break;
            case 2:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 528;
                localContext._field_2__1 = this.match(LuaParser.NAME);
                this.state = 529;
                this.match(LuaParser.T__2);
                this.state = 530;
                localContext._field_2__3 = this.exp();
                 localContext!.result = <table_field_t> NameField(<antlr.Token> localContext._field_2__1, <expr_t> localContext._field_2__3.result);
                            
                }
                break;
            case 3:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 533;
                localContext._field_4__1 = this.exp();
                 localContext!.result = <table_field_t> ElementField(<expr_t> localContext._field_4__1.result);
                            
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
    public fieldsep(): FieldsepContext {
        let localContext = new FieldsepContext(this.context, this.state);
        this.enterRule(localContext, 84, LuaParser.RULE_fieldsep);
        try {
            this.state = 542;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__19:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 538;
                this.match(LuaParser.T__19);
                 localContext!.result = 0;
                            
                }
                break;
            case LuaParser.T__0:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 540;
                this.match(LuaParser.T__0);
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
    public binop(): BinopContext {
        let localContext = new BinopContext(this.context, this.state);
        this.enterRule(localContext, 86, LuaParser.RULE_binop);
        try {
            this.state = 584;
            this.errorHandler.sync(this);
            switch (this.tokenStream.LA(1)) {
            case LuaParser.T__37:
                this.enterOuterAlt(localContext, 1);
                {
                this.state = 544;
                localContext._binop_0__1 = this.match(LuaParser.T__37);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_0__1);
                            
                }
                break;
            case LuaParser.T__38:
                this.enterOuterAlt(localContext, 2);
                {
                this.state = 546;
                localContext._binop_2__1 = this.match(LuaParser.T__38);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_2__1);
                            
                }
                break;
            case LuaParser.T__39:
                this.enterOuterAlt(localContext, 3);
                {
                this.state = 548;
                localContext._binop_4__1 = this.match(LuaParser.T__39);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_4__1);
                            
                }
                break;
            case LuaParser.T__40:
                this.enterOuterAlt(localContext, 4);
                {
                this.state = 550;
                localContext._binop_6__1 = this.match(LuaParser.T__40);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_6__1);
                            
                }
                break;
            case LuaParser.T__41:
                this.enterOuterAlt(localContext, 5);
                {
                this.state = 552;
                localContext._binop_8__1 = this.match(LuaParser.T__41);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_8__1);
                            
                }
                break;
            case LuaParser.T__42:
                this.enterOuterAlt(localContext, 6);
                {
                this.state = 554;
                localContext._binop_10__1 = this.match(LuaParser.T__42);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_10__1);
                            
                }
                break;
            case LuaParser.T__43:
                this.enterOuterAlt(localContext, 7);
                {
                this.state = 556;
                localContext._binop_12__1 = this.match(LuaParser.T__43);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_12__1);
                            
                }
                break;
            case LuaParser.T__44:
                this.enterOuterAlt(localContext, 8);
                {
                this.state = 558;
                localContext._binop_14__1 = this.match(LuaParser.T__44);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_14__1);
                            
                }
                break;
            case LuaParser.T__45:
                this.enterOuterAlt(localContext, 9);
                {
                this.state = 560;
                localContext._binop_16__1 = this.match(LuaParser.T__45);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_16__1);
                            
                }
                break;
            case LuaParser.T__24:
                this.enterOuterAlt(localContext, 10);
                {
                this.state = 562;
                localContext._binop_18__1 = this.match(LuaParser.T__24);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_18__1);
                            
                }
                break;
            case LuaParser.T__46:
                this.enterOuterAlt(localContext, 11);
                {
                this.state = 564;
                localContext._binop_20__1 = this.match(LuaParser.T__46);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_20__1);
                            
                }
                break;
            case LuaParser.T__47:
                this.enterOuterAlt(localContext, 12);
                {
                this.state = 566;
                localContext._binop_22__1 = this.match(LuaParser.T__47);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_22__1);
                            
                }
                break;
            case LuaParser.T__48:
                this.enterOuterAlt(localContext, 13);
                {
                this.state = 568;
                localContext._binop_24__1 = this.match(LuaParser.T__48);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_24__1);
                            
                }
                break;
            case LuaParser.T__49:
                this.enterOuterAlt(localContext, 14);
                {
                this.state = 570;
                localContext._binop_26__1 = this.match(LuaParser.T__49);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_26__1);
                            
                }
                break;
            case LuaParser.T__50:
                this.enterOuterAlt(localContext, 15);
                {
                this.state = 572;
                localContext._binop_28__1 = this.match(LuaParser.T__50);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_28__1);
                            
                }
                break;
            case LuaParser.T__23:
                this.enterOuterAlt(localContext, 16);
                {
                this.state = 574;
                localContext._binop_30__1 = this.match(LuaParser.T__23);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_30__1);
                            
                }
                break;
            case LuaParser.T__51:
                this.enterOuterAlt(localContext, 17);
                {
                this.state = 576;
                localContext._binop_32__1 = this.match(LuaParser.T__51);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_32__1);
                            
                }
                break;
            case LuaParser.T__52:
                this.enterOuterAlt(localContext, 18);
                {
                this.state = 578;
                localContext._binop_34__1 = this.match(LuaParser.T__52);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_34__1);
                            
                }
                break;
            case LuaParser.T__53:
                this.enterOuterAlt(localContext, 19);
                {
                this.state = 580;
                localContext._binop_36__1 = this.match(LuaParser.T__53);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_36__1);
                            
                }
                break;
            case LuaParser.T__54:
                this.enterOuterAlt(localContext, 20);
                {
                this.state = 582;
                localContext._binop_38__1 = this.match(LuaParser.T__54);
                 localContext!.result = <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> localContext._binop_38__1);
                            
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

    public override sempred(localContext: antlr.ParserRuleContext | null, ruleIndex: number, predIndex: number): boolean {
        switch (ruleIndex) {
        case 2:
            return this.nempty_list_o_stat_p__sempred(localContext as Nempty_list_o_stat_p_Context, predIndex);
        case 9:
            return this.nempty_list_o_elseif_p__sempred(localContext as Nempty_list_o_elseif_p_Context, predIndex);
        case 21:
            return this.binseq_sempred(localContext as BinseqContext, predIndex);
        case 25:
            return this.prefixexp_sempred(localContext as PrefixexpContext, predIndex);
        case 27:
            return this.nempty_seplist_o__i__s__i__s_exp_p__sempred(localContext as Nempty_seplist_o__i__s__i__s_exp_p_Context, predIndex);
        case 35:
            return this.nempty_seplist_o__i__s__i__s__i_name_k__p__sempred(localContext as Nempty_seplist_o__i__s__i__s__i_name_k__p_Context, predIndex);
        case 37:
            return this.nempty_seplist_o_fieldsep_s_field_p__sempred(localContext as Nempty_seplist_o_fieldsep_s_field_p_Context, predIndex);
        case 40:
            return this.funcname_sempred(localContext as FuncnameContext, predIndex);
        }
        return true;
    }
    private nempty_list_o_stat_p__sempred(localContext: Nempty_list_o_stat_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 0:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private nempty_list_o_elseif_p__sempred(localContext: Nempty_list_o_elseif_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 1:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private binseq_sempred(localContext: BinseqContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 2:
            return this.precpred(this.context, 2);
        }
        return true;
    }
    private prefixexp_sempred(localContext: PrefixexpContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 3:
            return this.precpred(this.context, 5);
        case 4:
            return this.precpred(this.context, 4);
        case 5:
            return this.precpred(this.context, 3);
        case 6:
            return this.precpred(this.context, 2);
        }
        return true;
    }
    private nempty_seplist_o__i__s__i__s_exp_p__sempred(localContext: Nempty_seplist_o__i__s__i__s_exp_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 7:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private nempty_seplist_o__i__s__i__s__i_name_k__p__sempred(localContext: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 8:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private nempty_seplist_o_fieldsep_s_field_p__sempred(localContext: Nempty_seplist_o_fieldsep_s_field_p_Context | null, predIndex: number): boolean {
        switch (predIndex) {
        case 9:
            return this.precpred(this.context, 1);
        }
        return true;
    }
    private funcname_sempred(localContext: FuncnameContext | null, predIndex: number): boolean {
        switch (predIndex) {
        case 10:
            return this.precpred(this.context, 3);
        case 11:
            return this.precpred(this.context, 2);
        }
        return true;
    }

    public static readonly _serializedATN: number[] = [
        4,1,61,587,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
        6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,
        2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,
        7,20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,
        2,27,7,27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,
        7,33,2,34,7,34,2,35,7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,
        2,40,7,40,2,41,7,41,2,42,7,42,2,43,7,43,1,0,1,0,1,0,1,0,1,1,1,1,
        1,1,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,5,2,104,8,2,10,2,12,2,107,9,
        2,1,3,1,3,1,3,1,3,3,3,113,8,3,1,4,1,4,1,4,1,5,1,5,1,5,1,5,3,5,122,
        8,5,1,6,1,6,1,6,1,6,1,7,1,7,1,7,3,7,131,8,7,1,8,1,8,1,8,1,8,1,8,
        1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,5,9,146,8,9,10,9,12,9,149,9,9,1,
        10,1,10,1,10,1,10,3,10,155,8,10,1,11,1,11,1,11,1,12,1,12,1,12,1,
        12,3,12,164,8,12,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,
        13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,
        13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,
        13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,
        13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,
        13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,
        13,1,13,1,13,1,13,1,13,3,13,245,8,13,1,14,1,14,1,14,1,14,1,14,3,
        14,252,8,14,1,15,1,15,1,15,1,15,1,15,1,15,1,16,1,16,1,16,1,16,1,
        16,3,16,265,8,16,1,17,1,17,1,17,1,17,1,17,1,17,1,18,1,18,1,18,1,
        18,1,19,1,19,1,19,1,20,1,20,1,20,1,21,1,21,1,21,1,21,1,21,1,21,1,
        21,1,21,1,21,5,21,292,8,21,10,21,12,21,295,9,21,1,22,1,22,1,22,1,
        23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,23,1,
        23,1,23,1,23,1,23,1,23,1,23,3,23,319,8,23,1,24,1,24,1,24,1,24,1,
        24,1,24,1,24,1,24,3,24,329,8,24,1,25,1,25,1,25,1,25,1,25,1,25,1,
        25,1,25,1,25,1,25,1,25,3,25,342,8,25,1,25,1,25,1,25,1,25,1,25,1,
        25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,25,1,
        25,1,25,5,25,364,8,25,10,25,12,25,367,9,25,1,26,1,26,1,26,1,26,1,
        26,1,26,1,26,1,26,1,26,1,26,1,26,1,26,1,26,1,26,1,26,1,26,1,26,1,
        26,1,26,1,26,3,26,389,8,26,1,27,1,27,1,27,1,27,1,27,1,27,1,27,1,
        27,1,27,5,27,400,8,27,10,27,12,27,403,9,27,1,28,1,28,1,28,1,28,3,
        28,409,8,28,1,29,1,29,1,29,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,
        30,1,30,1,30,3,30,424,8,30,1,31,1,31,1,31,1,31,3,31,430,8,31,1,32,
        1,32,1,32,1,32,3,32,436,8,32,1,33,1,33,1,33,1,33,1,33,1,33,1,33,
        1,33,1,33,1,34,1,34,1,34,1,34,3,34,451,8,34,1,35,1,35,1,35,1,35,
        1,35,1,35,1,35,1,35,5,35,461,8,35,10,35,12,35,464,9,35,1,36,1,36,
        1,36,1,36,1,36,1,36,3,36,472,8,36,1,37,1,37,1,37,1,37,1,37,1,37,
        1,37,1,37,1,37,5,37,483,8,37,10,37,12,37,486,9,37,1,38,1,38,1,38,
        1,38,3,38,492,8,38,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,
        3,39,503,8,39,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,
        1,40,1,40,5,40,517,8,40,10,40,12,40,520,9,40,1,41,1,41,1,41,1,41,
        1,41,1,41,1,41,1,41,1,41,1,41,1,41,1,41,1,41,1,41,1,41,3,41,537,
        8,41,1,42,1,42,1,42,1,42,3,42,543,8,42,1,43,1,43,1,43,1,43,1,43,
        1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,
        1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,
        1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,1,43,3,43,585,8,43,1,43,
        0,8,4,18,42,50,54,70,74,80,44,0,2,4,6,8,10,12,14,16,18,20,22,24,
        26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,
        70,72,74,76,78,80,82,84,86,0,0,620,0,88,1,0,0,0,2,92,1,0,0,0,4,95,
        1,0,0,0,6,112,1,0,0,0,8,114,1,0,0,0,10,121,1,0,0,0,12,123,1,0,0,
        0,14,130,1,0,0,0,16,132,1,0,0,0,18,137,1,0,0,0,20,154,1,0,0,0,22,
        156,1,0,0,0,24,163,1,0,0,0,26,244,1,0,0,0,28,251,1,0,0,0,30,253,
        1,0,0,0,32,264,1,0,0,0,34,266,1,0,0,0,36,272,1,0,0,0,38,276,1,0,
        0,0,40,279,1,0,0,0,42,282,1,0,0,0,44,296,1,0,0,0,46,318,1,0,0,0,
        48,328,1,0,0,0,50,341,1,0,0,0,52,388,1,0,0,0,54,390,1,0,0,0,56,408,
        1,0,0,0,58,410,1,0,0,0,60,423,1,0,0,0,62,429,1,0,0,0,64,435,1,0,
        0,0,66,437,1,0,0,0,68,450,1,0,0,0,70,452,1,0,0,0,72,471,1,0,0,0,
        74,473,1,0,0,0,76,491,1,0,0,0,78,502,1,0,0,0,80,504,1,0,0,0,82,536,
        1,0,0,0,84,542,1,0,0,0,86,584,1,0,0,0,88,89,3,2,1,0,89,90,5,0,0,
        1,90,91,6,0,-1,0,91,1,1,0,0,0,92,93,3,12,6,0,93,94,6,1,-1,0,94,3,
        1,0,0,0,95,96,6,2,-1,0,96,97,3,26,13,0,97,98,6,2,-1,0,98,105,1,0,
        0,0,99,100,10,1,0,0,100,101,3,26,13,0,101,102,6,2,-1,0,102,104,1,
        0,0,0,103,99,1,0,0,0,104,107,1,0,0,0,105,103,1,0,0,0,105,106,1,0,
        0,0,106,5,1,0,0,0,107,105,1,0,0,0,108,113,6,3,-1,0,109,110,3,4,2,
        0,110,111,6,3,-1,0,111,113,1,0,0,0,112,108,1,0,0,0,112,109,1,0,0,
        0,113,7,1,0,0,0,114,115,3,6,3,0,115,116,6,4,-1,0,116,9,1,0,0,0,117,
        118,3,16,8,0,118,119,6,5,-1,0,119,122,1,0,0,0,120,122,6,5,-1,0,121,
        117,1,0,0,0,121,120,1,0,0,0,122,11,1,0,0,0,123,124,3,8,4,0,124,125,
        3,10,5,0,125,126,6,6,-1,0,126,13,1,0,0,0,127,128,5,1,0,0,128,131,
        6,7,-1,0,129,131,6,7,-1,0,130,127,1,0,0,0,130,129,1,0,0,0,131,15,
        1,0,0,0,132,133,5,2,0,0,133,134,3,58,29,0,134,135,3,14,7,0,135,136,
        6,8,-1,0,136,17,1,0,0,0,137,138,6,9,-1,0,138,139,3,34,17,0,139,140,
        6,9,-1,0,140,147,1,0,0,0,141,142,10,1,0,0,142,143,3,34,17,0,143,
        144,6,9,-1,0,144,146,1,0,0,0,145,141,1,0,0,0,146,149,1,0,0,0,147,
        145,1,0,0,0,147,148,1,0,0,0,148,19,1,0,0,0,149,147,1,0,0,0,150,155,
        6,10,-1,0,151,152,3,18,9,0,152,153,6,10,-1,0,153,155,1,0,0,0,154,
        150,1,0,0,0,154,151,1,0,0,0,155,21,1,0,0,0,156,157,3,20,10,0,157,
        158,6,11,-1,0,158,23,1,0,0,0,159,160,3,36,18,0,160,161,6,12,-1,0,
        161,164,1,0,0,0,162,164,6,12,-1,0,163,159,1,0,0,0,163,162,1,0,0,
        0,164,25,1,0,0,0,165,166,5,1,0,0,166,245,6,13,-1,0,167,168,3,54,
        27,0,168,169,5,3,0,0,169,170,3,54,27,0,170,171,6,13,-1,0,171,245,
        1,0,0,0,172,173,3,38,19,0,173,174,6,13,-1,0,174,245,1,0,0,0,175,
        176,5,4,0,0,176,177,5,58,0,0,177,178,5,4,0,0,178,245,6,13,-1,0,179,
        180,5,5,0,0,180,245,6,13,-1,0,181,182,5,6,0,0,182,183,5,58,0,0,183,
        245,6,13,-1,0,184,185,5,7,0,0,185,186,3,12,6,0,186,187,5,8,0,0,187,
        188,6,13,-1,0,188,245,1,0,0,0,189,190,5,9,0,0,190,191,3,38,19,0,
        191,192,5,7,0,0,192,193,3,12,6,0,193,194,5,8,0,0,194,195,6,13,-1,
        0,195,245,1,0,0,0,196,197,5,10,0,0,197,198,3,12,6,0,198,199,5,11,
        0,0,199,200,3,38,19,0,200,201,6,13,-1,0,201,245,1,0,0,0,202,203,
        5,12,0,0,203,204,3,38,19,0,204,205,5,13,0,0,205,206,3,12,6,0,206,
        207,3,22,11,0,207,208,3,24,12,0,208,209,5,8,0,0,209,210,6,13,-1,
        0,210,245,1,0,0,0,211,212,5,14,0,0,212,213,5,58,0,0,213,214,5,3,
        0,0,214,215,3,30,15,0,215,216,5,7,0,0,216,217,3,12,6,0,217,218,5,
        8,0,0,218,219,6,13,-1,0,219,245,1,0,0,0,220,221,5,14,0,0,221,222,
        3,70,35,0,222,223,5,15,0,0,223,224,3,54,27,0,224,225,5,7,0,0,225,
        226,3,12,6,0,226,227,5,8,0,0,227,228,6,13,-1,0,228,245,1,0,0,0,229,
        230,5,16,0,0,230,231,5,17,0,0,231,232,3,80,40,0,232,233,5,18,0,0,
        233,234,3,64,32,0,234,235,5,19,0,0,235,236,3,12,6,0,236,237,5,8,
        0,0,237,238,6,13,-1,0,238,245,1,0,0,0,239,240,5,16,0,0,240,241,3,
        70,35,0,241,242,3,28,14,0,242,243,6,13,-1,0,243,245,1,0,0,0,244,
        165,1,0,0,0,244,167,1,0,0,0,244,172,1,0,0,0,244,175,1,0,0,0,244,
        179,1,0,0,0,244,181,1,0,0,0,244,184,1,0,0,0,244,189,1,0,0,0,244,
        196,1,0,0,0,244,202,1,0,0,0,244,211,1,0,0,0,244,220,1,0,0,0,244,
        229,1,0,0,0,244,239,1,0,0,0,245,27,1,0,0,0,246,247,5,3,0,0,247,248,
        3,54,27,0,248,249,6,14,-1,0,249,252,1,0,0,0,250,252,6,14,-1,0,251,
        246,1,0,0,0,251,250,1,0,0,0,252,29,1,0,0,0,253,254,3,38,19,0,254,
        255,5,20,0,0,255,256,3,38,19,0,256,257,3,32,16,0,257,258,6,15,-1,
        0,258,31,1,0,0,0,259,260,5,20,0,0,260,261,3,38,19,0,261,262,6,16,
        -1,0,262,265,1,0,0,0,263,265,6,16,-1,0,264,259,1,0,0,0,264,263,1,
        0,0,0,265,33,1,0,0,0,266,267,5,21,0,0,267,268,3,38,19,0,268,269,
        5,13,0,0,269,270,3,12,6,0,270,271,6,17,-1,0,271,35,1,0,0,0,272,273,
        5,22,0,0,273,274,3,12,6,0,274,275,6,18,-1,0,275,37,1,0,0,0,276,277,
        3,40,20,0,277,278,6,19,-1,0,278,39,1,0,0,0,279,280,3,42,21,0,280,
        281,6,20,-1,0,281,41,1,0,0,0,282,283,6,21,-1,0,283,284,3,44,22,0,
        284,285,6,21,-1,0,285,293,1,0,0,0,286,287,10,2,0,0,287,288,3,86,
        43,0,288,289,3,44,22,0,289,290,6,21,-1,0,290,292,1,0,0,0,291,286,
        1,0,0,0,292,295,1,0,0,0,293,291,1,0,0,0,293,294,1,0,0,0,294,43,1,
        0,0,0,295,293,1,0,0,0,296,297,3,46,23,0,297,298,6,22,-1,0,298,45,
        1,0,0,0,299,300,5,23,0,0,300,301,3,48,24,0,301,302,6,23,-1,0,302,
        319,1,0,0,0,303,304,5,24,0,0,304,305,3,48,24,0,305,306,6,23,-1,0,
        306,319,1,0,0,0,307,308,5,25,0,0,308,309,3,48,24,0,309,310,6,23,
        -1,0,310,319,1,0,0,0,311,312,5,26,0,0,312,313,3,48,24,0,313,314,
        6,23,-1,0,314,319,1,0,0,0,315,316,3,48,24,0,316,317,6,23,-1,0,317,
        319,1,0,0,0,318,299,1,0,0,0,318,303,1,0,0,0,318,307,1,0,0,0,318,
        311,1,0,0,0,318,315,1,0,0,0,319,47,1,0,0,0,320,321,3,50,25,0,321,
        322,5,27,0,0,322,323,3,48,24,0,323,324,6,24,-1,0,324,329,1,0,0,0,
        325,326,3,50,25,0,326,327,6,24,-1,0,327,329,1,0,0,0,328,320,1,0,
        0,0,328,325,1,0,0,0,329,49,1,0,0,0,330,331,6,25,-1,0,331,332,5,58,
        0,0,332,342,6,25,-1,0,333,334,5,18,0,0,334,335,3,38,19,0,335,336,
        5,19,0,0,336,337,6,25,-1,0,337,342,1,0,0,0,338,339,3,52,26,0,339,
        340,6,25,-1,0,340,342,1,0,0,0,341,330,1,0,0,0,341,333,1,0,0,0,341,
        338,1,0,0,0,342,365,1,0,0,0,343,344,10,5,0,0,344,345,3,60,30,0,345,
        346,6,25,-1,0,346,364,1,0,0,0,347,348,10,4,0,0,348,349,5,28,0,0,
        349,350,5,58,0,0,350,351,3,60,30,0,351,352,6,25,-1,0,352,364,1,0,
        0,0,353,354,10,3,0,0,354,355,5,29,0,0,355,356,3,38,19,0,356,357,
        5,30,0,0,357,358,6,25,-1,0,358,364,1,0,0,0,359,360,10,2,0,0,360,
        361,5,31,0,0,361,362,5,58,0,0,362,364,6,25,-1,0,363,343,1,0,0,0,
        363,347,1,0,0,0,363,353,1,0,0,0,363,359,1,0,0,0,364,367,1,0,0,0,
        365,363,1,0,0,0,365,366,1,0,0,0,366,51,1,0,0,0,367,365,1,0,0,0,368,
        369,5,32,0,0,369,389,6,26,-1,0,370,371,5,33,0,0,371,389,6,26,-1,
        0,372,373,5,34,0,0,373,389,6,26,-1,0,374,375,5,59,0,0,375,389,6,
        26,-1,0,376,377,5,60,0,0,377,389,6,26,-1,0,378,379,5,61,0,0,379,
        389,6,26,-1,0,380,381,5,35,0,0,381,389,6,26,-1,0,382,383,3,66,33,
        0,383,384,6,26,-1,0,384,389,1,0,0,0,385,386,3,78,39,0,386,387,6,
        26,-1,0,387,389,1,0,0,0,388,368,1,0,0,0,388,370,1,0,0,0,388,372,
        1,0,0,0,388,374,1,0,0,0,388,376,1,0,0,0,388,378,1,0,0,0,388,380,
        1,0,0,0,388,382,1,0,0,0,388,385,1,0,0,0,389,53,1,0,0,0,390,391,6,
        27,-1,0,391,392,3,38,19,0,392,393,6,27,-1,0,393,401,1,0,0,0,394,
        395,10,1,0,0,395,396,5,20,0,0,396,397,3,38,19,0,397,398,6,27,-1,
        0,398,400,1,0,0,0,399,394,1,0,0,0,400,403,1,0,0,0,401,399,1,0,0,
        0,401,402,1,0,0,0,402,55,1,0,0,0,403,401,1,0,0,0,404,409,6,28,-1,
        0,405,406,3,54,27,0,406,407,6,28,-1,0,407,409,1,0,0,0,408,404,1,
        0,0,0,408,405,1,0,0,0,409,57,1,0,0,0,410,411,3,56,28,0,411,412,6,
        29,-1,0,412,59,1,0,0,0,413,414,5,18,0,0,414,415,3,58,29,0,415,416,
        5,19,0,0,416,417,6,30,-1,0,417,424,1,0,0,0,418,419,3,78,39,0,419,
        420,6,30,-1,0,420,424,1,0,0,0,421,422,5,60,0,0,422,424,6,30,-1,0,
        423,413,1,0,0,0,423,418,1,0,0,0,423,421,1,0,0,0,424,61,1,0,0,0,425,
        426,3,80,40,0,426,427,6,31,-1,0,427,430,1,0,0,0,428,430,6,31,-1,
        0,429,425,1,0,0,0,429,428,1,0,0,0,430,63,1,0,0,0,431,432,3,72,36,
        0,432,433,6,32,-1,0,433,436,1,0,0,0,434,436,6,32,-1,0,435,431,1,
        0,0,0,435,434,1,0,0,0,436,65,1,0,0,0,437,438,5,17,0,0,438,439,3,
        62,31,0,439,440,5,18,0,0,440,441,3,64,32,0,441,442,5,19,0,0,442,
        443,3,12,6,0,443,444,5,8,0,0,444,445,6,33,-1,0,445,67,1,0,0,0,446,
        447,5,20,0,0,447,448,5,35,0,0,448,451,6,34,-1,0,449,451,6,34,-1,
        0,450,446,1,0,0,0,450,449,1,0,0,0,451,69,1,0,0,0,452,453,6,35,-1,
        0,453,454,5,58,0,0,454,455,6,35,-1,0,455,462,1,0,0,0,456,457,10,
        1,0,0,457,458,5,20,0,0,458,459,5,58,0,0,459,461,6,35,-1,0,460,456,
        1,0,0,0,461,464,1,0,0,0,462,460,1,0,0,0,462,463,1,0,0,0,463,71,1,
        0,0,0,464,462,1,0,0,0,465,466,5,35,0,0,466,472,6,36,-1,0,467,468,
        3,70,35,0,468,469,3,68,34,0,469,470,6,36,-1,0,470,472,1,0,0,0,471,
        465,1,0,0,0,471,467,1,0,0,0,472,73,1,0,0,0,473,474,6,37,-1,0,474,
        475,3,82,41,0,475,476,6,37,-1,0,476,484,1,0,0,0,477,478,10,1,0,0,
        478,479,3,84,42,0,479,480,3,82,41,0,480,481,6,37,-1,0,481,483,1,
        0,0,0,482,477,1,0,0,0,483,486,1,0,0,0,484,482,1,0,0,0,484,485,1,
        0,0,0,485,75,1,0,0,0,486,484,1,0,0,0,487,488,3,84,42,0,488,489,6,
        38,-1,0,489,492,1,0,0,0,490,492,6,38,-1,0,491,487,1,0,0,0,491,490,
        1,0,0,0,492,77,1,0,0,0,493,494,5,36,0,0,494,495,3,74,37,0,495,496,
        3,76,38,0,496,497,5,37,0,0,497,498,6,39,-1,0,498,503,1,0,0,0,499,
        500,5,36,0,0,500,501,5,37,0,0,501,503,6,39,-1,0,502,493,1,0,0,0,
        502,499,1,0,0,0,503,79,1,0,0,0,504,505,6,40,-1,0,505,506,5,58,0,
        0,506,507,6,40,-1,0,507,518,1,0,0,0,508,509,10,3,0,0,509,510,5,31,
        0,0,510,511,5,58,0,0,511,517,6,40,-1,0,512,513,10,2,0,0,513,514,
        5,28,0,0,514,515,5,58,0,0,515,517,6,40,-1,0,516,508,1,0,0,0,516,
        512,1,0,0,0,517,520,1,0,0,0,518,516,1,0,0,0,518,519,1,0,0,0,519,
        81,1,0,0,0,520,518,1,0,0,0,521,522,5,29,0,0,522,523,3,38,19,0,523,
        524,5,30,0,0,524,525,5,3,0,0,525,526,3,38,19,0,526,527,6,41,-1,0,
        527,537,1,0,0,0,528,529,5,58,0,0,529,530,5,3,0,0,530,531,3,38,19,
        0,531,532,6,41,-1,0,532,537,1,0,0,0,533,534,3,38,19,0,534,535,6,
        41,-1,0,535,537,1,0,0,0,536,521,1,0,0,0,536,528,1,0,0,0,536,533,
        1,0,0,0,537,83,1,0,0,0,538,539,5,20,0,0,539,543,6,42,-1,0,540,541,
        5,1,0,0,541,543,6,42,-1,0,542,538,1,0,0,0,542,540,1,0,0,0,543,85,
        1,0,0,0,544,545,5,38,0,0,545,585,6,43,-1,0,546,547,5,39,0,0,547,
        585,6,43,-1,0,548,549,5,40,0,0,549,585,6,43,-1,0,550,551,5,41,0,
        0,551,585,6,43,-1,0,552,553,5,42,0,0,553,585,6,43,-1,0,554,555,5,
        43,0,0,555,585,6,43,-1,0,556,557,5,44,0,0,557,585,6,43,-1,0,558,
        559,5,45,0,0,559,585,6,43,-1,0,560,561,5,46,0,0,561,585,6,43,-1,
        0,562,563,5,25,0,0,563,585,6,43,-1,0,564,565,5,47,0,0,565,585,6,
        43,-1,0,566,567,5,48,0,0,567,585,6,43,-1,0,568,569,5,49,0,0,569,
        585,6,43,-1,0,570,571,5,50,0,0,571,585,6,43,-1,0,572,573,5,51,0,
        0,573,585,6,43,-1,0,574,575,5,24,0,0,575,585,6,43,-1,0,576,577,5,
        52,0,0,577,585,6,43,-1,0,578,579,5,53,0,0,579,585,6,43,-1,0,580,
        581,5,54,0,0,581,585,6,43,-1,0,582,583,5,55,0,0,583,585,6,43,-1,
        0,584,544,1,0,0,0,584,546,1,0,0,0,584,548,1,0,0,0,584,550,1,0,0,
        0,584,552,1,0,0,0,584,554,1,0,0,0,584,556,1,0,0,0,584,558,1,0,0,
        0,584,560,1,0,0,0,584,562,1,0,0,0,584,564,1,0,0,0,584,566,1,0,0,
        0,584,568,1,0,0,0,584,570,1,0,0,0,584,572,1,0,0,0,584,574,1,0,0,
        0,584,576,1,0,0,0,584,578,1,0,0,0,584,580,1,0,0,0,584,582,1,0,0,
        0,585,87,1,0,0,0,33,105,112,121,130,147,154,163,244,251,264,293,
        318,328,341,363,365,388,401,408,423,429,435,450,462,471,484,491,
        502,516,518,536,542,584
    ];

    private static __ATN: antlr.ATN;
    public static get _ATN(): antlr.ATN {
        if (!LuaParser.__ATN) {
            LuaParser.__ATN = new antlr.ATNDeserializer().deserialize(LuaParser._serializedATN);
        }

        return LuaParser.__ATN;
    }


    private static readonly vocabulary = new antlr.Vocabulary(LuaParser.literalNames, LuaParser.symbolicNames, []);

    public override get vocabulary(): antlr.Vocabulary {
        return LuaParser.vocabulary;
    }

    private static readonly decisionsToDFA = LuaParser._ATN.decisionToState.map( (ds: antlr.DecisionState, index: number) => new antlr.DFA(ds, index) );
}

export class StartContext extends antlr.ParserRuleContext {
    public result: block_t;
    public _v?: Start__y_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public EOF(): antlr.TerminalNode {
        return this.getToken(LuaParser.EOF, 0)!;
    }
    public start__y_(): Start__y_Context {
        return this.getRuleContext(0, Start__y_Context)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_start;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterStart) {
             listener.enterStart(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitStart) {
             listener.exitStart(this);
        }
    }
}


export class Start__y_Context extends antlr.ParserRuleContext {
    public result: block_t;
    public _start__y__0__1?: BlockContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public block(): BlockContext {
        return this.getRuleContext(0, BlockContext)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_start__y_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterStart__y_) {
             listener.enterStart__y_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitStart__y_) {
             listener.exitStart__y_(this);
        }
    }
}


export class Nempty_list_o_stat_p_Context extends antlr.ParserRuleContext {
    public result: Array<stmt_t>;
    public _nempty_list_o_stat_p__2__1?: Nempty_list_o_stat_p_Context;
    public _nempty_list_o_stat_p__0__1?: StatContext;
    public _nempty_list_o_stat_p__2__2?: StatContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public stat(): StatContext {
        return this.getRuleContext(0, StatContext)!;
    }
    public nempty_list_o_stat_p_(): Nempty_list_o_stat_p_Context | null {
        return this.getRuleContext(0, Nempty_list_o_stat_p_Context);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_nempty_list_o_stat_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterNempty_list_o_stat_p_) {
             listener.enterNempty_list_o_stat_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitNempty_list_o_stat_p_) {
             listener.exitNempty_list_o_stat_p_(this);
        }
    }
}


export class Allow_empty_o_nempty_list_o_stat_p__p_Context extends antlr.ParserRuleContext {
    public result: Array<stmt_t>;
    public _allow_empty_o_nempty_list_o_stat_p__p__2__1?: Nempty_list_o_stat_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public nempty_list_o_stat_p_(): Nempty_list_o_stat_p_Context | null {
        return this.getRuleContext(0, Nempty_list_o_stat_p_Context);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_allow_empty_o_nempty_list_o_stat_p__p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterAllow_empty_o_nempty_list_o_stat_p__p_) {
             listener.enterAllow_empty_o_nempty_list_o_stat_p__p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitAllow_empty_o_nempty_list_o_stat_p__p_) {
             listener.exitAllow_empty_o_nempty_list_o_stat_p__p_(this);
        }
    }
}


export class List_o_stat_p_Context extends antlr.ParserRuleContext {
    public result: Array<stmt_t>;
    public _list_o_stat_p__0__1?: Allow_empty_o_nempty_list_o_stat_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public allow_empty_o_nempty_list_o_stat_p__p_(): Allow_empty_o_nempty_list_o_stat_p__p_Context {
        return this.getRuleContext(0, Allow_empty_o_nempty_list_o_stat_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_list_o_stat_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterList_o_stat_p_) {
             listener.enterList_o_stat_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitList_o_stat_p_) {
             listener.exitList_o_stat_p_(this);
        }
    }
}


export class Opt_o_retstat_p_Context extends antlr.ParserRuleContext {
    public result: maybe_t<stmt_t>;
    public _opt_o_retstat_p__0__1?: RetstatContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public retstat(): RetstatContext | null {
        return this.getRuleContext(0, RetstatContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_opt_o_retstat_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterOpt_o_retstat_p_) {
             listener.enterOpt_o_retstat_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitOpt_o_retstat_p_) {
             listener.exitOpt_o_retstat_p_(this);
        }
    }
}


export class BlockContext extends antlr.ParserRuleContext {
    public result: block_t;
    public _block_0__1?: List_o_stat_p_Context;
    public _block_0__2?: Opt_o_retstat_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public list_o_stat_p_(): List_o_stat_p_Context {
        return this.getRuleContext(0, List_o_stat_p_Context)!;
    }
    public opt_o_retstat_p_(): Opt_o_retstat_p_Context {
        return this.getRuleContext(0, Opt_o_retstat_p_Context)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_block;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterBlock) {
             listener.enterBlock(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitBlock) {
             listener.exitBlock(this);
        }
    }
}


export class Opt_o__i__h__i__p_Context extends antlr.ParserRuleContext {
    public result: maybe_t<antlr.Token>;
    public _opt_o__i__h__i__p__0__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_opt_o__i__h__i__p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterOpt_o__i__h__i__p_) {
             listener.enterOpt_o__i__h__i__p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitOpt_o__i__h__i__p_) {
             listener.exitOpt_o__i__h__i__p_(this);
        }
    }
}


export class RetstatContext extends antlr.ParserRuleContext {
    public result: stmt_t;
    public _retstat_0__1?: Token | null;
    public _retstat_0__2?: Seplist_o__i__s__i__s_exp_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public opt_o__i__h__i__p_(): Opt_o__i__h__i__p_Context {
        return this.getRuleContext(0, Opt_o__i__h__i__p_Context)!;
    }
    public seplist_o__i__s__i__s_exp_p_(): Seplist_o__i__s__i__s_exp_p_Context {
        return this.getRuleContext(0, Seplist_o__i__s__i__s_exp_p_Context)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_retstat;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterRetstat) {
             listener.enterRetstat(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitRetstat) {
             listener.exitRetstat(this);
        }
    }
}


export class Nempty_list_o_elseif_p_Context extends antlr.ParserRuleContext {
    public result: Array<if_elseif_t>;
    public _nempty_list_o_elseif_p__2__1?: Nempty_list_o_elseif_p_Context;
    public _nempty_list_o_elseif_p__0__1?: ElseifContext;
    public _nempty_list_o_elseif_p__2__2?: ElseifContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public elseif(): ElseifContext {
        return this.getRuleContext(0, ElseifContext)!;
    }
    public nempty_list_o_elseif_p_(): Nempty_list_o_elseif_p_Context | null {
        return this.getRuleContext(0, Nempty_list_o_elseif_p_Context);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_nempty_list_o_elseif_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterNempty_list_o_elseif_p_) {
             listener.enterNempty_list_o_elseif_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitNempty_list_o_elseif_p_) {
             listener.exitNempty_list_o_elseif_p_(this);
        }
    }
}


export class Allow_empty_o_nempty_list_o_elseif_p__p_Context extends antlr.ParserRuleContext {
    public result: Array<if_elseif_t>;
    public _allow_empty_o_nempty_list_o_elseif_p__p__2__1?: Nempty_list_o_elseif_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public nempty_list_o_elseif_p_(): Nempty_list_o_elseif_p_Context | null {
        return this.getRuleContext(0, Nempty_list_o_elseif_p_Context);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_allow_empty_o_nempty_list_o_elseif_p__p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterAllow_empty_o_nempty_list_o_elseif_p__p_) {
             listener.enterAllow_empty_o_nempty_list_o_elseif_p__p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitAllow_empty_o_nempty_list_o_elseif_p__p_) {
             listener.exitAllow_empty_o_nempty_list_o_elseif_p__p_(this);
        }
    }
}


export class List_o_elseif_p_Context extends antlr.ParserRuleContext {
    public result: Array<if_elseif_t>;
    public _list_o_elseif_p__0__1?: Allow_empty_o_nempty_list_o_elseif_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public allow_empty_o_nempty_list_o_elseif_p__p_(): Allow_empty_o_nempty_list_o_elseif_p__p_Context {
        return this.getRuleContext(0, Allow_empty_o_nempty_list_o_elseif_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_list_o_elseif_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterList_o_elseif_p_) {
             listener.enterList_o_elseif_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitList_o_elseif_p_) {
             listener.exitList_o_elseif_p_(this);
        }
    }
}


export class Opt_o_else_p_Context extends antlr.ParserRuleContext {
    public result: maybe_t<if_else_t>;
    public _opt_o_else_p__0__1?: Else__x_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public else__x_(): Else__x_Context | null {
        return this.getRuleContext(0, Else__x_Context);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_opt_o_else_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterOpt_o_else_p_) {
             listener.enterOpt_o_else_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitOpt_o_else_p_) {
             listener.exitOpt_o_else_p_(this);
        }
    }
}


export class StatContext extends antlr.ParserRuleContext {
    public result: stmt_t;
    public _stat_0__1?: Token | null;
    public _stat_2__1?: Nempty_seplist_o__i__s__i__s_exp_p_Context;
    public _stat_2__3?: Nempty_seplist_o__i__s__i__s_exp_p_Context;
    public _stat_4__1?: ExpContext;
    public _stat_6__2?: Token | null;
    public _stat_8__1?: Token | null;
    public _stat_10__1?: Token | null;
    public _stat_10__2?: Token | null;
    public _stat_12__1?: Token | null;
    public _stat_12__2?: BlockContext;
    public _stat_14__1?: Token | null;
    public _stat_14__2?: ExpContext;
    public _stat_14__4?: BlockContext;
    public _stat_16__1?: Token | null;
    public _stat_16__2?: BlockContext;
    public _stat_16__4?: ExpContext;
    public _stat_18__1?: Token | null;
    public _stat_18__2?: ExpContext;
    public _stat_18__4?: BlockContext;
    public _stat_18__5?: List_o_elseif_p_Context;
    public _stat_18__6?: Opt_o_else_p_Context;
    public _stat_20__1?: Token | null;
    public _stat_20__2?: Token | null;
    public _stat_20__4?: RangeContext;
    public _stat_20__6?: BlockContext;
    public _stat_22__1?: Token | null;
    public _stat_22__2?: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
    public _stat_22__4?: Nempty_seplist_o__i__s__i__s_exp_p_Context;
    public _stat_22__6?: BlockContext;
    public _stat_24__1?: Token | null;
    public _stat_24__3?: FuncnameContext;
    public _stat_24__5?: Opt_o_parlist_p_Context;
    public _stat_24__7?: BlockContext;
    public _stat_26__2?: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
    public _stat_26__3?: Opt_assign_rhsContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public nempty_seplist_o__i__s__i__s_exp_p_(): Nempty_seplist_o__i__s__i__s_exp_p_Context[];
    public nempty_seplist_o__i__s__i__s_exp_p_(i: number): Nempty_seplist_o__i__s__i__s_exp_p_Context | null;
    public nempty_seplist_o__i__s__i__s_exp_p_(i?: number): Nempty_seplist_o__i__s__i__s_exp_p_Context[] | Nempty_seplist_o__i__s__i__s_exp_p_Context | null {
        if (i === undefined) {
            return this.getRuleContexts(Nempty_seplist_o__i__s__i__s_exp_p_Context);
        }

        return this.getRuleContext(i, Nempty_seplist_o__i__s__i__s_exp_p_Context);
    }
    public exp(): ExpContext | null {
        return this.getRuleContext(0, ExpContext);
    }
    public NAME(): antlr.TerminalNode | null {
        return this.getToken(LuaParser.NAME, 0);
    }
    public block(): BlockContext | null {
        return this.getRuleContext(0, BlockContext);
    }
    public list_o_elseif_p_(): List_o_elseif_p_Context | null {
        return this.getRuleContext(0, List_o_elseif_p_Context);
    }
    public opt_o_else_p_(): Opt_o_else_p_Context | null {
        return this.getRuleContext(0, Opt_o_else_p_Context);
    }
    public range(): RangeContext | null {
        return this.getRuleContext(0, RangeContext);
    }
    public nempty_seplist_o__i__s__i__s__i_name_k__p_(): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context | null {
        return this.getRuleContext(0, Nempty_seplist_o__i__s__i__s__i_name_k__p_Context);
    }
    public funcname(): FuncnameContext | null {
        return this.getRuleContext(0, FuncnameContext);
    }
    public opt_o_parlist_p_(): Opt_o_parlist_p_Context | null {
        return this.getRuleContext(0, Opt_o_parlist_p_Context);
    }
    public opt_assign_rhs(): Opt_assign_rhsContext | null {
        return this.getRuleContext(0, Opt_assign_rhsContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_stat;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterStat) {
             listener.enterStat(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitStat) {
             listener.exitStat(this);
        }
    }
}


export class Opt_assign_rhsContext extends antlr.ParserRuleContext {
    public result: maybe_t<Array<expr_t>>;
    public _opt_assign_rhs_0__2?: Nempty_seplist_o__i__s__i__s_exp_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public nempty_seplist_o__i__s__i__s_exp_p_(): Nempty_seplist_o__i__s__i__s_exp_p_Context | null {
        return this.getRuleContext(0, Nempty_seplist_o__i__s__i__s_exp_p_Context);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_opt_assign_rhs;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterOpt_assign_rhs) {
             listener.enterOpt_assign_rhs(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitOpt_assign_rhs) {
             listener.exitOpt_assign_rhs(this);
        }
    }
}


export class RangeContext extends antlr.ParserRuleContext {
    public result: range_t;
    public _range_0__1?: ExpContext;
    public _range_0__3?: ExpContext;
    public _range_0__4?: Range_tailContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public exp(): ExpContext[];
    public exp(i: number): ExpContext | null;
    public exp(i?: number): ExpContext[] | ExpContext | null {
        if (i === undefined) {
            return this.getRuleContexts(ExpContext);
        }

        return this.getRuleContext(i, ExpContext);
    }
    public range_tail(): Range_tailContext {
        return this.getRuleContext(0, Range_tailContext)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_range;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterRange) {
             listener.enterRange(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitRange) {
             listener.exitRange(this);
        }
    }
}


export class Range_tailContext extends antlr.ParserRuleContext {
    public result: maybe_t<expr_t>;
    public _range_tail_0__2?: ExpContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public exp(): ExpContext | null {
        return this.getRuleContext(0, ExpContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_range_tail;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterRange_tail) {
             listener.enterRange_tail(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitRange_tail) {
             listener.exitRange_tail(this);
        }
    }
}


export class ElseifContext extends antlr.ParserRuleContext {
    public result: if_elseif_t;
    public _elseif_0__1?: Token | null;
    public _elseif_0__2?: ExpContext;
    public _elseif_0__4?: BlockContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public exp(): ExpContext {
        return this.getRuleContext(0, ExpContext)!;
    }
    public block(): BlockContext {
        return this.getRuleContext(0, BlockContext)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_elseif;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterElseif) {
             listener.enterElseif(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitElseif) {
             listener.exitElseif(this);
        }
    }
}


export class Else__x_Context extends antlr.ParserRuleContext {
    public result: if_else_t;
    public _else__x__0__1?: Token | null;
    public _else__x__0__2?: BlockContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public block(): BlockContext {
        return this.getRuleContext(0, BlockContext)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_else__x_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterElse__x_) {
             listener.enterElse__x_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitElse__x_) {
             listener.exitElse__x_(this);
        }
    }
}


export class ExpContext extends antlr.ParserRuleContext {
    public result: expr_t;
    public _exp_0__1?: BinexpContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public binexp(): BinexpContext {
        return this.getRuleContext(0, BinexpContext)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_exp;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterExp) {
             listener.enterExp(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitExp) {
             listener.exitExp(this);
        }
    }
}


export class BinexpContext extends antlr.ParserRuleContext {
    public result: expr_t;
    public _binexp_0__1?: BinseqContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public binseq(): BinseqContext {
        return this.getRuleContext(0, BinseqContext)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_binexp;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterBinexp) {
             listener.enterBinexp(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitBinexp) {
             listener.exitBinexp(this);
        }
    }
}


export class BinseqContext extends antlr.ParserRuleContext {
    public result: Array<op_t<expr_t>>;
    public _binseq_0__1?: BinseqContext;
    public _binseq_2__1?: BinoperandContext;
    public _binseq_0__2?: BinopContext;
    public _binseq_0__3?: BinoperandContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public binoperand(): BinoperandContext {
        return this.getRuleContext(0, BinoperandContext)!;
    }
    public binseq(): BinseqContext | null {
        return this.getRuleContext(0, BinseqContext);
    }
    public binop(): BinopContext | null {
        return this.getRuleContext(0, BinopContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_binseq;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterBinseq) {
             listener.enterBinseq(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitBinseq) {
             listener.exitBinseq(this);
        }
    }
}


export class BinoperandContext extends antlr.ParserRuleContext {
    public result: op_t<expr_t>;
    public _binoperand_0__1?: UnaryexpContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public unaryexp(): UnaryexpContext {
        return this.getRuleContext(0, UnaryexpContext)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_binoperand;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterBinoperand) {
             listener.enterBinoperand(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitBinoperand) {
             listener.exitBinoperand(this);
        }
    }
}


export class UnaryexpContext extends antlr.ParserRuleContext {
    public result: expr_t;
    public _unaryexp_0__1?: Token | null;
    public _unaryexp_0__2?: ExponentContext;
    public _unaryexp_2__1?: Token | null;
    public _unaryexp_2__2?: ExponentContext;
    public _unaryexp_4__1?: Token | null;
    public _unaryexp_4__2?: ExponentContext;
    public _unaryexp_6__1?: Token | null;
    public _unaryexp_6__2?: ExponentContext;
    public _unaryexp_8__1?: ExponentContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public exponent(): ExponentContext {
        return this.getRuleContext(0, ExponentContext)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_unaryexp;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterUnaryexp) {
             listener.enterUnaryexp(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitUnaryexp) {
             listener.exitUnaryexp(this);
        }
    }
}


export class ExponentContext extends antlr.ParserRuleContext {
    public result: expr_t;
    public _exponent_0__1?: PrefixexpContext;
    public _exponent_0__3?: ExponentContext;
    public _exponent_2__1?: PrefixexpContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public prefixexp(): PrefixexpContext {
        return this.getRuleContext(0, PrefixexpContext)!;
    }
    public exponent(): ExponentContext | null {
        return this.getRuleContext(0, ExponentContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_exponent;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterExponent) {
             listener.enterExponent(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitExponent) {
             listener.exitExponent(this);
        }
    }
}


export class PrefixexpContext extends antlr.ParserRuleContext {
    public result: expr_t;
    public _prefixexp_4__1?: PrefixexpContext;
    public _prefixexp_6__1?: PrefixexpContext;
    public _prefixexp_8__1?: PrefixexpContext;
    public _prefixexp_10__1?: PrefixexpContext;
    public _prefixexp_0__1?: Token | null;
    public _prefixexp_2__1?: Token | null;
    public _prefixexp_2__2?: ExpContext;
    public _prefixexp_12__1?: AtomContext;
    public _prefixexp_4__2?: ArgsContext;
    public _prefixexp_6__3?: Token | null;
    public _prefixexp_6__4?: ArgsContext;
    public _prefixexp_8__3?: ExpContext;
    public _prefixexp_10__3?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public NAME(): antlr.TerminalNode | null {
        return this.getToken(LuaParser.NAME, 0);
    }
    public exp(): ExpContext | null {
        return this.getRuleContext(0, ExpContext);
    }
    public atom(): AtomContext | null {
        return this.getRuleContext(0, AtomContext);
    }
    public prefixexp(): PrefixexpContext | null {
        return this.getRuleContext(0, PrefixexpContext);
    }
    public args(): ArgsContext | null {
        return this.getRuleContext(0, ArgsContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_prefixexp;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterPrefixexp) {
             listener.enterPrefixexp(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitPrefixexp) {
             listener.exitPrefixexp(this);
        }
    }
}


export class AtomContext extends antlr.ParserRuleContext {
    public result: expr_t;
    public _atom_0__1?: Token | null;
    public _atom_2__1?: Token | null;
    public _atom_4__1?: Token | null;
    public _atom_6__1?: Token | null;
    public _atom_8__1?: Token | null;
    public _atom_10__1?: Token | null;
    public _atom_12__1?: Token | null;
    public _atom_14__1?: FunctiondefContext;
    public _atom_16__1?: TableconstructorContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public NUMERAL(): antlr.TerminalNode | null {
        return this.getToken(LuaParser.NUMERAL, 0);
    }
    public STR_LIT(): antlr.TerminalNode | null {
        return this.getToken(LuaParser.STR_LIT, 0);
    }
    public NESTED_STR(): antlr.TerminalNode | null {
        return this.getToken(LuaParser.NESTED_STR, 0);
    }
    public functiondef(): FunctiondefContext | null {
        return this.getRuleContext(0, FunctiondefContext);
    }
    public tableconstructor(): TableconstructorContext | null {
        return this.getRuleContext(0, TableconstructorContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_atom;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterAtom) {
             listener.enterAtom(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitAtom) {
             listener.exitAtom(this);
        }
    }
}


export class Nempty_seplist_o__i__s__i__s_exp_p_Context extends antlr.ParserRuleContext {
    public result: Array<expr_t>;
    public _nempty_seplist_o__i__s__i__s_exp_p__2__1?: Nempty_seplist_o__i__s__i__s_exp_p_Context;
    public _nempty_seplist_o__i__s__i__s_exp_p__0__1?: ExpContext;
    public _nempty_seplist_o__i__s__i__s_exp_p__2__3?: ExpContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public exp(): ExpContext {
        return this.getRuleContext(0, ExpContext)!;
    }
    public nempty_seplist_o__i__s__i__s_exp_p_(): Nempty_seplist_o__i__s__i__s_exp_p_Context | null {
        return this.getRuleContext(0, Nempty_seplist_o__i__s__i__s_exp_p_Context);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_nempty_seplist_o__i__s__i__s_exp_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterNempty_seplist_o__i__s__i__s_exp_p_) {
             listener.enterNempty_seplist_o__i__s__i__s_exp_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitNempty_seplist_o__i__s__i__s_exp_p_) {
             listener.exitNempty_seplist_o__i__s__i__s_exp_p_(this);
        }
    }
}


export class Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context extends antlr.ParserRuleContext {
    public result: Array<expr_t>;
    public _allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__2__1?: Nempty_seplist_o__i__s__i__s_exp_p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public nempty_seplist_o__i__s__i__s_exp_p_(): Nempty_seplist_o__i__s__i__s_exp_p_Context | null {
        return this.getRuleContext(0, Nempty_seplist_o__i__s__i__s_exp_p_Context);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) {
             listener.enterAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) {
             listener.exitAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_(this);
        }
    }
}


export class Seplist_o__i__s__i__s_exp_p_Context extends antlr.ParserRuleContext {
    public result: Array<expr_t>;
    public _seplist_o__i__s__i__s_exp_p__0__1?: Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_(): Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context {
        return this.getRuleContext(0, Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_seplist_o__i__s__i__s_exp_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterSeplist_o__i__s__i__s_exp_p_) {
             listener.enterSeplist_o__i__s__i__s_exp_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitSeplist_o__i__s__i__s_exp_p_) {
             listener.exitSeplist_o__i__s__i__s_exp_p_(this);
        }
    }
}


export class ArgsContext extends antlr.ParserRuleContext {
    public result: arguments_t;
    public _args_0__1?: Token | null;
    public _args_0__2?: Seplist_o__i__s__i__s_exp_p_Context;
    public _args_2__1?: TableconstructorContext;
    public _args_4__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public seplist_o__i__s__i__s_exp_p_(): Seplist_o__i__s__i__s_exp_p_Context | null {
        return this.getRuleContext(0, Seplist_o__i__s__i__s_exp_p_Context);
    }
    public tableconstructor(): TableconstructorContext | null {
        return this.getRuleContext(0, TableconstructorContext);
    }
    public STR_LIT(): antlr.TerminalNode | null {
        return this.getToken(LuaParser.STR_LIT, 0);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_args;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterArgs) {
             listener.enterArgs(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitArgs) {
             listener.exitArgs(this);
        }
    }
}


export class Opt_o_funcname_p_Context extends antlr.ParserRuleContext {
    public result: maybe_t<funcname_t>;
    public _opt_o_funcname_p__0__1?: FuncnameContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public funcname(): FuncnameContext | null {
        return this.getRuleContext(0, FuncnameContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_opt_o_funcname_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterOpt_o_funcname_p_) {
             listener.enterOpt_o_funcname_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitOpt_o_funcname_p_) {
             listener.exitOpt_o_funcname_p_(this);
        }
    }
}


export class Opt_o_parlist_p_Context extends antlr.ParserRuleContext {
    public result: maybe_t<params_t>;
    public _opt_o_parlist_p__0__1?: ParlistContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public parlist(): ParlistContext | null {
        return this.getRuleContext(0, ParlistContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_opt_o_parlist_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterOpt_o_parlist_p_) {
             listener.enterOpt_o_parlist_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitOpt_o_parlist_p_) {
             listener.exitOpt_o_parlist_p_(this);
        }
    }
}


export class FunctiondefContext extends antlr.ParserRuleContext {
    public result: expr_t;
    public _functiondef_0__1?: Token | null;
    public _functiondef_0__2?: Opt_o_funcname_p_Context;
    public _functiondef_0__4?: Opt_o_parlist_p_Context;
    public _functiondef_0__6?: BlockContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public opt_o_funcname_p_(): Opt_o_funcname_p_Context {
        return this.getRuleContext(0, Opt_o_funcname_p_Context)!;
    }
    public opt_o_parlist_p_(): Opt_o_parlist_p_Context {
        return this.getRuleContext(0, Opt_o_parlist_p_Context)!;
    }
    public block(): BlockContext {
        return this.getRuleContext(0, BlockContext)!;
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_functiondef;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterFunctiondef) {
             listener.enterFunctiondef(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitFunctiondef) {
             listener.exitFunctiondef(this);
        }
    }
}


export class VarargsContext extends antlr.ParserRuleContext {
    public result: maybe_t<antlr.Token>;
    public _varargs_0__2?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_varargs;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterVarargs) {
             listener.enterVarargs(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitVarargs) {
             listener.exitVarargs(this);
        }
    }
}


export class Nempty_seplist_o__i__s__i__s__i_name_k__p_Context extends antlr.ParserRuleContext {
    public result: Array<antlr.Token>;
    public _nempty_seplist_o__i__s__i__s__i_name_k__p__2__1?: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
    public _nempty_seplist_o__i__s__i__s__i_name_k__p__0__1?: Token | null;
    public _nempty_seplist_o__i__s__i__s__i_name_k__p__2__3?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public NAME(): antlr.TerminalNode {
        return this.getToken(LuaParser.NAME, 0)!;
    }
    public nempty_seplist_o__i__s__i__s__i_name_k__p_(): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context | null {
        return this.getRuleContext(0, Nempty_seplist_o__i__s__i__s__i_name_k__p_Context);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_nempty_seplist_o__i__s__i__s__i_name_k__p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterNempty_seplist_o__i__s__i__s__i_name_k__p_) {
             listener.enterNempty_seplist_o__i__s__i__s__i_name_k__p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitNempty_seplist_o__i__s__i__s__i_name_k__p_) {
             listener.exitNempty_seplist_o__i__s__i__s__i_name_k__p_(this);
        }
    }
}


export class ParlistContext extends antlr.ParserRuleContext {
    public result: params_t;
    public _parlist_0__1?: Token | null;
    public _parlist_2__1?: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
    public _parlist_2__2?: VarargsContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public nempty_seplist_o__i__s__i__s__i_name_k__p_(): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context | null {
        return this.getRuleContext(0, Nempty_seplist_o__i__s__i__s__i_name_k__p_Context);
    }
    public varargs(): VarargsContext | null {
        return this.getRuleContext(0, VarargsContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_parlist;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterParlist) {
             listener.enterParlist(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitParlist) {
             listener.exitParlist(this);
        }
    }
}


export class Nempty_seplist_o_fieldsep_s_field_p_Context extends antlr.ParserRuleContext {
    public result: Array<table_field_t>;
    public _nempty_seplist_o_fieldsep_s_field_p__2__1?: Nempty_seplist_o_fieldsep_s_field_p_Context;
    public _nempty_seplist_o_fieldsep_s_field_p__0__1?: FieldContext;
    public _nempty_seplist_o_fieldsep_s_field_p__2__3?: FieldContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public field(): FieldContext {
        return this.getRuleContext(0, FieldContext)!;
    }
    public fieldsep(): FieldsepContext | null {
        return this.getRuleContext(0, FieldsepContext);
    }
    public nempty_seplist_o_fieldsep_s_field_p_(): Nempty_seplist_o_fieldsep_s_field_p_Context | null {
        return this.getRuleContext(0, Nempty_seplist_o_fieldsep_s_field_p_Context);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_nempty_seplist_o_fieldsep_s_field_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterNempty_seplist_o_fieldsep_s_field_p_) {
             listener.enterNempty_seplist_o_fieldsep_s_field_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitNempty_seplist_o_fieldsep_s_field_p_) {
             listener.exitNempty_seplist_o_fieldsep_s_field_p_(this);
        }
    }
}


export class Opt_o_fieldsep_p_Context extends antlr.ParserRuleContext {
    public result: maybe_t<number>;
    public _opt_o_fieldsep_p__0__1?: FieldsepContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public fieldsep(): FieldsepContext | null {
        return this.getRuleContext(0, FieldsepContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_opt_o_fieldsep_p_;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterOpt_o_fieldsep_p_) {
             listener.enterOpt_o_fieldsep_p_(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitOpt_o_fieldsep_p_) {
             listener.exitOpt_o_fieldsep_p_(this);
        }
    }
}


export class TableconstructorContext extends antlr.ParserRuleContext {
    public result: table_t;
    public _tableconstructor_0__1?: Token | null;
    public _tableconstructor_0__2?: Nempty_seplist_o_fieldsep_s_field_p_Context;
    public _tableconstructor_2__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public opt_o_fieldsep_p_(): Opt_o_fieldsep_p_Context | null {
        return this.getRuleContext(0, Opt_o_fieldsep_p_Context);
    }
    public nempty_seplist_o_fieldsep_s_field_p_(): Nempty_seplist_o_fieldsep_s_field_p_Context | null {
        return this.getRuleContext(0, Nempty_seplist_o_fieldsep_s_field_p_Context);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_tableconstructor;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterTableconstructor) {
             listener.enterTableconstructor(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitTableconstructor) {
             listener.exitTableconstructor(this);
        }
    }
}


export class FuncnameContext extends antlr.ParserRuleContext {
    public result: funcname_t;
    public _funcname_0__1?: FuncnameContext;
    public _funcname_2__1?: FuncnameContext;
    public _funcname_4__1?: Token | null;
    public _funcname_0__3?: Token | null;
    public _funcname_2__3?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public NAME(): antlr.TerminalNode {
        return this.getToken(LuaParser.NAME, 0)!;
    }
    public funcname(): FuncnameContext | null {
        return this.getRuleContext(0, FuncnameContext);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_funcname;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterFuncname) {
             listener.enterFuncname(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitFuncname) {
             listener.exitFuncname(this);
        }
    }
}


export class FieldContext extends antlr.ParserRuleContext {
    public result: table_field_t;
    public _field_0__1?: Token | null;
    public _field_0__2?: ExpContext;
    public _field_0__5?: ExpContext;
    public _field_2__1?: Token | null;
    public _field_2__3?: ExpContext;
    public _field_4__1?: ExpContext;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public exp(): ExpContext[];
    public exp(i: number): ExpContext | null;
    public exp(i?: number): ExpContext[] | ExpContext | null {
        if (i === undefined) {
            return this.getRuleContexts(ExpContext);
        }

        return this.getRuleContext(i, ExpContext);
    }
    public NAME(): antlr.TerminalNode | null {
        return this.getToken(LuaParser.NAME, 0);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_field;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterField) {
             listener.enterField(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitField) {
             listener.exitField(this);
        }
    }
}


export class FieldsepContext extends antlr.ParserRuleContext {
    public result: number;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_fieldsep;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterFieldsep) {
             listener.enterFieldsep(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitFieldsep) {
             listener.exitFieldsep(this);
        }
    }
}


export class BinopContext extends antlr.ParserRuleContext {
    public result: op_t<expr_t>;
    public _binop_0__1?: Token | null;
    public _binop_2__1?: Token | null;
    public _binop_4__1?: Token | null;
    public _binop_6__1?: Token | null;
    public _binop_8__1?: Token | null;
    public _binop_10__1?: Token | null;
    public _binop_12__1?: Token | null;
    public _binop_14__1?: Token | null;
    public _binop_16__1?: Token | null;
    public _binop_18__1?: Token | null;
    public _binop_20__1?: Token | null;
    public _binop_22__1?: Token | null;
    public _binop_24__1?: Token | null;
    public _binop_26__1?: Token | null;
    public _binop_28__1?: Token | null;
    public _binop_30__1?: Token | null;
    public _binop_32__1?: Token | null;
    public _binop_34__1?: Token | null;
    public _binop_36__1?: Token | null;
    public _binop_38__1?: Token | null;
    public constructor(parent: antlr.ParserRuleContext | null, invokingState: number) {
        super(parent, invokingState);
    }
    public override get ruleIndex(): number {
        return LuaParser.RULE_binop;
    }
    public override enterRule(listener: LuaListener): void {
        if(listener.enterBinop) {
             listener.enterBinop(this);
        }
    }
    public override exitRule(listener: LuaListener): void {
        if(listener.exitBinop) {
             listener.exitBinop(this);
        }
    }
}
