// Generated from ./tbnf-js/src/TypedBNF.g4 by ANTLR 4.9.0-SNAPSHOT


import { node, lexerule, expr, symbol, production, definition, polyt, monot, position, MK_LRef, MK_LGroup, MK_LOptional, MK_LStar, MK_LPlus, MK_LNot, MK_LOr, MK_LSeq, MK_LStr, MK_LNumber, MK_LWildcard, getrange, getunicoderange, getpos, tofloat, toint, MK_EField, MK_EBool, MK_EFlt, MK_EStr, MK_EInt, MK_ESlot, MK_EVar, MK_EFun, MK_ELet, MK_EList, MK_ETuple, MK_EApp, MK_Expr, MK_Macrocall, MK_Nonterm, MK_Term, snd, fst, list_index, MK_production, MK_Deflexer, MK_Defrule, MK_Defmacro, MK_Defignore, MK_Decltype, MK_Declctor, MK_Declvar, MK_Mono, MK_Poly, MK_TApp, MK_TConst, MK_TVar, MK_TList, MK_TTuple, MK_TFun, process_tparam, mkpos, str, unescape, addList } from "./TypedBNF-constructor.js"
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

import { TypedBNFListener } from "./TypedBNFListener";

export class TypedBNFParser extends Parser {
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
	// tslint:disable:no-trailing-whitespace
	public static readonly ruleNames: string[] = [
		"start", "list_o_toplevel_p_", "start__y_", "identstr", "typ", "slist_o__i__s__i__s_param_type_p_", 
		"empty_o_slist_o__i__s__i__s_param_type_p__p_", "eslist_o__i__s__i__s_param_type_p_", 
		"arrow_typ", "slist_o__i__s__i__s_typ_p_", "typ2", "type_product", "top_typ", 
		"tvar_str", "param_type", "slist_o__i__s__i__s_tvar_str_p_", "type_params", 
		"field_ann", "slist_o__i__s__i__s_field_ann_p_", "empty_o_slist_o__i__s__i__s_field_ann_p__p_", 
		"eslist_o__i__s__i__s_field_ann_p_", "field_anns", "decl", "toplevel", 
		"slist_o__i__s__i__s_identstr_p_", "def", "productions", "list_o_psym_p_", 
		"empty_o_list_o_psym_p__p_", "elist_o_psym_p_", "production", "slist_o__i__s__i__s_psym_p_", 
		"psym", "ann", "slist_o__i__s__i__s_ann_p_", "empty_o_slist_o__i__s__i__s_ann_p__p_", 
		"eslist_o__i__s__i__s_ann_p_", "func_parameters", "expr", "call", "empty_o_slist_o__i__s__i__s_expr_p__p_", 
		"eslist_o__i__s__i__s_expr_p_", "slist_o__i__s__i__s_expr_p_", "atomexp", 
		"slist_o__i__u__i__s_lexer_and_p_", "lexer__y_", "list_o_lexer_atomexpr_p_", 
		"lexer_and", "lexer_atomexpr", "lexer_atom", "lexerdef",
	];

	private static readonly _LITERAL_NAMES: Array<string | undefined> = [
		undefined, "','", "'->'", "'('", "')'", "'<'", "'>'", "'*'", "':'", "'extern'", 
		"'var'", "'case'", "'type'", "'ignore'", "'|'", "'{'", "'}'", "'let'", 
		"'='", "'in'", "'fun'", "';'", "'$'", "'['", "']'", "'.'", "'true'", "'false'", 
		"'+'", "'?'", "'!'", "'\\'", "'_'",
	];
	private static readonly _SYMBOLIC_NAMES: Array<string | undefined> = [
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, "UNICODE_RANGE", 
		"RANGE", "CNAMEPLUS", "INT", "WS", "FLOAT", "ESCAPED_STRING", "CPP_COMMENT", 
		"C_COMMENT",
	];
	public static readonly VOCABULARY: Vocabulary = new VocabularyImpl(TypedBNFParser._LITERAL_NAMES, TypedBNFParser._SYMBOLIC_NAMES, []);

	// @Override
	// @NotNull
	public get vocabulary(): Vocabulary {
		return TypedBNFParser.VOCABULARY;
	}
	// tslint:enable:no-trailing-whitespace

	// @Override
	public get grammarFileName(): string { return "TypedBNF.g4"; }

	// @Override
	public get ruleNames(): string[] { return TypedBNFParser.ruleNames; }

	// @Override
	public get serializedATN(): string { return TypedBNFParser._serializedATN; }

	protected createFailedPredicateException(predicate?: string, message?: string): FailedPredicateException {
		return new FailedPredicateException(this, predicate, message);
	}

