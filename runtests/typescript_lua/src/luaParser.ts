// Generated from ./runtests/typescript_lua/src/lua.g4 by ANTLR 4.9.0-SNAPSHOT


import { DotName, MethodName, VarName, funcname_t, PositionalArgs, StringArg, TableArgs, arguments_t, TableConstructor, table_t, ElementField, IndexField, NameField, table_field_t, Assignment, BreakStmt, DoStmt, EmptyStmt, ExprStmt, ForInStmt, ForRangeStmt, GotoStmt, IfStmt, LabelStmt, RepeatStmt, ReturnStmt, WhileStmt, stmt_t, Attr, Bin, Bool, CallFunc, CallMethod, Ellipse, Exponent, FuncDef, Index, Inv, Len, Neg, NestedExp, Nil, Not, Num, String, TableExpr, UnsolvedBin, Var, expr_t, block_t, block, range_t, range, if_elseif_t, if_elseif, if_else_t, if_else, params_t, params, op_t, maybe_t, mkBinOpSeq, mkOperand, mkOperator, none, some, listMap, appendList } from "./lua-constructor"
import * as antlr from 'antlr4ts'


import { ATN } from "antlr4ts/atn/ATN";
import { ATNDeserializer } from "antlr4ts/atn/ATNDeserializer";
import { FailedPredicateException } from "antlr4ts/FailedPredicateException";
import { NotNull } from "antlr4ts/Decorators";
import { NoViableAltException } from "antlr4ts/NoViableAltException";
import { Override } from "antlr4ts/Decorators";
import { Parser } from "antlr4ts/Parser";
import { ParserRuleContext } from "antlr4ts/ParserRuleContext";
import { ParserATNSimulator } from "antlr4ts/atn/ParserATNSimulator";
import { ParseTreeListener } from "antlr4ts/tree/ParseTreeListener";
import { ParseTreeVisitor } from "antlr4ts/tree/ParseTreeVisitor";
import { RecognitionException } from "antlr4ts/RecognitionException";
import { RuleContext } from "antlr4ts/RuleContext";
//import { RuleVersion } from "antlr4ts/RuleVersion";
import { TerminalNode } from "antlr4ts/tree/TerminalNode";
import { Token } from "antlr4ts/Token";
import { TokenStream } from "antlr4ts/TokenStream";
import { Vocabulary } from "antlr4ts/Vocabulary";
import { VocabularyImpl } from "antlr4ts/VocabularyImpl";

import * as Utils from "antlr4ts/misc/Utils";

import { luaListener } from "./luaListener";

export class luaParser extends Parser {
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
	// tslint:disable:no-trailing-whitespace
	public static readonly ruleNames: string[] = [
		"start", "start__y_", "nempty_list_o_stat_p_", "allow_empty_o_nempty_list_o_stat_p__p_", 
		"list_o_stat_p_", "opt_o_retstat_p_", "block", "opt_o__i__h__i__p_", "retstat", 
		"nempty_list_o_elseif_p_", "allow_empty_o_nempty_list_o_elseif_p__p_", 
		"list_o_elseif_p_", "opt_o_else_p_", "stat", "opt_assign_rhs", "range", 
		"range_tail", "elseif", "else__x_", "exp", "binexp", "binseq", "binoperand", 
		"unaryexp", "exponent", "prefixexp", "atom", "nempty_seplist_o__i__s__i__s_exp_p_", 
		"allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_", "seplist_o__i__s__i__s_exp_p_", 
		"args", "opt_o_funcname_p_", "opt_o_parlist_p_", "functiondef", "varargs", 
		"nempty_seplist_o__i__s__i__s__i_name_k__p_", "parlist", "nempty_seplist_o_fieldsep_s_field_p_", 
		"opt_o_fieldsep_p_", "tableconstructor", "funcname", "field", "fieldsep", 
		"binop",
	];

	private static readonly _LITERAL_NAMES: Array<string | undefined> = [
		undefined, "';'", "'return'", "'='", "'::'", "'break'", "'goto'", "'do'", 
		"'end'", "'while'", "'repeat'", "'until'", "'if'", "'then'", "'for'", 
		"'in'", "'local'", "'function'", "'('", "')'", "','", "'elseif'", "'else'", 
		"'#'", "'-'", "'~'", "'not'", "'^'", "':'", "'['", "']'", "'.'", "'nil'", 
		"'false'", "'true'", "'...'", "'{'", "'}'", "'or'", "'and'", "'<'", "'>'", 
		"'<='", "'>='", "'~='", "'=='", "'|'", "'&'", "'<<'", "'>>'", "'..'", 
		"'+'", "'*'", "'/'", "'//'", "'%'",
	];
	private static readonly _SYMBOLIC_NAMES: Array<string | undefined> = [
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		"LINE_COMMENT", "SPACE", "NAME", "NUMERAL", "STR_LIT", "NESTED_STR",
	];
	public static readonly VOCABULARY: Vocabulary = new VocabularyImpl(luaParser._LITERAL_NAMES, luaParser._SYMBOLIC_NAMES, []);

	// @Override
	// @NotNull
	public get vocabulary(): Vocabulary {
		return luaParser.VOCABULARY;
	}
	// tslint:enable:no-trailing-whitespace

	// @Override
	public get grammarFileName(): string { return "lua.g4"; }

	// @Override
	public get ruleNames(): string[] { return luaParser.ruleNames; }

	// @Override
	public get serializedATN(): string { return luaParser._serializedATN; }

	protected createFailedPredicateException(predicate?: string, message?: string): FailedPredicateException {
		return new FailedPredicateException(this, predicate, message);
	}