	constructor(input: TokenStream) {
		super(input);
		this._interp = new ParserATNSimulator(TypedBNFParser._ATN, this);
	}
	// @RuleVersion(0)
	public start(): StartContext {
		let _localctx: StartContext = new StartContext(this._ctx, this.state);
		this.enterRule(_localctx, 0, TypedBNFParser.RULE_start);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 102;
			_localctx._v = this.start__y_();
			this.state = 103;
			this.match(TypedBNFParser.EOF);
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

	public list_o_toplevel_p_(): List_o_toplevel_p_Context;
	public list_o_toplevel_p_(_p: number): List_o_toplevel_p_Context;
	// @RuleVersion(0)
	public list_o_toplevel_p_(_p?: number): List_o_toplevel_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: List_o_toplevel_p_Context = new List_o_toplevel_p_Context(this._ctx, _parentState);
		let _prevctx: List_o_toplevel_p_Context = _localctx;
		let _startState: number = 2;
		this.enterRecursionRule(_localctx, 2, TypedBNFParser.RULE_list_o_toplevel_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 107;
			_localctx._list_o_toplevel_p__0__1 = this.toplevel();
			 
			                _localctx.result =  <Array<definition>>[ _localctx._list_o_toplevel_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 116;
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
					_localctx = new List_o_toplevel_p_Context(_parentctx, _parentState);
					_localctx._list_o_toplevel_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_list_o_toplevel_p_);
					this.state = 110;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 111;
					_localctx._list_o_toplevel_p__2__2 = this.toplevel();
					 
					                          _localctx.result =  <Array<definition>> addList<definition>(<Array<definition>> _localctx._list_o_toplevel_p__2__1.result, <definition> _localctx._list_o_toplevel_p__2__2.result);
					                      
					}
					}
				}
				this.state = 118;
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
	public start__y_(): Start__y_Context {
		let _localctx: Start__y_Context = new Start__y_Context(this._ctx, this.state);
		this.enterRule(_localctx, 4, TypedBNFParser.RULE_start__y_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 119;
			_localctx._start__y__0__1 = this.list_o_toplevel_p_(0);
			 
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
	// @RuleVersion(0)
	public identstr(): IdentstrContext {
		let _localctx: IdentstrContext = new IdentstrContext(this._ctx, this.state);
		this.enterRule(_localctx, 6, TypedBNFParser.RULE_identstr);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 122;
			_localctx._identstr_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
			 
			                _localctx.result =  <string> str(<Token> _localctx._identstr_0__1);
			            
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
	public typ(): TypContext {
		let _localctx: TypContext = new TypContext(this._ctx, this.state);
		this.enterRule(_localctx, 8, TypedBNFParser.RULE_typ);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 125;
			_localctx._typ_0__1 = this.arrow_typ();
			 
			                _localctx.result =  _localctx._typ_0__1.result;
			            
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

	public slist_o__i__s__i__s_param_type_p_(): Slist_o__i__s__i__s_param_type_p_Context;
	public slist_o__i__s__i__s_param_type_p_(_p: number): Slist_o__i__s__i__s_param_type_p_Context;
	// @RuleVersion(0)
	public slist_o__i__s__i__s_param_type_p_(_p?: number): Slist_o__i__s__i__s_param_type_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Slist_o__i__s__i__s_param_type_p_Context = new Slist_o__i__s__i__s_param_type_p_Context(this._ctx, _parentState);
		let _prevctx: Slist_o__i__s__i__s_param_type_p_Context = _localctx;
		let _startState: number = 10;
		this.enterRecursionRule(_localctx, 10, TypedBNFParser.RULE_slist_o__i__s__i__s_param_type_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 129;
			_localctx._slist_o__i__s__i__s_param_type_p__0__1 = this.param_type();
			 
			                _localctx.result =  <Array<[string, monot]>>[ _localctx._slist_o__i__s__i__s_param_type_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 139;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 1, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Slist_o__i__s__i__s_param_type_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_param_type_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_param_type_p_);
					this.state = 132;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 133;
					this.match(TypedBNFParser.T__0);
					this.state = 134;
					_localctx._slist_o__i__s__i__s_param_type_p__2__3 = this.param_type();
					 
					                          _localctx.result =  <Array<[string, monot]>> addList<[string, monot]>(<Array<[string, monot]>> _localctx._slist_o__i__s__i__s_param_type_p__2__1.result, <[string, monot]> _localctx._slist_o__i__s__i__s_param_type_p__2__3.result);
					                      
					}
					}
				}
				this.state = 141;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 1, this._ctx);
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
	public empty_o_slist_o__i__s__i__s_param_type_p__p_(): Empty_o_slist_o__i__s__i__s_param_type_p__p_Context {
		let _localctx: Empty_o_slist_o__i__s__i__s_param_type_p__p_Context = new Empty_o_slist_o__i__s__i__s_param_type_p__p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 12, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_param_type_p__p_);
		try {
			this.state = 146;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.T__3:
				this.enterOuterAlt(_localctx, 1);
				{
				 
				                _localctx.result =  <Array<[string, monot]>>[  ];
				            
				}
				break;
			case TypedBNFParser.T__2:
			case TypedBNFParser.CNAMEPLUS:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 143;
				_localctx._empty_o_slist_o__i__s__i__s_param_type_p__p__2__1 = this.slist_o__i__s__i__s_param_type_p_(0);
				 
				                _localctx.result =  _localctx._empty_o_slist_o__i__s__i__s_param_type_p__p__2__1.result;
				            
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
	public eslist_o__i__s__i__s_param_type_p_(): Eslist_o__i__s__i__s_param_type_p_Context {
		let _localctx: Eslist_o__i__s__i__s_param_type_p_Context = new Eslist_o__i__s__i__s_param_type_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 14, TypedBNFParser.RULE_eslist_o__i__s__i__s_param_type_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 148;
			_localctx._eslist_o__i__s__i__s_param_type_p__0__1 = this.empty_o_slist_o__i__s__i__s_param_type_p__p_();
			 
			                _localctx.result =  _localctx._eslist_o__i__s__i__s_param_type_p__0__1.result;
			            
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
	public arrow_typ(): Arrow_typContext {
		let _localctx: Arrow_typContext = new Arrow_typContext(this._ctx, this.state);
		this.enterRule(_localctx, 16, TypedBNFParser.RULE_arrow_typ);
		try {
			this.state = 166;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 3, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 151;
				_localctx._arrow_typ_0__1 = this.typ2(0);
				this.state = 152;
				this.match(TypedBNFParser.T__1);
				this.state = 153;
				_localctx._arrow_typ_0__3 = this.arrow_typ();
				 
				                _localctx.result =  <monot> MK_TFun(<Array<[string, monot]>> <Array<[string, monot]>>[ <[string, monot]>["value", _localctx._arrow_typ_0__1.result] ], <monot> _localctx._arrow_typ_0__3.result);
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 156;
				this.match(TypedBNFParser.T__2);
				this.state = 157;
				_localctx._arrow_typ_2__2 = this.eslist_o__i__s__i__s_param_type_p_();
				this.state = 158;
				this.match(TypedBNFParser.T__3);
				this.state = 159;
				this.match(TypedBNFParser.T__1);
				this.state = 160;
				_localctx._arrow_typ_2__5 = this.arrow_typ();
				 
				                _localctx.result =  <monot> MK_TFun(<Array<[string, monot]>> <Array<[string, monot]>> process_tparam(<Array<[string, monot]>> _localctx._arrow_typ_2__2.result), <monot> _localctx._arrow_typ_2__5.result);
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 163;
				_localctx._arrow_typ_4__1 = this.type_product(0);
				 
				                _localctx.result =  <monot> MK_TTuple(<Array<monot>> _localctx._arrow_typ_4__1.result);
				            
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

	public slist_o__i__s__i__s_typ_p_(): Slist_o__i__s__i__s_typ_p_Context;
	public slist_o__i__s__i__s_typ_p_(_p: number): Slist_o__i__s__i__s_typ_p_Context;
	// @RuleVersion(0)
	public slist_o__i__s__i__s_typ_p_(_p?: number): Slist_o__i__s__i__s_typ_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Slist_o__i__s__i__s_typ_p_Context = new Slist_o__i__s__i__s_typ_p_Context(this._ctx, _parentState);
		let _prevctx: Slist_o__i__s__i__s_typ_p_Context = _localctx;
		let _startState: number = 18;
		this.enterRecursionRule(_localctx, 18, TypedBNFParser.RULE_slist_o__i__s__i__s_typ_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 169;
			_localctx._slist_o__i__s__i__s_typ_p__0__1 = this.typ();
			 
			                _localctx.result =  <Array<monot>>[ _localctx._slist_o__i__s__i__s_typ_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 179;
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
					_localctx = new Slist_o__i__s__i__s_typ_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_typ_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_typ_p_);
					this.state = 172;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 173;
					this.match(TypedBNFParser.T__0);
					this.state = 174;
					_localctx._slist_o__i__s__i__s_typ_p__2__3 = this.typ();
					 
					                          _localctx.result =  <Array<monot>> addList<monot>(<Array<monot>> _localctx._slist_o__i__s__i__s_typ_p__2__1.result, <monot> _localctx._slist_o__i__s__i__s_typ_p__2__3.result);
					                      
					}
					}
				}
				this.state = 181;
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

	public typ2(): Typ2Context;
	public typ2(_p: number): Typ2Context;
	// @RuleVersion(0)
	public typ2(_p?: number): Typ2Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Typ2Context = new Typ2Context(this._ctx, _parentState);
		let _prevctx: Typ2Context = _localctx;
		let _startState: number = 20;
		this.enterRecursionRule(_localctx, 20, TypedBNFParser.RULE_typ2, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 183;
			_localctx._typ2_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
			 
			                _localctx.result =  <monot> MK_TConst(<string> <string> str(<Token> _localctx._typ2_0__1));
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 194;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 5, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Typ2Context(_parentctx, _parentState);
					_localctx._typ2_2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_typ2);
					this.state = 186;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 187;
					this.match(TypedBNFParser.T__4);
					this.state = 188;
					_localctx._typ2_2__3 = this.slist_o__i__s__i__s_typ_p_(0);
					this.state = 189;
					this.match(TypedBNFParser.T__5);
					 
					                          _localctx.result =  <monot> MK_TApp(<monot> _localctx._typ2_2__1.result, <Array<monot>> _localctx._typ2_2__3.result);
					                      
					}
					}
				}
				this.state = 196;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 5, this._ctx);
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

	public type_product(): Type_productContext;
	public type_product(_p: number): Type_productContext;
	// @RuleVersion(0)
	public type_product(_p?: number): Type_productContext {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Type_productContext = new Type_productContext(this._ctx, _parentState);
		let _prevctx: Type_productContext = _localctx;
		let _startState: number = 22;
		this.enterRecursionRule(_localctx, 22, TypedBNFParser.RULE_type_product, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 198;
			_localctx._type_product_2__1 = this.typ2(0);
			 
			                _localctx.result =  <Array<monot>>[ _localctx._type_product_2__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 208;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 6, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Type_productContext(_parentctx, _parentState);
					_localctx._type_product_0__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_type_product);
					this.state = 201;
					if (!(this.precpred(this._ctx, 2))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
					}
					this.state = 202;
					this.match(TypedBNFParser.T__6);
					this.state = 203;
					_localctx._type_product_0__3 = this.typ2(0);
					 
					                          _localctx.result =  <Array<monot>> addList<monot>(<Array<monot>> _localctx._type_product_0__1.result, <monot> _localctx._type_product_0__3.result);
					                      
					}
					}
				}
				this.state = 210;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 6, this._ctx);
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
	public top_typ(): Top_typContext {
		let _localctx: Top_typContext = new Top_typContext(this._ctx, this.state);
		this.enterRule(_localctx, 24, TypedBNFParser.RULE_top_typ);
		try {
			this.state = 220;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.T__4:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 211;
				this.match(TypedBNFParser.T__4);
				this.state = 212;
				_localctx._top_typ_0__2 = this.slist_o__i__s__i__s_tvar_str_p_(0);
				this.state = 213;
				this.match(TypedBNFParser.T__5);
				this.state = 214;
				_localctx._top_typ_0__4 = this.typ();
				 
				                _localctx.result =  <polyt> MK_Poly(<Array<string>> _localctx._top_typ_0__2.result, <monot> _localctx._top_typ_0__4.result);
				            
				}
				break;
			case TypedBNFParser.T__2:
			case TypedBNFParser.CNAMEPLUS:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 217;
				_localctx._top_typ_2__1 = this.typ();
				 
				                _localctx.result =  <polyt> MK_Mono(<monot> _localctx._top_typ_2__1.result);
				            
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
	public tvar_str(): Tvar_strContext {
		let _localctx: Tvar_strContext = new Tvar_strContext(this._ctx, this.state);
		this.enterRule(_localctx, 26, TypedBNFParser.RULE_tvar_str);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 222;
			_localctx._tvar_str_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
			 
			                _localctx.result =  <string> str(<Token> _localctx._tvar_str_0__1);
			            
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
	public param_type(): Param_typeContext {
		let _localctx: Param_typeContext = new Param_typeContext(this._ctx, this.state);
		this.enterRule(_localctx, 28, TypedBNFParser.RULE_param_type);
		try {
			this.state = 233;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 8, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 225;
				_localctx._param_type_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
				this.state = 226;
				this.match(TypedBNFParser.T__7);
				this.state = 227;
				_localctx._param_type_0__3 = this.typ();
				 
				                _localctx.result =  <[string, monot]>[<string> str(<Token> _localctx._param_type_0__1), _localctx._param_type_0__3.result];
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 230;
				_localctx._param_type_2__1 = this.typ();
				 
				                _localctx.result =  <[string, monot]>["_", _localctx._param_type_2__1.result];
				            
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

	public slist_o__i__s__i__s_tvar_str_p_(): Slist_o__i__s__i__s_tvar_str_p_Context;
	public slist_o__i__s__i__s_tvar_str_p_(_p: number): Slist_o__i__s__i__s_tvar_str_p_Context;
	// @RuleVersion(0)
	public slist_o__i__s__i__s_tvar_str_p_(_p?: number): Slist_o__i__s__i__s_tvar_str_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Slist_o__i__s__i__s_tvar_str_p_Context = new Slist_o__i__s__i__s_tvar_str_p_Context(this._ctx, _parentState);
		let _prevctx: Slist_o__i__s__i__s_tvar_str_p_Context = _localctx;
		let _startState: number = 30;
		this.enterRecursionRule(_localctx, 30, TypedBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 236;
			_localctx._slist_o__i__s__i__s_tvar_str_p__0__1 = this.tvar_str();
			 
			                _localctx.result =  <Array<string>>[ _localctx._slist_o__i__s__i__s_tvar_str_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 246;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 9, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Slist_o__i__s__i__s_tvar_str_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_tvar_str_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_);
					this.state = 239;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 240;
					this.match(TypedBNFParser.T__0);
					this.state = 241;
					_localctx._slist_o__i__s__i__s_tvar_str_p__2__3 = this.tvar_str();
					 
					                          _localctx.result =  <Array<string>> addList<string>(<Array<string>> _localctx._slist_o__i__s__i__s_tvar_str_p__2__1.result, <string> _localctx._slist_o__i__s__i__s_tvar_str_p__2__3.result);
					                      
					}
					}
				}
				this.state = 248;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 9, this._ctx);
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
	public type_params(): Type_paramsContext {
		let _localctx: Type_paramsContext = new Type_paramsContext(this._ctx, this.state);
		this.enterRule(_localctx, 32, TypedBNFParser.RULE_type_params);
		try {
			this.state = 255;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 10, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 249;
				this.match(TypedBNFParser.T__4);
				this.state = 250;
				_localctx._type_params_0__2 = this.slist_o__i__s__i__s_tvar_str_p_(0);
				this.state = 251;
				this.match(TypedBNFParser.T__5);
				 
				                _localctx.result =  _localctx._type_params_0__2.result;
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				 
				                _localctx.result =  <Array<string>>[  ];
				            
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
	public field_ann(): Field_annContext {
		let _localctx: Field_annContext = new Field_annContext(this._ctx, this.state);
		this.enterRule(_localctx, 34, TypedBNFParser.RULE_field_ann);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 257;
			_localctx._field_ann_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
			this.state = 258;
			this.match(TypedBNFParser.T__7);
			this.state = 259;
			_localctx._field_ann_0__3 = this.typ();
			 
			                _localctx.result =  <[string, monot, position]>[<string> str(<Token> _localctx._field_ann_0__1), _localctx._field_ann_0__3.result, <position> mkpos(<Token> _localctx._field_ann_0__1)];
			            
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

	public slist_o__i__s__i__s_field_ann_p_(): Slist_o__i__s__i__s_field_ann_p_Context;
	public slist_o__i__s__i__s_field_ann_p_(_p: number): Slist_o__i__s__i__s_field_ann_p_Context;
	// @RuleVersion(0)
	public slist_o__i__s__i__s_field_ann_p_(_p?: number): Slist_o__i__s__i__s_field_ann_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Slist_o__i__s__i__s_field_ann_p_Context = new Slist_o__i__s__i__s_field_ann_p_Context(this._ctx, _parentState);
		let _prevctx: Slist_o__i__s__i__s_field_ann_p_Context = _localctx;
		let _startState: number = 36;
		this.enterRecursionRule(_localctx, 36, TypedBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 263;
			_localctx._slist_o__i__s__i__s_field_ann_p__0__1 = this.field_ann();
			 
			                _localctx.result =  <Array<[string, monot, position]>>[ _localctx._slist_o__i__s__i__s_field_ann_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 273;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 11, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Slist_o__i__s__i__s_field_ann_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_field_ann_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_);
					this.state = 266;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 267;
					this.match(TypedBNFParser.T__0);
					this.state = 268;
					_localctx._slist_o__i__s__i__s_field_ann_p__2__3 = this.field_ann();
					 
					                          _localctx.result =  <Array<[string, monot, position]>> addList<[string, monot, position]>(<Array<[string, monot, position]>> _localctx._slist_o__i__s__i__s_field_ann_p__2__1.result, <[string, monot, position]> _localctx._slist_o__i__s__i__s_field_ann_p__2__3.result);
					                      
					}
					}
				}
				this.state = 275;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 11, this._ctx);
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
	public empty_o_slist_o__i__s__i__s_field_ann_p__p_(): Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context {
		let _localctx: Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context = new Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 38, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_);
		try {
			this.state = 280;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.T__3:
				this.enterOuterAlt(_localctx, 1);
				{
				 
				                _localctx.result =  <Array<[string, monot, position]>>[  ];
				            
				}
				break;
			case TypedBNFParser.CNAMEPLUS:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 277;
				_localctx._empty_o_slist_o__i__s__i__s_field_ann_p__p__2__1 = this.slist_o__i__s__i__s_field_ann_p_(0);
				 
				                _localctx.result =  _localctx._empty_o_slist_o__i__s__i__s_field_ann_p__p__2__1.result;
				            
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
	public eslist_o__i__s__i__s_field_ann_p_(): Eslist_o__i__s__i__s_field_ann_p_Context {
		let _localctx: Eslist_o__i__s__i__s_field_ann_p_Context = new Eslist_o__i__s__i__s_field_ann_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 40, TypedBNFParser.RULE_eslist_o__i__s__i__s_field_ann_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 282;
			_localctx._eslist_o__i__s__i__s_field_ann_p__0__1 = this.empty_o_slist_o__i__s__i__s_field_ann_p__p_();
			 
			                _localctx.result =  _localctx._eslist_o__i__s__i__s_field_ann_p__0__1.result;
			            
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
	public field_anns(): Field_annsContext {
		let _localctx: Field_annsContext = new Field_annsContext(this._ctx, this.state);
		this.enterRule(_localctx, 42, TypedBNFParser.RULE_field_anns);
		try {
			this.state = 291;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 13, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 285;
				this.match(TypedBNFParser.T__2);
				this.state = 286;
				_localctx._field_anns_0__2 = this.eslist_o__i__s__i__s_field_ann_p_();
				this.state = 287;
				this.match(TypedBNFParser.T__3);
				 
				                _localctx.result =  <[boolean, Array<[string, monot, position]>]>[true, _localctx._field_anns_0__2.result];
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				 
				                _localctx.result =  <[boolean, Array<[string, monot, position]>]>[false, <Array<[string, monot, position]>>[  ]];
				            
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
	public decl(): DeclContext {
		let _localctx: DeclContext = new DeclContext(this._ctx, this.state);
		this.enterRule(_localctx, 44, TypedBNFParser.RULE_decl);
		try {
			this.state = 319;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 14, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 293;
				this.match(TypedBNFParser.T__8);
				this.state = 294;
				_localctx._decl_0__2 = this.match(TypedBNFParser.T__9);
				this.state = 295;
				_localctx._decl_0__3 = this.identstr();
				this.state = 296;
				this.match(TypedBNFParser.T__7);
				this.state = 297;
				_localctx._decl_0__5 = this.top_typ();
				 
				                _localctx.result =  <definition> MK_Declvar(<string> _localctx._decl_0__3.result, <polyt> _localctx._decl_0__5.result, <position> <position> mkpos(<Token> _localctx._decl_0__2));
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 300;
				_localctx._decl_2__1 = this.match(TypedBNFParser.T__10);
				this.state = 301;
				_localctx._decl_2__2 = this.identstr();
				this.state = 302;
				this.match(TypedBNFParser.T__7);
				this.state = 303;
				_localctx._decl_2__4 = this.typ();
				 
				                _localctx.result =  <definition> MK_Declctor(<string> _localctx._decl_2__2.result, <monot> _localctx._decl_2__4.result, <position> <position> mkpos(<Token> _localctx._decl_2__1));
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 306;
				_localctx._decl_4__1 = this.match(TypedBNFParser.T__8);
				this.state = 307;
				this.match(TypedBNFParser.T__11);
				this.state = 308;
				_localctx._decl_4__3 = this.identstr();
				this.state = 309;
				_localctx._decl_4__4 = this.type_params();
				this.state = 310;
				_localctx._decl_4__5 = this.field_anns();
				 
				                _localctx.result =  <definition> MK_Decltype(<boolean> true, <boolean> <boolean> fst<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_4__5.result), <string> _localctx._decl_4__3.result, <Array<string>> _localctx._decl_4__4.result, <Array<[string, monot, position]>> <Array<[string, monot, position]>> snd<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_4__5.result), <position> <position> mkpos(<Token> _localctx._decl_4__1));
				            
				}
				break;

			case 4:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 313;
				_localctx._decl_6__1 = this.match(TypedBNFParser.T__11);
				this.state = 314;
				_localctx._decl_6__2 = this.identstr();
				this.state = 315;
				_localctx._decl_6__3 = this.type_params();
				this.state = 316;
				_localctx._decl_6__4 = this.field_anns();
				 
				                _localctx.result =  <definition> MK_Decltype(<boolean> false, <boolean> <boolean> fst<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_6__4.result), <string> _localctx._decl_6__2.result, <Array<string>> _localctx._decl_6__3.result, <Array<[string, monot, position]>> <Array<[string, monot, position]>> snd<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_6__4.result), <position> <position> mkpos(<Token> _localctx._decl_6__1));
				            
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
	public toplevel(): ToplevelContext {
		let _localctx: ToplevelContext = new ToplevelContext(this._ctx, this.state);
		this.enterRule(_localctx, 46, TypedBNFParser.RULE_toplevel);
		try {
			this.state = 334;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 15, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 321;
				_localctx._toplevel_0__1 = this.def();
				 
				                _localctx.result =  _localctx._toplevel_0__1.result;
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 324;
				_localctx._toplevel_2__1 = this.decl();
				 
				                _localctx.result =  _localctx._toplevel_2__1.result;
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 327;
				_localctx._toplevel_4__1 = this.lexerdef();
				 
				                _localctx.result =  _localctx._toplevel_4__1.result;
				            
				}
				break;

			case 4:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 330;
				_localctx._toplevel_6__1 = this.match(TypedBNFParser.T__12);
				this.state = 331;
				_localctx._toplevel_6__2 = this.slist_o__i__s__i__s_identstr_p_(0);
				 
				                _localctx.result =  <definition> MK_Defignore(<Array<string>> _localctx._toplevel_6__2.result, <position> <position> mkpos(<Token> _localctx._toplevel_6__1));
				            
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

	public slist_o__i__s__i__s_identstr_p_(): Slist_o__i__s__i__s_identstr_p_Context;
	public slist_o__i__s__i__s_identstr_p_(_p: number): Slist_o__i__s__i__s_identstr_p_Context;
	// @RuleVersion(0)
	public slist_o__i__s__i__s_identstr_p_(_p?: number): Slist_o__i__s__i__s_identstr_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Slist_o__i__s__i__s_identstr_p_Context = new Slist_o__i__s__i__s_identstr_p_Context(this._ctx, _parentState);
		let _prevctx: Slist_o__i__s__i__s_identstr_p_Context = _localctx;
		let _startState: number = 48;
		this.enterRecursionRule(_localctx, 48, TypedBNFParser.RULE_slist_o__i__s__i__s_identstr_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 337;
			_localctx._slist_o__i__s__i__s_identstr_p__0__1 = this.identstr();
			 
			                _localctx.result =  <Array<string>>[ _localctx._slist_o__i__s__i__s_identstr_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 347;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 16, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Slist_o__i__s__i__s_identstr_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_identstr_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_identstr_p_);
					this.state = 340;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 341;
					this.match(TypedBNFParser.T__0);
					this.state = 342;
					_localctx._slist_o__i__s__i__s_identstr_p__2__3 = this.identstr();
					 
					                          _localctx.result =  <Array<string>> addList<string>(<Array<string>> _localctx._slist_o__i__s__i__s_identstr_p__2__1.result, <string> _localctx._slist_o__i__s__i__s_identstr_p__2__3.result);
					                      
					}
					}
				}
				this.state = 349;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 16, this._ctx);
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
	public def(): DefContext {
		let _localctx: DefContext = new DefContext(this._ctx, this.state);
		this.enterRule(_localctx, 50, TypedBNFParser.RULE_def);
		try {
			this.state = 361;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 17, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 350;
				_localctx._def_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
				this.state = 351;
				this.match(TypedBNFParser.T__2);
				this.state = 352;
				_localctx._def_0__3 = this.slist_o__i__s__i__s_identstr_p_(0);
				this.state = 353;
				this.match(TypedBNFParser.T__3);
				this.state = 354;
				_localctx._def_0__5 = this.productions(0);
				 
				                _localctx.result =  <definition> MK_Defmacro(<string> <string> str(<Token> _localctx._def_0__1), <Array<string>> _localctx._def_0__3.result, <Array<[position, production]>> _localctx._def_0__5.result, <position> <position> mkpos(<Token> _localctx._def_0__1));
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 357;
				_localctx._def_2__1 = this.match(TypedBNFParser.CNAMEPLUS);
				this.state = 358;
				_localctx._def_2__2 = this.productions(0);
				 
				                _localctx.result =  <definition> MK_Defrule(<string> <string> str(<Token> _localctx._def_2__1), <Array<[position, production]>> _localctx._def_2__2.result, <position> <position> mkpos(<Token> _localctx._def_2__1));
				            
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

	public productions(): ProductionsContext;
	public productions(_p: number): ProductionsContext;
	// @RuleVersion(0)
	public productions(_p?: number): ProductionsContext {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: ProductionsContext = new ProductionsContext(this._ctx, _parentState);
		let _prevctx: ProductionsContext = _localctx;
		let _startState: number = 52;
		this.enterRecursionRule(_localctx, 52, TypedBNFParser.RULE_productions, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 364;
			_localctx._productions_0__1 = this.match(TypedBNFParser.T__7);
			this.state = 365;
			_localctx._productions_0__2 = this.production();
			 
			                _localctx.result =  <Array<[position, production]>>[ <[position, production]>[<position> mkpos(<Token> _localctx._productions_0__1), _localctx._productions_0__2.result] ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 375;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 18, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new ProductionsContext(_parentctx, _parentState);
					_localctx._productions_2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_productions);
					this.state = 368;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 369;
					_localctx._productions_2__2 = this.match(TypedBNFParser.T__13);
					this.state = 370;
					_localctx._productions_2__3 = this.production();
					 
					                          _localctx.result =  <Array<[position, production]>> addList<[position, production]>(<Array<[position, production]>> _localctx._productions_2__1.result, <[position, production]> <[position, production]>[<position> mkpos(<Token> _localctx._productions_2__2), _localctx._productions_2__3.result]);
					                      
					}
					}
				}
				this.state = 377;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 18, this._ctx);
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

	public list_o_psym_p_(): List_o_psym_p_Context;
	public list_o_psym_p_(_p: number): List_o_psym_p_Context;
	// @RuleVersion(0)
	public list_o_psym_p_(_p?: number): List_o_psym_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: List_o_psym_p_Context = new List_o_psym_p_Context(this._ctx, _parentState);
		let _prevctx: List_o_psym_p_Context = _localctx;
		let _startState: number = 54;
		this.enterRecursionRule(_localctx, 54, TypedBNFParser.RULE_list_o_psym_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 379;
			_localctx._list_o_psym_p__0__1 = this.psym();
			 
			                _localctx.result =  <Array<symbol>>[ _localctx._list_o_psym_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 388;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 19, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new List_o_psym_p_Context(_parentctx, _parentState);
					_localctx._list_o_psym_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_list_o_psym_p_);
					this.state = 382;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 383;
					_localctx._list_o_psym_p__2__2 = this.psym();
					 
					                          _localctx.result =  <Array<symbol>> addList<symbol>(<Array<symbol>> _localctx._list_o_psym_p__2__1.result, <symbol> _localctx._list_o_psym_p__2__2.result);
					                      
					}
					}
				}
				this.state = 390;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 19, this._ctx);
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
	public empty_o_list_o_psym_p__p_(): Empty_o_list_o_psym_p__p_Context {
		let _localctx: Empty_o_list_o_psym_p__p_Context = new Empty_o_list_o_psym_p__p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 56, TypedBNFParser.RULE_empty_o_list_o_psym_p__p_);
		try {
			this.state = 395;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.T__14:
				this.enterOuterAlt(_localctx, 1);
				{
				 
				                _localctx.result =  <Array<symbol>>[  ];
				            
				}
				break;
			case TypedBNFParser.T__4:
			case TypedBNFParser.CNAMEPLUS:
			case TypedBNFParser.ESCAPED_STRING:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 392;
				_localctx._empty_o_list_o_psym_p__p__2__1 = this.list_o_psym_p_(0);
				 
				                _localctx.result =  _localctx._empty_o_list_o_psym_p__p__2__1.result;
				            
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
	public elist_o_psym_p_(): Elist_o_psym_p_Context {
		let _localctx: Elist_o_psym_p_Context = new Elist_o_psym_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 58, TypedBNFParser.RULE_elist_o_psym_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 397;
			_localctx._elist_o_psym_p__0__1 = this.empty_o_list_o_psym_p__p_();
			 
			                _localctx.result =  _localctx._elist_o_psym_p__0__1.result;
			            
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
	public production(): ProductionContext {
		let _localctx: ProductionContext = new ProductionContext(this._ctx, this.state);
		this.enterRule(_localctx, 60, TypedBNFParser.RULE_production);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 400;
			_localctx._production_0__1 = this.elist_o_psym_p_();
			this.state = 401;
			this.match(TypedBNFParser.T__14);
			this.state = 402;
			_localctx._production_0__3 = this.expr();
			this.state = 403;
			this.match(TypedBNFParser.T__15);
			 
			                _localctx.result =  <production> MK_production(<Array<symbol>> _localctx._production_0__1.result, <expr> _localctx._production_0__3.result);
			            
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

	public slist_o__i__s__i__s_psym_p_(): Slist_o__i__s__i__s_psym_p_Context;
	public slist_o__i__s__i__s_psym_p_(_p: number): Slist_o__i__s__i__s_psym_p_Context;
	// @RuleVersion(0)
	public slist_o__i__s__i__s_psym_p_(_p?: number): Slist_o__i__s__i__s_psym_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Slist_o__i__s__i__s_psym_p_Context = new Slist_o__i__s__i__s_psym_p_Context(this._ctx, _parentState);
		let _prevctx: Slist_o__i__s__i__s_psym_p_Context = _localctx;
		let _startState: number = 62;
		this.enterRecursionRule(_localctx, 62, TypedBNFParser.RULE_slist_o__i__s__i__s_psym_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 407;
			_localctx._slist_o__i__s__i__s_psym_p__0__1 = this.psym();
			 
			                _localctx.result =  <Array<symbol>>[ _localctx._slist_o__i__s__i__s_psym_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 417;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 21, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Slist_o__i__s__i__s_psym_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_psym_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_psym_p_);
					this.state = 410;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 411;
					this.match(TypedBNFParser.T__0);
					this.state = 412;
					_localctx._slist_o__i__s__i__s_psym_p__2__3 = this.psym();
					 
					                          _localctx.result =  <Array<symbol>> addList<symbol>(<Array<symbol>> _localctx._slist_o__i__s__i__s_psym_p__2__1.result, <symbol> _localctx._slist_o__i__s__i__s_psym_p__2__3.result);
					                      
					}
					}
				}
				this.state = 419;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 21, this._ctx);
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
	public psym(): PsymContext {
		let _localctx: PsymContext = new PsymContext(this._ctx, this.state);
		this.enterRule(_localctx, 64, TypedBNFParser.RULE_psym);
		try {
			this.state = 436;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 22, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 420;
				this.match(TypedBNFParser.T__4);
				this.state = 421;
				_localctx._psym_0__2 = this.identstr();
				this.state = 422;
				this.match(TypedBNFParser.T__5);
				 
				                _localctx.result =  <symbol> MK_Term(<string> _localctx._psym_0__2.result, <boolean> false);
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 425;
				_localctx._psym_2__1 = this.match(TypedBNFParser.ESCAPED_STRING);
				 
				                _localctx.result =  <symbol> MK_Term(<string> <string> unescape(<string> <string> str(<Token> _localctx._psym_2__1)), <boolean> true);
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 427;
				_localctx._psym_4__1 = this.identstr();
				 
				                _localctx.result =  <symbol> MK_Nonterm(<string> _localctx._psym_4__1.result);
				            
				}
				break;

			case 4:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 430;
				_localctx._psym_6__1 = this.match(TypedBNFParser.CNAMEPLUS);
				this.state = 431;
				this.match(TypedBNFParser.T__2);
				this.state = 432;
				_localctx._psym_6__3 = this.slist_o__i__s__i__s_psym_p_(0);
				this.state = 433;
				this.match(TypedBNFParser.T__3);
				 
				                _localctx.result =  <symbol> MK_Macrocall(<string> <string> str(<Token> _localctx._psym_6__1), <Array<symbol>> _localctx._psym_6__3.result, <position> <position> mkpos(<Token> _localctx._psym_6__1));
				            
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
	public ann(): AnnContext {
		let _localctx: AnnContext = new AnnContext(this._ctx, this.state);
		this.enterRule(_localctx, 66, TypedBNFParser.RULE_ann);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 438;
			_localctx._ann_0__1 = this.identstr();
			this.state = 439;
			this.match(TypedBNFParser.T__7);
			this.state = 440;
			_localctx._ann_0__3 = this.typ();
			 
			                _localctx.result =  <[string, monot]>[_localctx._ann_0__1.result, _localctx._ann_0__3.result];
			            
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

	public slist_o__i__s__i__s_ann_p_(): Slist_o__i__s__i__s_ann_p_Context;
	public slist_o__i__s__i__s_ann_p_(_p: number): Slist_o__i__s__i__s_ann_p_Context;
	// @RuleVersion(0)
	public slist_o__i__s__i__s_ann_p_(_p?: number): Slist_o__i__s__i__s_ann_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Slist_o__i__s__i__s_ann_p_Context = new Slist_o__i__s__i__s_ann_p_Context(this._ctx, _parentState);
		let _prevctx: Slist_o__i__s__i__s_ann_p_Context = _localctx;
		let _startState: number = 68;
		this.enterRecursionRule(_localctx, 68, TypedBNFParser.RULE_slist_o__i__s__i__s_ann_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 444;
			_localctx._slist_o__i__s__i__s_ann_p__0__1 = this.ann();
			 
			                _localctx.result =  <Array<[string, monot]>>[ _localctx._slist_o__i__s__i__s_ann_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 454;
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
					_localctx = new Slist_o__i__s__i__s_ann_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_ann_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_ann_p_);
					this.state = 447;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 448;
					this.match(TypedBNFParser.T__0);
					this.state = 449;
					_localctx._slist_o__i__s__i__s_ann_p__2__3 = this.ann();
					 
					                          _localctx.result =  <Array<[string, monot]>> addList<[string, monot]>(<Array<[string, monot]>> _localctx._slist_o__i__s__i__s_ann_p__2__1.result, <[string, monot]> _localctx._slist_o__i__s__i__s_ann_p__2__3.result);
					                      
					}
					}
				}
				this.state = 456;
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
	public empty_o_slist_o__i__s__i__s_ann_p__p_(): Empty_o_slist_o__i__s__i__s_ann_p__p_Context {
		let _localctx: Empty_o_slist_o__i__s__i__s_ann_p__p_Context = new Empty_o_slist_o__i__s__i__s_ann_p__p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 70, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_ann_p__p_);
		try {
			this.state = 461;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.T__3:
				this.enterOuterAlt(_localctx, 1);
				{
				 
				                _localctx.result =  <Array<[string, monot]>>[  ];
				            
				}
				break;
			case TypedBNFParser.CNAMEPLUS:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 458;
				_localctx._empty_o_slist_o__i__s__i__s_ann_p__p__2__1 = this.slist_o__i__s__i__s_ann_p_(0);
				 
				                _localctx.result =  _localctx._empty_o_slist_o__i__s__i__s_ann_p__p__2__1.result;
				            
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
	public eslist_o__i__s__i__s_ann_p_(): Eslist_o__i__s__i__s_ann_p_Context {
		let _localctx: Eslist_o__i__s__i__s_ann_p_Context = new Eslist_o__i__s__i__s_ann_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 72, TypedBNFParser.RULE_eslist_o__i__s__i__s_ann_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 463;
			_localctx._eslist_o__i__s__i__s_ann_p__0__1 = this.empty_o_slist_o__i__s__i__s_ann_p__p_();
			 
			                _localctx.result =  _localctx._eslist_o__i__s__i__s_ann_p__0__1.result;
			            
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
	public func_parameters(): Func_parametersContext {
		let _localctx: Func_parametersContext = new Func_parametersContext(this._ctx, this.state);
		this.enterRule(_localctx, 74, TypedBNFParser.RULE_func_parameters);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 466;
			this.match(TypedBNFParser.T__2);
			this.state = 467;
			_localctx._func_parameters_0__2 = this.eslist_o__i__s__i__s_ann_p_();
			this.state = 468;
			this.match(TypedBNFParser.T__3);
			 
			                _localctx.result =  _localctx._func_parameters_0__2.result;
			            
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
	public expr(): ExprContext {
		let _localctx: ExprContext = new ExprContext(this._ctx, this.state);
		this.enterRule(_localctx, 76, TypedBNFParser.RULE_expr);
		try {
			this.state = 493;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 25, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 471;
				_localctx._expr_0__1 = this.match(TypedBNFParser.T__16);
				this.state = 472;
				_localctx._expr_0__2 = this.identstr();
				this.state = 473;
				this.match(TypedBNFParser.T__17);
				this.state = 474;
				_localctx._expr_0__4 = this.expr();
				this.state = 475;
				this.match(TypedBNFParser.T__18);
				this.state = 476;
				_localctx._expr_0__6 = this.expr();
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_ELet(<string> _localctx._expr_0__2.result, <expr> _localctx._expr_0__4.result, <expr> _localctx._expr_0__6.result), <position> <position> mkpos(<Token> _localctx._expr_0__1));
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 479;
				_localctx._expr_2__1 = this.match(TypedBNFParser.T__19);
				this.state = 480;
				_localctx._expr_2__2 = this.func_parameters();
				this.state = 481;
				this.match(TypedBNFParser.T__1);
				this.state = 482;
				_localctx._expr_2__4 = this.expr();
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EFun(<Array<[string, monot]>> _localctx._expr_2__2.result, <expr> _localctx._expr_2__4.result), <position> <position> mkpos(<Token> _localctx._expr_2__1));
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 485;
				_localctx._expr_4__1 = this.call(0);
				 
				                _localctx.result =  _localctx._expr_4__1.result;
				            
				}
				break;

			case 4:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 488;
				_localctx._expr_6__1 = this.call(0);
				this.state = 489;
				this.match(TypedBNFParser.T__20);
				this.state = 490;
				_localctx._expr_6__3 = this.expr();
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_ELet(<string> "_", <expr> _localctx._expr_6__1.result, <expr> _localctx._expr_6__3.result), <position> <position> getpos(<expr> _localctx._expr_6__1.result));
				            
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

	public call(): CallContext;
	public call(_p: number): CallContext;
	// @RuleVersion(0)
	public call(_p?: number): CallContext {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: CallContext = new CallContext(this._ctx, _parentState);
		let _prevctx: CallContext = _localctx;
		let _startState: number = 78;
		this.enterRecursionRule(_localctx, 78, TypedBNFParser.RULE_call, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 496;
			_localctx._call_2__1 = this.atomexp(0);
			 
			                _localctx.result =  _localctx._call_2__1.result;
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 507;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 26, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new CallContext(_parentctx, _parentState);
					_localctx._call_0__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_call);
					this.state = 499;
					if (!(this.precpred(this._ctx, 2))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
					}
					this.state = 500;
					this.match(TypedBNFParser.T__2);
					this.state = 501;
					_localctx._call_0__3 = this.eslist_o__i__s__i__s_expr_p_();
					this.state = 502;
					this.match(TypedBNFParser.T__3);
					 
					                          _localctx.result =  <expr> MK_Expr(<node> <node> MK_EApp(<expr> _localctx._call_0__1.result, <Array<expr>> _localctx._call_0__3.result), <position> <position> getpos(<expr> _localctx._call_0__1.result));
					                      
					}
					}
				}
				this.state = 509;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 26, this._ctx);
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
	public empty_o_slist_o__i__s__i__s_expr_p__p_(): Empty_o_slist_o__i__s__i__s_expr_p__p_Context {
		let _localctx: Empty_o_slist_o__i__s__i__s_expr_p__p_Context = new Empty_o_slist_o__i__s__i__s_expr_p__p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 80, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_expr_p__p_);
		try {
			this.state = 514;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.T__3:
			case TypedBNFParser.T__23:
				this.enterOuterAlt(_localctx, 1);
				{
				 
				                _localctx.result =  <Array<expr>>[  ];
				            
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
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 511;
				_localctx._empty_o_slist_o__i__s__i__s_expr_p__p__2__1 = this.slist_o__i__s__i__s_expr_p_(0);
				 
				                _localctx.result =  _localctx._empty_o_slist_o__i__s__i__s_expr_p__p__2__1.result;
				            
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
	public eslist_o__i__s__i__s_expr_p_(): Eslist_o__i__s__i__s_expr_p_Context {
		let _localctx: Eslist_o__i__s__i__s_expr_p_Context = new Eslist_o__i__s__i__s_expr_p_Context(this._ctx, this.state);
		this.enterRule(_localctx, 82, TypedBNFParser.RULE_eslist_o__i__s__i__s_expr_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 516;
			_localctx._eslist_o__i__s__i__s_expr_p__0__1 = this.empty_o_slist_o__i__s__i__s_expr_p__p_();
			 
			                _localctx.result =  _localctx._eslist_o__i__s__i__s_expr_p__0__1.result;
			            
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

	public slist_o__i__s__i__s_expr_p_(): Slist_o__i__s__i__s_expr_p_Context;
	public slist_o__i__s__i__s_expr_p_(_p: number): Slist_o__i__s__i__s_expr_p_Context;
	// @RuleVersion(0)
	public slist_o__i__s__i__s_expr_p_(_p?: number): Slist_o__i__s__i__s_expr_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Slist_o__i__s__i__s_expr_p_Context = new Slist_o__i__s__i__s_expr_p_Context(this._ctx, _parentState);
		let _prevctx: Slist_o__i__s__i__s_expr_p_Context = _localctx;
		let _startState: number = 84;
		this.enterRecursionRule(_localctx, 84, TypedBNFParser.RULE_slist_o__i__s__i__s_expr_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 520;
			_localctx._slist_o__i__s__i__s_expr_p__0__1 = this.expr();
			 
			                _localctx.result =  <Array<expr>>[ _localctx._slist_o__i__s__i__s_expr_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 530;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 28, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Slist_o__i__s__i__s_expr_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_expr_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_expr_p_);
					this.state = 523;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 524;
					this.match(TypedBNFParser.T__0);
					this.state = 525;
					_localctx._slist_o__i__s__i__s_expr_p__2__3 = this.expr();
					 
					                          _localctx.result =  <Array<expr>> addList<expr>(<Array<expr>> _localctx._slist_o__i__s__i__s_expr_p__2__1.result, <expr> _localctx._slist_o__i__s__i__s_expr_p__2__3.result);
					                      
					}
					}
				}
				this.state = 532;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 28, this._ctx);
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

	public atomexp(): AtomexpContext;
	public atomexp(_p: number): AtomexpContext;
	// @RuleVersion(0)
	public atomexp(_p?: number): AtomexpContext {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: AtomexpContext = new AtomexpContext(this._ctx, _parentState);
		let _prevctx: AtomexpContext = _localctx;
		let _startState: number = 86;
		this.enterRecursionRule(_localctx, 86, TypedBNFParser.RULE_atomexp, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 562;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 29, this._ctx) ) {
			case 1:
				{
				this.state = 534;
				_localctx._atomexp_0__1 = this.match(TypedBNFParser.INT);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EInt(<number> <number> toint(<Token> _localctx._atomexp_0__1)), <position> <position> mkpos(<Token> _localctx._atomexp_0__1));
				            
				}
				break;

			case 2:
				{
				this.state = 536;
				_localctx._atomexp_2__1 = this.match(TypedBNFParser.FLOAT);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EFlt(<number> <number> tofloat(<Token> _localctx._atomexp_2__1)), <position> <position> mkpos(<Token> _localctx._atomexp_2__1));
				            
				}
				break;

			case 3:
				{
				this.state = 538;
				_localctx._atomexp_4__1 = this.match(TypedBNFParser.ESCAPED_STRING);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EStr(<string> <string> unescape(<string> <string> str(<Token> _localctx._atomexp_4__1))), <position> <position> mkpos(<Token> _localctx._atomexp_4__1));
				            
				}
				break;

			case 4:
				{
				this.state = 540;
				_localctx._atomexp_6__1 = this.match(TypedBNFParser.T__21);
				this.state = 541;
				_localctx._atomexp_6__2 = this.match(TypedBNFParser.INT);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_ESlot(<number> <number> toint(<Token> _localctx._atomexp_6__2)), <position> <position> mkpos(<Token> _localctx._atomexp_6__1));
				            
				}
				break;

			case 5:
				{
				this.state = 543;
				_localctx._atomexp_8__1 = this.match(TypedBNFParser.T__22);
				this.state = 544;
				_localctx._atomexp_8__2 = this.eslist_o__i__s__i__s_expr_p_();
				this.state = 545;
				this.match(TypedBNFParser.T__23);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EList(<Array<expr>> _localctx._atomexp_8__2.result), <position> <position> mkpos(<Token> _localctx._atomexp_8__1));
				            
				}
				break;

			case 6:
				{
				this.state = 548;
				_localctx._atomexp_10__1 = this.match(TypedBNFParser.T__2);
				this.state = 549;
				this.match(TypedBNFParser.T__3);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_ETuple(<Array<expr>> <Array<expr>>[  ]), <position> <position> mkpos(<Token> _localctx._atomexp_10__1));
				            
				}
				break;

			case 7:
				{
				this.state = 551;
				_localctx._atomexp_12__1 = this.match(TypedBNFParser.T__2);
				this.state = 552;
				_localctx._atomexp_12__2 = this.slist_o__i__s__i__s_expr_p_(0);
				this.state = 553;
				this.match(TypedBNFParser.T__3);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_ETuple(<Array<expr>> _localctx._atomexp_12__2.result), <position> <position> mkpos(<Token> _localctx._atomexp_12__1));
				            
				}
				break;

			case 8:
				{
				this.state = 556;
				_localctx._atomexp_14__1 = this.match(TypedBNFParser.CNAMEPLUS);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EVar(<string> <string> str(<Token> _localctx._atomexp_14__1)), <position> <position> mkpos(<Token> _localctx._atomexp_14__1));
				            
				}
				break;

			case 9:
				{
				this.state = 558;
				_localctx._atomexp_18__1 = this.match(TypedBNFParser.T__25);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EBool(<boolean> true), <position> <position> mkpos(<Token> _localctx._atomexp_18__1));
				            
				}
				break;

			case 10:
				{
				this.state = 560;
				_localctx._atomexp_20__1 = this.match(TypedBNFParser.T__26);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EBool(<boolean> false), <position> <position> mkpos(<Token> _localctx._atomexp_20__1));
				            
				}
				break;
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 570;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 30, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new AtomexpContext(_parentctx, _parentState);
					_localctx._atomexp_16__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_atomexp);
					this.state = 564;
					if (!(this.precpred(this._ctx, 3))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 3)");
					}
					this.state = 565;
					this.match(TypedBNFParser.T__24);
					this.state = 566;
					_localctx._atomexp_16__3 = this.match(TypedBNFParser.CNAMEPLUS);
					 
					                          _localctx.result =  <expr> MK_Expr(<node> <node> MK_EField(<expr> _localctx._atomexp_16__1.result, <string> <string> str(<Token> _localctx._atomexp_16__3)), <position> <position> getpos(<expr> _localctx._atomexp_16__1.result));
					                      
					}
					}
				}
				this.state = 572;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 30, this._ctx);
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

	public slist_o__i__u__i__s_lexer_and_p_(): Slist_o__i__u__i__s_lexer_and_p_Context;
	public slist_o__i__u__i__s_lexer_and_p_(_p: number): Slist_o__i__u__i__s_lexer_and_p_Context;
	// @RuleVersion(0)
	public slist_o__i__u__i__s_lexer_and_p_(_p?: number): Slist_o__i__u__i__s_lexer_and_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Slist_o__i__u__i__s_lexer_and_p_Context = new Slist_o__i__u__i__s_lexer_and_p_Context(this._ctx, _parentState);
		let _prevctx: Slist_o__i__u__i__s_lexer_and_p_Context = _localctx;
		let _startState: number = 88;
		this.enterRecursionRule(_localctx, 88, TypedBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 574;
			_localctx._slist_o__i__u__i__s_lexer_and_p__0__1 = this.lexer_and();
			 
			                _localctx.result =  <Array<lexerule>>[ _localctx._slist_o__i__u__i__s_lexer_and_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 584;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 31, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Slist_o__i__u__i__s_lexer_and_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__u__i__s_lexer_and_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_);
					this.state = 577;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 578;
					this.match(TypedBNFParser.T__13);
					this.state = 579;
					_localctx._slist_o__i__u__i__s_lexer_and_p__2__3 = this.lexer_and();
					 
					                          _localctx.result =  <Array<lexerule>> addList<lexerule>(<Array<lexerule>> _localctx._slist_o__i__u__i__s_lexer_and_p__2__1.result, <lexerule> _localctx._slist_o__i__u__i__s_lexer_and_p__2__3.result);
					                      
					}
					}
				}
				this.state = 586;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 31, this._ctx);
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
	public lexer__y_(): Lexer__y_Context {
		let _localctx: Lexer__y_Context = new Lexer__y_Context(this._ctx, this.state);
		this.enterRule(_localctx, 90, TypedBNFParser.RULE_lexer__y_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 587;
			_localctx._lexer__y__0__1 = this.slist_o__i__u__i__s_lexer_and_p_(0);
			 
			                _localctx.result =  <lexerule> MK_LOr(<Array<lexerule>> _localctx._lexer__y__0__1.result);
			            
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

	public list_o_lexer_atomexpr_p_(): List_o_lexer_atomexpr_p_Context;
	public list_o_lexer_atomexpr_p_(_p: number): List_o_lexer_atomexpr_p_Context;
	// @RuleVersion(0)
	public list_o_lexer_atomexpr_p_(_p?: number): List_o_lexer_atomexpr_p_Context {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: List_o_lexer_atomexpr_p_Context = new List_o_lexer_atomexpr_p_Context(this._ctx, _parentState);
		let _prevctx: List_o_lexer_atomexpr_p_Context = _localctx;
		let _startState: number = 92;
		this.enterRecursionRule(_localctx, 92, TypedBNFParser.RULE_list_o_lexer_atomexpr_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 591;
			_localctx._list_o_lexer_atomexpr_p__0__1 = this.lexer_atomexpr(0);
			 
			                _localctx.result =  <Array<lexerule>>[ _localctx._list_o_lexer_atomexpr_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 600;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 32, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new List_o_lexer_atomexpr_p_Context(_parentctx, _parentState);
					_localctx._list_o_lexer_atomexpr_p__2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_list_o_lexer_atomexpr_p_);
					this.state = 594;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 595;
					_localctx._list_o_lexer_atomexpr_p__2__2 = this.lexer_atomexpr(0);
					 
					                          _localctx.result =  <Array<lexerule>> addList<lexerule>(<Array<lexerule>> _localctx._list_o_lexer_atomexpr_p__2__1.result, <lexerule> _localctx._list_o_lexer_atomexpr_p__2__2.result);
					                      
					}
					}
				}
				this.state = 602;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 32, this._ctx);
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
	public lexer_and(): Lexer_andContext {
		let _localctx: Lexer_andContext = new Lexer_andContext(this._ctx, this.state);
		this.enterRule(_localctx, 94, TypedBNFParser.RULE_lexer_and);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 603;
			_localctx._lexer_and_0__1 = this.list_o_lexer_atomexpr_p_(0);
			 
			                _localctx.result =  <lexerule> MK_LSeq(<Array<lexerule>> _localctx._lexer_and_0__1.result);
			            
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

	public lexer_atomexpr(): Lexer_atomexprContext;
	public lexer_atomexpr(_p: number): Lexer_atomexprContext;
	// @RuleVersion(0)
	public lexer_atomexpr(_p?: number): Lexer_atomexprContext {
		if (_p === undefined) {
			_p = 0;
		}

		let _parentctx: ParserRuleContext = this._ctx;
		let _parentState: number = this.state;
		let _localctx: Lexer_atomexprContext = new Lexer_atomexprContext(this._ctx, _parentState);
		let _prevctx: Lexer_atomexprContext = _localctx;
		let _startState: number = 96;
		this.enterRecursionRule(_localctx, 96, TypedBNFParser.RULE_lexer_atomexpr, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 607;
			_localctx._lexer_atomexpr_6__1 = this.lexer_atom();
			 
			                _localctx.result =  _localctx._lexer_atomexpr_6__1.result;
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 621;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 34, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					this.state = 619;
					this._errHandler.sync(this);
					switch ( this.interpreter.adaptivePredict(this._input, 33, this._ctx) ) {
					case 1:
						{
						_localctx = new Lexer_atomexprContext(_parentctx, _parentState);
						_localctx._lexer_atomexpr_0__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_lexer_atomexpr);
						this.state = 610;
						if (!(this.precpred(this._ctx, 4))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 4)");
						}
						this.state = 611;
						this.match(TypedBNFParser.T__27);
						 
						                          _localctx.result =  <lexerule> MK_LPlus(<lexerule> _localctx._lexer_atomexpr_0__1.result);
						                      
						}
						break;

					case 2:
						{
						_localctx = new Lexer_atomexprContext(_parentctx, _parentState);
						_localctx._lexer_atomexpr_2__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_lexer_atomexpr);
						this.state = 613;
						if (!(this.precpred(this._ctx, 3))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 3)");
						}
						this.state = 614;
						this.match(TypedBNFParser.T__6);
						 
						                          _localctx.result =  <lexerule> MK_LStar(<lexerule> _localctx._lexer_atomexpr_2__1.result);
						                      
						}
						break;

					case 3:
						{
						_localctx = new Lexer_atomexprContext(_parentctx, _parentState);
						_localctx._lexer_atomexpr_4__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_lexer_atomexpr);
						this.state = 616;
						if (!(this.precpred(this._ctx, 2))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
						}
						this.state = 617;
						this.match(TypedBNFParser.T__28);
						 
						                          _localctx.result =  <lexerule> MK_LOptional(<lexerule> _localctx._lexer_atomexpr_4__1.result);
						                      
						}
						break;
					}
					}
				}
				this.state = 623;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 34, this._ctx);
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
	public lexer_atom(): Lexer_atomContext {
		let _localctx: Lexer_atomContext = new Lexer_atomContext(this._ctx, this.state);
		this.enterRule(_localctx, 98, TypedBNFParser.RULE_lexer_atom);
		try {
			this.state = 647;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.ESCAPED_STRING:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 624;
				_localctx._lexer_atom_0__1 = this.match(TypedBNFParser.ESCAPED_STRING);
				 
				                _localctx.result =  <lexerule> MK_LStr(<string> <string> unescape(<string> <string> str(<Token> _localctx._lexer_atom_0__1)));
				            
				}
				break;
			case TypedBNFParser.T__29:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 626;
				this.match(TypedBNFParser.T__29);
				this.state = 627;
				_localctx._lexer_atom_2__2 = this.lexer_atom();
				 
				                _localctx.result =  <lexerule> MK_LNot(<lexerule> _localctx._lexer_atom_2__2.result);
				            
				}
				break;
			case TypedBNFParser.T__2:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 630;
				this.match(TypedBNFParser.T__2);
				this.state = 631;
				_localctx._lexer_atom_4__2 = this.lexer__y_();
				this.state = 632;
				this.match(TypedBNFParser.T__3);
				 
				                _localctx.result =  <lexerule> MK_LGroup(<lexerule> _localctx._lexer_atom_4__2.result);
				            
				}
				break;
			case TypedBNFParser.T__30:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 635;
				this.match(TypedBNFParser.T__30);
				 
				                _localctx.result =  MK_LNumber;
				            
				}
				break;
			case TypedBNFParser.RANGE:
				this.enterOuterAlt(_localctx, 5);
				{
				this.state = 637;
				_localctx._lexer_atom_8__1 = this.match(TypedBNFParser.RANGE);
				 
				                _localctx.result =  <lexerule> getrange(<string> <string> str(<Token> _localctx._lexer_atom_8__1));
				            
				}
				break;
			case TypedBNFParser.UNICODE_RANGE:
				this.enterOuterAlt(_localctx, 6);
				{
				this.state = 639;
				_localctx._lexer_atom_10__1 = this.match(TypedBNFParser.UNICODE_RANGE);
				 
				                _localctx.result =  <lexerule> getunicoderange(<string> <string> str(<Token> _localctx._lexer_atom_10__1));
				            
				}
				break;
			case TypedBNFParser.T__31:
				this.enterOuterAlt(_localctx, 7);
				{
				this.state = 641;
				this.match(TypedBNFParser.T__31);
				 
				                _localctx.result =  MK_LWildcard;
				            
				}
				break;
			case TypedBNFParser.T__24:
				this.enterOuterAlt(_localctx, 8);
				{
				this.state = 643;
				this.match(TypedBNFParser.T__24);
				 
				                _localctx.result =  MK_LWildcard;
				            
				}
				break;
			case TypedBNFParser.CNAMEPLUS:
				this.enterOuterAlt(_localctx, 9);
				{
				this.state = 645;
				_localctx._lexer_atom_16__1 = this.match(TypedBNFParser.CNAMEPLUS);
				 
				                _localctx.result =  <lexerule> MK_LRef(<string> <string> str(<Token> _localctx._lexer_atom_16__1));
				            
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
	public lexerdef(): LexerdefContext {
		let _localctx: LexerdefContext = new LexerdefContext(this._ctx, this.state);
		this.enterRule(_localctx, 100, TypedBNFParser.RULE_lexerdef);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 649;
			_localctx._lexerdef_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
			this.state = 650;
			this.match(TypedBNFParser.T__17);
			this.state = 651;
			_localctx._lexerdef_0__3 = this.lexer__y_();
			this.state = 652;
			this.match(TypedBNFParser.T__20);
			 
			                _localctx.result =  <definition> MK_Deflexer(<string> <string> str(<Token> _localctx._lexerdef_0__1), <lexerule> _localctx._lexerdef_0__3.result, <position> <position> mkpos(<Token> _localctx._lexerdef_0__1));
			            
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
		case 1:
			return this.list_o_toplevel_p__sempred(_localctx as List_o_toplevel_p_Context, predIndex);

		case 5:
			return this.slist_o__i__s__i__s_param_type_p__sempred(_localctx as Slist_o__i__s__i__s_param_type_p_Context, predIndex);

		case 9:
			return this.slist_o__i__s__i__s_typ_p__sempred(_localctx as Slist_o__i__s__i__s_typ_p_Context, predIndex);

		case 10:
			return this.typ2_sempred(_localctx as Typ2Context, predIndex);

		case 11:
			return this.type_product_sempred(_localctx as Type_productContext, predIndex);

		case 15:
			return this.slist_o__i__s__i__s_tvar_str_p__sempred(_localctx as Slist_o__i__s__i__s_tvar_str_p_Context, predIndex);

		case 18:
			return this.slist_o__i__s__i__s_field_ann_p__sempred(_localctx as Slist_o__i__s__i__s_field_ann_p_Context, predIndex);

		case 24:
			return this.slist_o__i__s__i__s_identstr_p__sempred(_localctx as Slist_o__i__s__i__s_identstr_p_Context, predIndex);

		case 26:
			return this.productions_sempred(_localctx as ProductionsContext, predIndex);

		case 27:
			return this.list_o_psym_p__sempred(_localctx as List_o_psym_p_Context, predIndex);

		case 31:
			return this.slist_o__i__s__i__s_psym_p__sempred(_localctx as Slist_o__i__s__i__s_psym_p_Context, predIndex);

		case 34:
			return this.slist_o__i__s__i__s_ann_p__sempred(_localctx as Slist_o__i__s__i__s_ann_p_Context, predIndex);

		case 39:
			return this.call_sempred(_localctx as CallContext, predIndex);

		case 42:
			return this.slist_o__i__s__i__s_expr_p__sempred(_localctx as Slist_o__i__s__i__s_expr_p_Context, predIndex);

		case 43:
			return this.atomexp_sempred(_localctx as AtomexpContext, predIndex);

		case 44:
			return this.slist_o__i__u__i__s_lexer_and_p__sempred(_localctx as Slist_o__i__u__i__s_lexer_and_p_Context, predIndex);

		case 46:
			return this.list_o_lexer_atomexpr_p__sempred(_localctx as List_o_lexer_atomexpr_p_Context, predIndex);

		case 48:
			return this.lexer_atomexpr_sempred(_localctx as Lexer_atomexprContext, predIndex);
		}
		return true;
	}
	private list_o_toplevel_p__sempred(_localctx: List_o_toplevel_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 0:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private slist_o__i__s__i__s_param_type_p__sempred(_localctx: Slist_o__i__s__i__s_param_type_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 1:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private slist_o__i__s__i__s_typ_p__sempred(_localctx: Slist_o__i__s__i__s_typ_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 2:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private typ2_sempred(_localctx: Typ2Context, predIndex: number): boolean {
		switch (predIndex) {
		case 3:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private type_product_sempred(_localctx: Type_productContext, predIndex: number): boolean {
		switch (predIndex) {
		case 4:
			return this.precpred(this._ctx, 2);
		}
		return true;
	}
	private slist_o__i__s__i__s_tvar_str_p__sempred(_localctx: Slist_o__i__s__i__s_tvar_str_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 5:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private slist_o__i__s__i__s_field_ann_p__sempred(_localctx: Slist_o__i__s__i__s_field_ann_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 6:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private slist_o__i__s__i__s_identstr_p__sempred(_localctx: Slist_o__i__s__i__s_identstr_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 7:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private productions_sempred(_localctx: ProductionsContext, predIndex: number): boolean {
		switch (predIndex) {
		case 8:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private list_o_psym_p__sempred(_localctx: List_o_psym_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 9:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private slist_o__i__s__i__s_psym_p__sempred(_localctx: Slist_o__i__s__i__s_psym_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 10:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private slist_o__i__s__i__s_ann_p__sempred(_localctx: Slist_o__i__s__i__s_ann_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 11:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private call_sempred(_localctx: CallContext, predIndex: number): boolean {
		switch (predIndex) {
		case 12:
			return this.precpred(this._ctx, 2);
		}
		return true;
	}
	private slist_o__i__s__i__s_expr_p__sempred(_localctx: Slist_o__i__s__i__s_expr_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 13:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private atomexp_sempred(_localctx: AtomexpContext, predIndex: number): boolean {
		switch (predIndex) {
		case 14:
			return this.precpred(this._ctx, 3);
		}
		return true;
	}
	private slist_o__i__u__i__s_lexer_and_p__sempred(_localctx: Slist_o__i__u__i__s_lexer_and_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 15:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private list_o_lexer_atomexpr_p__sempred(_localctx: List_o_lexer_atomexpr_p_Context, predIndex: number): boolean {
		switch (predIndex) {
		case 16:
			return this.precpred(this._ctx, 1);
		}
		return true;
	}
	private lexer_atomexpr_sempred(_localctx: Lexer_atomexprContext, predIndex: number): boolean {
		switch (predIndex) {
		case 17:
			return this.precpred(this._ctx, 4);

		case 18:
			return this.precpred(this._ctx, 3);

		case 19:
			return this.precpred(this._ctx, 2);
		}
		return true;
	}

	private static readonly _serializedATNSegments: number = 2;
	private static readonly _serializedATNSegment0: string =
		"\x03\uC91D\uCABA\u058D\uAFBA\u4F53\u0607\uEA8B\uC241\x03+\u0292\x04\x02" +
		"\t\x02\x04\x03\t\x03\x04\x04\t\x04\x04\x05\t\x05\x04\x06\t\x06\x04\x07" +
		"\t\x07\x04\b\t\b\x04\t\t\t\x04\n\t\n\x04\v\t\v\x04\f\t\f\x04\r\t\r\x04" +
		"\x0E\t\x0E\x04\x0F\t\x0F\x04\x10\t\x10\x04\x11\t\x11\x04\x12\t\x12\x04" +
		"\x13\t\x13\x04\x14\t\x14\x04\x15\t\x15\x04\x16\t\x16\x04\x17\t\x17\x04" +
		"\x18\t\x18\x04\x19\t\x19\x04\x1A\t\x1A\x04\x1B\t\x1B\x04\x1C\t\x1C\x04" +
		"\x1D\t\x1D\x04\x1E\t\x1E\x04\x1F\t\x1F\x04 \t \x04!\t!\x04\"\t\"\x04#" +
		"\t#\x04$\t$\x04%\t%\x04&\t&\x04\'\t\'\x04(\t(\x04)\t)\x04*\t*\x04+\t+" +
		"\x04,\t,\x04-\t-\x04.\t.\x04/\t/\x040\t0\x041\t1\x042\t2\x043\t3\x044" +
		"\t4\x03\x02\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03" +
		"\x03\x03\x03\x03\x03\x03\x03\x07\x03u\n\x03\f\x03\x0E\x03x\v\x03\x03\x04" +
		"\x03\x04\x03\x04\x03\x05\x03\x05\x03\x05\x03\x06\x03\x06\x03\x06\x03\x07" +
		"\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x07\x07" +
		"\x8C\n\x07\f\x07\x0E\x07\x8F\v\x07\x03\b\x03\b\x03\b\x03\b\x05\b\x95\n" +
		"\b\x03\t\x03\t\x03\t\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x03" +
		"\n\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x05\n\xA9\n\n\x03\v\x03\v\x03\v" +
		"\x03\v\x03\v\x03\v\x03\v\x03\v\x03\v\x07\v\xB4\n\v\f\v\x0E\v\xB7\v\v\x03" +
		"\f\x03\f\x03\f\x03\f\x03\f\x03\f\x03\f\x03\f\x03\f\x03\f\x07\f\xC3\n\f" +
		"\f\f\x0E\f\xC6\v\f\x03\r\x03\r\x03\r\x03\r\x03\r\x03\r\x03\r\x03\r\x03" +
		"\r\x07\r\xD1\n\r\f\r\x0E\r\xD4\v\r\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x03" +
		"\x0E\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x05\x0E\xDF\n\x0E\x03\x0F\x03\x0F" +
		"\x03\x0F\x03\x10\x03\x10\x03\x10\x03\x10\x03\x10\x03\x10\x03\x10\x03\x10" +
		"\x05\x10\xEC\n\x10\x03\x11\x03\x11\x03\x11\x03\x11\x03\x11\x03\x11\x03" +
		"\x11\x03\x11\x03\x11\x07\x11\xF7\n\x11\f\x11\x0E\x11\xFA\v\x11\x03\x12" +
		"\x03\x12\x03\x12\x03\x12\x03\x12\x03\x12\x05\x12\u0102\n\x12\x03\x13\x03" +
		"\x13\x03\x13\x03\x13\x03\x13\x03\x14\x03\x14\x03\x14\x03\x14\x03\x14\x03" +
		"\x14\x03\x14\x03\x14\x03\x14\x07\x14\u0112\n\x14\f\x14\x0E\x14\u0115\v" +
		"\x14\x03\x15\x03\x15\x03\x15\x03\x15\x05\x15\u011B\n\x15\x03\x16\x03\x16" +
		"\x03\x16\x03\x17\x03\x17\x03\x17\x03\x17\x03\x17\x03\x17\x05\x17\u0126" +
		"\n\x17\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18" +
		"\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18" +
		"\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18" +
		"\x05\x18\u0142\n\x18\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03" +
		"\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x05\x19\u0151\n\x19" +
		"\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A" +
		"\x07\x1A\u015C\n\x1A\f\x1A\x0E\x1A\u015F\v\x1A\x03\x1B\x03\x1B\x03\x1B" +
		"\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x05\x1B" +
		"\u016C\n\x1B\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03" +
		"\x1C\x03\x1C\x03\x1C\x07\x1C\u0178\n\x1C\f\x1C\x0E\x1C\u017B\v\x1C\x03" +
		"\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x07\x1D\u0185" +
		"\n\x1D\f\x1D\x0E\x1D\u0188\v\x1D\x03\x1E\x03\x1E\x03\x1E\x03\x1E\x05\x1E" +
		"\u018E\n\x1E\x03\x1F\x03\x1F\x03\x1F\x03 \x03 \x03 \x03 \x03 \x03 \x03" +
		"!\x03!\x03!\x03!\x03!\x03!\x03!\x03!\x03!\x07!\u01A2\n!\f!\x0E!\u01A5" +
		"\v!\x03\"\x03\"\x03\"\x03\"\x03\"\x03\"\x03\"\x03\"\x03\"\x03\"\x03\"" +
		"\x03\"\x03\"\x03\"\x03\"\x03\"\x05\"\u01B7\n\"\x03#\x03#\x03#\x03#\x03" +
		"#\x03$\x03$\x03$\x03$\x03$\x03$\x03$\x03$\x03$\x07$\u01C7\n$\f$\x0E$\u01CA" +
		"\v$\x03%\x03%\x03%\x03%\x05%\u01D0\n%\x03&\x03&\x03&\x03\'\x03\'\x03\'" +
		"\x03\'\x03\'\x03(\x03(\x03(\x03(\x03(\x03(\x03(\x03(\x03(\x03(\x03(\x03" +
		"(\x03(\x03(\x03(\x03(\x03(\x03(\x03(\x03(\x03(\x03(\x05(\u01F0\n(\x03" +
		")\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x07)\u01FC\n)\f)\x0E)\u01FF" +
		"\v)\x03*\x03*\x03*\x03*\x05*\u0205\n*\x03+\x03+\x03+\x03,\x03,\x03,\x03" +
		",\x03,\x03,\x03,\x03,\x03,\x07,\u0213\n,\f,\x0E,\u0216\v,\x03-\x03-\x03" +
		"-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03" +
		"-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x03-\x05-\u0235" +
		"\n-\x03-\x03-\x03-\x03-\x07-\u023B\n-\f-\x0E-\u023E\v-\x03.\x03.\x03." +
		"\x03.\x03.\x03.\x03.\x03.\x03.\x07.\u0249\n.\f.\x0E.\u024C\v.\x03/\x03" +
		"/\x03/\x030\x030\x030\x030\x030\x030\x030\x030\x070\u0259\n0\f0\x0E0\u025C" +
		"\v0\x031\x031\x031\x032\x032\x032\x032\x032\x032\x032\x032\x032\x032\x03" +
		"2\x032\x032\x072\u026E\n2\f2\x0E2\u0271\v2\x033\x033\x033\x033\x033\x03" +
		"3\x033\x033\x033\x033\x033\x033\x033\x033\x033\x033\x033\x033\x033\x03" +
		"3\x033\x033\x033\x053\u028A\n3\x034\x034\x034\x034\x034\x034\x034\x02" +
		"\x02\x14\x04\f\x14\x16\x18 &268@FPVXZ^b5\x02\x02\x04\x02\x06\x02\b\x02" +
		"\n\x02\f\x02\x0E\x02\x10\x02\x12\x02\x14\x02\x16\x02\x18\x02\x1A\x02\x1C" +
		"\x02\x1E\x02 \x02\"\x02$\x02&\x02(\x02*\x02,\x02.\x020\x022\x024\x026" +
		"\x028\x02:\x02<\x02>\x02@\x02B\x02D\x02F\x02H\x02J\x02L\x02N\x02P\x02" +
		"R\x02T\x02V\x02X\x02Z\x02\\\x02^\x02`\x02b\x02d\x02f\x02\x02\x02\x02\u029B" +
		"\x02h\x03\x02\x02\x02\x04l\x03\x02\x02\x02\x06y\x03\x02\x02\x02\b|\x03" +
		"\x02\x02\x02\n\x7F\x03\x02\x02\x02\f\x82\x03\x02\x02\x02\x0E\x94\x03\x02" +
		"\x02\x02\x10\x96\x03\x02\x02\x02\x12\xA8\x03\x02\x02\x02\x14\xAA\x03\x02" +
		"\x02\x02\x16\xB8\x03\x02\x02\x02\x18\xC7\x03\x02\x02\x02\x1A\xDE\x03\x02" +
		"\x02\x02\x1C\xE0\x03\x02\x02\x02\x1E\xEB\x03\x02\x02\x02 \xED\x03\x02" +
		"\x02\x02\"\u0101\x03\x02\x02\x02$\u0103\x03\x02\x02\x02&\u0108\x03\x02" +
		"\x02\x02(\u011A\x03\x02\x02\x02*\u011C\x03\x02\x02\x02,\u0125\x03\x02" +
		"\x02\x02.\u0141\x03\x02\x02\x020\u0150\x03\x02\x02\x022\u0152\x03\x02" +
		"\x02\x024\u016B\x03\x02\x02\x026\u016D\x03\x02\x02\x028\u017C\x03\x02" +
		"\x02\x02:\u018D\x03\x02\x02\x02<\u018F\x03\x02\x02\x02>\u0192\x03\x02" +
		"\x02\x02@\u0198\x03\x02\x02\x02B\u01B6\x03\x02\x02\x02D\u01B8\x03\x02" +
		"\x02\x02F\u01BD\x03\x02\x02\x02H\u01CF\x03\x02\x02\x02J\u01D1\x03\x02" +
		"\x02\x02L\u01D4\x03\x02\x02\x02N\u01EF\x03\x02\x02\x02P\u01F1\x03\x02" +
		"\x02\x02R\u0204\x03\x02\x02\x02T\u0206\x03\x02\x02\x02V\u0209\x03\x02" +
		"\x02\x02X\u0234\x03\x02\x02\x02Z\u023F\x03\x02\x02\x02\\\u024D\x03\x02" +
		"\x02\x02^\u0250\x03\x02\x02\x02`\u025D\x03\x02\x02\x02b\u0260\x03\x02" +
		"\x02\x02d\u0289\x03\x02\x02\x02f\u028B\x03\x02\x02\x02hi\x05\x06\x04\x02" +
		"ij\x07\x02\x02\x03jk\b\x02\x01\x02k\x03\x03\x02\x02\x02lm\b\x03\x01\x02" +
		"mn\x050\x19\x02no\b\x03\x01\x02ov\x03\x02\x02\x02pq\f\x03\x02\x02qr\x05" +
		"0\x19\x02rs\b\x03\x01\x02su\x03\x02\x02\x02tp\x03\x02\x02\x02ux\x03\x02" +
		"\x02\x02vt\x03\x02\x02\x02vw\x03\x02\x02\x02w\x05\x03\x02\x02\x02xv\x03" +
		"\x02\x02\x02yz\x05\x04\x03\x02z{\b\x04\x01\x02{\x07\x03\x02\x02\x02|}" +
		"\x07%\x02\x02}~\b\x05\x01\x02~\t\x03\x02\x02\x02\x7F\x80\x05\x12\n\x02" +
		"\x80\x81\b\x06\x01\x02\x81\v\x03\x02\x02\x02\x82\x83\b\x07\x01\x02\x83" +
		"\x84\x05\x1E\x10\x02\x84\x85\b\x07\x01\x02\x85\x8D\x03\x02\x02\x02\x86" +
		"\x87\f\x03\x02\x02\x87\x88\x07\x03\x02\x02\x88\x89\x05\x1E\x10\x02\x89" +
		"\x8A\b\x07\x01\x02\x8A\x8C\x03\x02\x02\x02\x8B\x86\x03\x02\x02\x02\x8C" +
		"\x8F\x03\x02\x02\x02\x8D\x8B\x03\x02\x02\x02\x8D\x8E\x03\x02\x02\x02\x8E" +
		"\r\x03\x02\x02\x02\x8F\x8D\x03\x02\x02\x02\x90\x95\b\b\x01\x02\x91\x92" +
		"\x05\f\x07\x02\x92\x93\b\b\x01\x02\x93\x95\x03\x02\x02\x02\x94\x90\x03" +
		"\x02\x02\x02\x94\x91\x03\x02\x02\x02\x95\x0F\x03\x02\x02\x02\x96\x97\x05" +
		"\x0E\b\x02\x97\x98\b\t\x01\x02\x98\x11\x03\x02\x02\x02\x99\x9A\x05\x16" +
		"\f\x02\x9A\x9B\x07\x04\x02\x02\x9B\x9C\x05\x12\n\x02\x9C\x9D\b\n\x01\x02" +
		"\x9D\xA9\x03\x02\x02\x02\x9E\x9F\x07\x05\x02\x02\x9F\xA0\x05\x10\t\x02" +
		"\xA0\xA1\x07\x06\x02\x02\xA1\xA2\x07\x04\x02\x02\xA2\xA3\x05\x12\n\x02" +
		"\xA3\xA4\b\n\x01\x02\xA4\xA9\x03\x02\x02\x02\xA5\xA6\x05\x18\r\x02\xA6" +
		"\xA7\b\n\x01\x02\xA7\xA9\x03\x02\x02\x02\xA8\x99\x03\x02\x02\x02\xA8\x9E" +
		"\x03\x02\x02\x02\xA8\xA5\x03\x02\x02\x02\xA9\x13\x03\x02\x02\x02\xAA\xAB" +
		"\b\v\x01\x02\xAB\xAC\x05\n\x06\x02\xAC\xAD\b\v\x01\x02\xAD\xB5\x03\x02" +
		"\x02\x02\xAE\xAF\f\x03\x02\x02\xAF\xB0\x07\x03\x02\x02\xB0\xB1\x05\n\x06" +
		"\x02\xB1\xB2\b\v\x01\x02\xB2\xB4\x03\x02\x02\x02\xB3\xAE\x03\x02\x02\x02" +
		"\xB4\xB7\x03\x02\x02\x02\xB5\xB3\x03\x02\x02\x02\xB5\xB6\x03\x02\x02\x02" +
		"\xB6\x15\x03\x02\x02\x02\xB7\xB5\x03\x02\x02\x02\xB8\xB9\b\f\x01\x02\xB9" +
		"\xBA\x07%\x02\x02\xBA\xBB\b\f\x01\x02\xBB\xC4\x03\x02\x02\x02\xBC\xBD" +
		"\f\x03\x02\x02\xBD\xBE\x07\x07\x02\x02\xBE\xBF\x05\x14\v\x02\xBF\xC0\x07" +
		"\b\x02\x02\xC0\xC1\b\f\x01\x02\xC1\xC3\x03\x02\x02\x02\xC2\xBC\x03\x02" +
		"\x02\x02\xC3\xC6\x03\x02\x02\x02\xC4\xC2\x03\x02\x02\x02\xC4\xC5\x03\x02" +
		"\x02\x02\xC5\x17\x03\x02\x02\x02\xC6\xC4\x03\x02\x02\x02\xC7\xC8\b\r\x01" +
		"\x02\xC8\xC9\x05\x16\f\x02\xC9\xCA\b\r\x01\x02\xCA\xD2\x03\x02\x02\x02" +
		"\xCB\xCC\f\x04\x02\x02\xCC\xCD\x07\t\x02\x02\xCD\xCE\x05\x16\f\x02\xCE" +
		"\xCF\b\r\x01\x02\xCF\xD1\x03\x02\x02\x02\xD0\xCB\x03\x02\x02\x02\xD1\xD4" +
		"\x03\x02\x02\x02\xD2\xD0\x03\x02\x02\x02\xD2\xD3\x03\x02\x02\x02\xD3\x19" +
		"\x03\x02\x02\x02\xD4\xD2\x03\x02\x02\x02\xD5\xD6\x07\x07\x02\x02\xD6\xD7" +
		"\x05 \x11\x02\xD7\xD8\x07\b\x02\x02\xD8\xD9\x05\n\x06\x02\xD9\xDA\b\x0E" +
		"\x01\x02\xDA\xDF\x03\x02\x02\x02\xDB\xDC\x05\n\x06\x02\xDC\xDD\b\x0E\x01" +
		"\x02\xDD\xDF\x03\x02\x02\x02\xDE\xD5\x03\x02\x02\x02\xDE\xDB\x03\x02\x02" +
		"\x02\xDF\x1B\x03\x02\x02\x02\xE0\xE1\x07%\x02\x02\xE1\xE2\b\x0F\x01\x02" +
		"\xE2\x1D\x03\x02\x02\x02\xE3\xE4\x07%\x02\x02\xE4\xE5\x07\n\x02\x02\xE5" +
		"\xE6\x05\n\x06\x02\xE6\xE7\b\x10\x01\x02\xE7\xEC\x03\x02\x02\x02\xE8\xE9" +
		"\x05\n\x06\x02\xE9\xEA\b\x10\x01\x02\xEA\xEC\x03\x02\x02\x02\xEB\xE3\x03" +
		"\x02\x02\x02\xEB\xE8\x03\x02\x02\x02\xEC\x1F\x03\x02\x02\x02\xED\xEE\b" +
		"\x11\x01\x02\xEE\xEF\x05\x1C\x0F\x02\xEF\xF0\b\x11\x01\x02\xF0\xF8\x03" +
		"\x02\x02\x02\xF1\xF2\f\x03\x02\x02\xF2\xF3\x07\x03\x02\x02\xF3\xF4\x05" +
		"\x1C\x0F\x02\xF4\xF5\b\x11\x01\x02\xF5\xF7\x03\x02\x02\x02\xF6\xF1\x03" +
		"\x02\x02\x02\xF7\xFA\x03\x02\x02\x02\xF8\xF6\x03\x02\x02\x02\xF8\xF9\x03" +
		"\x02\x02\x02\xF9!\x03\x02\x02\x02\xFA\xF8\x03\x02\x02\x02\xFB\xFC\x07" +
		"\x07\x02\x02\xFC\xFD\x05 \x11\x02\xFD\xFE\x07\b\x02\x02\xFE\xFF\b\x12" +
		"\x01\x02\xFF\u0102\x03\x02\x02\x02\u0100\u0102\b\x12\x01\x02\u0101\xFB" +
		"\x03\x02\x02\x02\u0101\u0100\x03\x02\x02\x02\u0102#\x03\x02\x02\x02\u0103" +
		"\u0104\x07%\x02\x02\u0104\u0105\x07\n\x02\x02\u0105\u0106\x05\n\x06\x02" +
		"\u0106\u0107\b\x13\x01\x02\u0107%\x03\x02\x02\x02\u0108\u0109\b\x14\x01" +
		"\x02\u0109\u010A\x05$\x13\x02\u010A\u010B\b\x14\x01\x02\u010B\u0113\x03" +
		"\x02\x02\x02\u010C\u010D\f\x03\x02\x02\u010D\u010E\x07\x03\x02\x02\u010E" +
		"\u010F\x05$\x13\x02\u010F\u0110\b\x14\x01\x02\u0110\u0112\x03\x02\x02" +
		"\x02\u0111\u010C\x03\x02\x02\x02\u0112\u0115\x03\x02\x02\x02\u0113\u0111" +
		"\x03\x02\x02\x02\u0113\u0114\x03\x02\x02\x02\u0114\'\x03\x02\x02\x02\u0115" +
		"\u0113\x03\x02\x02\x02\u0116\u011B\b\x15\x01\x02\u0117\u0118\x05&\x14" +
		"\x02\u0118\u0119\b\x15\x01\x02\u0119\u011B\x03\x02\x02\x02\u011A\u0116" +
		"\x03\x02\x02\x02\u011A\u0117\x03\x02\x02\x02\u011B)\x03\x02\x02\x02\u011C" +
		"\u011D\x05(\x15\x02\u011D\u011E\b\x16\x01\x02\u011E+\x03\x02\x02\x02\u011F" +
		"\u0120\x07\x05\x02\x02\u0120\u0121\x05*\x16\x02\u0121\u0122\x07\x06\x02" +
		"\x02\u0122\u0123\b\x17\x01\x02\u0123\u0126\x03\x02\x02\x02\u0124\u0126" +
		"\b\x17\x01\x02\u0125\u011F\x03\x02\x02\x02\u0125\u0124\x03\x02\x02\x02" +
		"\u0126-\x03\x02\x02\x02\u0127\u0128\x07\v\x02\x02\u0128\u0129\x07\f\x02" +
		"\x02\u0129\u012A\x05\b\x05\x02\u012A\u012B\x07\n\x02\x02\u012B\u012C\x05" +
		"\x1A\x0E\x02\u012C\u012D\b\x18\x01\x02\u012D\u0142\x03\x02\x02\x02\u012E" +
		"\u012F\x07\r\x02\x02\u012F\u0130\x05\b\x05\x02\u0130\u0131\x07\n\x02\x02" +
		"\u0131\u0132\x05\n\x06\x02\u0132\u0133\b\x18\x01\x02\u0133\u0142\x03\x02" +
		"\x02\x02\u0134\u0135\x07\v\x02\x02\u0135\u0136\x07\x0E\x02\x02\u0136\u0137" +
		"\x05\b\x05\x02\u0137\u0138\x05\"\x12\x02\u0138\u0139\x05,\x17\x02\u0139" +
		"\u013A\b\x18\x01\x02\u013A\u0142\x03\x02\x02\x02\u013B\u013C\x07\x0E\x02" +
		"\x02\u013C\u013D\x05\b\x05\x02\u013D\u013E\x05\"\x12\x02\u013E\u013F\x05" +
		",\x17\x02\u013F\u0140\b\x18\x01\x02\u0140\u0142\x03\x02\x02\x02\u0141" +
		"\u0127\x03\x02\x02\x02\u0141\u012E\x03\x02\x02\x02\u0141\u0134\x03\x02" +
		"\x02\x02\u0141\u013B\x03\x02\x02\x02\u0142/\x03\x02\x02\x02\u0143\u0144" +
		"\x054\x1B\x02\u0144\u0145\b\x19\x01\x02\u0145\u0151\x03\x02\x02\x02\u0146" +
		"\u0147\x05.\x18\x02\u0147\u0148\b\x19\x01\x02\u0148\u0151\x03\x02\x02" +
		"\x02\u0149\u014A\x05f4\x02\u014A\u014B\b\x19\x01\x02\u014B\u0151\x03\x02" +
		"\x02\x02\u014C\u014D\x07\x0F\x02\x02\u014D\u014E\x052\x1A\x02\u014E\u014F" +
		"\b\x19\x01\x02\u014F\u0151\x03\x02\x02\x02\u0150\u0143\x03\x02\x02\x02" +
		"\u0150\u0146\x03\x02\x02\x02\u0150\u0149\x03\x02\x02\x02\u0150\u014C\x03" +
		"\x02\x02\x02\u01511\x03\x02\x02\x02\u0152\u0153\b\x1A\x01\x02\u0153\u0154" +
		"\x05\b\x05\x02\u0154\u0155\b\x1A\x01\x02\u0155\u015D\x03\x02\x02\x02\u0156" +
		"\u0157\f\x03\x02\x02\u0157\u0158\x07\x03\x02\x02\u0158\u0159\x05\b\x05" +
		"\x02\u0159\u015A\b\x1A\x01\x02\u015A\u015C\x03\x02\x02\x02\u015B\u0156" +
		"\x03\x02\x02\x02\u015C\u015F\x03\x02\x02\x02\u015D\u015B\x03\x02\x02\x02" +
		"\u015D\u015E\x03\x02\x02\x02\u015E3\x03\x02\x02\x02\u015F\u015D\x03\x02" +
		"\x02\x02\u0160\u0161\x07%\x02\x02\u0161\u0162\x07\x05\x02\x02\u0162\u0163" +
		"\x052\x1A\x02\u0163\u0164\x07\x06\x02\x02\u0164\u0165\x056\x1C\x02\u0165" +
		"\u0166\b\x1B\x01\x02\u0166\u016C\x03\x02\x02\x02\u0167\u0168\x07%\x02" +
		"\x02\u0168\u0169\x056\x1C\x02\u0169\u016A\b\x1B\x01\x02\u016A\u016C\x03" +
		"\x02\x02\x02\u016B\u0160\x03\x02\x02\x02\u016B\u0167\x03\x02\x02\x02\u016C" +
		"5\x03\x02\x02\x02\u016D\u016E\b\x1C\x01\x02\u016E\u016F\x07\n\x02\x02" +
		"\u016F\u0170\x05> \x02\u0170\u0171\b\x1C\x01\x02\u0171\u0179\x03\x02\x02" +
		"\x02\u0172\u0173\f\x03\x02\x02\u0173\u0174\x07\x10\x02\x02\u0174\u0175" +
		"\x05> \x02\u0175\u0176\b\x1C\x01\x02\u0176\u0178\x03\x02\x02\x02\u0177" +
		"\u0172\x03\x02\x02\x02\u0178\u017B\x03\x02\x02\x02\u0179\u0177\x03\x02" +
		"\x02\x02\u0179\u017A\x03\x02\x02\x02\u017A7\x03\x02\x02\x02\u017B\u0179" +
		"\x03\x02\x02\x02\u017C\u017D\b\x1D\x01\x02\u017D\u017E\x05B\"\x02\u017E" +
		"\u017F\b\x1D\x01\x02\u017F\u0186\x03\x02\x02\x02\u0180\u0181\f\x03\x02" +
		"\x02\u0181\u0182\x05B\"\x02\u0182\u0183\b\x1D\x01\x02\u0183\u0185\x03" +
		"\x02\x02\x02\u0184\u0180\x03\x02\x02\x02\u0185\u0188\x03\x02\x02\x02\u0186" +
		"\u0184\x03\x02\x02\x02\u0186\u0187\x03\x02\x02\x02\u01879\x03\x02\x02" +
		"\x02\u0188\u0186\x03\x02\x02\x02\u0189\u018E\b\x1E\x01\x02\u018A\u018B" +
		"\x058\x1D\x02\u018B\u018C\b\x1E\x01\x02\u018C\u018E\x03\x02\x02\x02\u018D" +
		"\u0189\x03\x02\x02\x02\u018D\u018A\x03\x02\x02\x02\u018E;\x03\x02\x02" +
		"\x02\u018F\u0190\x05:\x1E\x02\u0190\u0191\b\x1F\x01\x02\u0191=\x03\x02" +
		"\x02\x02\u0192\u0193\x05<\x1F\x02\u0193\u0194\x07\x11\x02\x02\u0194\u0195" +
		"\x05N(\x02\u0195\u0196\x07\x12\x02\x02\u0196\u0197\b \x01\x02\u0197?\x03" +
		"\x02\x02\x02\u0198\u0199\b!\x01\x02\u0199\u019A\x05B\"\x02\u019A\u019B" +
		"\b!\x01\x02\u019B\u01A3\x03\x02\x02\x02\u019C\u019D\f\x03\x02\x02\u019D" +
		"\u019E\x07\x03\x02\x02\u019E\u019F\x05B\"\x02\u019F\u01A0\b!\x01\x02\u01A0" +
		"\u01A2\x03\x02\x02\x02\u01A1\u019C\x03\x02\x02\x02\u01A2\u01A5\x03\x02" +
		"\x02\x02\u01A3\u01A1\x03\x02\x02\x02\u01A3\u01A4\x03\x02\x02\x02\u01A4" +
		"A\x03\x02\x02\x02\u01A5\u01A3\x03\x02\x02\x02\u01A6\u01A7\x07\x07\x02" +
		"\x02\u01A7\u01A8\x05\b\x05\x02\u01A8\u01A9\x07\b\x02\x02\u01A9\u01AA\b" +
		"\"\x01\x02\u01AA\u01B7\x03\x02\x02\x02\u01AB\u01AC\x07)\x02\x02\u01AC" +
		"\u01B7\b\"\x01\x02\u01AD\u01AE\x05\b\x05\x02\u01AE\u01AF\b\"\x01\x02\u01AF" +
		"\u01B7\x03\x02\x02\x02\u01B0\u01B1\x07%\x02\x02\u01B1\u01B2\x07\x05\x02" +
		"\x02\u01B2\u01B3\x05@!\x02\u01B3\u01B4\x07\x06\x02\x02\u01B4\u01B5\b\"" +
		"\x01\x02\u01B5\u01B7\x03\x02\x02\x02\u01B6\u01A6\x03\x02\x02\x02\u01B6" +
		"\u01AB\x03\x02\x02\x02\u01B6\u01AD\x03\x02\x02\x02\u01B6\u01B0\x03\x02" +
		"\x02\x02\u01B7C\x03\x02\x02\x02\u01B8\u01B9\x05\b\x05\x02\u01B9\u01BA" +
		"\x07\n\x02\x02\u01BA\u01BB\x05\n\x06\x02\u01BB\u01BC\b#\x01\x02\u01BC" +
		"E\x03\x02\x02\x02\u01BD\u01BE\b$\x01\x02\u01BE\u01BF\x05D#\x02\u01BF\u01C0" +
		"\b$\x01\x02\u01C0\u01C8\x03\x02\x02\x02\u01C1\u01C2\f\x03\x02\x02\u01C2" +
		"\u01C3\x07\x03\x02\x02\u01C3\u01C4\x05D#\x02\u01C4\u01C5\b$\x01\x02\u01C5" +
		"\u01C7\x03\x02\x02\x02\u01C6\u01C1\x03\x02\x02\x02\u01C7\u01CA\x03\x02" +
		"\x02\x02\u01C8\u01C6\x03\x02\x02\x02\u01C8\u01C9\x03\x02\x02\x02\u01C9" +
		"G\x03\x02\x02\x02\u01CA\u01C8\x03\x02\x02\x02\u01CB\u01D0\b%\x01\x02\u01CC" +
		"\u01CD\x05F$\x02\u01CD\u01CE\b%\x01\x02\u01CE\u01D0\x03\x02\x02\x02\u01CF" +
		"\u01CB\x03\x02\x02\x02\u01CF\u01CC\x03\x02\x02\x02\u01D0I\x03\x02\x02" +
		"\x02\u01D1\u01D2\x05H%\x02\u01D2\u01D3\b&\x01\x02\u01D3K\x03\x02\x02\x02" +
		"\u01D4\u01D5\x07\x05\x02\x02\u01D5\u01D6\x05J&\x02\u01D6\u01D7\x07\x06" +
		"\x02\x02\u01D7\u01D8\b\'\x01\x02\u01D8M\x03\x02\x02\x02\u01D9\u01DA\x07" +
		"\x13\x02\x02\u01DA\u01DB\x05\b\x05\x02\u01DB\u01DC\x07\x14\x02\x02\u01DC" +
		"\u01DD\x05N(\x02\u01DD\u01DE\x07\x15\x02\x02\u01DE\u01DF\x05N(\x02\u01DF" +
		"\u01E0\b(\x01\x02\u01E0\u01F0\x03\x02\x02\x02\u01E1\u01E2\x07\x16\x02" +
		"\x02\u01E2\u01E3\x05L\'\x02\u01E3\u01E4\x07\x04\x02\x02\u01E4\u01E5\x05" +
		"N(\x02\u01E5\u01E6\b(\x01\x02\u01E6\u01F0\x03\x02\x02\x02\u01E7\u01E8" +
		"\x05P)\x02\u01E8\u01E9\b(\x01\x02\u01E9\u01F0\x03\x02\x02\x02\u01EA\u01EB" +
		"\x05P)\x02\u01EB\u01EC\x07\x17\x02\x02\u01EC\u01ED\x05N(\x02\u01ED\u01EE" +
		"\b(\x01\x02\u01EE\u01F0\x03\x02\x02\x02\u01EF\u01D9\x03\x02\x02\x02\u01EF" +
		"\u01E1\x03\x02\x02\x02\u01EF\u01E7\x03\x02\x02\x02\u01EF\u01EA\x03\x02" +
		"\x02\x02\u01F0O\x03\x02\x02\x02\u01F1\u01F2\b)\x01\x02\u01F2\u01F3\x05" +
		"X-\x02\u01F3\u01F4\b)\x01\x02\u01F4\u01FD\x03\x02\x02\x02\u01F5\u01F6" +
		"\f\x04\x02\x02\u01F6\u01F7\x07\x05\x02\x02\u01F7\u01F8\x05T+\x02\u01F8" +
		"\u01F9\x07\x06\x02\x02\u01F9\u01FA\b)\x01\x02\u01FA\u01FC\x03\x02\x02" +
		"\x02\u01FB\u01F5\x03\x02\x02\x02\u01FC\u01FF\x03\x02\x02\x02\u01FD\u01FB" +
		"\x03\x02\x02\x02\u01FD\u01FE\x03\x02\x02\x02\u01FEQ\x03\x02\x02\x02\u01FF" +
		"\u01FD\x03\x02\x02\x02\u0200\u0205\b*\x01\x02\u0201\u0202\x05V,\x02\u0202" +
		"\u0203\b*\x01\x02\u0203\u0205\x03\x02\x02\x02\u0204\u0200\x03\x02\x02" +
		"\x02\u0204\u0201\x03\x02\x02\x02\u0205S\x03\x02\x02\x02\u0206\u0207\x05" +
		"R*\x02\u0207\u0208\b+\x01\x02\u0208U\x03\x02\x02\x02\u0209\u020A\b,\x01" +
		"\x02\u020A\u020B\x05N(\x02\u020B\u020C\b,\x01\x02\u020C\u0214\x03\x02" +
		"\x02\x02\u020D\u020E\f\x03\x02\x02\u020E\u020F\x07\x03\x02\x02\u020F\u0210" +
		"\x05N(\x02\u0210\u0211\b,\x01\x02\u0211\u0213\x03\x02\x02\x02\u0212\u020D" +
		"\x03\x02\x02\x02\u0213\u0216\x03\x02\x02\x02\u0214\u0212\x03\x02\x02\x02" +
		"\u0214\u0215\x03\x02\x02\x02\u0215W\x03\x02\x02\x02\u0216\u0214\x03\x02" +
		"\x02\x02\u0217\u0218\b-\x01\x02\u0218\u0219\x07&\x02\x02\u0219\u0235\b" +
		"-\x01\x02\u021A\u021B\x07(\x02\x02\u021B\u0235\b-\x01\x02\u021C\u021D" +
		"\x07)\x02\x02\u021D\u0235\b-\x01\x02\u021E\u021F\x07\x18\x02\x02\u021F" +
		"\u0220\x07&\x02\x02\u0220\u0235\b-\x01\x02\u0221\u0222\x07\x19\x02\x02" +
		"\u0222\u0223\x05T+\x02\u0223\u0224\x07\x1A\x02\x02\u0224\u0225\b-\x01" +
		"\x02\u0225\u0235\x03\x02\x02\x02\u0226\u0227\x07\x05\x02\x02\u0227\u0228" +
		"\x07\x06\x02\x02\u0228\u0235\b-\x01\x02\u0229\u022A\x07\x05\x02\x02\u022A" +
		"\u022B\x05V,\x02\u022B\u022C\x07\x06\x02\x02\u022C\u022D\b-\x01\x02\u022D" +
		"\u0235\x03\x02\x02\x02\u022E\u022F\x07%\x02\x02\u022F\u0235\b-\x01\x02" +
		"\u0230\u0231\x07\x1C\x02\x02\u0231\u0235\b-\x01\x02\u0232\u0233\x07\x1D" +
		"\x02\x02\u0233\u0235\b-\x01\x02\u0234\u0217\x03\x02\x02\x02\u0234\u021A" +
		"\x03\x02\x02\x02\u0234\u021C\x03\x02\x02\x02\u0234\u021E\x03\x02\x02\x02" +
		"\u0234\u0221\x03\x02\x02\x02\u0234\u0226\x03\x02\x02\x02\u0234\u0229\x03" +
		"\x02\x02\x02\u0234\u022E\x03\x02\x02\x02\u0234\u0230\x03\x02\x02\x02\u0234" +
		"\u0232\x03\x02\x02\x02\u0235\u023C\x03\x02\x02\x02\u0236\u0237\f\x05\x02" +
		"\x02\u0237\u0238\x07\x1B\x02\x02\u0238\u0239\x07%\x02\x02\u0239\u023B" +
		"\b-\x01\x02\u023A\u0236\x03\x02\x02\x02\u023B\u023E\x03\x02\x02\x02\u023C" +
		"\u023A\x03\x02\x02\x02\u023C\u023D\x03\x02\x02\x02\u023DY\x03\x02\x02" +
		"\x02\u023E\u023C\x03\x02\x02\x02\u023F\u0240\b.\x01\x02\u0240\u0241\x05" +
		"`1\x02\u0241\u0242\b.\x01\x02\u0242\u024A\x03\x02\x02\x02\u0243\u0244" +
		"\f\x03\x02\x02\u0244\u0245\x07\x10\x02\x02\u0245\u0246\x05`1\x02\u0246" +
		"\u0247\b.\x01\x02\u0247\u0249\x03\x02\x02\x02\u0248\u0243\x03\x02\x02" +
		"\x02\u0249\u024C\x03\x02\x02\x02\u024A\u0248\x03\x02\x02\x02\u024A\u024B" +
		"\x03";
	private static readonly _serializedATNSegment1: string =
		"\x02\x02\x02\u024B[\x03\x02\x02\x02\u024C\u024A\x03\x02\x02\x02\u024D" +
		"\u024E\x05Z.\x02\u024E\u024F\b/\x01\x02\u024F]\x03\x02\x02\x02\u0250\u0251" +
		"\b0\x01\x02\u0251\u0252\x05b2\x02\u0252\u0253\b0\x01\x02\u0253\u025A\x03" +
		"\x02\x02\x02\u0254\u0255\f\x03\x02\x02\u0255\u0256\x05b2\x02\u0256\u0257" +
		"\b0\x01\x02\u0257\u0259\x03\x02\x02\x02\u0258\u0254\x03\x02\x02\x02\u0259" +
		"\u025C\x03\x02\x02\x02\u025A\u0258\x03\x02\x02\x02\u025A\u025B\x03\x02" +
		"\x02\x02\u025B_\x03\x02\x02\x02\u025C\u025A\x03\x02\x02\x02\u025D\u025E" +
		"\x05^0\x02\u025E\u025F\b1\x01\x02\u025Fa\x03\x02\x02\x02\u0260\u0261\b" +
		"2\x01\x02\u0261\u0262\x05d3\x02\u0262\u0263\b2\x01\x02\u0263\u026F\x03" +
		"\x02\x02\x02\u0264\u0265\f\x06\x02\x02\u0265\u0266\x07\x1E\x02\x02\u0266" +
		"\u026E\b2\x01\x02\u0267\u0268\f\x05\x02\x02\u0268\u0269\x07\t\x02\x02" +
		"\u0269\u026E\b2\x01\x02\u026A\u026B\f\x04\x02\x02\u026B\u026C\x07\x1F" +
		"\x02\x02\u026C\u026E\b2\x01\x02\u026D\u0264\x03\x02\x02\x02\u026D\u0267" +
		"\x03\x02\x02\x02\u026D\u026A\x03\x02\x02\x02\u026E\u0271\x03\x02\x02\x02" +
		"\u026F\u026D\x03\x02\x02\x02\u026F\u0270\x03\x02\x02\x02\u0270c\x03\x02" +
		"\x02\x02\u0271\u026F\x03\x02\x02\x02\u0272\u0273\x07)\x02\x02\u0273\u028A" +
		"\b3\x01\x02\u0274\u0275\x07 \x02\x02\u0275\u0276\x05d3\x02\u0276\u0277" +
		"\b3\x01\x02\u0277\u028A\x03\x02\x02\x02\u0278\u0279\x07\x05\x02\x02\u0279" +
		"\u027A\x05\\/\x02\u027A\u027B\x07\x06\x02\x02\u027B\u027C\b3\x01\x02\u027C" +
		"\u028A\x03\x02\x02\x02\u027D\u027E\x07!\x02\x02\u027E\u028A\b3\x01\x02" +
		"\u027F\u0280\x07$\x02\x02\u0280\u028A\b3\x01\x02\u0281\u0282\x07#\x02" +
		"\x02\u0282\u028A\b3\x01\x02\u0283\u0284\x07\"\x02\x02\u0284\u028A\b3\x01" +
		"\x02\u0285\u0286\x07\x1B\x02\x02\u0286\u028A\b3\x01\x02\u0287\u0288\x07" +
		"%\x02\x02\u0288\u028A\b3\x01\x02\u0289\u0272\x03\x02\x02\x02\u0289\u0274" +
		"\x03\x02\x02\x02\u0289\u0278\x03\x02\x02\x02\u0289\u027D\x03\x02\x02\x02" +
		"\u0289\u027F\x03\x02\x02\x02\u0289\u0281\x03\x02\x02\x02\u0289\u0283\x03" +
		"\x02\x02\x02\u0289\u0285\x03\x02\x02\x02\u0289\u0287\x03\x02\x02\x02\u028A" +
		"e\x03\x02\x02\x02\u028B\u028C\x07%\x02\x02\u028C\u028D\x07\x14\x02\x02" +
		"\u028D\u028E\x05\\/\x02\u028E\u028F\x07\x17\x02\x02\u028F\u0290\b4\x01" +
		"\x02\u0290g\x03\x02\x02\x02&v\x8D\x94\xA8\xB5\xC4\xD2\xDE\xEB\xF8\u0101" +
		"\u0113\u011A\u0125\u0141\u0150\u015D\u016B\u0179\u0186\u018D\u01A3\u01B6" +
		"\u01C8\u01CF\u01EF\u01FD\u0204\u0214\u0234\u023C\u024A\u025A\u026D\u026F" +
		"\u0289";
	public static readonly _serializedATN: string = Utils.join(
		[
			TypedBNFParser._serializedATNSegment0,
			TypedBNFParser._serializedATNSegment1,
		],
		"",
	);
	public static __ATN: ATN;
	public static get _ATN(): ATN {
		if (!TypedBNFParser.__ATN) {
			TypedBNFParser.__ATN = new ATNDeserializer().deserialize(Utils.toCharArray(TypedBNFParser._serializedATN));
		}

		return TypedBNFParser.__ATN;
	}

}

export class StartContext extends ParserRuleContext {
	public result: Array<definition>;
	public _v!: Start__y_Context;
	public EOF(): TerminalNode { return this.getToken(TypedBNFParser.EOF, 0); }
	public start__y_(): Start__y_Context {
		return this.getRuleContext(0, Start__y_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_start; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterStart) {
			listener.enterStart(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitStart) {
			listener.exitStart(this);
		}
	}
}


export class List_o_toplevel_p_Context extends ParserRuleContext {
	public result: Array<definition>;
	public _list_o_toplevel_p__2__1!: List_o_toplevel_p_Context;
	public _list_o_toplevel_p__0__1!: ToplevelContext;
	public _list_o_toplevel_p__2__2!: ToplevelContext;
	public toplevel(): ToplevelContext {
		return this.getRuleContext(0, ToplevelContext);
	}
	public list_o_toplevel_p_(): List_o_toplevel_p_Context | undefined {
		return this.tryGetRuleContext(0, List_o_toplevel_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_list_o_toplevel_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterList_o_toplevel_p_) {
			listener.enterList_o_toplevel_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitList_o_toplevel_p_) {
			listener.exitList_o_toplevel_p_(this);
		}
	}
}


export class Start__y_Context extends ParserRuleContext {
	public result: Array<definition>;
	public _start__y__0__1!: List_o_toplevel_p_Context;
	public list_o_toplevel_p_(): List_o_toplevel_p_Context {
		return this.getRuleContext(0, List_o_toplevel_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_start__y_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterStart__y_) {
			listener.enterStart__y_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitStart__y_) {
			listener.exitStart__y_(this);
		}
	}
}


export class IdentstrContext extends ParserRuleContext {
	public result: string;
	public _identstr_0__1!: Token;
	public CNAMEPLUS(): TerminalNode { return this.getToken(TypedBNFParser.CNAMEPLUS, 0); }
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_identstr; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterIdentstr) {
			listener.enterIdentstr(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitIdentstr) {
			listener.exitIdentstr(this);
		}
	}
}


export class TypContext extends ParserRuleContext {
	public result: monot;
	public _typ_0__1!: Arrow_typContext;
	public arrow_typ(): Arrow_typContext {
		return this.getRuleContext(0, Arrow_typContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_typ; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterTyp) {
			listener.enterTyp(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitTyp) {
			listener.exitTyp(this);
		}
	}
}


export class Slist_o__i__s__i__s_param_type_p_Context extends ParserRuleContext {
	public result: Array<[string, monot]>;
	public _slist_o__i__s__i__s_param_type_p__2__1!: Slist_o__i__s__i__s_param_type_p_Context;
	public _slist_o__i__s__i__s_param_type_p__0__1!: Param_typeContext;
	public _slist_o__i__s__i__s_param_type_p__2__3!: Param_typeContext;
	public param_type(): Param_typeContext {
		return this.getRuleContext(0, Param_typeContext);
	}
	public slist_o__i__s__i__s_param_type_p_(): Slist_o__i__s__i__s_param_type_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_param_type_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_slist_o__i__s__i__s_param_type_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterSlist_o__i__s__i__s_param_type_p_) {
			listener.enterSlist_o__i__s__i__s_param_type_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitSlist_o__i__s__i__s_param_type_p_) {
			listener.exitSlist_o__i__s__i__s_param_type_p_(this);
		}
	}
}


export class Empty_o_slist_o__i__s__i__s_param_type_p__p_Context extends ParserRuleContext {
	public result: Array<[string, monot]>;
	public _empty_o_slist_o__i__s__i__s_param_type_p__p__2__1!: Slist_o__i__s__i__s_param_type_p_Context;
	public slist_o__i__s__i__s_param_type_p_(): Slist_o__i__s__i__s_param_type_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_param_type_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_param_type_p__p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterEmpty_o_slist_o__i__s__i__s_param_type_p__p_) {
			listener.enterEmpty_o_slist_o__i__s__i__s_param_type_p__p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitEmpty_o_slist_o__i__s__i__s_param_type_p__p_) {
			listener.exitEmpty_o_slist_o__i__s__i__s_param_type_p__p_(this);
		}
	}
}


export class Eslist_o__i__s__i__s_param_type_p_Context extends ParserRuleContext {
	public result: Array<[string, monot]>;
	public _eslist_o__i__s__i__s_param_type_p__0__1!: Empty_o_slist_o__i__s__i__s_param_type_p__p_Context;
	public empty_o_slist_o__i__s__i__s_param_type_p__p_(): Empty_o_slist_o__i__s__i__s_param_type_p__p_Context {
		return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_param_type_p__p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_eslist_o__i__s__i__s_param_type_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterEslist_o__i__s__i__s_param_type_p_) {
			listener.enterEslist_o__i__s__i__s_param_type_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitEslist_o__i__s__i__s_param_type_p_) {
			listener.exitEslist_o__i__s__i__s_param_type_p_(this);
		}
	}
}


export class Arrow_typContext extends ParserRuleContext {
	public result: monot;
	public _arrow_typ_0__1!: Typ2Context;
	public _arrow_typ_0__3!: Arrow_typContext;
	public _arrow_typ_2__2!: Eslist_o__i__s__i__s_param_type_p_Context;
	public _arrow_typ_2__5!: Arrow_typContext;
	public _arrow_typ_4__1!: Type_productContext;
	public typ2(): Typ2Context | undefined {
		return this.tryGetRuleContext(0, Typ2Context);
	}
	public arrow_typ(): Arrow_typContext | undefined {
		return this.tryGetRuleContext(0, Arrow_typContext);
	}
	public eslist_o__i__s__i__s_param_type_p_(): Eslist_o__i__s__i__s_param_type_p_Context | undefined {
		return this.tryGetRuleContext(0, Eslist_o__i__s__i__s_param_type_p_Context);
	}
	public type_product(): Type_productContext | undefined {
		return this.tryGetRuleContext(0, Type_productContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_arrow_typ; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterArrow_typ) {
			listener.enterArrow_typ(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitArrow_typ) {
			listener.exitArrow_typ(this);
		}
	}
}


export class Slist_o__i__s__i__s_typ_p_Context extends ParserRuleContext {
	public result: Array<monot>;
	public _slist_o__i__s__i__s_typ_p__2__1!: Slist_o__i__s__i__s_typ_p_Context;
	public _slist_o__i__s__i__s_typ_p__0__1!: TypContext;
	public _slist_o__i__s__i__s_typ_p__2__3!: TypContext;
	public typ(): TypContext {
		return this.getRuleContext(0, TypContext);
	}
	public slist_o__i__s__i__s_typ_p_(): Slist_o__i__s__i__s_typ_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_typ_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_slist_o__i__s__i__s_typ_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterSlist_o__i__s__i__s_typ_p_) {
			listener.enterSlist_o__i__s__i__s_typ_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitSlist_o__i__s__i__s_typ_p_) {
			listener.exitSlist_o__i__s__i__s_typ_p_(this);
		}
	}
}


export class Typ2Context extends ParserRuleContext {
	public result: monot;
	public _typ2_2__1!: Typ2Context;
	public _typ2_0__1!: Token;
	public _typ2_2__3!: Slist_o__i__s__i__s_typ_p_Context;
	public CNAMEPLUS(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.CNAMEPLUS, 0); }
	public typ2(): Typ2Context | undefined {
		return this.tryGetRuleContext(0, Typ2Context);
	}
	public slist_o__i__s__i__s_typ_p_(): Slist_o__i__s__i__s_typ_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_typ_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_typ2; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterTyp2) {
			listener.enterTyp2(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitTyp2) {
			listener.exitTyp2(this);
		}
	}
}


export class Type_productContext extends ParserRuleContext {
	public result: Array<monot>;
	public _type_product_0__1!: Type_productContext;
	public _type_product_2__1!: Typ2Context;
	public _type_product_0__3!: Typ2Context;
	public type_product(): Type_productContext | undefined {
		return this.tryGetRuleContext(0, Type_productContext);
	}
	public typ2(): Typ2Context {
		return this.getRuleContext(0, Typ2Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_type_product; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterType_product) {
			listener.enterType_product(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitType_product) {
			listener.exitType_product(this);
		}
	}
}


export class Top_typContext extends ParserRuleContext {
	public result: polyt;
	public _top_typ_0__2!: Slist_o__i__s__i__s_tvar_str_p_Context;
	public _top_typ_0__4!: TypContext;
	public _top_typ_2__1!: TypContext;
	public slist_o__i__s__i__s_tvar_str_p_(): Slist_o__i__s__i__s_tvar_str_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_tvar_str_p_Context);
	}
	public typ(): TypContext {
		return this.getRuleContext(0, TypContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_top_typ; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterTop_typ) {
			listener.enterTop_typ(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitTop_typ) {
			listener.exitTop_typ(this);
		}
	}
}


export class Tvar_strContext extends ParserRuleContext {
	public result: string;
	public _tvar_str_0__1!: Token;
	public CNAMEPLUS(): TerminalNode { return this.getToken(TypedBNFParser.CNAMEPLUS, 0); }
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_tvar_str; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterTvar_str) {
			listener.enterTvar_str(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitTvar_str) {
			listener.exitTvar_str(this);
		}
	}
}


export class Param_typeContext extends ParserRuleContext {
	public result: [string, monot];
	public _param_type_0__1!: Token;
	public _param_type_0__3!: TypContext;
	public _param_type_2__1!: TypContext;
	public CNAMEPLUS(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.CNAMEPLUS, 0); }
	public typ(): TypContext {
		return this.getRuleContext(0, TypContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_param_type; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterParam_type) {
			listener.enterParam_type(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitParam_type) {
			listener.exitParam_type(this);
		}
	}
}


export class Slist_o__i__s__i__s_tvar_str_p_Context extends ParserRuleContext {
	public result: Array<string>;
	public _slist_o__i__s__i__s_tvar_str_p__2__1!: Slist_o__i__s__i__s_tvar_str_p_Context;
	public _slist_o__i__s__i__s_tvar_str_p__0__1!: Tvar_strContext;
	public _slist_o__i__s__i__s_tvar_str_p__2__3!: Tvar_strContext;
	public tvar_str(): Tvar_strContext {
		return this.getRuleContext(0, Tvar_strContext);
	}
	public slist_o__i__s__i__s_tvar_str_p_(): Slist_o__i__s__i__s_tvar_str_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_tvar_str_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterSlist_o__i__s__i__s_tvar_str_p_) {
			listener.enterSlist_o__i__s__i__s_tvar_str_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitSlist_o__i__s__i__s_tvar_str_p_) {
			listener.exitSlist_o__i__s__i__s_tvar_str_p_(this);
		}
	}
}


export class Type_paramsContext extends ParserRuleContext {
	public result: Array<string>;
	public _type_params_0__2!: Slist_o__i__s__i__s_tvar_str_p_Context;
	public slist_o__i__s__i__s_tvar_str_p_(): Slist_o__i__s__i__s_tvar_str_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_tvar_str_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_type_params; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterType_params) {
			listener.enterType_params(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitType_params) {
			listener.exitType_params(this);
		}
	}
}


export class Field_annContext extends ParserRuleContext {
	public result: [string, monot, position];
	public _field_ann_0__1!: Token;
	public _field_ann_0__3!: TypContext;
	public CNAMEPLUS(): TerminalNode { return this.getToken(TypedBNFParser.CNAMEPLUS, 0); }
	public typ(): TypContext {
		return this.getRuleContext(0, TypContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_field_ann; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterField_ann) {
			listener.enterField_ann(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitField_ann) {
			listener.exitField_ann(this);
		}
	}
}


export class Slist_o__i__s__i__s_field_ann_p_Context extends ParserRuleContext {
	public result: Array<[string, monot, position]>;
	public _slist_o__i__s__i__s_field_ann_p__2__1!: Slist_o__i__s__i__s_field_ann_p_Context;
	public _slist_o__i__s__i__s_field_ann_p__0__1!: Field_annContext;
	public _slist_o__i__s__i__s_field_ann_p__2__3!: Field_annContext;
	public field_ann(): Field_annContext {
		return this.getRuleContext(0, Field_annContext);
	}
	public slist_o__i__s__i__s_field_ann_p_(): Slist_o__i__s__i__s_field_ann_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_field_ann_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterSlist_o__i__s__i__s_field_ann_p_) {
			listener.enterSlist_o__i__s__i__s_field_ann_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitSlist_o__i__s__i__s_field_ann_p_) {
			listener.exitSlist_o__i__s__i__s_field_ann_p_(this);
		}
	}
}


export class Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context extends ParserRuleContext {
	public result: Array<[string, monot, position]>;
	public _empty_o_slist_o__i__s__i__s_field_ann_p__p__2__1!: Slist_o__i__s__i__s_field_ann_p_Context;
	public slist_o__i__s__i__s_field_ann_p_(): Slist_o__i__s__i__s_field_ann_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_field_ann_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterEmpty_o_slist_o__i__s__i__s_field_ann_p__p_) {
			listener.enterEmpty_o_slist_o__i__s__i__s_field_ann_p__p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitEmpty_o_slist_o__i__s__i__s_field_ann_p__p_) {
			listener.exitEmpty_o_slist_o__i__s__i__s_field_ann_p__p_(this);
		}
	}
}


export class Eslist_o__i__s__i__s_field_ann_p_Context extends ParserRuleContext {
	public result: Array<[string, monot, position]>;
	public _eslist_o__i__s__i__s_field_ann_p__0__1!: Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context;
	public empty_o_slist_o__i__s__i__s_field_ann_p__p_(): Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context {
		return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_eslist_o__i__s__i__s_field_ann_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterEslist_o__i__s__i__s_field_ann_p_) {
			listener.enterEslist_o__i__s__i__s_field_ann_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitEslist_o__i__s__i__s_field_ann_p_) {
			listener.exitEslist_o__i__s__i__s_field_ann_p_(this);
		}
	}
}


export class Field_annsContext extends ParserRuleContext {
	public result: [boolean, Array<[string, monot, position]>];
	public _field_anns_0__2!: Eslist_o__i__s__i__s_field_ann_p_Context;
	public eslist_o__i__s__i__s_field_ann_p_(): Eslist_o__i__s__i__s_field_ann_p_Context | undefined {
		return this.tryGetRuleContext(0, Eslist_o__i__s__i__s_field_ann_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_field_anns; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterField_anns) {
			listener.enterField_anns(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitField_anns) {
			listener.exitField_anns(this);
		}
	}
}


export class DeclContext extends ParserRuleContext {
	public result: definition;
	public _decl_0__2!: Token;
	public _decl_0__3!: IdentstrContext;
	public _decl_0__5!: Top_typContext;
	public _decl_2__1!: Token;
	public _decl_2__2!: IdentstrContext;
	public _decl_2__4!: TypContext;
	public _decl_4__1!: Token;
	public _decl_4__3!: IdentstrContext;
	public _decl_4__4!: Type_paramsContext;
	public _decl_4__5!: Field_annsContext;
	public _decl_6__1!: Token;
	public _decl_6__2!: IdentstrContext;
	public _decl_6__3!: Type_paramsContext;
	public _decl_6__4!: Field_annsContext;
	public identstr(): IdentstrContext {
		return this.getRuleContext(0, IdentstrContext);
	}
	public top_typ(): Top_typContext | undefined {
		return this.tryGetRuleContext(0, Top_typContext);
	}
	public typ(): TypContext | undefined {
		return this.tryGetRuleContext(0, TypContext);
	}
	public type_params(): Type_paramsContext | undefined {
		return this.tryGetRuleContext(0, Type_paramsContext);
	}
	public field_anns(): Field_annsContext | undefined {
		return this.tryGetRuleContext(0, Field_annsContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_decl; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterDecl) {
			listener.enterDecl(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitDecl) {
			listener.exitDecl(this);
		}
	}
}


export class ToplevelContext extends ParserRuleContext {
	public result: definition;
	public _toplevel_0__1!: DefContext;
	public _toplevel_2__1!: DeclContext;
	public _toplevel_4__1!: LexerdefContext;
	public _toplevel_6__1!: Token;
	public _toplevel_6__2!: Slist_o__i__s__i__s_identstr_p_Context;
	public def(): DefContext | undefined {
		return this.tryGetRuleContext(0, DefContext);
	}
	public decl(): DeclContext | undefined {
		return this.tryGetRuleContext(0, DeclContext);
	}
	public lexerdef(): LexerdefContext | undefined {
		return this.tryGetRuleContext(0, LexerdefContext);
	}
	public slist_o__i__s__i__s_identstr_p_(): Slist_o__i__s__i__s_identstr_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_identstr_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_toplevel; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterToplevel) {
			listener.enterToplevel(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitToplevel) {
			listener.exitToplevel(this);
		}
	}
}


export class Slist_o__i__s__i__s_identstr_p_Context extends ParserRuleContext {
	public result: Array<string>;
	public _slist_o__i__s__i__s_identstr_p__2__1!: Slist_o__i__s__i__s_identstr_p_Context;
	public _slist_o__i__s__i__s_identstr_p__0__1!: IdentstrContext;
	public _slist_o__i__s__i__s_identstr_p__2__3!: IdentstrContext;
	public identstr(): IdentstrContext {
		return this.getRuleContext(0, IdentstrContext);
	}
	public slist_o__i__s__i__s_identstr_p_(): Slist_o__i__s__i__s_identstr_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_identstr_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_slist_o__i__s__i__s_identstr_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterSlist_o__i__s__i__s_identstr_p_) {
			listener.enterSlist_o__i__s__i__s_identstr_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitSlist_o__i__s__i__s_identstr_p_) {
			listener.exitSlist_o__i__s__i__s_identstr_p_(this);
		}
	}
}