	constructor(input: TokenStream) {
		super(input);
		this._interp = new ParserATNSimulator(luaParser._ATN, this);
	}
	// @RuleVersion(0)
	public start(): StartContext {
		let _localctx: StartContext = new StartContext(this._ctx, this.state);
		this.enterRule(_localctx, 0, luaParser.RULE_start);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 88;
			_localctx._v = this.start__y_();
			this.state = 89;
			this.match(luaParser.EOF);
			 _localctx.result =  _localctx._v.result; 
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public start__y_(): Start__y_Context {
		let _localctx: Start__y_Context = new Start__y_Context(this._ctx, this.state);
		this.enterRule(_localctx, 2, luaParser.RULE_start__y_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 92;
			_localctx._start__y__0__1 = this.block();
			 _localctx.result =  _localctx._start__y__0__1.result;
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}

	public nempty_list_o_stat_p_(): Nempty_list_o_stat_p_Context;
	public nempty_list_o_stat_p_(_p: number): Nempty_list_o_stat_p_Context;
	// @RuleVersion(0)
	public nempty_list_o_stat_p_(_p?: number): Nempty_list_o_stat_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Nempty_list_o_stat_p_Context = new Nempty_list_o_stat_p_Context(this._ctx, _parentState);
		let _prevctx: Nempty_list_o_stat_p_Context = _localctx;
		let _startState: number = 4;
		this.enterRecursionRule(_localctx, 4, luaParser.RULE_nempty_list_o_stat_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 96;
			_localctx._nempty_list_o_stat_p__0__1 = this.stat();
			 _localctx.result =  <Array<stmt_t>>[ _localctx._nempty_list_o_stat_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 105;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 0, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Nempty_list_o_stat_p_Context(_parentctx, _parentState);
					_localctx._nempty_list_o_stat_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_nempty_list_o_stat_p_);
					this.state = 99;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 100;
					_localctx._nempty_list_o_stat_p__2__2 = this.stat();
					 _localctx.result =  <Array<stmt_t>> appendList<stmt_t>(<Array<stmt_t>> _localctx._nempty_list_o_stat_p__2__1.result, <stmt_t> _localctx._nempty_list_o_stat_p__2__2.result);
					                      
					}
					}
				}
				this.state = 107;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 0, this._ctx);
			}
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public allow_empty_o_nempty_list_o_stat_p__p_(): Allow_empty_o_nempty_list_o_stat_p__p_Context {
		let _localctx: Allow_empty_o_nempty_list_o_stat_p__p_Context = new Allow_empty_o_nempty_list_o_stat_p__p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 6, luaParser.RULE_allow_empty_o_nempty_list_o_stat_p__p_);
		try {
			this.state = 112;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 1, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				 _localctx.result =  <Array<stmt_t>>[  ];
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 109;
				_localctx._allow_empty_o_nempty_list_o_stat_p__p__2__1 = this.nempty_list_o_stat_p_(0);
				 _localctx.result =  _localctx._allow_empty_o_nempty_list_o_stat_p__p__2__1.result;
				            
				}
				break;
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public list_o_stat_p_(): List_o_stat_p_Context {
		let _localctx: List_o_stat_p_Context = new List_o_stat_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 8, luaParser.RULE_list_o_stat_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 114;
			_localctx._list_o_stat_p__0__1 = this.allow_empty_o_nempty_list_o_stat_p__p_();
			 _localctx.result =  _localctx._list_o_stat_p__0__1.result;
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public opt_o_retstat_p_(): Opt_o_retstat_p_Context {
		let _localctx: Opt_o_retstat_p_Context = new Opt_o_retstat_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 10, luaParser.RULE_opt_o_retstat_p_);
		try {
			this.state = 121;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 2, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 117;
				_localctx._opt_o_retstat_p__0__1 = this.retstat();
				 _localctx.result =  <maybe_t<stmt_t>> some<stmt_t>(<stmt_t> _localctx._opt_o_retstat_p__0__1.result);
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				 _localctx.result =  <maybe_t<stmt_t>> none<stmt_t>();
				            
				}
				break;
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public block(): BlockContext {
		let _localctx: BlockContext = new BlockContext(this._ctx, this.state);
		this.enterRule(_localctx, 12, luaParser.RULE_block);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 123;
			_localctx._block_0__1 = this.list_o_stat_p_();
			this.state = 124;
			_localctx._block_0__2 = this.opt_o_retstat_p_();
			 _localctx.result =  <block_t> block(<Array<stmt_t>> _localctx._block_0__1.result, <maybe_t<stmt_t>> _localctx._block_0__2.result);
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public opt_o__i__h__i__p_(): Opt_o__i__h__i__p_Context {
		let _localctx: Opt_o__i__h__i__p_Context = new Opt_o__i__h__i__p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 14, luaParser.RULE_opt_o__i__h__i__p_);
		try {
			this.state = 130;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 3, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 127;
				_localctx._opt_o__i__h__i__p__0__1 = this.match(luaParser.T__0);
				 _localctx.result =  <maybe_t<antlr.Token>> some<antlr.Token>(<antlr.Token> _localctx._opt_o__i__h__i__p__0__1);
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				 _localctx.result =  <maybe_t<antlr.Token>> none<antlr.Token>();
				            
				}
				break;
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public retstat(): RetstatContext {
		let _localctx: RetstatContext = new RetstatContext(this._ctx, this.state);
		this.enterRule(_localctx, 16, luaParser.RULE_retstat);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 132;
			_localctx._retstat_0__1 = this.match(luaParser.T__1);
			this.state = 133;
			_localctx._retstat_0__2 = this.seplist_o__i__s__i__s_exp_p_();
			this.state = 134;
			this.opt_o__i__h__i__p_();
			 _localctx.result =  <stmt_t> ReturnStmt(<antlr.Token> _localctx._retstat_0__1, <Array<expr_t>> _localctx._retstat_0__2.result);
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}

	public nempty_list_o_elseif_p_(): Nempty_list_o_elseif_p_Context;
	public nempty_list_o_elseif_p_(_p: number): Nempty_list_o_elseif_p_Context;
	// @RuleVersion(0)
	public nempty_list_o_elseif_p_(_p?: number): Nempty_list_o_elseif_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Nempty_list_o_elseif_p_Context = new Nempty_list_o_elseif_p_Context(this._ctx, _parentState);
		let _prevctx: Nempty_list_o_elseif_p_Context = _localctx;
		let _startState: number = 18;
		this.enterRecursionRule(_localctx, 18, luaParser.RULE_nempty_list_o_elseif_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 138;
			_localctx._nempty_list_o_elseif_p__0__1 = this.elseif();
			 _localctx.result =  <Array<if_elseif_t>>[ _localctx._nempty_list_o_elseif_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 147;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 4, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Nempty_list_o_elseif_p_Context(_parentctx, _parentState);
					_localctx._nempty_list_o_elseif_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_nempty_list_o_elseif_p_);
					this.state = 141;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 142;
					_localctx._nempty_list_o_elseif_p__2__2 = this.elseif();
					 _localctx.result =  <Array<if_elseif_t>> appendList<if_elseif_t>(<Array<if_elseif_t>> _localctx._nempty_list_o_elseif_p__2__1.result, <if_elseif_t> _localctx._nempty_list_o_elseif_p__2__2.result);
					                      
					}
					}
				}
				this.state = 149;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 4, this._ctx);
			}
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public allow_empty_o_nempty_list_o_elseif_p__p_(): Allow_empty_o_nempty_list_o_elseif_p__p_Context {
		let _localctx: Allow_empty_o_nempty_list_o_elseif_p__p_Context = new Allow_empty_o_nempty_list_o_elseif_p__p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 20, luaParser.RULE_allow_empty_o_nempty_list_o_elseif_p__p_);
		try {
			this.state = 154;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__7:
			case luaParser.T__21:
				this.enterOuterAlt(_localctx, 1);
				{
				 _localctx.result =  <Array<if_elseif_t>>[  ];
				            
				}
				break;
			case luaParser.T__20:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 151;
				_localctx._allow_empty_o_nempty_list_o_elseif_p__p__2__1 = this.nempty_list_o_elseif_p_(0);
				 _localctx.result =  _localctx._allow_empty_o_nempty_list_o_elseif_p__p__2__1.result;
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public list_o_elseif_p_(): List_o_elseif_p_Context {
		let _localctx: List_o_elseif_p_Context = new List_o_elseif_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 22, luaParser.RULE_list_o_elseif_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 156;
			_localctx._list_o_elseif_p__0__1 = this.allow_empty_o_nempty_list_o_elseif_p__p_();
			 _localctx.result =  _localctx._list_o_elseif_p__0__1.result;
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public opt_o_else_p_(): Opt_o_else_p_Context {
		let _localctx: Opt_o_else_p_Context = new Opt_o_else_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 24, luaParser.RULE_opt_o_else_p_);
		try {
			this.state = 163;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__21:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 159;
				_localctx._opt_o_else_p__0__1 = this.else__x_();
				 _localctx.result =  <maybe_t<if_else_t>> some<if_else_t>(<if_else_t> _localctx._opt_o_else_p__0__1.result);
				            
				}
				break;
			case luaParser.T__7:
				this.enterOuterAlt(_localctx, 2);
				{
				 _localctx.result =  <maybe_t<if_else_t>> none<if_else_t>();
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public stat(): StatContext {
		let _localctx: StatContext = new StatContext(this._ctx, this.state);
		this.enterRule(_localctx, 26, luaParser.RULE_stat);
		try {
			this.state = 244;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 7, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 165;
				_localctx._stat_0__1 = this.match(luaParser.T__0);
				 _localctx.result =  <stmt_t> EmptyStmt(<antlr.Token> _localctx._stat_0__1);
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 167;
				_localctx._stat_2__1 = this.nempty_seplist_o__i__s__i__s_exp_p_(0);
				this.state = 168;
				this.match(luaParser.T__2);
				this.state = 169;
				_localctx._stat_2__3 = this.nempty_seplist_o__i__s__i__s_exp_p_(0);
				 _localctx.result =  <stmt_t> Assignment(<boolean> false, <Array<expr_t>> _localctx._stat_2__1.result, <maybe_t<Array<expr_t>>> <maybe_t<Array<expr_t>>> some<Array<expr_t>>(<Array<expr_t>> _localctx._stat_2__3.result));
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 172;
				_localctx._stat_4__1 = this.exp();
				 _localctx.result =  <stmt_t> ExprStmt(<expr_t> _localctx._stat_4__1.result);
				            
				}
				break;

			case 4:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 175;
				this.match(luaParser.T__3);
				this.state = 176;
				_localctx._stat_6__2 = this.match(luaParser.NAME);
				this.state = 177;
				this.match(luaParser.T__3);
				 _localctx.result =  <stmt_t> LabelStmt(<antlr.Token> _localctx._stat_6__2);
				            
				}
				break;

			case 5:
				this.enterOuterAlt(_localctx, 5);
				{
				this.state = 179;
				_localctx._stat_8__1 = this.match(luaParser.T__4);
				 _localctx.result =  <stmt_t> BreakStmt(<antlr.Token> _localctx._stat_8__1);
				            
				}
				break;

			case 6:
				this.enterOuterAlt(_localctx, 6);
				{
				this.state = 181;
				_localctx._stat_10__1 = this.match(luaParser.T__5);
				this.state = 182;
				_localctx._stat_10__2 = this.match(luaParser.NAME);
				 _localctx.result =  <stmt_t> GotoStmt(<antlr.Token> _localctx._stat_10__1, <antlr.Token> _localctx._stat_10__2);
				            
				}
				break;

			case 7:
				this.enterOuterAlt(_localctx, 7);
				{
				this.state = 184;
				_localctx._stat_12__1 = this.match(luaParser.T__6);
				this.state = 185;
				_localctx._stat_12__2 = this.block();
				this.state = 186;
				this.match(luaParser.T__7);
				 _localctx.result =  <stmt_t> DoStmt(<antlr.Token> _localctx._stat_12__1, <block_t> _localctx._stat_12__2.result);
				            
				}
				break;

			case 8:
				this.enterOuterAlt(_localctx, 8);
				{
				this.state = 189;
				_localctx._stat_14__1 = this.match(luaParser.T__8);
				this.state = 190;
				_localctx._stat_14__2 = this.exp();
				this.state = 191;
				this.match(luaParser.T__6);
				this.state = 192;
				_localctx._stat_14__4 = this.block();
				this.state = 193;
				this.match(luaParser.T__7);
				 _localctx.result =  <stmt_t> WhileStmt(<antlr.Token> _localctx._stat_14__1, <expr_t> _localctx._stat_14__2.result, <block_t> _localctx._stat_14__4.result);
				            
				}
				break;

			case 9:
				this.enterOuterAlt(_localctx, 9);
				{
				this.state = 196;
				_localctx._stat_16__1 = this.match(luaParser.T__9);
				this.state = 197;
				_localctx._stat_16__2 = this.block();
				this.state = 198;
				this.match(luaParser.T__10);
				this.state = 199;
				_localctx._stat_16__4 = this.exp();
				 _localctx.result =  <stmt_t> RepeatStmt(<antlr.Token> _localctx._stat_16__1, <block_t> _localctx._stat_16__2.result, <expr_t> _localctx._stat_16__4.result);
				            
				}
				break;

			case 10:
				this.enterOuterAlt(_localctx, 10);
				{
				this.state = 202;
				_localctx._stat_18__1 = this.match(luaParser.T__11);
				this.state = 203;
				_localctx._stat_18__2 = this.exp();
				this.state = 204;
				this.match(luaParser.T__12);
				this.state = 205;
				_localctx._stat_18__4 = this.block();
				this.state = 206;
				_localctx._stat_18__5 = this.list_o_elseif_p_();
				this.state = 207;
				_localctx._stat_18__6 = this.opt_o_else_p_();
				this.state = 208;
				this.match(luaParser.T__7);
				 _localctx.result =  <stmt_t> IfStmt(<antlr.Token> _localctx._stat_18__1, <expr_t> _localctx._stat_18__2.result, <block_t> _localctx._stat_18__4.result, <Array<if_elseif_t>> _localctx._stat_18__5.result, <maybe_t<if_else_t>> _localctx._stat_18__6.result);
				            
				}
				break;

			case 11:
				this.enterOuterAlt(_localctx, 11);
				{
				this.state = 211;
				_localctx._stat_20__1 = this.match(luaParser.T__13);
				this.state = 212;
				_localctx._stat_20__2 = this.match(luaParser.NAME);
				this.state = 213;
				this.match(luaParser.T__2);
				this.state = 214;
				_localctx._stat_20__4 = this.range();
				this.state = 215;
				this.match(luaParser.T__6);
				this.state = 216;
				_localctx._stat_20__6 = this.block();
				this.state = 217;
				this.match(luaParser.T__7);
				 _localctx.result =  <stmt_t> ForRangeStmt(<antlr.Token> _localctx._stat_20__1, <antlr.Token> _localctx._stat_20__2, <range_t> _localctx._stat_20__4.result, <block_t> _localctx._stat_20__6.result);
				            
				}
				break;

			case 12:
				this.enterOuterAlt(_localctx, 12);
				{
				this.state = 220;
				_localctx._stat_22__1 = this.match(luaParser.T__13);
				this.state = 221;
				_localctx._stat_22__2 = this.nempty_seplist_o__i__s__i__s__i_name_k__p_(0);
				this.state = 222;
				this.match(luaParser.T__14);
				this.state = 223;
				_localctx._stat_22__4 = this.nempty_seplist_o__i__s__i__s_exp_p_(0);
				this.state = 224;
				this.match(luaParser.T__6);
				this.state = 225;
				_localctx._stat_22__6 = this.block();
				this.state = 226;
				this.match(luaParser.T__7);
				 _localctx.result =  <stmt_t> ForInStmt(<antlr.Token> _localctx._stat_22__1, <Array<antlr.Token>> _localctx._stat_22__2.result, <Array<expr_t>> _localctx._stat_22__4.result, <block_t> _localctx._stat_22__6.result);
				            
				}
				break;

			case 13:
				this.enterOuterAlt(_localctx, 13);
				{
				this.state = 229;
				_localctx._stat_24__1 = this.match(luaParser.T__15);
				this.state = 230;
				this.match(luaParser.T__16);
				this.state = 231;
				_localctx._stat_24__3 = this.funcname(0);
				this.state = 232;
				this.match(luaParser.T__17);
				this.state = 233;
				_localctx._stat_24__5 = this.opt_o_parlist_p_();
				this.state = 234;
				this.match(luaParser.T__18);
				this.state = 235;
				_localctx._stat_24__7 = this.block();
				this.state = 236;
				this.match(luaParser.T__7);
				 _localctx.result =  <stmt_t> ExprStmt(<expr_t> <expr_t> FuncDef(<antlr.Token> _localctx._stat_24__1, <boolean> true, <maybe_t<funcname_t>> <maybe_t<funcname_t>> some<funcname_t>(<funcname_t> _localctx._stat_24__3.result), <maybe_t<params_t>> _localctx._stat_24__5.result, <block_t> _localctx._stat_24__7.result));
				            
				}
				break;

			case 14:
				this.enterOuterAlt(_localctx, 14);
				{
				this.state = 239;
				this.match(luaParser.T__15);
				this.state = 240;
				_localctx._stat_26__2 = this.nempty_seplist_o__i__s__i__s__i_name_k__p_(0);
				this.state = 241;
				_localctx._stat_26__3 = this.opt_assign_rhs();
				 _localctx.result =  <stmt_t> Assignment(<boolean> true, <Array<expr_t>> <Array<expr_t>> listMap<antlr.Token, expr_t>(<Array<antlr.Token>> _localctx._stat_26__2.result, <(value:antlr.Token) => expr_t> Var), <maybe_t<Array<expr_t>>> _localctx._stat_26__3.result);
				            
				}
				break;
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public opt_assign_rhs(): Opt_assign_rhsContext {
		let _localctx: Opt_assign_rhsContext = new Opt_assign_rhsContext(this._ctx, this.state);
		this.enterRule(_localctx, 28, luaParser.RULE_opt_assign_rhs);
		try {
			this.state = 251;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 8, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 246;
				this.match(luaParser.T__2);
				this.state = 247;
				_localctx._opt_assign_rhs_0__2 = this.nempty_seplist_o__i__s__i__s_exp_p_(0);
				 _localctx.result =  <maybe_t<Array<expr_t>>> some<Array<expr_t>>(<Array<expr_t>> _localctx._opt_assign_rhs_0__2.result);
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				 _localctx.result =  <maybe_t<Array<expr_t>>> none<Array<expr_t>>();
				            
				}
				break;
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public range(): RangeContext {
		let _localctx: RangeContext = new RangeContext(this._ctx, this.state);
		this.enterRule(_localctx, 30, luaParser.RULE_range);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 253;
			_localctx._range_0__1 = this.exp();
			this.state = 254;
			this.match(luaParser.T__19);
			this.state = 255;
			_localctx._range_0__3 = this.exp();
			this.state = 256;
			_localctx._range_0__4 = this.range_tail();
			 _localctx.result =  <range_t> range(<expr_t> _localctx._range_0__1.result, <expr_t> _localctx._range_0__3.result, <maybe_t<expr_t>> _localctx._range_0__4.result);
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public range_tail(): Range_tailContext {
		let _localctx: Range_tailContext = new Range_tailContext(this._ctx, this.state);
		this.enterRule(_localctx, 32, luaParser.RULE_range_tail);
		try {
			this.state = 264;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__19:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 259;
				this.match(luaParser.T__19);
				this.state = 260;
				_localctx._range_tail_0__2 = this.exp();
				 _localctx.result =  <maybe_t<expr_t>> some<expr_t>(<expr_t> _localctx._range_tail_0__2.result);
				            
				}
				break;
			case luaParser.T__6:
				this.enterOuterAlt(_localctx, 2);
				{
				 _localctx.result =  <maybe_t<expr_t>> none<expr_t>();
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public elseif(): ElseifContext {
		let _localctx: ElseifContext = new ElseifContext(this._ctx, this.state);
		this.enterRule(_localctx, 34, luaParser.RULE_elseif);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 266;
			_localctx._elseif_0__1 = this.match(luaParser.T__20);
			this.state = 267;
			_localctx._elseif_0__2 = this.exp();
			this.state = 268;
			this.match(luaParser.T__12);
			this.state = 269;
			_localctx._elseif_0__4 = this.block();
			 _localctx.result =  <if_elseif_t> if_elseif(<antlr.Token> _localctx._elseif_0__1, <expr_t> _localctx._elseif_0__2.result, <block_t> _localctx._elseif_0__4.result);
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public else__x_(): Else__x_Context {
		let _localctx: Else__x_Context = new Else__x_Context(this._ctx, this.state);
		this.enterRule(_localctx, 36, luaParser.RULE_else__x_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 272;
			_localctx._else__x__0__1 = this.match(luaParser.T__21);
			this.state = 273;
			_localctx._else__x__0__2 = this.block();
			 _localctx.result =  <if_else_t> if_else(<antlr.Token> _localctx._else__x__0__1, <block_t> _localctx._else__x__0__2.result);
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public exp(): ExpContext {
		let _localctx: ExpContext = new ExpContext(this._ctx, this.state);
		this.enterRule(_localctx, 38, luaParser.RULE_exp);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 276;
			_localctx._exp_0__1 = this.binexp();
			 let _ : number = 0;
			                _localctx.result =  _localctx._exp_0__1.result;
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public binexp(): BinexpContext {
		let _localctx: BinexpContext = new BinexpContext(this._ctx, this.state);
		this.enterRule(_localctx, 40, luaParser.RULE_binexp);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 279;
			_localctx._binexp_0__1 = this.binseq(0);
			 _localctx.result =  <expr_t> mkBinOpSeq(<Array<op_t<expr_t>>> _localctx._binexp_0__1.result, <(op:antlr.Token, l:expr_t, r:expr_t) => expr_t> Bin, <(value:Array<op_t<expr_t>>) => expr_t> UnsolvedBin);
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}

	public binseq(): BinseqContext;
	public binseq(_p: number): BinseqContext;
	// @RuleVersion(0)
	public binseq(_p?: number): BinseqContext {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: BinseqContext = new BinseqContext(this._ctx, _parentState);
		let _prevctx: BinseqContext = _localctx;
		let _startState: number = 42;
		this.enterRecursionRule(_localctx, 42, luaParser.RULE_binseq, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 283;
			_localctx._binseq_2__1 = this.binoperand();
			 _localctx.result =  <Array<op_t<expr_t>>>[ _localctx._binseq_2__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 293;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 10, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new BinseqContext(_parentctx, _parentState);
					_localctx._binseq_0__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_binseq);
					this.state = 286;
					if (!(this.precpred(this._ctx, 2))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
					}
					this.state = 287;
					_localctx._binseq_0__2 = this.binop();
					this.state = 288;
					_localctx._binseq_0__3 = this.binoperand();
					 _localctx.result =  <Array<op_t<expr_t>>> appendList<op_t<expr_t>>(<Array<op_t<expr_t>>> <Array<op_t<expr_t>>> appendList<op_t<expr_t>>(<Array<op_t<expr_t>>> _localctx._binseq_0__1.result, <op_t<expr_t>> _localctx._binseq_0__2.result), <op_t<expr_t>> _localctx._binseq_0__3.result);
					                      
					}
					}
				}
				this.state = 295;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 10, this._ctx);
			}
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public binoperand(): BinoperandContext {
		let _localctx: BinoperandContext = new BinoperandContext(this._ctx, this.state);
		this.enterRule(_localctx, 44, luaParser.RULE_binoperand);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 296;
			_localctx._binoperand_0__1 = this.unaryexp();
			 _localctx.result =  <op_t<expr_t>> mkOperand(<expr_t> _localctx._binoperand_0__1.result);
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public unaryexp(): UnaryexpContext {
		let _localctx: UnaryexpContext = new UnaryexpContext(this._ctx, this.state);
		this.enterRule(_localctx, 46, luaParser.RULE_unaryexp);
		try {
			this.state = 318;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__22:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 299;
				_localctx._unaryexp_0__1 = this.match(luaParser.T__22);
				this.state = 300;
				_localctx._unaryexp_0__2 = this.exponent();
				 _localctx.result =  <expr_t> Len(<antlr.Token> _localctx._unaryexp_0__1, <expr_t> _localctx._unaryexp_0__2.result);
				            
				}
				break;
			case luaParser.T__23:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 303;
				_localctx._unaryexp_2__1 = this.match(luaParser.T__23);
				this.state = 304;
				_localctx._unaryexp_2__2 = this.exponent();
				 _localctx.result =  <expr_t> Neg(<antlr.Token> _localctx._unaryexp_2__1, <expr_t> _localctx._unaryexp_2__2.result);
				            
				}
				break;
			case luaParser.T__24:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 307;
				_localctx._unaryexp_4__1 = this.match(luaParser.T__24);
				this.state = 308;
				_localctx._unaryexp_4__2 = this.exponent();
				 _localctx.result =  <expr_t> Inv(<antlr.Token> _localctx._unaryexp_4__1, <expr_t> _localctx._unaryexp_4__2.result);
				            
				}
				break;
			case luaParser.T__25:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 311;
				_localctx._unaryexp_6__1 = this.match(luaParser.T__25);
				this.state = 312;
				_localctx._unaryexp_6__2 = this.exponent();
				 _localctx.result =  <expr_t> Not(<antlr.Token> _localctx._unaryexp_6__1, <expr_t> _localctx._unaryexp_6__2.result);
				            
				}
				break;
			case luaParser.T__16:
			case luaParser.T__17:
			case luaParser.T__31:
			case luaParser.T__32:
			case luaParser.T__33:
			case luaParser.T__34:
			case luaParser.T__35:
			case luaParser.NAME:
			case luaParser.NUMERAL:
			case luaParser.STR_LIT:
			case luaParser.NESTED_STR:
				this.enterOuterAlt(_localctx, 5);
				{
				this.state = 315;
				_localctx._unaryexp_8__1 = this.exponent();
				 _localctx.result =  _localctx._unaryexp_8__1.result;
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public exponent(): ExponentContext {
		let _localctx: ExponentContext = new ExponentContext(this._ctx, this.state);
		this.enterRule(_localctx, 48, luaParser.RULE_exponent);
		try {
			this.state = 328;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 12, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 320;
				_localctx._exponent_0__1 = this.prefixexp(0);
				this.state = 321;
				this.match(luaParser.T__26);
				this.state = 322;
				_localctx._exponent_0__3 = this.exponent();
				 _localctx.result =  <expr_t> Exponent(<expr_t> _localctx._exponent_0__1.result, <expr_t> _localctx._exponent_0__3.result);
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 325;
				_localctx._exponent_2__1 = this.prefixexp(0);
				 _localctx.result =  _localctx._exponent_2__1.result;
				            
				}
				break;
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}

	public prefixexp(): PrefixexpContext;
	public prefixexp(_p: number): PrefixexpContext;
	// @RuleVersion(0)
	public prefixexp(_p?: number): PrefixexpContext {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: PrefixexpContext = new PrefixexpContext(this._ctx, _parentState);
		let _prevctx: PrefixexpContext = _localctx;
		let _startState: number = 50;
		this.enterRecursionRule(_localctx, 50, luaParser.RULE_prefixexp, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 341;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.NAME:
				{
				this.state = 331;
				_localctx._prefixexp_0__1 = this.match(luaParser.NAME);
				 _localctx.result =  <expr_t> Var(<antlr.Token> _localctx._prefixexp_0__1);
				            
				}
				break;
			case luaParser.T__17:
				{
				this.state = 333;
				_localctx._prefixexp_2__1 = this.match(luaParser.T__17);
				this.state = 334;
				_localctx._prefixexp_2__2 = this.exp();
				this.state = 335;
				this.match(luaParser.T__18);
				 _localctx.result =  <expr_t> NestedExp(<antlr.Token> _localctx._prefixexp_2__1, <expr_t> _localctx._prefixexp_2__2.result);
				            
				}
				break;
			case luaParser.T__16:
			case luaParser.T__31:
			case luaParser.T__32:
			case luaParser.T__33:
			case luaParser.T__34:
			case luaParser.T__35:
			case luaParser.NUMERAL:
			case luaParser.STR_LIT:
			case luaParser.NESTED_STR:
				{
				this.state = 338;
				_localctx._prefixexp_12__1 = this.atom();
				 _localctx.result =  _localctx._prefixexp_12__1.result;
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 365;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 15, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					this.state = 363;
					this._errHandler.sync(this);
					switch ( this.interpreter.adaptivePredict(this._input, 14, this._ctx) ) {
					case 1:
						{
						_localctx = new PrefixexpContext(_parentctx, _parentState);
						_localctx._prefixexp_4__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_prefixexp);
						this.state = 343;
						if (!(this.precpred(this._ctx, 5))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 5)");
						}
						this.state = 344;
						_localctx._prefixexp_4__2 = this.args();
						 _localctx.result =  <expr_t> CallFunc(<expr_t> _localctx._prefixexp_4__1.result, <arguments_t> _localctx._prefixexp_4__2.result);
						                      
						}
						break;

					case 2:
						{
						_localctx = new PrefixexpContext(_parentctx, _parentState);
						_localctx._prefixexp_6__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_prefixexp);
						this.state = 347;
						if (!(this.precpred(this._ctx, 4))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 4)");
						}
						this.state = 348;
						this.match(luaParser.T__27);
						this.state = 349;
						_localctx._prefixexp_6__3 = this.match(luaParser.NAME);
						this.state = 350;
						_localctx._prefixexp_6__4 = this.args();
						 _localctx.result =  <expr_t> CallMethod(<expr_t> _localctx._prefixexp_6__1.result, <antlr.Token> _localctx._prefixexp_6__3, <arguments_t> _localctx._prefixexp_6__4.result);
						                      
						}
						break;

					case 3:
						{
						_localctx = new PrefixexpContext(_parentctx, _parentState);
						_localctx._prefixexp_8__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_prefixexp);
						this.state = 353;
						if (!(this.precpred(this._ctx, 3))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 3)");
						}
						this.state = 354;
						this.match(luaParser.T__28);
						this.state = 355;
						_localctx._prefixexp_8__3 = this.exp();
						this.state = 356;
						this.match(luaParser.T__29);
						 _localctx.result =  <expr_t> Index(<expr_t> _localctx._prefixexp_8__1.result, <expr_t> _localctx._prefixexp_8__3.result);
						                      
						}
						break;

					case 4:
						{
						_localctx = new PrefixexpContext(_parentctx, _parentState);
						_localctx._prefixexp_10__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_prefixexp);
						this.state = 359;
						if (!(this.precpred(this._ctx, 2))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
						}
						this.state = 360;
						this.match(luaParser.T__30);
						this.state = 361;
						_localctx._prefixexp_10__3 = this.match(luaParser.NAME);
						 _localctx.result =  <expr_t> Attr(<expr_t> _localctx._prefixexp_10__1.result, <antlr.Token> _localctx._prefixexp_10__3);
						                      
						}
						break;
					}
					}
				}
				this.state = 367;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 15, this._ctx);
			}
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public atom(): AtomContext {
		let _localctx: AtomContext = new AtomContext(this._ctx, this.state);
		this.enterRule(_localctx, 52, luaParser.RULE_atom);
		try {
			this.state = 388;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__31:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 368;
				_localctx._atom_0__1 = this.match(luaParser.T__31);
				 _localctx.result =  <expr_t> Nil(<antlr.Token> _localctx._atom_0__1);
				            
				}
				break;
			case luaParser.T__32:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 370;
				_localctx._atom_2__1 = this.match(luaParser.T__32);
				 _localctx.result =  <expr_t> Bool(<antlr.Token> _localctx._atom_2__1, <boolean> false);
				            
				}
				break;
			case luaParser.T__33:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 372;
				_localctx._atom_4__1 = this.match(luaParser.T__33);
				 _localctx.result =  <expr_t> Bool(<antlr.Token> _localctx._atom_4__1, <boolean> true);
				            
				}
				break;
			case luaParser.NUMERAL:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 374;
				_localctx._atom_6__1 = this.match(luaParser.NUMERAL);
				 _localctx.result =  <expr_t> Num(<antlr.Token> _localctx._atom_6__1);
				            
				}
				break;
			case luaParser.STR_LIT:
				this.enterOuterAlt(_localctx, 5);
				{
				this.state = 376;
				_localctx._atom_8__1 = this.match(luaParser.STR_LIT);
				 _localctx.result =  <expr_t> String(<antlr.Token> _localctx._atom_8__1);
				            
				}
				break;
			case luaParser.NESTED_STR:
				this.enterOuterAlt(_localctx, 6);
				{
				this.state = 378;
				_localctx._atom_10__1 = this.match(luaParser.NESTED_STR);
				 _localctx.result =  <expr_t> String(<antlr.Token> _localctx._atom_10__1);
				            
				}
				break;
			case luaParser.T__34:
				this.enterOuterAlt(_localctx, 7);
				{
				this.state = 380;
				_localctx._atom_12__1 = this.match(luaParser.T__34);
				 _localctx.result =  <expr_t> Ellipse(<antlr.Token> _localctx._atom_12__1);
				            
				}
				break;
			case luaParser.T__16:
				this.enterOuterAlt(_localctx, 8);
				{
				this.state = 382;
				_localctx._atom_14__1 = this.functiondef();
				 _localctx.result =  _localctx._atom_14__1.result;
				            
				}
				break;
			case luaParser.T__35:
				this.enterOuterAlt(_localctx, 9);
				{
				this.state = 385;
				_localctx._atom_16__1 = this.tableconstructor();
				 _localctx.result =  <expr_t> TableExpr(<table_t> _localctx._atom_16__1.result);
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}

	public nempty_seplist_o__i__s__i__s_exp_p_(): Nempty_seplist_o__i__s__i__s_exp_p_Context;
	public nempty_seplist_o__i__s__i__s_exp_p_(_p: number): Nempty_seplist_o__i__s__i__s_exp_p_Context;
	// @RuleVersion(0)
	public nempty_seplist_o__i__s__i__s_exp_p_(_p?: number): Nempty_seplist_o__i__s__i__s_exp_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Nempty_seplist_o__i__s__i__s_exp_p_Context = new Nempty_seplist_o__i__s__i__s_exp_p_Context(this._ctx, _parentState);
		let _prevctx: Nempty_seplist_o__i__s__i__s_exp_p_Context = _localctx;
		let _startState: number = 54;
		this.enterRecursionRule(_localctx, 54, luaParser.RULE_nempty_seplist_o__i__s__i__s_exp_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 391;
			_localctx._nempty_seplist_o__i__s__i__s_exp_p__0__1 = this.exp();
			 _localctx.result =  <Array<expr_t>>[ _localctx._nempty_seplist_o__i__s__i__s_exp_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 401;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 17, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Nempty_seplist_o__i__s__i__s_exp_p_Context(_parentctx, _parentState);
					_localctx._nempty_seplist_o__i__s__i__s_exp_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_nempty_seplist_o__i__s__i__s_exp_p_);
					this.state = 394;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 395;
					this.match(luaParser.T__19);
					this.state = 396;
					_localctx._nempty_seplist_o__i__s__i__s_exp_p__2__3 = this.exp();
					 _localctx.result =  <Array<expr_t>> appendList<expr_t>(<Array<expr_t>> _localctx._nempty_seplist_o__i__s__i__s_exp_p__2__1.result, <expr_t> _localctx._nempty_seplist_o__i__s__i__s_exp_p__2__3.result);
					                      
					}
					}
				}
				this.state = 403;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 17, this._ctx);
			}
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_(): Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context {
		let _localctx: Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context = new Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 56, luaParser.RULE_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_);
		try {
			this.state = 408;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 18, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				 _localctx.result =  <Array<expr_t>>[  ];
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 405;
				_localctx._allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__2__1 = this.nempty_seplist_o__i__s__i__s_exp_p_(0);
				 _localctx.result =  _localctx._allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__2__1.result;
				            
				}
				break;
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public seplist_o__i__s__i__s_exp_p_(): Seplist_o__i__s__i__s_exp_p_Context {
		let _localctx: Seplist_o__i__s__i__s_exp_p_Context = new Seplist_o__i__s__i__s_exp_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 58, luaParser.RULE_seplist_o__i__s__i__s_exp_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 410;
			_localctx._seplist_o__i__s__i__s_exp_p__0__1 = this.allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_();
			 _localctx.result =  _localctx._seplist_o__i__s__i__s_exp_p__0__1.result;
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public args(): ArgsContext {
		let _localctx: ArgsContext = new ArgsContext(this._ctx, this.state);
		this.enterRule(_localctx, 60, luaParser.RULE_args);
		try {
			this.state = 423;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__17:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 413;
				_localctx._args_0__1 = this.match(luaParser.T__17);
				this.state = 414;
				_localctx._args_0__2 = this.seplist_o__i__s__i__s_exp_p_();
				this.state = 415;
				this.match(luaParser.T__18);
				 _localctx.result =  <arguments_t> PositionalArgs(<antlr.Token> _localctx._args_0__1, <Array<expr_t>> _localctx._args_0__2.result);
				            
				}
				break;
			case luaParser.T__35:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 418;
				_localctx._args_2__1 = this.tableconstructor();
				 _localctx.result =  <arguments_t> TableArgs(<table_t> _localctx._args_2__1.result);
				            
				}
				break;
			case luaParser.STR_LIT:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 421;
				_localctx._args_4__1 = this.match(luaParser.STR_LIT);
				 _localctx.result =  <arguments_t> StringArg(<antlr.Token> _localctx._args_4__1);
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public opt_o_funcname_p_(): Opt_o_funcname_p_Context {
		let _localctx: Opt_o_funcname_p_Context = new Opt_o_funcname_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 62, luaParser.RULE_opt_o_funcname_p_);
		try {
			this.state = 429;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.NAME:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 425;
				_localctx._opt_o_funcname_p__0__1 = this.funcname(0);
				 _localctx.result =  <maybe_t<funcname_t>> some<funcname_t>(<funcname_t> _localctx._opt_o_funcname_p__0__1.result);
				            
				}
				break;
			case luaParser.T__17:
				this.enterOuterAlt(_localctx, 2);
				{
				 _localctx.result =  <maybe_t<funcname_t>> none<funcname_t>();
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public opt_o_parlist_p_(): Opt_o_parlist_p_Context {
		let _localctx: Opt_o_parlist_p_Context = new Opt_o_parlist_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 64, luaParser.RULE_opt_o_parlist_p_);
		try {
			this.state = 435;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__34:
			case luaParser.NAME:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 431;
				_localctx._opt_o_parlist_p__0__1 = this.parlist();
				 _localctx.result =  <maybe_t<params_t>> some<params_t>(<params_t> _localctx._opt_o_parlist_p__0__1.result);
				            
				}
				break;
			case luaParser.T__18:
				this.enterOuterAlt(_localctx, 2);
				{
				 _localctx.result =  <maybe_t<params_t>> none<params_t>();
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public functiondef(): FunctiondefContext {
		let _localctx: FunctiondefContext = new FunctiondefContext(this._ctx, this.state);
		this.enterRule(_localctx, 66, luaParser.RULE_functiondef);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 437;
			_localctx._functiondef_0__1 = this.match(luaParser.T__16);
			this.state = 438;
			_localctx._functiondef_0__2 = this.opt_o_funcname_p_();
			this.state = 439;
			this.match(luaParser.T__17);
			this.state = 440;
			_localctx._functiondef_0__4 = this.opt_o_parlist_p_();
			this.state = 441;
			this.match(luaParser.T__18);
			this.state = 442;
			_localctx._functiondef_0__6 = this.block();
			this.state = 443;
			this.match(luaParser.T__7);
			 _localctx.result =  <expr_t> FuncDef(<antlr.Token> _localctx._functiondef_0__1, <boolean> false, <maybe_t<funcname_t>> _localctx._functiondef_0__2.result, <maybe_t<params_t>> _localctx._functiondef_0__4.result, <block_t> _localctx._functiondef_0__6.result);
			            
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public varargs(): VarargsContext {
		let _localctx: VarargsContext = new VarargsContext(this._ctx, this.state);
		this.enterRule(_localctx, 68, luaParser.RULE_varargs);
		try {
			this.state = 450;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__19:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 446;
				this.match(luaParser.T__19);
				this.state = 447;
				_localctx._varargs_0__2 = this.match(luaParser.T__34);
				 _localctx.result =  <maybe_t<antlr.Token>> some<antlr.Token>(<antlr.Token> _localctx._varargs_0__2);
				            
				}
				break;
			case luaParser.T__18:
				this.enterOuterAlt(_localctx, 2);
				{
				 _localctx.result =  <maybe_t<antlr.Token>> none<antlr.Token>();
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}

	public nempty_seplist_o__i__s__i__s__i_name_k__p_(): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
	public nempty_seplist_o__i__s__i__s__i_name_k__p_(_p: number): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
	// @RuleVersion(0)
	public nempty_seplist_o__i__s__i__s__i_name_k__p_(_p?: number): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context = new Nempty_seplist_o__i__s__i__s__i_name_k__p_Context(this._ctx, _parentState);
		let _prevctx: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context = _localctx;
		let _startState: number = 70;
		this.enterRecursionRule(_localctx, 70, luaParser.RULE_nempty_seplist_o__i__s__i__s__i_name_k__p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 453;
			_localctx._nempty_seplist_o__i__s__i__s__i_name_k__p__0__1 = this.match(luaParser.NAME);
			 _localctx.result =  <Array<antlr.Token>>[ _localctx._nempty_seplist_o__i__s__i__s__i_name_k__p__0__1 ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 462;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 23, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Nempty_seplist_o__i__s__i__s__i_name_k__p_Context(_parentctx, _parentState);
					_localctx._nempty_seplist_o__i__s__i__s__i_name_k__p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_nempty_seplist_o__i__s__i__s__i_name_k__p_);
					this.state = 456;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 457;
					this.match(luaParser.T__19);
					this.state = 458;
					_localctx._nempty_seplist_o__i__s__i__s__i_name_k__p__2__3 = this.match(luaParser.NAME);
					 _localctx.result =  <Array<antlr.Token>> appendList<antlr.Token>(<Array<antlr.Token>> _localctx._nempty_seplist_o__i__s__i__s__i_name_k__p__2__1.result, <antlr.Token> _localctx._nempty_seplist_o__i__s__i__s__i_name_k__p__2__3);
					                      
					}
					}
				}
				this.state = 464;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 23, this._ctx);
			}
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public parlist(): ParlistContext {
		let _localctx: ParlistContext = new ParlistContext(this._ctx, this.state);
		this.enterRule(_localctx, 72, luaParser.RULE_parlist);
		try {
			this.state = 471;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__34:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 465;
				_localctx._parlist_0__1 = this.match(luaParser.T__34);
				 _localctx.result =  <params_t> params(<Array<antlr.Token>> <Array<antlr.Token>>[  ], <maybe_t<antlr.Token>> <maybe_t<antlr.Token>> some<antlr.Token>(<antlr.Token> _localctx._parlist_0__1));
				            
				}
				break;
			case luaParser.NAME:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 467;
				_localctx._parlist_2__1 = this.nempty_seplist_o__i__s__i__s__i_name_k__p_(0);
				this.state = 468;
				_localctx._parlist_2__2 = this.varargs();
				 _localctx.result =  <params_t> params(<Array<antlr.Token>> _localctx._parlist_2__1.result, <maybe_t<antlr.Token>> _localctx._parlist_2__2.result);
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}

	public nempty_seplist_o_fieldsep_s_field_p_(): Nempty_seplist_o_fieldsep_s_field_p_Context;
	public nempty_seplist_o_fieldsep_s_field_p_(_p: number): Nempty_seplist_o_fieldsep_s_field_p_Context;
	// @RuleVersion(0)
	public nempty_seplist_o_fieldsep_s_field_p_(_p?: number): Nempty_seplist_o_fieldsep_s_field_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Nempty_seplist_o_fieldsep_s_field_p_Context = new Nempty_seplist_o_fieldsep_s_field_p_Context(this._ctx, _parentState);
		let _prevctx: Nempty_seplist_o_fieldsep_s_field_p_Context = _localctx;
		let _startState: number = 74;
		this.enterRecursionRule(_localctx, 74, luaParser.RULE_nempty_seplist_o_fieldsep_s_field_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 474;
			_localctx._nempty_seplist_o_fieldsep_s_field_p__0__1 = this.field();
			 _localctx.result =  <Array<table_field_t>>[ _localctx._nempty_seplist_o_fieldsep_s_field_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 484;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 25, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Nempty_seplist_o_fieldsep_s_field_p_Context(_parentctx, _parentState);
					_localctx._nempty_seplist_o_fieldsep_s_field_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_nempty_seplist_o_fieldsep_s_field_p_);
					this.state = 477;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 478;
					this.fieldsep();
					this.state = 479;
					_localctx._nempty_seplist_o_fieldsep_s_field_p__2__3 = this.field();
					 _localctx.result =  <Array<table_field_t>> appendList<table_field_t>(<Array<table_field_t>> _localctx._nempty_seplist_o_fieldsep_s_field_p__2__1.result, <table_field_t> _localctx._nempty_seplist_o_fieldsep_s_field_p__2__3.result);
					                      
					}
					}
				}
				this.state = 486;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 25, this._ctx);
			}
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public opt_o_fieldsep_p_(): Opt_o_fieldsep_p_Context {
		let _localctx: Opt_o_fieldsep_p_Context = new Opt_o_fieldsep_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 76, luaParser.RULE_opt_o_fieldsep_p_);
		try {
			this.state = 491;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__0:
			case luaParser.T__19:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 487;
				_localctx._opt_o_fieldsep_p__0__1 = this.fieldsep();
				 _localctx.result =  <maybe_t<number>> some<number>(<number> _localctx._opt_o_fieldsep_p__0__1.result);
				            
				}
				break;
			case luaParser.T__36:
				this.enterOuterAlt(_localctx, 2);
				{
				 _localctx.result =  <maybe_t<number>> none<number>();
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public tableconstructor(): TableconstructorContext {
		let _localctx: TableconstructorContext = new TableconstructorContext(this._ctx, this.state);
		this.enterRule(_localctx, 78, luaParser.RULE_tableconstructor);
		try {
			this.state = 502;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 27, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 493;
				_localctx._tableconstructor_0__1 = this.match(luaParser.T__35);
				this.state = 494;
				_localctx._tableconstructor_0__2 = this.nempty_seplist_o_fieldsep_s_field_p_(0);
				this.state = 495;
				this.opt_o_fieldsep_p_();
				this.state = 496;
				this.match(luaParser.T__36);
				 _localctx.result =  <table_t> TableConstructor(<antlr.Token> _localctx._tableconstructor_0__1, <Array<table_field_t>> _localctx._tableconstructor_0__2.result);
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 499;
				_localctx._tableconstructor_2__1 = this.match(luaParser.T__35);
				this.state = 500;
				this.match(luaParser.T__36);
				 _localctx.result =  <table_t> TableConstructor(<antlr.Token> _localctx._tableconstructor_2__1, <Array<table_field_t>> <Array<table_field_t>>[  ]);
				            
				}
				break;
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}

	public funcname(): FuncnameContext;
	public funcname(_p: number): FuncnameContext;
	// @RuleVersion(0)
	public funcname(_p?: number): FuncnameContext {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: FuncnameContext = new FuncnameContext(this._ctx, _parentState);
		let _prevctx: FuncnameContext = _localctx;
		let _startState: number = 80;
		this.enterRecursionRule(_localctx, 80, luaParser.RULE_funcname, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 505;
			_localctx._funcname_4__1 = this.match(luaParser.NAME);
			 _localctx.result =  <funcname_t> VarName(<antlr.Token> _localctx._funcname_4__1);
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 518;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 29, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					this.state = 516;
					this._errHandler.sync(this);
					switch ( this.interpreter.adaptivePredict(this._input, 28, this._ctx) ) {
					case 1:
						{
						_localctx = new FuncnameContext(_parentctx, _parentState);
						_localctx._funcname_0__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_funcname);
						this.state = 508;
						if (!(this.precpred(this._ctx, 3))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 3)");
						}
						this.state = 509;
						this.match(luaParser.T__30);
						this.state = 510;
						_localctx._funcname_0__3 = this.match(luaParser.NAME);
						 _localctx.result =  <funcname_t> DotName(<funcname_t> _localctx._funcname_0__1.result, <antlr.Token> _localctx._funcname_0__3);
						                      
						}
						break;

					case 2:
						{
						_localctx = new FuncnameContext(_parentctx, _parentState);
						_localctx._funcname_2__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, luaParser.RULE_funcname);
						this.state = 512;
						if (!(this.precpred(this._ctx, 2))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
						}
						this.state = 513;
						this.match(luaParser.T__27);
						this.state = 514;
						_localctx._funcname_2__3 = this.match(luaParser.NAME);
						 _localctx.result =  <funcname_t> MethodName(<funcname_t> _localctx._funcname_2__1.result, <antlr.Token> _localctx._funcname_2__3);
						                      
						}
						break;
					}
					}
				}
				this.state = 520;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 29, this._ctx);
			}
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public field(): FieldContext {
		let _localctx: FieldContext = new FieldContext(this._ctx, this.state);
		this.enterRule(_localctx, 82, luaParser.RULE_field);
		try {
			this.state = 536;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 30, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 521;
				_localctx._field_0__1 = this.match(luaParser.T__28);
				this.state = 522;
				_localctx._field_0__2 = this.exp();
				this.state = 523;
				this.match(luaParser.T__29);
				this.state = 524;
				this.match(luaParser.T__2);
				this.state = 525;
				_localctx._field_0__5 = this.exp();
				 _localctx.result =  <table_field_t> IndexField(<antlr.Token> _localctx._field_0__1, <expr_t> _localctx._field_0__2.result, <expr_t> _localctx._field_0__5.result);
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 528;
				_localctx._field_2__1 = this.match(luaParser.NAME);
				this.state = 529;
				this.match(luaParser.T__2);
				this.state = 530;
				_localctx._field_2__3 = this.exp();
				 _localctx.result =  <table_field_t> NameField(<antlr.Token> _localctx._field_2__1, <expr_t> _localctx._field_2__3.result);
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 533;
				_localctx._field_4__1 = this.exp();
				 _localctx.result =  <table_field_t> ElementField(<expr_t> _localctx._field_4__1.result);
				            
				}
				break;
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public fieldsep(): FieldsepContext {
		let _localctx: FieldsepContext = new FieldsepContext(this._ctx, this.state);
		this.enterRule(_localctx, 84, luaParser.RULE_fieldsep);
		try {
			this.state = 542;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__19:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 538;
				this.match(luaParser.T__19);
				 _localctx.result =  0;
				            
				}
				break;
			case luaParser.T__0:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 540;
				this.match(luaParser.T__0);
				 _localctx.result =  0;
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}
	// @RuleVersion(0)
	public binop(): BinopContext {
		let _localctx: BinopContext = new BinopContext(this._ctx, this.state);
		this.enterRule(_localctx, 86, luaParser.RULE_binop);
		try {
			this.state = 584;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case luaParser.T__37:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 544;
				_localctx._binop_0__1 = this.match(luaParser.T__37);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_0__1);
				            
				}
				break;
			case luaParser.T__38:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 546;
				_localctx._binop_2__1 = this.match(luaParser.T__38);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_2__1);
				            
				}
				break;
			case luaParser.T__39:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 548;
				_localctx._binop_4__1 = this.match(luaParser.T__39);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_4__1);
				            
				}
				break;
			case luaParser.T__40:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 550;
				_localctx._binop_6__1 = this.match(luaParser.T__40);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_6__1);
				            
				}
				break;
			case luaParser.T__41:
				this.enterOuterAlt(_localctx, 5);
				{
				this.state = 552;
				_localctx._binop_8__1 = this.match(luaParser.T__41);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_8__1);
				            
				}
				break;
			case luaParser.T__42:
				this.enterOuterAlt(_localctx, 6);
				{
				this.state = 554;
				_localctx._binop_10__1 = this.match(luaParser.T__42);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_10__1);
				            
				}
				break;
			case luaParser.T__43:
				this.enterOuterAlt(_localctx, 7);
				{
				this.state = 556;
				_localctx._binop_12__1 = this.match(luaParser.T__43);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_12__1);
				            
				}
				break;
			case luaParser.T__44:
				this.enterOuterAlt(_localctx, 8);
				{
				this.state = 558;
				_localctx._binop_14__1 = this.match(luaParser.T__44);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_14__1);
				            
				}
				break;
			case luaParser.T__45:
				this.enterOuterAlt(_localctx, 9);
				{
				this.state = 560;
				_localctx._binop_16__1 = this.match(luaParser.T__45);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_16__1);
				            
				}
				break;
			case luaParser.T__24:
				this.enterOuterAlt(_localctx, 10);
				{
				this.state = 562;
				_localctx._binop_18__1 = this.match(luaParser.T__24);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_18__1);
				            
				}
				break;
			case luaParser.T__46:
				this.enterOuterAlt(_localctx, 11);
				{
				this.state = 564;
				_localctx._binop_20__1 = this.match(luaParser.T__46);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_20__1);
				            
				}
				break;
			case luaParser.T__47:
				this.enterOuterAlt(_localctx, 12);
				{
				this.state = 566;
				_localctx._binop_22__1 = this.match(luaParser.T__47);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_22__1);
				            
				}
				break;
			case luaParser.T__48:
				this.enterOuterAlt(_localctx, 13);
				{
				this.state = 568;
				_localctx._binop_24__1 = this.match(luaParser.T__48);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_24__1);
				            
				}
				break;
			case luaParser.T__49:
				this.enterOuterAlt(_localctx, 14);
				{
				this.state = 570;
				_localctx._binop_26__1 = this.match(luaParser.T__49);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_26__1);
				            
				}
				break;
			case luaParser.T__50:
				this.enterOuterAlt(_localctx, 15);
				{
				this.state = 572;
				_localctx._binop_28__1 = this.match(luaParser.T__50);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_28__1);
				            
				}
				break;
			case luaParser.T__23:
				this.enterOuterAlt(_localctx, 16);
				{
				this.state = 574;
				_localctx._binop_30__1 = this.match(luaParser.T__23);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_30__1);
				            
				}
				break;
			case luaParser.T__51:
				this.enterOuterAlt(_localctx, 17);
				{
				this.state = 576;
				_localctx._binop_32__1 = this.match(luaParser.T__51);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_32__1);
				            
				}
				break;
			case luaParser.T__52:
				this.enterOuterAlt(_localctx, 18);
				{
				this.state = 578;
				_localctx._binop_34__1 = this.match(luaParser.T__52);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_34__1);
				            
				}
				break;
			case luaParser.T__53:
				this.enterOuterAlt(_localctx, 19);
				{
				this.state = 580;
				_localctx._binop_36__1 = this.match(luaParser.T__53);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_36__1);
				            
				}
				break;
			case luaParser.T__54:
				this.enterOuterAlt(_localctx, 20);
				{
				this.state = 582;
				_localctx._binop_38__1 = this.match(luaParser.T__54);
				 _localctx.result =  <op_t<expr_t>> mkOperator<expr_t>(<antlr.Token> _localctx._binop_38__1);
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (re) {
			if (re instanceof RecognitionException) {
				_localctx.exception = re;
				this._errHandler.reportError(this, re);
				this._errHandler.recover(this, re);
			} else {
				throw re;
			}
		}
		finally {
			this.exitRule();
		}
		return _localctx;
	}

	public sempred(_localctx: RuleContext, ruleIndex: number, predIndex: number): boolean {
		switch (ruleIndex) {
		case 2:
			return this.nempty_list_o_stat_p__sempred(_localctx as Nempty_list_o_stat_p_Context, predIndex);

		case 9:
			return this.nempty_list_o_elseif_p__sempred(_localctx as Nempty_list_o_elseif_p_Context, predIndex);

		case 21:
			return this.binseq_sempred(_localctx as BinseqContext, predIndex);

		case 25:
			return this.prefixexp_sempred(_localctx as PrefixexpContext, predIndex);

		case 27:
			return this.nempty_seplist_o__i__s__i__s_exp_p__sempred(_localctx as Nempty_seplist_o__i__s__i__s_exp_p_Context, predIndex);

		case 35:
			return this.nempty_seplist_o__i__s__i__s__i_name_k__p__sempred(_localctx as Nempty_seplist_o__i__s__i__s__i_name_k__p_Context, predIndex);

		case 37:
			return this.nempty_seplist_o_fieldsep_s_field_p__sempred(_localctx as Nempty_seplist_o_fieldsep_s_field_p_Context, predIndex);

		case 40:
			return this.funcname_sempred(_localctx as FuncnameContext, predIndex);
		}
		return true;
	}
	private nempty_list_o_stat_p__sempred(_localctx: Nempty_list_o_stat_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 0:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private nempty_list_o_elseif_p__sempred(_localctx: Nempty_list_o_elseif_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 1:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private binseq_sempred(_localctx: BinseqContext, predIndex: number): boolean {
		switch (predIndex) {
		case 2:
			return this.precpred(this._ctx, 2);
		}
		return true;
	}
	private prefixexp_sempred(_localctx: PrefixexpContext, predIndex: number): boolean {
		switch (predIndex) {
		case 3:
			return this.precpred(this._ctx, 5);

		case 4:
			return this.precpred(this._ctx, 4);

		case 5:
			return this.precpred(this._ctx, 3);

		case 6:
			return this.precpred(this._ctx, 2);
		}
		return true;
	}
	private nempty_seplist_o__i__s__i__s_exp_p__sempred(_localctx: Nempty_seplist_o__i__s__i__s_exp_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 7:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private nempty_seplist_o__i__s__i__s__i_name_k__p__sempred(_localctx: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 8:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private nempty_seplist_o_fieldsep_s_field_p__sempred(_localctx: Nempty_seplist_o_fieldsep_s_field_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 9:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private funcname_sempred(_localctx: FuncnameContext, predIndex: number): boolean {
		switch (predIndex) {
		case 10:
			return this.precpred(this._ctx, 3);

		case 11:
			return this.precpred(this._ctx, 2);
		}
		return true;
	}

	private static readonly _serializedATNSegments: number = 2;
	private static readonly _serializedATNSegment0: string =
		"\x03\uC91D\uCABA\u058D\uAFBA\u4F53\u0607\uEA8B\uC241\x03?\u024D\x04\x02" +
		"\t\x02\x04\x03\t\x03\x04\x04\t\x04\x04\x05\t\x05\x04\x06\t\x06\x04\x07" +
		"\t\x07\x04\b\t\b\x04\t\t\t\x04\n\t\n\x04\v\t\v\x04\f\t\f\x04\r\t\r\x04" +
		"\x0E\t\x0E\x04\x0F\t\x0F\x04\x10\t\x10\x04\x11\t\x11\x04\x12\t\x12\x04" +
		"\x13\t\x13\x04\x14\t\x14\x04\x15\t\x15\x04\x16\t\x16\x04\x17\t\x17\x04" +
		"\x18\t\x18\x04\x19\t\x19\x04\x1A\t\x1A\x04\x1B\t\x1B\x04\x1C\t\x1C\x04" +
		"\x1D\t\x1D\x04\x1E\t\x1E\x04\x1F\t\x1F\x04 \t \x04!\t!\x04\"\t\"\x04#" +
		"\t#\x04$\t$\x04%\t%\x04&\t&\x04\'\t\'\x04(\t(\x04)\t)\x04*\t*\x04+\t+" +
		"\x04,\t,\x04-\t-\x03\x02\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03" +
		"\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x07\x04" +
		"j\n\x04\f\x04\x0E\x04m\v\x04\x03\x05\x03\x05\x03\x05\x03\x05\x05\x05s" +
		"\n\x05\x03\x06\x03\x06\x03\x06\x03\x07\x03\x07\x03\x07\x03\x07\x05\x07" +
		"|\n\x07\x03\b\x03\b\x03\b\x03\b\x03\t\x03\t\x03\t\x05\t\x85\n\t\x03\n" +
		"\x03\n\x03\n\x03\n\x03\n\x03\v\x03\v\x03\v\x03\v\x03\v\x03\v\x03\v\x03" +
		"\v\x07\v\x94\n\v\f\v\x0E\v\x97\v\v\x03\f\x03\f\x03\f\x03\f\x05\f\x9D\n" +
		"\f\x03\r\x03\r\x03\r\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x05\x0E\xA6\n\x0E" +
		"\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F" +
		"\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F" +
		"\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F" +
		"\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F" +
		"\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F" +
		"\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F" +
		"\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F" +
		"\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F" +
		"\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x05\x0F\xF7\n" +
		"\x0F\x03\x10\x03\x10\x03\x10\x03\x10\x03\x10\x05\x10\xFE\n\x10\x03\x11" +
		"\x03\x11\x03\x11\x03\x11\x03\x11\x03\x11\x03\x12\x03\x12\x03\x12\x03\x12" +
		"\x03\x12\x05\x12\u010B\n\x12\x03\x13\x03\x13\x03\x13\x03\x13\x03\x13\x03" +
		"\x13\x03\x14\x03\x14\x03\x14\x03\x14\x03\x15\x03\x15\x03\x15\x03\x16\x03" +
		"\x16\x03\x16\x03\x17\x03\x17\x03\x17\x03\x17\x03\x17\x03\x17\x03\x17\x03" +
		"\x17\x03\x17\x07\x17\u0126\n\x17\f\x17\x0E\x17\u0129\v\x17\x03\x18\x03" +
		"\x18\x03\x18\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03" +
		"\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03" +
		"\x19\x03\x19\x03\x19\x05\x19\u0141\n\x19\x03\x1A\x03\x1A\x03\x1A\x03\x1A" +
		"\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x05\x1A\u014B\n\x1A\x03\x1B\x03\x1B\x03" +
		"\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x05" +
		"\x1B\u0158\n\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B" +
		"\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B" +
		"\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x07\x1B\u016E\n\x1B\f\x1B\x0E\x1B\u0171" +
		"\v\x1B\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C" +
		"\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C" +
		"\x03\x1C\x03\x1C\x03\x1C\x05\x1C\u0187\n\x1C\x03\x1D\x03\x1D\x03\x1D\x03" +
		"\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x07\x1D\u0192\n\x1D\f\x1D" +
		"\x0E\x1D\u0195\v\x1D\x03\x1E\x03\x1E\x03\x1E\x03\x1E\x05\x1E\u019B\n\x1E" +
		"\x03\x1F\x03\x1F\x03\x1F\x03 \x03 \x03 \x03 \x03 \x03 \x03 \x03 \x03 " +
		"\x03 \x05 \u01AA\n \x03!\x03!\x03!\x03!\x05!\u01B0\n!\x03\"\x03\"\x03" +
		"\"\x03\"\x05\"\u01B6\n\"\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#" +
		"\x03$\x03$\x03$\x03$\x05$\u01C5\n$\x03%\x03%\x03%\x03%\x03%\x03%\x03%" +
		"\x03%\x07%\u01CF\n%\f%\x0E%\u01D2\v%\x03&\x03&\x03&\x03&\x03&\x03&\x05" +
		"&\u01DA\n&\x03\'\x03\'\x03\'\x03\'\x03\'\x03\'\x03\'\x03\'\x03\'\x07\'" +
		"\u01E5\n\'\f\'\x0E\'\u01E8\v\'\x03(\x03(\x03(\x03(\x05(\u01EE\n(\x03)" +
		"\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x05)\u01F9\n)\x03*\x03*\x03*" +
		"\x03*\x03*\x03*\x03*\x03*\x03*\x03*\x03*\x03*\x07*\u0207\n*\f*\x0E*\u020A" +
		"\v*\x03+\x03+\x03+\x03+\x03+\x03+\x03+\x03+\x03+\x03+\x03+\x03+\x03+\x03" +
		"+\x03+\x05+\u021B\n+\x03,\x03,\x03,\x03,\x05,\u0221\n,\x03-\x03-\x03-" +
		"\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03" +
		"-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03" +
		"-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x05-\u024B\n-\x03-\x02" +
		"\x02\n\x06\x14,48HLR.\x02\x02\x04\x02\x06\x02\b\x02\n\x02\f\x02\x0E\x02" +
		"\x10\x02\x12\x02\x14\x02\x16\x02\x18\x02\x1A\x02\x1C\x02\x1E\x02 \x02" +
		"\"\x02$\x02&\x02(\x02*\x02,\x02.\x020\x022\x024\x026\x028\x02:\x02<\x02" +
		">\x02@\x02B\x02D\x02F\x02H\x02J\x02L\x02N\x02P\x02R\x02T\x02V\x02X\x02" +
		"\x02\x02\x02\u026E\x02Z\x03\x02\x02\x02\x04^\x03\x02\x02\x02\x06a\x03" +
		"\x02\x02\x02\br\x03\x02\x02\x02\nt\x03\x02\x02\x02\f{\x03\x02\x02\x02" +
		"\x0E}\x03\x02\x02\x02\x10\x84\x03\x02\x02\x02\x12\x86\x03\x02\x02\x02" +
		"\x14\x8B\x03\x02\x02\x02\x16\x9C\x03\x02\x02\x02\x18\x9E\x03\x02\x02\x02" +
		"\x1A\xA5\x03\x02\x02\x02\x1C\xF6\x03\x02\x02\x02\x1E\xFD\x03\x02\x02\x02" +
		" \xFF\x03\x02\x02\x02\"\u010A\x03\x02\x02\x02$\u010C\x03\x02\x02\x02&" +
		"\u0112\x03\x02\x02\x02(\u0116\x03\x02\x02\x02*\u0119\x03\x02\x02\x02," +
		"\u011C\x03\x02\x02\x02.\u012A\x03\x02\x02\x020\u0140\x03\x02\x02\x022" +
		"\u014A\x03\x02\x02\x024\u0157\x03\x02\x02\x026\u0186\x03\x02\x02\x028" +
		"\u0188\x03\x02\x02\x02:\u019A\x03\x02\x02\x02<\u019C\x03\x02\x02\x02>" +
		"\u01A9\x03\x02\x02\x02@\u01AF\x03\x02\x02\x02B\u01B5\x03\x02\x02\x02D" +
		"\u01B7\x03\x02\x02\x02F\u01C4\x03\x02\x02\x02H\u01C6\x03\x02\x02\x02J" +
		"\u01D9\x03\x02\x02\x02L\u01DB\x03\x02\x02\x02N\u01ED\x03\x02\x02\x02P" +
		"\u01F8\x03\x02\x02\x02R\u01FA\x03\x02\x02\x02T\u021A\x03\x02\x02\x02V" +
		"\u0220\x03\x02\x02\x02X\u024A\x03\x02\x02\x02Z[\x05\x04\x03\x02[\\\x07" +
		"\x02\x02\x03\\]\b\x02\x01\x02]\x03\x03\x02\x02\x02^_\x05\x0E\b\x02_`\b" +
		"\x03\x01\x02`\x05\x03\x02\x02\x02ab\b\x04\x01\x02bc\x05\x1C\x0F\x02cd" +
		"\b\x04\x01\x02dk\x03\x02\x02\x02ef\f\x03\x02\x02fg\x05\x1C\x0F\x02gh\b" +
		"\x04\x01\x02hj\x03\x02\x02\x02ie\x03\x02\x02\x02jm\x03\x02\x02\x02ki\x03" +
		"\x02\x02\x02kl\x03\x02\x02\x02l\x07\x03\x02\x02\x02mk\x03\x02\x02\x02" +
		"ns\b\x05\x01\x02op\x05\x06\x04\x02pq\b\x05\x01\x02qs\x03\x02\x02\x02r" +
		"n\x03\x02\x02\x02ro\x03\x02\x02\x02s\t\x03\x02\x02\x02tu\x05\b\x05\x02" +
		"uv\b\x06\x01\x02v\v\x03\x02\x02\x02wx\x05\x12\n\x02xy\b\x07\x01\x02y|" +
		"\x03\x02\x02\x02z|\b\x07\x01\x02{w\x03\x02\x02\x02{z\x03\x02\x02\x02|" +
		"\r\x03\x02\x02\x02}~\x05\n\x06\x02~\x7F\x05\f\x07\x02\x7F\x80\b\b\x01" +
		"\x02\x80\x0F\x03\x02\x02\x02\x81\x82\x07\x03\x02\x02\x82\x85\b\t\x01\x02" +
		"\x83\x85\b\t\x01\x02\x84\x81\x03\x02\x02\x02\x84\x83\x03\x02\x02\x02\x85" +
		"\x11\x03\x02\x02\x02\x86\x87\x07\x04\x02\x02\x87\x88\x05<\x1F\x02\x88" +
		"\x89\x05\x10\t\x02\x89\x8A\b\n\x01\x02\x8A\x13\x03\x02\x02\x02\x8B\x8C" +
		"\b\v\x01\x02\x8C\x8D\x05$\x13\x02\x8D\x8E\b\v\x01\x02\x8E\x95\x03\x02" +
		"\x02\x02\x8F\x90\f\x03\x02\x02\x90\x91\x05$\x13\x02\x91\x92\b\v\x01\x02" +
		"\x92\x94\x03\x02\x02\x02\x93\x8F\x03\x02\x02\x02\x94\x97\x03\x02\x02\x02" +
		"\x95\x93\x03\x02\x02\x02\x95\x96\x03\x02\x02\x02\x96\x15\x03\x02\x02\x02" +
		"\x97\x95\x03\x02\x02\x02\x98\x9D\b\f\x01\x02\x99\x9A\x05\x14\v\x02\x9A" +
		"\x9B\b\f\x01\x02\x9B\x9D\x03\x02\x02\x02\x9C\x98\x03\x02\x02\x02\x9C\x99" +
		"\x03\x02\x02\x02\x9D\x17\x03\x02\x02\x02\x9E\x9F\x05\x16\f\x02\x9F\xA0" +
		"\b\r\x01\x02\xA0\x19\x03\x02\x02\x02\xA1\xA2\x05&\x14\x02\xA2\xA3\b\x0E" +
		"\x01\x02\xA3\xA6\x03\x02\x02\x02\xA4\xA6\b\x0E\x01\x02\xA5\xA1\x03\x02" +
		"\x02\x02\xA5\xA4\x03\x02\x02\x02\xA6\x1B\x03\x02\x02\x02\xA7\xA8\x07\x03" +
		"\x02\x02\xA8\xF7\b\x0F\x01\x02\xA9\xAA\x058\x1D\x02\xAA\xAB\x07\x05\x02" +
		"\x02\xAB\xAC\x058\x1D\x02\xAC\xAD\b\x0F\x01\x02\xAD\xF7\x03\x02\x02\x02" +
		"\xAE\xAF\x05(\x15\x02\xAF\xB0\b\x0F\x01\x02\xB0\xF7\x03\x02\x02\x02\xB1" +
		"\xB2\x07\x06\x02\x02\xB2\xB3\x07<\x02\x02\xB3\xB4\x07\x06\x02\x02\xB4" +
		"\xF7\b\x0F\x01\x02\xB5\xB6\x07\x07\x02\x02\xB6\xF7\b\x0F\x01\x02\xB7\xB8" +
		"\x07\b\x02\x02\xB8\xB9\x07<\x02\x02\xB9\xF7\b\x0F\x01\x02\xBA\xBB\x07" +
		"\t\x02\x02\xBB\xBC\x05\x0E\b\x02\xBC\xBD\x07\n\x02\x02\xBD\xBE\b\x0F\x01" +
		"\x02\xBE\xF7\x03\x02\x02\x02\xBF\xC0\x07\v\x02\x02\xC0\xC1\x05(\x15\x02" +
		"\xC1\xC2\x07\t\x02\x02\xC2\xC3\x05\x0E\b\x02\xC3\xC4\x07\n\x02\x02\xC4" +
		"\xC5\b\x0F\x01\x02\xC5\xF7\x03\x02\x02\x02\xC6\xC7\x07\f\x02\x02\xC7\xC8" +
		"\x05\x0E\b\x02\xC8\xC9\x07\r\x02\x02\xC9\xCA\x05(\x15\x02\xCA\xCB\b\x0F" +
		"\x01\x02\xCB\xF7\x03\x02\x02\x02\xCC\xCD\x07\x0E\x02\x02\xCD\xCE\x05(" +
		"\x15\x02\xCE\xCF\x07\x0F\x02\x02\xCF\xD0\x05\x0E\b\x02\xD0\xD1\x05\x18" +
		"\r\x02\xD1\xD2\x05\x1A\x0E\x02\xD2\xD3\x07\n\x02\x02\xD3\xD4\b\x0F\x01" +
		"\x02\xD4\xF7\x03\x02\x02\x02\xD5\xD6\x07\x10\x02\x02\xD6\xD7\x07<\x02" +
		"\x02\xD7\xD8\x07\x05\x02\x02\xD8\xD9\x05 \x11\x02\xD9\xDA\x07\t\x02\x02" +
		"\xDA\xDB\x05\x0E\b\x02\xDB\xDC\x07\n\x02\x02\xDC\xDD\b\x0F\x01\x02\xDD" +
		"\xF7\x03\x02\x02\x02\xDE\xDF\x07\x10\x02\x02\xDF\xE0\x05H%\x02\xE0\xE1" +
		"\x07\x11\x02\x02\xE1\xE2\x058\x1D\x02\xE2\xE3\x07\t\x02\x02\xE3\xE4\x05" +
		"\x0E\b\x02\xE4\xE5\x07\n\x02\x02\xE5\xE6\b\x0F\x01\x02\xE6\xF7\x03\x02" +
		"\x02\x02\xE7\xE8\x07\x12\x02\x02\xE8\xE9\x07\x13\x02\x02\xE9\xEA\x05R" +
		"*\x02\xEA\xEB\x07\x14\x02\x02\xEB\xEC\x05B\"\x02\xEC\xED\x07\x15\x02\x02" +
		"\xED\xEE\x05\x0E\b\x02\xEE\xEF\x07\n\x02\x02\xEF\xF0\b\x0F\x01\x02\xF0" +
		"\xF7\x03\x02\x02\x02\xF1\xF2\x07\x12\x02\x02\xF2\xF3\x05H%\x02\xF3\xF4" +
		"\x05\x1E\x10\x02\xF4\xF5\b\x0F\x01\x02\xF5\xF7\x03\x02\x02\x02\xF6\xA7" +
		"\x03\x02\x02\x02\xF6\xA9\x03\x02\x02\x02\xF6\xAE\x03\x02\x02\x02\xF6\xB1" +
		"\x03\x02\x02\x02\xF6\xB5\x03\x02\x02\x02\xF6\xB7\x03\x02\x02\x02\xF6\xBA" +
		"\x03\x02\x02\x02\xF6\xBF\x03\x02\x02\x02\xF6\xC6\x03\x02\x02\x02\xF6\xCC" +
		"\x03\x02\x02\x02\xF6\xD5\x03\x02\x02\x02\xF6\xDE\x03\x02\x02\x02\xF6\xE7" +
		"\x03\x02\x02\x02\xF6\xF1\x03\x02\x02\x02\xF7\x1D\x03\x02\x02\x02\xF8\xF9" +
		"\x07\x05\x02\x02\xF9\xFA\x058\x1D\x02\xFA\xFB\b\x10\x01\x02\xFB\xFE\x03" +
		"\x02\x02\x02\xFC\xFE\b\x10\x01\x02\xFD\xF8\x03\x02\x02\x02\xFD\xFC\x03" +
		"\x02\x02\x02\xFE\x1F\x03\x02\x02\x02\xFF\u0100\x05(\x15\x02\u0100\u0101" +
		"\x07\x16\x02\x02\u0101\u0102\x05(\x15\x02\u0102\u0103\x05\"\x12\x02\u0103" +
		"\u0104\b\x11\x01\x02\u0104!\x03\x02\x02\x02\u0105\u0106\x07\x16\x02\x02" +
		"\u0106\u0107\x05(\x15\x02\u0107\u0108\b\x12\x01\x02\u0108\u010B\x03\x02" +
		"\x02\x02\u0109\u010B\b\x12\x01\x02\u010A\u0105\x03\x02\x02\x02\u010A\u0109" +
		"\x03\x02\x02\x02\u010B#\x03\x02\x02\x02\u010C\u010D\x07\x17\x02\x02\u010D" +
		"\u010E\x05(\x15\x02\u010E\u010F\x07\x0F\x02\x02\u010F\u0110\x05\x0E\b" +
		"\x02\u0110\u0111\b\x13\x01\x02\u0111%\x03\x02\x02\x02\u0112\u0113\x07" +
		"\x18\x02\x02\u0113\u0114\x05\x0E\b\x02\u0114\u0115\b\x14\x01\x02\u0115" +
		"\'\x03\x02\x02\x02\u0116\u0117\x05*\x16\x02\u0117\u0118\b\x15\x01\x02" +
		"\u0118)\x03\x02\x02\x02\u0119\u011A\x05,\x17\x02\u011A\u011B\b\x16\x01" +
		"\x02\u011B+\x03\x02\x02\x02\u011C\u011D\b\x17\x01\x02\u011D\u011E\x05" +
		".\x18\x02\u011E\u011F\b\x17\x01\x02\u011F\u0127\x03\x02\x02\x02\u0120" +
		"\u0121\f\x04\x02\x02\u0121\u0122\x05X-\x02\u0122\u0123\x05.\x18\x02\u0123" +
		"\u0124\b\x17\x01\x02\u0124\u0126\x03\x02\x02\x02\u0125\u0120\x03\x02\x02" +
		"\x02\u0126\u0129\x03\x02\x02\x02\u0127\u0125\x03\x02\x02\x02\u0127\u0128" +
		"\x03\x02\x02\x02\u0128-\x03\x02\x02\x02\u0129\u0127\x03\x02\x02\x02\u012A" +
		"\u012B\x050\x19\x02\u012B\u012C\b\x18\x01\x02\u012C/\x03\x02\x02\x02\u012D" +
		"\u012E\x07\x19\x02\x02\u012E\u012F\x052\x1A\x02\u012F\u0130\b\x19\x01" +
		"\x02\u0130\u0141\x03\x02\x02\x02\u0131\u0132\x07\x1A\x02\x02\u0132\u0133" +
		"\x052\x1A\x02\u0133\u0134\b\x19\x01\x02\u0134\u0141\x03\x02\x02\x02\u0135" +
		"\u0136\x07\x1B\x02\x02\u0136\u0137\x052\x1A\x02\u0137\u0138\b\x19\x01" +
		"\x02\u0138\u0141\x03\x02\x02\x02\u0139\u013A\x07\x1C\x02\x02\u013A\u013B" +
		"\x052\x1A\x02\u013B\u013C\b\x19\x01\x02\u013C\u0141\x03\x02\x02\x02\u013D" +
		"\u013E\x052\x1A\x02\u013E\u013F\b\x19\x01\x02\u013F\u0141\x03\x02\x02" +
		"\x02\u0140\u012D\x03\x02\x02\x02\u0140\u0131\x03\x02\x02\x02\u0140\u0135" +
		"\x03\x02\x02\x02\u0140\u0139\x03\x02\x02\x02\u0140\u013D\x03\x02\x02\x02" +
		"\u01411\x03\x02\x02\x02\u0142\u0143\x054\x1B\x02\u0143\u0144\x07\x1D\x02" +
		"\x02\u0144\u0145\x052\x1A\x02\u0145\u0146\b\x1A\x01\x02\u0146\u014B\x03" +
		"\x02\x02\x02\u0147\u0148\x054\x1B\x02\u0148\u0149\b\x1A\x01\x02\u0149" +
		"\u014B\x03\x02\x02\x02\u014A\u0142\x03\x02\x02\x02\u014A\u0147\x03\x02" +
		"\x02\x02\u014B3\x03\x02\x02\x02\u014C\u014D\b\x1B\x01\x02\u014D\u014E" +
		"\x07<\x02\x02\u014E\u0158\b\x1B\x01\x02\u014F\u0150\x07\x14\x02\x02\u0150" +
		"\u0151\x05(\x15\x02\u0151\u0152\x07\x15\x02\x02\u0152\u0153\b\x1B\x01" +
		"\x02\u0153\u0158\x03\x02\x02\x02\u0154\u0155\x056\x1C\x02\u0155\u0156" +
		"\b\x1B\x01\x02\u0156\u0158\x03\x02\x02\x02\u0157\u014C\x03\x02\x02\x02" +
		"\u0157\u014F\x03\x02\x02\x02\u0157\u0154\x03\x02\x02\x02\u0158\u016F\x03" +
		"\x02\x02\x02\u0159\u015A\f\x07\x02\x02\u015A\u015B\x05> \x02\u015B\u015C" +
		"\b\x1B\x01\x02\u015C\u016E\x03\x02\x02\x02\u015D\u015E\f\x06\x02\x02\u015E" +
		"\u015F\x07\x1E\x02\x02\u015F\u0160\x07<\x02\x02\u0160\u0161\x05> \x02" +
		"\u0161\u0162\b\x1B\x01\x02\u0162\u016E\x03\x02\x02\x02\u0163\u0164\f\x05" +
		"\x02\x02\u0164\u0165\x07\x1F\x02\x02\u0165\u0166\x05(\x15\x02\u0166\u0167" +
		"\x07 \x02\x02\u0167\u0168\b\x1B\x01\x02\u0168\u016E\x03\x02\x02\x02\u0169" +
		"\u016A\f\x04\x02\x02\u016A\u016B\x07!\x02\x02\u016B\u016C\x07<\x02\x02" +
		"\u016C\u016E\b\x1B\x01\x02\u016D\u0159\x03\x02\x02\x02\u016D\u015D\x03" +
		"\x02\x02\x02\u016D\u0163\x03\x02\x02\x02\u016D\u0169\x03\x02\x02\x02\u016E" +
		"\u0171\x03\x02\x02\x02\u016F\u016D\x03\x02\x02\x02\u016F\u0170\x03\x02" +
		"\x02\x02\u01705\x03\x02\x02\x02\u0171\u016F\x03\x02\x02\x02\u0172\u0173" +
		"\x07\"\x02\x02\u0173\u0187\b\x1C\x01\x02\u0174\u0175\x07#\x02\x02\u0175" +
		"\u0187\b\x1C\x01\x02\u0176\u0177\x07$\x02\x02\u0177\u0187\b\x1C\x01\x02" +
		"\u0178\u0179\x07=\x02\x02\u0179\u0187\b\x1C\x01\x02\u017A\u017B\x07>\x02" +
		"\x02\u017B\u0187\b\x1C\x01\x02\u017C\u017D\x07?\x02\x02\u017D\u0187\b" +
		"\x1C\x01\x02\u017E\u017F\x07%\x02\x02\u017F\u0187\b\x1C\x01\x02\u0180" +
		"\u0181\x05D#\x02\u0181\u0182\b\x1C\x01\x02\u0182\u0187\x03\x02\x02\x02" +
		"\u0183\u0184\x05P)\x02\u0184\u0185\b\x1C\x01\x02\u0185\u0187\x03\x02\x02" +
		"\x02\u0186\u0172\x03\x02\x02\x02\u0186\u0174\x03\x02\x02\x02\u0186\u0176" +
		"\x03\x02\x02\x02\u0186\u0178\x03\x02\x02\x02\u0186\u017A\x03\x02\x02\x02" +
		"\u0186\u017C\x03\x02\x02\x02\u0186\u017E\x03\x02\x02\x02\u0186\u0180\x03" +
		"\x02\x02\x02\u0186\u0183\x03\x02\x02\x02\u01877\x03\x02\x02\x02\u0188" +
		"\u0189\b\x1D\x01\x02\u0189\u018A\x05(\x15\x02\u018A\u018B\b\x1D\x01\x02" +
		"\u018B\u0193\x03\x02\x02\x02\u018C\u018D\f\x03\x02\x02\u018D\u018E\x07" +
		"\x16\x02\x02\u018E\u018F\x05(\x15\x02\u018F\u0190\b\x1D\x01\x02\u0190" +
		"\u0192\x03\x02\x02\x02\u0191\u018C\x03\x02\x02\x02\u0192\u0195\x03\x02" +
		"\x02\x02\u0193\u0191\x03\x02\x02\x02\u0193\u0194\x03\x02\x02\x02\u0194" +
		"9\x03\x02\x02\x02\u0195\u0193\x03\x02\x02\x02\u0196\u019B\b\x1E\x01\x02" +
		"\u0197\u0198\x058\x1D\x02\u0198\u0199\b\x1E\x01\x02\u0199\u019B\x03\x02" +
		"\x02\x02\u019A\u0196\x03\x02\x02\x02\u019A\u0197\x03\x02\x02\x02\u019B" +
		";\x03\x02\x02\x02\u019C\u019D\x05:\x1E\x02\u019D\u019E\b\x1F\x01\x02\u019E" +
		"=\x03\x02\x02\x02\u019F\u01A0\x07\x14\x02\x02\u01A0\u01A1\x05<\x1F\x02" +
		"\u01A1\u01A2\x07\x15\x02\x02\u01A2\u01A3\b \x01\x02\u01A3\u01AA\x03\x02" +
		"\x02\x02\u01A4\u01A5\x05P)\x02\u01A5\u01A6\b \x01\x02\u01A6\u01AA\x03" +
		"\x02\x02\x02\u01A7\u01A8\x07>\x02\x02\u01A8\u01AA\b \x01\x02\u01A9\u019F" +
		"\x03\x02\x02\x02\u01A9\u01A4\x03\x02\x02\x02\u01A9\u01A7\x03\x02\x02\x02" +
		"\u01AA?\x03\x02\x02\x02\u01AB\u01AC\x05R*\x02\u01AC\u01AD\b!\x01\x02\u01AD" +
		"\u01B0\x03\x02\x02\x02\u01AE\u01B0\b!\x01\x02\u01AF\u01AB\x03\x02\x02" +
		"\x02\u01AF\u01AE\x03\x02\x02\x02\u01B0A\x03\x02\x02\x02\u01B1\u01B2\x05" +
		"J&\x02\u01B2\u01B3\b\"\x01\x02\u01B3\u01B6\x03\x02\x02\x02\u01B4\u01B6" +
		"\b\"\x01\x02\u01B5\u01B1\x03\x02\x02\x02\u01B5\u01B4\x03\x02\x02\x02\u01B6" +
		"C\x03\x02\x02\x02\u01B7\u01B8\x07\x13\x02\x02\u01B8\u01B9\x05@!\x02\u01B9" +
		"\u01BA\x07\x14\x02\x02\u01BA\u01BB\x05B\"\x02\u01BB\u01BC\x07\x15\x02" +
		"\x02\u01BC\u01BD\x05\x0E\b\x02\u01BD\u01BE\x07\n\x02\x02\u01BE\u01BF\b" +
		"#\x01\x02\u01BFE\x03\x02\x02\x02\u01C0\u01C1\x07\x16\x02\x02\u01C1\u01C2" +
		"\x07%\x02\x02\u01C2\u01C5\b$\x01\x02\u01C3\u01C5\b$\x01\x02\u01C4\u01C0" +
		"\x03\x02\x02\x02\u01C4\u01C3\x03\x02\x02\x02\u01C5G\x03\x02\x02\x02\u01C6" +
		"\u01C7\b%\x01\x02\u01C7\u01C8\x07<\x02\x02\u01C8\u01C9\b%\x01\x02\u01C9" +
		"\u01D0\x03\x02\x02\x02\u01CA\u01CB\f\x03\x02\x02\u01CB\u01CC\x07\x16\x02" +
		"\x02\u01CC\u01CD\x07<\x02\x02\u01CD\u01CF\b%\x01\x02\u01CE\u01CA\x03\x02" +
		"\x02\x02\u01CF\u01D2\x03\x02\x02\x02\u01D0\u01CE\x03\x02\x02\x02\u01D0" +
		"\u01D1\x03\x02\x02\x02\u01D1I\x03\x02\x02\x02\u01D2\u01D0\x03\x02\x02" +
		"\x02\u01D3\u01D4\x07%\x02\x02\u01D4\u01DA\b&\x01\x02\u01D5\u01D6\x05H" +
		"%\x02\u01D6\u01D7\x05F$\x02\u01D7\u01D8\b&\x01\x02\u01D8\u01DA\x03\x02" +
		"\x02\x02\u01D9\u01D3\x03\x02\x02\x02\u01D9\u01D5\x03\x02\x02\x02\u01DA" +
		"K\x03\x02\x02\x02\u01DB\u01DC\b\'\x01\x02\u01DC\u01DD\x05T+\x02\u01DD" +
		"\u01DE\b\'\x01\x02\u01DE\u01E6\x03\x02\x02\x02\u01DF\u01E0\f\x03\x02\x02" +
		"\u01E0\u01E1\x05V,\x02\u01E1\u01E2\x05T+\x02\u01E2\u01E3\b\'\x01\x02\u01E3" +
		"\u01E5\x03\x02\x02\x02\u01E4\u01DF\x03\x02\x02\x02\u01E5\u01E8\x03\x02" +
		"\x02\x02\u01E6\u01E4\x03\x02\x02\x02\u01E6\u01E7\x03\x02\x02\x02\u01E7" +
		"M\x03\x02\x02\x02\u01E8\u01E6\x03\x02\x02\x02\u01E9\u01EA\x05V,\x02\u01EA" +
		"\u01EB\b(\x01\x02\u01EB\u01EE\x03\x02\x02\x02\u01EC\u01EE\b(\x01\x02\u01ED" +
		"\u01E9\x03\x02\x02\x02\u01ED\u01EC\x03\x02\x02\x02\u01EEO\x03\x02\x02" +
		"\x02\u01EF\u01F0\x07&\x02\x02\u01F0\u01F1\x05L\'\x02\u01F1\u01F2\x05N" +
		"(\x02\u01F2\u01F3\x07\'\x02\x02\u01F3\u01F4\b)\x01\x02\u01F4\u01F9\x03" +
		"\x02\x02\x02\u01F5\u01F6\x07&\x02\x02\u01F6\u01F7\x07\'\x02\x02\u01F7" +
		"\u01F9\b)\x01\x02\u01F8\u01EF\x03\x02\x02\x02\u01F8\u01F5\x03\x02\x02" +
		"\x02\u01F9Q\x03\x02\x02\x02\u01FA\u01FB\b*\x01\x02\u01FB\u01FC\x07<\x02" +
		"\x02\u01FC\u01FD\b*\x01\x02\u01FD\u0208\x03\x02\x02\x02\u01FE\u01FF\f" +
		"\x05\x02\x02\u01FF\u0200\x07!\x02\x02\u0200\u0201\x07<\x02\x02\u0201\u0207" +
		"\b*\x01\x02\u0202\u0203\f\x04\x02\x02\u0203\u0204\x07\x1E\x02\x02\u0204" +
		"\u0205\x07<\x02\x02\u0205\u0207\b*\x01\x02\u0206\u01FE\x03\x02\x02\x02" +
		"\u0206\u0202\x03\x02\x02\x02\u0207\u020A\x03\x02\x02\x02\u0208\u0206\x03" +
		"\x02\x02\x02\u0208\u0209\x03\x02\x02\x02\u0209S\x03\x02\x02\x02\u020A" +
		"\u0208\x03\x02\x02\x02\u020B\u020C\x07\x1F\x02\x02\u020C\u020D\x05(\x15" +
		"\x02\u020D\u020E\x07 \x02\x02\u020E\u020F\x07\x05\x02\x02\u020F\u0210" +
		"\x05(\x15\x02\u0210\u0211\b+\x01\x02\u0211\u021B\x03\x02\x02\x02\u0212" +
		"\u0213\x07<\x02\x02\u0213\u0214\x07\x05\x02\x02\u0214\u0215\x05(\x15\x02" +
		"\u0215\u0216\b+\x01\x02\u0216\u021B\x03\x02\x02\x02\u0217\u0218\x05(\x15" +
		"\x02\u0218\u0219\b+\x01\x02\u0219\u021B\x03\x02\x02\x02\u021A\u020B\x03" +
		"\x02\x02\x02\u021A\u0212\x03\x02\x02\x02\u021A\u0217\x03\x02\x02\x02\u021B" +
		"U\x03\x02\x02\x02\u021C\u021D\x07\x16\x02\x02\u021D\u0221\b,\x01\x02\u021E" +
		"\u021F\x07\x03\x02\x02\u021F\u0221\b,\x01\x02\u0220\u021C\x03\x02\x02" +
		"\x02\u0220\u021E\x03\x02\x02\x02\u0221W\x03\x02\x02\x02\u0222\u0223\x07" +
		"(\x02\x02\u0223\u024B\b-\x01\x02\u0224\u0225\x07)\x02\x02\u0225\u024B" +
		"\b-\x01\x02\u0226\u0227\x07*\x02\x02\u0227\u024B\b-\x01\x02\u0228\u0229" +
		"\x07+\x02\x02\u0229\u024B\b-\x01\x02\u022A\u022B\x07,\x02\x02\u022B\u024B" +
		"\b-\x01\x02\u022C\u022D\x07-\x02\x02\u022D\u024B\b-\x01\x02\u022E\u022F" +
		"\x07.\x02\x02\u022F\u024B\b-\x01\x02\u0230\u0231\x07/\x02\x02\u0231\u024B" +
		"\b-\x01\x02\u0232\u0233\x070\x02\x02\u0233\u024B\b-\x01\x02\u0234\u0235" +
		"\x07\x1B\x02\x02\u0235\u024B\b-\x01\x02\u0236\u0237\x071\x02\x02\u0237" +
		"\u024B\b-\x01\x02\u0238\u0239\x072\x02\x02\u0239\u024B\b-\x01\x02\u023A" +
		"\u023B\x073\x02\x02\u023B\u024B\b-\x01\x02\u023C\u023D\x074\x02\x02\u023D" +
		"\u024B\b-\x01\x02\u023E\u023F\x075\x02\x02\u023F\u024B\b-\x01\x02\u0240" +
		"\u0241\x07\x1A\x02\x02\u0241\u024B\b-\x01\x02\u0242\u0243\x076\x02\x02" +
		"\u0243\u024B\b-\x01\x02\u0244\u0245\x077\x02\x02\u0245\u024B\b-\x01\x02" +
		"\u0246\u0247\x078\x02\x02\u0247\u024B\b-\x01\x02\u0248\u0249\x079\x02" +
		"\x02\u0249\u024B\b-\x01\x02\u024A\u0222\x03\x02\x02\x02\u024A\u0224\x03" +
		"\x02\x02\x02\u024A\u0226\x03\x02\x02\x02\u024A\u0228\x03\x02\x02\x02\u024A" +
		"\u022A\x03\x02\x02\x02\u024A\u022C\x03\x02\x02\x02\u024A\u022E\x03\x02" +
		"\x02\x02\u024A\u0230\x03\x02\x02\x02\u024A\u0232\x03\x02\x02\x02\u024A" +
		"\u0234\x03\x02\x02\x02\u024A\u0236\x03\x02\x02\x02\u024A\u0238\x03\x02" +
		"\x02\x02\u024A\u023A\x03\x02\x02";
	private static readonly _serializedATNSegment1: string =
		"\x02\u024A\u023C\x03\x02\x02\x02\u024A\u023E\x03\x02\x02\x02\u024A\u0240" +
		"\x03\x02\x02\x02\u024A\u0242\x03\x02\x02\x02\u024A\u0244\x03\x02\x02\x02" +
		"\u024A\u0246\x03\x02\x02\x02\u024A\u0248\x03\x02\x02\x02\u024BY\x03\x02" +
		"\x02\x02#kr{\x84\x95\x9C\xA5\xF6\xFD\u010A\u0127\u0140\u014A\u0157\u016D" +
		"\u016F\u0186\u0193\u019A\u01A9\u01AF\u01B5\u01C4\u01D0\u01D9\u01E6\u01ED" +
		"\u01F8\u0206\u0208\u021A\u0220\u024A";
	public static readonly _serializedATN: string = Utils.join(
		[
			luaParser._serializedATNSegment0,
			luaParser._serializedATNSegment1,
		],
		"",
	);
	public static __ATN: ATN;
	public static get _ATN(): ATN {
		if (!luaParser.__ATN) {
			luaParser.__ATN = new ATNDeserializer().deserialize(Utils.toCharArray(luaParser._serializedATN));
		}

		return luaParser.__ATN;
	}

}

export class StartContext extends ParserRuleContext {
	public result: block_t;
	public _v!: Start__y_Context;
	public EOF(): TerminalNode { return this.getToken(luaParser.EOF, 0); }
	public start__y_(): Start__y_Context {
		return this.getRuleContext(0, Start__y_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_start; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterStart) {
			listener.enterStart(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitStart) {
			listener.exitStart(this);
		}
	}
}


export class Start__y_Context extends ParserRuleContext {
	public result: block_t;
	public _start__y__0__1!: BlockContext;
	public block(): BlockContext {
		return this.getRuleContext(0, BlockContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_start__y_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterStart__y_) {
			listener.enterStart__y_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitStart__y_) {
			listener.exitStart__y_(this);
		}
	}
}


export class Nempty_list_o_stat_p_Context extends ParserRuleContext {
	public result: Array<stmt_t>;
	public _nempty_list_o_stat_p__2__1!: Nempty_list_o_stat_p_Context;
	public _nempty_list_o_stat_p__0__1!: StatContext;
	public _nempty_list_o_stat_p__2__2!: StatContext;
	public stat(): StatContext {
		return this.getRuleContext(0, StatContext);
	}
	public nempty_list_o_stat_p_(): Nempty_list_o_stat_p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_list_o_stat_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_nempty_list_o_stat_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterNempty_list_o_stat_p_) {
			listener.enterNempty_list_o_stat_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitNempty_list_o_stat_p_) {
			listener.exitNempty_list_o_stat_p_(this);
		}
	}
}


export class Allow_empty_o_nempty_list_o_stat_p__p_Context extends ParserRuleContext {
	public result: Array<stmt_t>;
	public _allow_empty_o_nempty_list_o_stat_p__p__2__1!: Nempty_list_o_stat_p_Context;
	public nempty_list_o_stat_p_(): Nempty_list_o_stat_p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_list_o_stat_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_allow_empty_o_nempty_list_o_stat_p__p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterAllow_empty_o_nempty_list_o_stat_p__p_) {
			listener.enterAllow_empty_o_nempty_list_o_stat_p__p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitAllow_empty_o_nempty_list_o_stat_p__p_) {
			listener.exitAllow_empty_o_nempty_list_o_stat_p__p_(this);
		}
	}
}


export class List_o_stat_p_Context extends ParserRuleContext {
	public result: Array<stmt_t>;
	public _list_o_stat_p__0__1!: Allow_empty_o_nempty_list_o_stat_p__p_Context;
	public allow_empty_o_nempty_list_o_stat_p__p_(): Allow_empty_o_nempty_list_o_stat_p__p_Context {
		return this.getRuleContext(0, Allow_empty_o_nempty_list_o_stat_p__p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_list_o_stat_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterList_o_stat_p_) {
			listener.enterList_o_stat_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitList_o_stat_p_) {
			listener.exitList_o_stat_p_(this);
		}
	}
}


export class Opt_o_retstat_p_Context extends ParserRuleContext {
	public result: maybe_t<stmt_t>;
	public _opt_o_retstat_p__0__1!: RetstatContext;
	public retstat(): RetstatContext | undefined {
		return this.tryGetRuleContext(0, RetstatContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_opt_o_retstat_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterOpt_o_retstat_p_) {
			listener.enterOpt_o_retstat_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitOpt_o_retstat_p_) {
			listener.exitOpt_o_retstat_p_(this);
		}
	}
}


export class BlockContext extends ParserRuleContext {
	public result: block_t;
	public _block_0__1!: List_o_stat_p_Context;
	public _block_0__2!: Opt_o_retstat_p_Context;
	public list_o_stat_p_(): List_o_stat_p_Context {
		return this.getRuleContext(0, List_o_stat_p_Context);
	}
	public opt_o_retstat_p_(): Opt_o_retstat_p_Context {
		return this.getRuleContext(0, Opt_o_retstat_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_block; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterBlock) {
			listener.enterBlock(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitBlock) {
			listener.exitBlock(this);
		}
	}
}


export class Opt_o__i__h__i__p_Context extends ParserRuleContext {
	public result: maybe_t<antlr.Token>;
	public _opt_o__i__h__i__p__0__1!: Token;
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_opt_o__i__h__i__p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterOpt_o__i__h__i__p_) {
			listener.enterOpt_o__i__h__i__p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitOpt_o__i__h__i__p_) {
			listener.exitOpt_o__i__h__i__p_(this);
		}
	}
}