export class DefContext extends ParserRuleContext {
	public result: definition;
	public _def_0__1!: Token;
	public _def_0__3!: Slist_o__i__s__i__s_identstr_p_Context;
	public _def_0__5!: ProductionsContext;
	public _def_2__1!: Token;
	public _def_2__2!: ProductionsContext;
	public CNAMEPLUS(): TerminalNode { return this.getToken(TypedBNFParser.CNAMEPLUS, 0); }
	public slist_o__i__s__i__s_identstr_p_(): Slist_o__i__s__i__s_identstr_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_identstr_p_Context);
	}
	public productions(): ProductionsContext {
		return this.getRuleContext(0, ProductionsContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_def; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterDef) {
			listener.enterDef(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitDef) {
			listener.exitDef(this);
		}
	}
}


export class ProductionsContext extends ParserRuleContext {
	public result: Array<[position, production]>;
	public _productions_2__1!: ProductionsContext;
	public _productions_0__1!: Token;
	public _productions_0__2!: ProductionContext;
	public _productions_2__2!: Token;
	public _productions_2__3!: ProductionContext;
	public production(): ProductionContext {
		return this.getRuleContext(0, ProductionContext);
	}
	public productions(): ProductionsContext | undefined {
		return this.tryGetRuleContext(0, ProductionsContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_productions; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterProductions) {
			listener.enterProductions(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitProductions) {
			listener.exitProductions(this);
		}
	}
}


export class List_o_psym_p_Context extends ParserRuleContext {
	public result: Array<symbol>;
	public _list_o_psym_p__2__1!: List_o_psym_p_Context;
	public _list_o_psym_p__0__1!: PsymContext;
	public _list_o_psym_p__2__2!: PsymContext;
	public psym(): PsymContext {
		return this.getRuleContext(0, PsymContext);
	}
	public list_o_psym_p_(): List_o_psym_p_Context | undefined {
		return this.tryGetRuleContext(0, List_o_psym_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_list_o_psym_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterList_o_psym_p_) {
			listener.enterList_o_psym_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitList_o_psym_p_) {
			listener.exitList_o_psym_p_(this);
		}
	}
}


export class Empty_o_list_o_psym_p__p_Context extends ParserRuleContext {
	public result: Array<symbol>;
	public _empty_o_list_o_psym_p__p__2__1!: List_o_psym_p_Context;
	public list_o_psym_p_(): List_o_psym_p_Context | undefined {
		return this.tryGetRuleContext(0, List_o_psym_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_empty_o_list_o_psym_p__p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterEmpty_o_list_o_psym_p__p_) {
			listener.enterEmpty_o_list_o_psym_p__p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitEmpty_o_list_o_psym_p__p_) {
			listener.exitEmpty_o_list_o_psym_p__p_(this);
		}
	}
}


export class Elist_o_psym_p_Context extends ParserRuleContext {
	public result: Array<symbol>;
	public _elist_o_psym_p__0__1!: Empty_o_list_o_psym_p__p_Context;
	public empty_o_list_o_psym_p__p_(): Empty_o_list_o_psym_p__p_Context {
		return this.getRuleContext(0, Empty_o_list_o_psym_p__p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_elist_o_psym_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterElist_o_psym_p_) {
			listener.enterElist_o_psym_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitElist_o_psym_p_) {
			listener.exitElist_o_psym_p_(this);
		}
	}
}


export class ProductionContext extends ParserRuleContext {
	public result: production;
	public _production_0__1!: Elist_o_psym_p_Context;
	public _production_0__3!: ExprContext;
	public elist_o_psym_p_(): Elist_o_psym_p_Context {
		return this.getRuleContext(0, Elist_o_psym_p_Context);
	}
	public expr(): ExprContext {
		return this.getRuleContext(0, ExprContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_production; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterProduction) {
			listener.enterProduction(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitProduction) {
			listener.exitProduction(this);
		}
	}
}


export class Slist_o__i__s__i__s_psym_p_Context extends ParserRuleContext {
	public result: Array<symbol>;
	public _slist_o__i__s__i__s_psym_p__2__1!: Slist_o__i__s__i__s_psym_p_Context;
	public _slist_o__i__s__i__s_psym_p__0__1!: PsymContext;
	public _slist_o__i__s__i__s_psym_p__2__3!: PsymContext;
	public psym(): PsymContext {
		return this.getRuleContext(0, PsymContext);
	}
	public slist_o__i__s__i__s_psym_p_(): Slist_o__i__s__i__s_psym_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_psym_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_slist_o__i__s__i__s_psym_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterSlist_o__i__s__i__s_psym_p_) {
			listener.enterSlist_o__i__s__i__s_psym_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitSlist_o__i__s__i__s_psym_p_) {
			listener.exitSlist_o__i__s__i__s_psym_p_(this);
		}
	}
}