export class RetstatContext extends ParserRuleContext {
	public result: stmt_t;
	public _retstat_0__1!: Token;
	public _retstat_0__2!: Seplist_o__i__s__i__s_exp_p_Context;
	public opt_o__i__h__i__p_(): Opt_o__i__h__i__p_Context {
		return this.getRuleContext(0, Opt_o__i__h__i__p_Context);
	}
	public seplist_o__i__s__i__s_exp_p_(): Seplist_o__i__s__i__s_exp_p_Context {
		return this.getRuleContext(0, Seplist_o__i__s__i__s_exp_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_retstat; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterRetstat) {
			listener.enterRetstat(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitRetstat) {
			listener.exitRetstat(this);
		}
	}
}


export class Nempty_list_o_elseif_p_Context extends ParserRuleContext {
	public result: Array<if_elseif_t>;
	public _nempty_list_o_elseif_p__2__1!: Nempty_list_o_elseif_p_Context;
	public _nempty_list_o_elseif_p__0__1!: ElseifContext;
	public _nempty_list_o_elseif_p__2__2!: ElseifContext;
	public elseif(): ElseifContext {
		return this.getRuleContext(0, ElseifContext);
	}
	public nempty_list_o_elseif_p_(): Nempty_list_o_elseif_p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_list_o_elseif_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_nempty_list_o_elseif_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterNempty_list_o_elseif_p_) {
			listener.enterNempty_list_o_elseif_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitNempty_list_o_elseif_p_) {
			listener.exitNempty_list_o_elseif_p_(this);
		}
	}
}