export class PsymContext extends ParserRuleContext {
	public result: symbol;
	public _psym_0__2!: IdentstrContext;
	public _psym_2__1!: Token;
	public _psym_4__1!: IdentstrContext;
	public _psym_6__1!: Token;
	public _psym_6__3!: Slist_o__i__s__i__s_psym_p_Context;
	public identstr(): IdentstrContext | undefined {
		return this.tryGetRuleContext(0, IdentstrContext);
	}
	public ESCAPED_STRING(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.ESCAPED_STRING, 0); }
	public CNAMEPLUS(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.CNAMEPLUS, 0); }
	public slist_o__i__s__i__s_psym_p_(): Slist_o__i__s__i__s_psym_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_psym_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_psym; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterPsym) {
			listener.enterPsym(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitPsym) {
			listener.exitPsym(this);
		}
	}
}


export class AnnContext extends ParserRuleContext {
	public result: [string, monot];
	public _ann_0__1!: IdentstrContext;
	public _ann_0__3!: TypContext;
	public identstr(): IdentstrContext {
		return this.getRuleContext(0, IdentstrContext);
	}
	public typ(): TypContext {
		return this.getRuleContext(0, TypContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_ann; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterAnn) {
			listener.enterAnn(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitAnn) {
			listener.exitAnn(this);
		}
	}
}


export class Slist_o__i__s__i__s_ann_p_Context extends ParserRuleContext {
	public result: Array<[string, monot]>;
	public _slist_o__i__s__i__s_ann_p__2__1!: Slist_o__i__s__i__s_ann_p_Context;
	public _slist_o__i__s__i__s_ann_p__0__1!: AnnContext;
	public _slist_o__i__s__i__s_ann_p__2__3!: AnnContext;
	public ann(): AnnContext {
		return this.getRuleContext(0, AnnContext);
	}
	public slist_o__i__s__i__s_ann_p_(): Slist_o__i__s__i__s_ann_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_ann_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_slist_o__i__s__i__s_ann_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterSlist_o__i__s__i__s_ann_p_) {
			listener.enterSlist_o__i__s__i__s_ann_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitSlist_o__i__s__i__s_ann_p_) {
			listener.exitSlist_o__i__s__i__s_ann_p_(this);
		}
	}
}


export class Empty_o_slist_o__i__s__i__s_ann_p__p_Context extends ParserRuleContext {
	public result: Array<[string, monot]>;
	public _empty_o_slist_o__i__s__i__s_ann_p__p__2__1!: Slist_o__i__s__i__s_ann_p_Context;
	public slist_o__i__s__i__s_ann_p_(): Slist_o__i__s__i__s_ann_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_ann_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_ann_p__p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterEmpty_o_slist_o__i__s__i__s_ann_p__p_) {
			listener.enterEmpty_o_slist_o__i__s__i__s_ann_p__p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitEmpty_o_slist_o__i__s__i__s_ann_p__p_) {
			listener.exitEmpty_o_slist_o__i__s__i__s_ann_p__p_(this);
		}
	}
}


export class Eslist_o__i__s__i__s_ann_p_Context extends ParserRuleContext {
	public result: Array<[string, monot]>;
	public _eslist_o__i__s__i__s_ann_p__0__1!: Empty_o_slist_o__i__s__i__s_ann_p__p_Context;
	public empty_o_slist_o__i__s__i__s_ann_p__p_(): Empty_o_slist_o__i__s__i__s_ann_p__p_Context {
		return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_ann_p__p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_eslist_o__i__s__i__s_ann_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterEslist_o__i__s__i__s_ann_p_) {
			listener.enterEslist_o__i__s__i__s_ann_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitEslist_o__i__s__i__s_ann_p_) {
			listener.exitEslist_o__i__s__i__s_ann_p_(this);
		}
	}
}