export class Allow_empty_o_nempty_list_o_elseif_p__p_Context extends ParserRuleContext {
	public result: Array<if_elseif_t>;
	public _allow_empty_o_nempty_list_o_elseif_p__p__2__1!: Nempty_list_o_elseif_p_Context;
	public nempty_list_o_elseif_p_(): Nempty_list_o_elseif_p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_list_o_elseif_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_allow_empty_o_nempty_list_o_elseif_p__p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterAllow_empty_o_nempty_list_o_elseif_p__p_) {
			listener.enterAllow_empty_o_nempty_list_o_elseif_p__p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitAllow_empty_o_nempty_list_o_elseif_p__p_) {
			listener.exitAllow_empty_o_nempty_list_o_elseif_p__p_(this);
		}
	}
}


export class List_o_elseif_p_Context extends ParserRuleContext {
	public result: Array<if_elseif_t>;
	public _list_o_elseif_p__0__1!: Allow_empty_o_nempty_list_o_elseif_p__p_Context;
	public allow_empty_o_nempty_list_o_elseif_p__p_(): Allow_empty_o_nempty_list_o_elseif_p__p_Context {
		return this.getRuleContext(0, Allow_empty_o_nempty_list_o_elseif_p__p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_list_o_elseif_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterList_o_elseif_p_) {
			listener.enterList_o_elseif_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitList_o_elseif_p_) {
			listener.exitList_o_elseif_p_(this);
		}
	}
}