export class Func_parametersContext extends ParserRuleContext {
	public result: Array<[string, monot]>;
	public _func_parameters_0__2!: Eslist_o__i__s__i__s_ann_p_Context;
	public eslist_o__i__s__i__s_ann_p_(): Eslist_o__i__s__i__s_ann_p_Context {
		return this.getRuleContext(0, Eslist_o__i__s__i__s_ann_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_func_parameters; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterFunc_parameters) {
			listener.enterFunc_parameters(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitFunc_parameters) {
			listener.exitFunc_parameters(this);
		}
	}
}


export class ExprContext extends ParserRuleContext {
	public result: expr;
	public _expr_0__1!: Token;
	public _expr_0__2!: IdentstrContext;
	public _expr_0__4!: ExprContext;
	public _expr_0__6!: ExprContext;
	public _expr_2__1!: Token;
	public _expr_2__2!: Func_parametersContext;
	public _expr_2__4!: ExprContext;
	public _expr_4__1!: CallContext;
	public _expr_6__1!: CallContext;
	public _expr_6__3!: ExprContext;
	public identstr(): IdentstrContext | undefined {
		return this.tryGetRuleContext(0, IdentstrContext);
	}
	public expr(): ExprContext[];
	public expr(i: number): ExprContext;
	public expr(i?: number): ExprContext | ExprContext[] {
		if (i === undefined) {
			return this.getRuleContexts(ExprContext);
		} else {
			return this.getRuleContext(i, ExprContext);
		}
	}
	public func_parameters(): Func_parametersContext | undefined {
		return this.tryGetRuleContext(0, Func_parametersContext);
	}
	public call(): CallContext | undefined {
		return this.tryGetRuleContext(0, CallContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_expr; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterExpr) {
			listener.enterExpr(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitExpr) {
			listener.exitExpr(this);
		}
	}
}


export class CallContext extends ParserRuleContext {
	public result: expr;
	public _call_0__1!: CallContext;
	public _call_2__1!: AtomexpContext;
	public _call_0__3!: Eslist_o__i__s__i__s_expr_p_Context;
	public call(): CallContext | undefined {
		return this.tryGetRuleContext(0, CallContext);
	}
	public eslist_o__i__s__i__s_expr_p_(): Eslist_o__i__s__i__s_expr_p_Context | undefined {
		return this.tryGetRuleContext(0, Eslist_o__i__s__i__s_expr_p_Context);
	}
	public atomexp(): AtomexpContext | undefined {
		return this.tryGetRuleContext(0, AtomexpContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_call; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterCall) {
			listener.enterCall(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitCall) {
			listener.exitCall(this);
		}
	}
}


export class Empty_o_slist_o__i__s__i__s_expr_p__p_Context extends ParserRuleContext {
	public result: Array<expr>;
	public _empty_o_slist_o__i__s__i__s_expr_p__p__2__1!: Slist_o__i__s__i__s_expr_p_Context;
	public slist_o__i__s__i__s_expr_p_(): Slist_o__i__s__i__s_expr_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_expr_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_expr_p__p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterEmpty_o_slist_o__i__s__i__s_expr_p__p_) {
			listener.enterEmpty_o_slist_o__i__s__i__s_expr_p__p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitEmpty_o_slist_o__i__s__i__s_expr_p__p_) {
			listener.exitEmpty_o_slist_o__i__s__i__s_expr_p__p_(this);
		}
	}
}


export class Eslist_o__i__s__i__s_expr_p_Context extends ParserRuleContext {
	public result: Array<expr>;
	public _eslist_o__i__s__i__s_expr_p__0__1!: Empty_o_slist_o__i__s__i__s_expr_p__p_Context;
	public empty_o_slist_o__i__s__i__s_expr_p__p_(): Empty_o_slist_o__i__s__i__s_expr_p__p_Context {
		return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_expr_p__p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_eslist_o__i__s__i__s_expr_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterEslist_o__i__s__i__s_expr_p_) {
			listener.enterEslist_o__i__s__i__s_expr_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitEslist_o__i__s__i__s_expr_p_) {
			listener.exitEslist_o__i__s__i__s_expr_p_(this);
		}
	}
}


export class Slist_o__i__s__i__s_expr_p_Context extends ParserRuleContext {
	public result: Array<expr>;
	public _slist_o__i__s__i__s_expr_p__2__1!: Slist_o__i__s__i__s_expr_p_Context;
	public _slist_o__i__s__i__s_expr_p__0__1!: ExprContext;
	public _slist_o__i__s__i__s_expr_p__2__3!: ExprContext;
	public expr(): ExprContext {
		return this.getRuleContext(0, ExprContext);
	}
	public slist_o__i__s__i__s_expr_p_(): Slist_o__i__s__i__s_expr_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_expr_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_slist_o__i__s__i__s_expr_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterSlist_o__i__s__i__s_expr_p_) {
			listener.enterSlist_o__i__s__i__s_expr_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitSlist_o__i__s__i__s_expr_p_) {
			listener.exitSlist_o__i__s__i__s_expr_p_(this);
		}
	}
}


export class AtomexpContext extends ParserRuleContext {
	public result: expr;
	public _atomexp_16__1!: AtomexpContext;
	public _atomexp_0__1!: Token;
	public _atomexp_2__1!: Token;
	public _atomexp_4__1!: Token;
	public _atomexp_6__1!: Token;
	public _atomexp_6__2!: Token;
	public _atomexp_8__1!: Token;
	public _atomexp_8__2!: Eslist_o__i__s__i__s_expr_p_Context;
	public _atomexp_10__1!: Token;
	public _atomexp_12__1!: Token;
	public _atomexp_12__2!: Slist_o__i__s__i__s_expr_p_Context;
	public _atomexp_14__1!: Token;
	public _atomexp_18__1!: Token;
	public _atomexp_20__1!: Token;
	public _atomexp_16__3!: Token;
	public INT(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.INT, 0); }
	public FLOAT(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.FLOAT, 0); }
	public ESCAPED_STRING(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.ESCAPED_STRING, 0); }
	public eslist_o__i__s__i__s_expr_p_(): Eslist_o__i__s__i__s_expr_p_Context | undefined {
		return this.tryGetRuleContext(0, Eslist_o__i__s__i__s_expr_p_Context);
	}
	public slist_o__i__s__i__s_expr_p_(): Slist_o__i__s__i__s_expr_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__s__i__s_expr_p_Context);
	}
	public CNAMEPLUS(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.CNAMEPLUS, 0); }
	public atomexp(): AtomexpContext | undefined {
		return this.tryGetRuleContext(0, AtomexpContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_atomexp; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterAtomexp) {
			listener.enterAtomexp(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitAtomexp) {
			listener.exitAtomexp(this);
		}
	}
}


export class Slist_o__i__u__i__s_lexer_and_p_Context extends ParserRuleContext {
	public result: Array<lexerule>;
	public _slist_o__i__u__i__s_lexer_and_p__2__1!: Slist_o__i__u__i__s_lexer_and_p_Context;
	public _slist_o__i__u__i__s_lexer_and_p__0__1!: Lexer_andContext;
	public _slist_o__i__u__i__s_lexer_and_p__2__3!: Lexer_andContext;
	public lexer_and(): Lexer_andContext {
		return this.getRuleContext(0, Lexer_andContext);
	}
	public slist_o__i__u__i__s_lexer_and_p_(): Slist_o__i__u__i__s_lexer_and_p_Context | undefined {
		return this.tryGetRuleContext(0, Slist_o__i__u__i__s_lexer_and_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterSlist_o__i__u__i__s_lexer_and_p_) {
			listener.enterSlist_o__i__u__i__s_lexer_and_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitSlist_o__i__u__i__s_lexer_and_p_) {
			listener.exitSlist_o__i__u__i__s_lexer_and_p_(this);
		}
	}
}


export class Lexer__y_Context extends ParserRuleContext {
	public result: lexerule;
	public _lexer__y__0__1!: Slist_o__i__u__i__s_lexer_and_p_Context;
	public slist_o__i__u__i__s_lexer_and_p_(): Slist_o__i__u__i__s_lexer_and_p_Context {
		return this.getRuleContext(0, Slist_o__i__u__i__s_lexer_and_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_lexer__y_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterLexer__y_) {
			listener.enterLexer__y_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitLexer__y_) {
			listener.exitLexer__y_(this);
		}
	}
}


export class List_o_lexer_atomexpr_p_Context extends ParserRuleContext {
	public result: Array<lexerule>;
	public _list_o_lexer_atomexpr_p__2__1!: List_o_lexer_atomexpr_p_Context;
	public _list_o_lexer_atomexpr_p__0__1!: Lexer_atomexprContext;
	public _list_o_lexer_atomexpr_p__2__2!: Lexer_atomexprContext;
	public lexer_atomexpr(): Lexer_atomexprContext {
		return this.getRuleContext(0, Lexer_atomexprContext);
	}
	public list_o_lexer_atomexpr_p_(): List_o_lexer_atomexpr_p_Context | undefined {
		return this.tryGetRuleContext(0, List_o_lexer_atomexpr_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_list_o_lexer_atomexpr_p_; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterList_o_lexer_atomexpr_p_) {
			listener.enterList_o_lexer_atomexpr_p_(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitList_o_lexer_atomexpr_p_) {
			listener.exitList_o_lexer_atomexpr_p_(this);
		}
	}
}


export class Lexer_andContext extends ParserRuleContext {
	public result: lexerule;
	public _lexer_and_0__1!: List_o_lexer_atomexpr_p_Context;
	public list_o_lexer_atomexpr_p_(): List_o_lexer_atomexpr_p_Context {
		return this.getRuleContext(0, List_o_lexer_atomexpr_p_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_lexer_and; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterLexer_and) {
			listener.enterLexer_and(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitLexer_and) {
			listener.exitLexer_and(this);
		}
	}
}


export class Lexer_atomexprContext extends ParserRuleContext {
	public result: lexerule;
	public _lexer_atomexpr_0__1!: Lexer_atomexprContext;
	public _lexer_atomexpr_2__1!: Lexer_atomexprContext;
	public _lexer_atomexpr_4__1!: Lexer_atomexprContext;
	public _lexer_atomexpr_6__1!: Lexer_atomContext;
	public lexer_atomexpr(): Lexer_atomexprContext | undefined {
		return this.tryGetRuleContext(0, Lexer_atomexprContext);
	}
	public lexer_atom(): Lexer_atomContext | undefined {
		return this.tryGetRuleContext(0, Lexer_atomContext);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_lexer_atomexpr; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterLexer_atomexpr) {
			listener.enterLexer_atomexpr(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitLexer_atomexpr) {
			listener.exitLexer_atomexpr(this);
		}
	}
}


export class Lexer_atomContext extends ParserRuleContext {
	public result: lexerule;
	public _lexer_atom_0__1!: Token;
	public _lexer_atom_2__2!: Lexer_atomContext;
	public _lexer_atom_4__2!: Lexer__y_Context;
	public _lexer_atom_8__1!: Token;
	public _lexer_atom_10__1!: Token;
	public _lexer_atom_16__1!: Token;
	public ESCAPED_STRING(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.ESCAPED_STRING, 0); }
	public lexer_atom(): Lexer_atomContext | undefined {
		return this.tryGetRuleContext(0, Lexer_atomContext);
	}
	public lexer__y_(): Lexer__y_Context | undefined {
		return this.tryGetRuleContext(0, Lexer__y_Context);
	}
	public RANGE(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.RANGE, 0); }
	public UNICODE_RANGE(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.UNICODE_RANGE, 0); }
	public CNAMEPLUS(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.CNAMEPLUS, 0); }
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_lexer_atom; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterLexer_atom) {
			listener.enterLexer_atom(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitLexer_atom) {
			listener.exitLexer_atom(this);
		}
	}
}


export class LexerdefContext extends ParserRuleContext {
	public result: definition;
	public _lexerdef_0__1!: Token;
	public _lexerdef_0__3!: Lexer__y_Context;
	public CNAMEPLUS(): TerminalNode { return this.getToken(TypedBNFParser.CNAMEPLUS, 0); }
	public lexer__y_(): Lexer__y_Context {
		return this.getRuleContext(0, Lexer__y_Context);
	}
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_lexerdef; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterLexerdef) {
			listener.enterLexerdef(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitLexerdef) {
			listener.exitLexerdef(this);
		}
	}
}