export class Opt_o_else_p_Context extends ParserRuleContext {
	public result: maybe_t<if_else_t>;
	public _opt_o_else_p__0__1!: Else__x_Context;
	public else__x_(): Else__x_Context | undefined {
		return this.tryGetRuleContext(0, Else__x_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_opt_o_else_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterOpt_o_else_p_) {
			listener.enterOpt_o_else_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitOpt_o_else_p_) {
			listener.exitOpt_o_else_p_(this);
		}
	}
}


export class StatContext extends ParserRuleContext {
	public result: stmt_t;
	public _stat_0__1!: Token;
	public _stat_2__1!: Nempty_seplist_o__i__s__i__s_exp_p_Context;
	public _stat_2__3!: Nempty_seplist_o__i__s__i__s_exp_p_Context;
	public _stat_4__1!: ExpContext;
	public _stat_6__2!: Token;
	public _stat_8__1!: Token;
	public _stat_10__1!: Token;
	public _stat_10__2!: Token;
	public _stat_12__1!: Token;
	public _stat_12__2!: BlockContext;
	public _stat_14__1!: Token;
	public _stat_14__2!: ExpContext;
	public _stat_14__4!: BlockContext;
	public _stat_16__1!: Token;
	public _stat_16__2!: BlockContext;
	public _stat_16__4!: ExpContext;
	public _stat_18__1!: Token;
	public _stat_18__2!: ExpContext;
	public _stat_18__4!: BlockContext;
	public _stat_18__5!: List_o_elseif_p_Context;
	public _stat_18__6!: Opt_o_else_p_Context;
	public _stat_20__1!: Token;
	public _stat_20__2!: Token;
	public _stat_20__4!: RangeContext;
	public _stat_20__6!: BlockContext;
	public _stat_22__1!: Token;
	public _stat_22__2!: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
	public _stat_22__4!: Nempty_seplist_o__i__s__i__s_exp_p_Context;
	public _stat_22__6!: BlockContext;
	public _stat_24__1!: Token;
	public _stat_24__3!: FuncnameContext;
	public _stat_24__5!: Opt_o_parlist_p_Context;
	public _stat_24__7!: BlockContext;
	public _stat_26__2!: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
	public _stat_26__3!: Opt_assign_rhsContext;
	public nempty_seplist_o__i__s__i__s_exp_p_(): Nempty_seplist_o__i__s__i__s_exp_p_Context[];
	public nempty_seplist_o__i__s__i__s_exp_p_(i: number): Nempty_seplist_o__i__s__i__s_exp_p_Context;
	public nempty_seplist_o__i__s__i__s_exp_p_(i?: number): Nempty_seplist_o__i__s__i__s_exp_p_Context | Nempty_seplist_o__i__s__i__s_exp_p_Context[] {
		if (i === undefined) {
			return this.getRuleContexts(Nempty_seplist_o__i__s__i__s_exp_p_Context);
		} else {
			return this.getRuleContext(i, Nempty_seplist_o__i__s__i__s_exp_p_Context);
		}
	}
	public exp(): ExpContext | undefined {
		return this.tryGetRuleContext(0, ExpContext);
	}
	public NAME(): TerminalNode | undefined { return this.tryGetToken(luaParser.NAME, 0); }
	public block(): BlockContext | undefined {
		return this.tryGetRuleContext(0, BlockContext);
	}
	public list_o_elseif_p_(): List_o_elseif_p_Context | undefined {
		return this.tryGetRuleContext(0, List_o_elseif_p_Context);
	}
	public opt_o_else_p_(): Opt_o_else_p_Context | undefined {
		return this.tryGetRuleContext(0, Opt_o_else_p_Context);
	}
	public range(): RangeContext | undefined {
		return this.tryGetRuleContext(0, RangeContext);
	}
	public nempty_seplist_o__i__s__i__s__i_name_k__p_(): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_seplist_o__i__s__i__s__i_name_k__p_Context);
	}
	public funcname(): FuncnameContext | undefined {
		return this.tryGetRuleContext(0, FuncnameContext);
	}
	public opt_o_parlist_p_(): Opt_o_parlist_p_Context | undefined {
		return this.tryGetRuleContext(0, Opt_o_parlist_p_Context);
	}
	public opt_assign_rhs(): Opt_assign_rhsContext | undefined {
		return this.tryGetRuleContext(0, Opt_assign_rhsContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_stat; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterStat) {
			listener.enterStat(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitStat) {
			listener.exitStat(this);
		}
	}
}


export class Opt_assign_rhsContext extends ParserRuleContext {
	public result: maybe_t<Array<expr_t>>;
	public _opt_assign_rhs_0__2!: Nempty_seplist_o__i__s__i__s_exp_p_Context;
	public nempty_seplist_o__i__s__i__s_exp_p_(): Nempty_seplist_o__i__s__i__s_exp_p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_seplist_o__i__s__i__s_exp_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_opt_assign_rhs; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterOpt_assign_rhs) {
			listener.enterOpt_assign_rhs(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitOpt_assign_rhs) {
			listener.exitOpt_assign_rhs(this);
		}
	}
}


export class RangeContext extends ParserRuleContext {
	public result: range_t;
	public _range_0__1!: ExpContext;
	public _range_0__3!: ExpContext;
	public _range_0__4!: Range_tailContext;
	public exp(): ExpContext[];
	public exp(i: number): ExpContext;
	public exp(i?: number): ExpContext | ExpContext[] {
		if (i === undefined) {
			return this.getRuleContexts(ExpContext);
		} else {
			return this.getRuleContext(i, ExpContext);
		}
	}
	public range_tail(): Range_tailContext {
		return this.getRuleContext(0, Range_tailContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_range; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterRange) {
			listener.enterRange(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitRange) {
			listener.exitRange(this);
		}
	}
}


export class Range_tailContext extends ParserRuleContext {
	public result: maybe_t<expr_t>;
	public _range_tail_0__2!: ExpContext;
	public exp(): ExpContext | undefined {
		return this.tryGetRuleContext(0, ExpContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_range_tail; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterRange_tail) {
			listener.enterRange_tail(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitRange_tail) {
			listener.exitRange_tail(this);
		}
	}
}


export class ElseifContext extends ParserRuleContext {
	public result: if_elseif_t;
	public _elseif_0__1!: Token;
	public _elseif_0__2!: ExpContext;
	public _elseif_0__4!: BlockContext;
	public exp(): ExpContext {
		return this.getRuleContext(0, ExpContext);
	}
	public block(): BlockContext {
		return this.getRuleContext(0, BlockContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_elseif; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterElseif) {
			listener.enterElseif(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitElseif) {
			listener.exitElseif(this);
		}
	}
}


export class Else__x_Context extends ParserRuleContext {
	public result: if_else_t;
	public _else__x__0__1!: Token;
	public _else__x__0__2!: BlockContext;
	public block(): BlockContext {
		return this.getRuleContext(0, BlockContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_else__x_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterElse__x_) {
			listener.enterElse__x_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitElse__x_) {
			listener.exitElse__x_(this);
		}
	}
}


export class ExpContext extends ParserRuleContext {
	public result: expr_t;
	public _exp_0__1!: BinexpContext;
	public binexp(): BinexpContext {
		return this.getRuleContext(0, BinexpContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_exp; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterExp) {
			listener.enterExp(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitExp) {
			listener.exitExp(this);
		}
	}
}


export class BinexpContext extends ParserRuleContext {
	public result: expr_t;
	public _binexp_0__1!: BinseqContext;
	public binseq(): BinseqContext {
		return this.getRuleContext(0, BinseqContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_binexp; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterBinexp) {
			listener.enterBinexp(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitBinexp) {
			listener.exitBinexp(this);
		}
	}
}


export class BinseqContext extends ParserRuleContext {
	public result: Array<op_t<expr_t>>;
	public _binseq_0__1!: BinseqContext;
	public _binseq_2__1!: BinoperandContext;
	public _binseq_0__2!: BinopContext;
	public _binseq_0__3!: BinoperandContext;
	public binseq(): BinseqContext | undefined {
		return this.tryGetRuleContext(0, BinseqContext);
	}
	public binop(): BinopContext | undefined {
		return this.tryGetRuleContext(0, BinopContext);
	}
	public binoperand(): BinoperandContext {
		return this.getRuleContext(0, BinoperandContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_binseq; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterBinseq) {
			listener.enterBinseq(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitBinseq) {
			listener.exitBinseq(this);
		}
	}
}


export class BinoperandContext extends ParserRuleContext {
	public result: op_t<expr_t>;
	public _binoperand_0__1!: UnaryexpContext;
	public unaryexp(): UnaryexpContext {
		return this.getRuleContext(0, UnaryexpContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_binoperand; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterBinoperand) {
			listener.enterBinoperand(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitBinoperand) {
			listener.exitBinoperand(this);
		}
	}
}


export class UnaryexpContext extends ParserRuleContext {
	public result: expr_t;
	public _unaryexp_0__1!: Token;
	public _unaryexp_0__2!: ExponentContext;
	public _unaryexp_2__1!: Token;
	public _unaryexp_2__2!: ExponentContext;
	public _unaryexp_4__1!: Token;
	public _unaryexp_4__2!: ExponentContext;
	public _unaryexp_6__1!: Token;
	public _unaryexp_6__2!: ExponentContext;
	public _unaryexp_8__1!: ExponentContext;
	public exponent(): ExponentContext {
		return this.getRuleContext(0, ExponentContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_unaryexp; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterUnaryexp) {
			listener.enterUnaryexp(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitUnaryexp) {
			listener.exitUnaryexp(this);
		}
	}
}


export class ExponentContext extends ParserRuleContext {
	public result: expr_t;
	public _exponent_0__1!: PrefixexpContext;
	public _exponent_0__3!: ExponentContext;
	public _exponent_2__1!: PrefixexpContext;
	public prefixexp(): PrefixexpContext {
		return this.getRuleContext(0, PrefixexpContext);
	}
	public exponent(): ExponentContext | undefined {
		return this.tryGetRuleContext(0, ExponentContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_exponent; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterExponent) {
			listener.enterExponent(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitExponent) {
			listener.exitExponent(this);
		}
	}
}


export class PrefixexpContext extends ParserRuleContext {
	public result: expr_t;
	public _prefixexp_4__1!: PrefixexpContext;
	public _prefixexp_6__1!: PrefixexpContext;
	public _prefixexp_8__1!: PrefixexpContext;
	public _prefixexp_10__1!: PrefixexpContext;
	public _prefixexp_0__1!: Token;
	public _prefixexp_2__1!: Token;
	public _prefixexp_2__2!: ExpContext;
	public _prefixexp_12__1!: AtomContext;
	public _prefixexp_4__2!: ArgsContext;
	public _prefixexp_6__3!: Token;
	public _prefixexp_6__4!: ArgsContext;
	public _prefixexp_8__3!: ExpContext;
	public _prefixexp_10__3!: Token;
	public NAME(): TerminalNode | undefined { return this.tryGetToken(luaParser.NAME, 0); }
	public exp(): ExpContext | undefined {
		return this.tryGetRuleContext(0, ExpContext);
	}
	public prefixexp(): PrefixexpContext | undefined {
		return this.tryGetRuleContext(0, PrefixexpContext);
	}
	public args(): ArgsContext | undefined {
		return this.tryGetRuleContext(0, ArgsContext);
	}
	public atom(): AtomContext | undefined {
		return this.tryGetRuleContext(0, AtomContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_prefixexp; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterPrefixexp) {
			listener.enterPrefixexp(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitPrefixexp) {
			listener.exitPrefixexp(this);
		}
	}
}


export class AtomContext extends ParserRuleContext {
	public result: expr_t;
	public _atom_0__1!: Token;
	public _atom_2__1!: Token;
	public _atom_4__1!: Token;
	public _atom_6__1!: Token;
	public _atom_8__1!: Token;
	public _atom_10__1!: Token;
	public _atom_12__1!: Token;
	public _atom_14__1!: FunctiondefContext;
	public _atom_16__1!: TableconstructorContext;
	public NUMERAL(): TerminalNode | undefined { return this.tryGetToken(luaParser.NUMERAL, 0); }
	public STR_LIT(): TerminalNode | undefined { return this.tryGetToken(luaParser.STR_LIT, 0); }
	public NESTED_STR(): TerminalNode | undefined { return this.tryGetToken(luaParser.NESTED_STR, 0); }
	public functiondef(): FunctiondefContext | undefined {
		return this.tryGetRuleContext(0, FunctiondefContext);
	}
	public tableconstructor(): TableconstructorContext | undefined {
		return this.tryGetRuleContext(0, TableconstructorContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_atom; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterAtom) {
			listener.enterAtom(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitAtom) {
			listener.exitAtom(this);
		}
	}
}


export class Nempty_seplist_o__i__s__i__s_exp_p_Context extends ParserRuleContext {
	public result: Array<expr_t>;
	public _nempty_seplist_o__i__s__i__s_exp_p__2__1!: Nempty_seplist_o__i__s__i__s_exp_p_Context;
	public _nempty_seplist_o__i__s__i__s_exp_p__0__1!: ExpContext;
	public _nempty_seplist_o__i__s__i__s_exp_p__2__3!: ExpContext;
	public exp(): ExpContext {
		return this.getRuleContext(0, ExpContext);
	}
	public nempty_seplist_o__i__s__i__s_exp_p_(): Nempty_seplist_o__i__s__i__s_exp_p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_seplist_o__i__s__i__s_exp_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_nempty_seplist_o__i__s__i__s_exp_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterNempty_seplist_o__i__s__i__s_exp_p_) {
			listener.enterNempty_seplist_o__i__s__i__s_exp_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitNempty_seplist_o__i__s__i__s_exp_p_) {
			listener.exitNempty_seplist_o__i__s__i__s_exp_p_(this);
		}
	}
}


export class Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context extends ParserRuleContext {
	public result: Array<expr_t>;
	public _allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p__2__1!: Nempty_seplist_o__i__s__i__s_exp_p_Context;
	public nempty_seplist_o__i__s__i__s_exp_p_(): Nempty_seplist_o__i__s__i__s_exp_p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_seplist_o__i__s__i__s_exp_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) {
			listener.enterAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_) {
			listener.exitAllow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_(this);
		}
	}
}


export class Seplist_o__i__s__i__s_exp_p_Context extends ParserRuleContext {
	public result: Array<expr_t>;
	public _seplist_o__i__s__i__s_exp_p__0__1!: Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context;
	public allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_(): Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context {
		return this.getRuleContext(0, Allow_empty_o_nempty_seplist_o__i__s__i__s_exp_p__p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_seplist_o__i__s__i__s_exp_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterSeplist_o__i__s__i__s_exp_p_) {
			listener.enterSeplist_o__i__s__i__s_exp_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitSeplist_o__i__s__i__s_exp_p_) {
			listener.exitSeplist_o__i__s__i__s_exp_p_(this);
		}
	}
}


export class ArgsContext extends ParserRuleContext {
	public result: arguments_t;
	public _args_0__1!: Token;
	public _args_0__2!: Seplist_o__i__s__i__s_exp_p_Context;
	public _args_2__1!: TableconstructorContext;
	public _args_4__1!: Token;
	public seplist_o__i__s__i__s_exp_p_(): Seplist_o__i__s__i__s_exp_p_Context | undefined {
		return this.tryGetRuleContext(0, Seplist_o__i__s__i__s_exp_p_Context);
	}
	public tableconstructor(): TableconstructorContext | undefined {
		return this.tryGetRuleContext(0, TableconstructorContext);
	}
	public STR_LIT(): TerminalNode | undefined { return this.tryGetToken(luaParser.STR_LIT, 0); }
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_args; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterArgs) {
			listener.enterArgs(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitArgs) {
			listener.exitArgs(this);
		}
	}
}


export class Opt_o_funcname_p_Context extends ParserRuleContext {
	public result: maybe_t<funcname_t>;
	public _opt_o_funcname_p__0__1!: FuncnameContext;
	public funcname(): FuncnameContext | undefined {
		return this.tryGetRuleContext(0, FuncnameContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_opt_o_funcname_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterOpt_o_funcname_p_) {
			listener.enterOpt_o_funcname_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitOpt_o_funcname_p_) {
			listener.exitOpt_o_funcname_p_(this);
		}
	}
}


export class Opt_o_parlist_p_Context extends ParserRuleContext {
	public result: maybe_t<params_t>;
	public _opt_o_parlist_p__0__1!: ParlistContext;
	public parlist(): ParlistContext | undefined {
		return this.tryGetRuleContext(0, ParlistContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_opt_o_parlist_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterOpt_o_parlist_p_) {
			listener.enterOpt_o_parlist_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitOpt_o_parlist_p_) {
			listener.exitOpt_o_parlist_p_(this);
		}
	}
}


export class FunctiondefContext extends ParserRuleContext {
	public result: expr_t;
	public _functiondef_0__1!: Token;
	public _functiondef_0__2!: Opt_o_funcname_p_Context;
	public _functiondef_0__4!: Opt_o_parlist_p_Context;
	public _functiondef_0__6!: BlockContext;
	public opt_o_funcname_p_(): Opt_o_funcname_p_Context {
		return this.getRuleContext(0, Opt_o_funcname_p_Context);
	}
	public opt_o_parlist_p_(): Opt_o_parlist_p_Context {
		return this.getRuleContext(0, Opt_o_parlist_p_Context);
	}
	public block(): BlockContext {
		return this.getRuleContext(0, BlockContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_functiondef; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterFunctiondef) {
			listener.enterFunctiondef(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitFunctiondef) {
			listener.exitFunctiondef(this);
		}
	}
}


export class VarargsContext extends ParserRuleContext {
	public result: maybe_t<antlr.Token>;
	public _varargs_0__2!: Token;
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_varargs; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterVarargs) {
			listener.enterVarargs(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitVarargs) {
			listener.exitVarargs(this);
		}
	}
}


export class Nempty_seplist_o__i__s__i__s__i_name_k__p_Context extends ParserRuleContext {
	public result: Array<antlr.Token>;
	public _nempty_seplist_o__i__s__i__s__i_name_k__p__2__1!: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
	public _nempty_seplist_o__i__s__i__s__i_name_k__p__0__1!: Token;
	public _nempty_seplist_o__i__s__i__s__i_name_k__p__2__3!: Token;
	public NAME(): TerminalNode { return this.getToken(luaParser.NAME, 0); }
	public nempty_seplist_o__i__s__i__s__i_name_k__p_(): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_seplist_o__i__s__i__s__i_name_k__p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_nempty_seplist_o__i__s__i__s__i_name_k__p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterNempty_seplist_o__i__s__i__s__i_name_k__p_) {
			listener.enterNempty_seplist_o__i__s__i__s__i_name_k__p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitNempty_seplist_o__i__s__i__s__i_name_k__p_) {
			listener.exitNempty_seplist_o__i__s__i__s__i_name_k__p_(this);
		}
	}
}


export class ParlistContext extends ParserRuleContext {
	public result: params_t;
	public _parlist_0__1!: Token;
	public _parlist_2__1!: Nempty_seplist_o__i__s__i__s__i_name_k__p_Context;
	public _parlist_2__2!: VarargsContext;
	public nempty_seplist_o__i__s__i__s__i_name_k__p_(): Nempty_seplist_o__i__s__i__s__i_name_k__p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_seplist_o__i__s__i__s__i_name_k__p_Context);
	}
	public varargs(): VarargsContext | undefined {
		return this.tryGetRuleContext(0, VarargsContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_parlist; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterParlist) {
			listener.enterParlist(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitParlist) {
			listener.exitParlist(this);
		}
	}
}


export class Nempty_seplist_o_fieldsep_s_field_p_Context extends ParserRuleContext {
	public result: Array<table_field_t>;
	public _nempty_seplist_o_fieldsep_s_field_p__2__1!: Nempty_seplist_o_fieldsep_s_field_p_Context;
	public _nempty_seplist_o_fieldsep_s_field_p__0__1!: FieldContext;
	public _nempty_seplist_o_fieldsep_s_field_p__2__3!: FieldContext;
	public field(): FieldContext {
		return this.getRuleContext(0, FieldContext);
	}
	public fieldsep(): FieldsepContext | undefined {
		return this.tryGetRuleContext(0, FieldsepContext);
	}
	public nempty_seplist_o_fieldsep_s_field_p_(): Nempty_seplist_o_fieldsep_s_field_p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_seplist_o_fieldsep_s_field_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_nempty_seplist_o_fieldsep_s_field_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterNempty_seplist_o_fieldsep_s_field_p_) {
			listener.enterNempty_seplist_o_fieldsep_s_field_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitNempty_seplist_o_fieldsep_s_field_p_) {
			listener.exitNempty_seplist_o_fieldsep_s_field_p_(this);
		}
	}
}


export class Opt_o_fieldsep_p_Context extends ParserRuleContext {
	public result: maybe_t<number>;
	public _opt_o_fieldsep_p__0__1!: FieldsepContext;
	public fieldsep(): FieldsepContext | undefined {
		return this.tryGetRuleContext(0, FieldsepContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_opt_o_fieldsep_p_; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterOpt_o_fieldsep_p_) {
			listener.enterOpt_o_fieldsep_p_(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitOpt_o_fieldsep_p_) {
			listener.exitOpt_o_fieldsep_p_(this);
		}
	}
}


export class TableconstructorContext extends ParserRuleContext {
	public result: table_t;
	public _tableconstructor_0__1!: Token;
	public _tableconstructor_0__2!: Nempty_seplist_o_fieldsep_s_field_p_Context;
	public _tableconstructor_2__1!: Token;
	public opt_o_fieldsep_p_(): Opt_o_fieldsep_p_Context | undefined {
		return this.tryGetRuleContext(0, Opt_o_fieldsep_p_Context);
	}
	public nempty_seplist_o_fieldsep_s_field_p_(): Nempty_seplist_o_fieldsep_s_field_p_Context | undefined {
		return this.tryGetRuleContext(0, Nempty_seplist_o_fieldsep_s_field_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_tableconstructor; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterTableconstructor) {
			listener.enterTableconstructor(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitTableconstructor) {
			listener.exitTableconstructor(this);
		}
	}
}


export class FuncnameContext extends ParserRuleContext {
	public result: funcname_t;
	public _funcname_0__1!: FuncnameContext;
	public _funcname_2__1!: FuncnameContext;
	public _funcname_4__1!: Token;
	public _funcname_0__3!: Token;
	public _funcname_2__3!: Token;
	public funcname(): FuncnameContext | undefined {
		return this.tryGetRuleContext(0, FuncnameContext);
	}
	public NAME(): TerminalNode { return this.getToken(luaParser.NAME, 0); }
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_funcname; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterFuncname) {
			listener.enterFuncname(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitFuncname) {
			listener.exitFuncname(this);
		}
	}
}


export class FieldContext extends ParserRuleContext {
	public result: table_field_t;
	public _field_0__1!: Token;
	public _field_0__2!: ExpContext;
	public _field_0__5!: ExpContext;
	public _field_2__1!: Token;
	public _field_2__3!: ExpContext;
	public _field_4__1!: ExpContext;
	public exp(): ExpContext[];
	public exp(i: number): ExpContext;
	public exp(i?: number): ExpContext | ExpContext[] {
		if (i === undefined) {
			return this.getRuleContexts(ExpContext);
		} else {
			return this.getRuleContext(i, ExpContext);
		}
	}
	public NAME(): TerminalNode | undefined { return this.tryGetToken(luaParser.NAME, 0); }
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_field; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterField) {
			listener.enterField(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitField) {
			listener.exitField(this);
		}
	}
}


export class FieldsepContext extends ParserRuleContext {
	public result: number;
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_fieldsep; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterFieldsep) {
			listener.enterFieldsep(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitFieldsep) {
			listener.exitFieldsep(this);
		}
	}
}


export class BinopContext extends ParserRuleContext {
	public result: op_t<expr_t>;
	public _binop_0__1!: Token;
	public _binop_2__1!: Token;
	public _binop_4__1!: Token;
	public _binop_6__1!: Token;
	public _binop_8__1!: Token;
	public _binop_10__1!: Token;
	public _binop_12__1!: Token;
	public _binop_14__1!: Token;
	public _binop_16__1!: Token;
	public _binop_18__1!: Token;
	public _binop_20__1!: Token;
	public _binop_22__1!: Token;
	public _binop_24__1!: Token;
	public _binop_26__1!: Token;
	public _binop_28__1!: Token;
	public _binop_30__1!: Token;
	public _binop_32__1!: Token;
	public _binop_34__1!: Token;
	public _binop_36__1!: Token;
	public _binop_38__1!: Token;
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return luaParser.RULE_binop; }
	// @Override
	public enterRule(listener: luaListener): void {
		if (listener.enterBinop) {
			listener.enterBinop(this);
		}
	}
	// @Override
	public exitRule(listener: luaListener): void {
		if (listener.exitBinop) {
			listener.exitBinop(this);
		}
	}
}


