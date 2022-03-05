// Generated from ./tbnf-js/src/TypedBNF.g4 by ANTLR 4.9.0-SNAPSHOT


import { node, lexerule, expr, symbol, production, definition, polyt, monot, position, MK_LRef, MK_LGroup, MK_LOptional, MK_LStar, MK_LPlus, MK_LNot, MK_LOr, MK_LSeq, MK_LStr, MK_LNumber, MK_LWildcard, getrange, getunicoderange, getpos, tofloat, toint, MK_EField, MK_EBool, MK_EFlt, MK_EStr, MK_EInt, MK_ESlot, MK_EVar, MK_EFun, MK_ELet, MK_EList, MK_ETuple, MK_EApp, MK_Expr, MK_Macrocall, MK_Nonterm, MK_Term, snd, fst, list_index, MK_production, MK_Deflexer, MK_Defrule, MK_Defmacro, MK_Defignore, MK_Decltype, MK_Declctor, MK_Declvar, MK_Mono, MK_Poly, MK_TApp, MK_TConst, MK_TVar, MK_TList, MK_TTuple, MK_TFun, process_tparam, mkpos, str, unescape, addList } from "./TypedBNF_require"


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
	public static readonly T__32 = 33;
	public static readonly UNICODE_RANGE = 34;
	public static readonly RANGE = 35;
	public static readonly CNAMEPLUS = 36;
	public static readonly INT = 37;
	public static readonly WS = 38;
	public static readonly FLOAT = 39;
	public static readonly ESCAPED_STRING = 40;
	public static readonly CPP_COMMENT = 41;
	public static readonly C_COMMENT = 42;
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
	public static readonly RULE_tvar = 13;
	public static readonly RULE_tvar_str = 14;
	public static readonly RULE_param_type = 15;
	public static readonly RULE_slist_o__i__s__i__s_tvar_str_p_ = 16;
	public static readonly RULE_type_params = 17;
	public static readonly RULE_field_ann = 18;
	public static readonly RULE_slist_o__i__s__i__s_field_ann_p_ = 19;
	public static readonly RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_ = 20;
	public static readonly RULE_eslist_o__i__s__i__s_field_ann_p_ = 21;
	public static readonly RULE_field_anns = 22;
	public static readonly RULE_decl = 23;
	public static readonly RULE_toplevel = 24;
	public static readonly RULE_slist_o__i__s__i__s_identstr_p_ = 25;
	public static readonly RULE_def = 26;
	public static readonly RULE_productions = 27;
	public static readonly RULE_list_o_psym_p_ = 28;
	public static readonly RULE_empty_o_list_o_psym_p__p_ = 29;
	public static readonly RULE_elist_o_psym_p_ = 30;
	public static readonly RULE_production = 31;
	public static readonly RULE_slist_o__i__s__i__s_psym_p_ = 32;
	public static readonly RULE_psym = 33;
	public static readonly RULE_ann = 34;
	public static readonly RULE_slist_o__i__s__i__s_ann_p_ = 35;
	public static readonly RULE_empty_o_slist_o__i__s__i__s_ann_p__p_ = 36;
	public static readonly RULE_eslist_o__i__s__i__s_ann_p_ = 37;
	public static readonly RULE_func_parameters = 38;
	public static readonly RULE_expr = 39;
	public static readonly RULE_call = 40;
	public static readonly RULE_empty_o_slist_o__i__s__i__s_expr_p__p_ = 41;
	public static readonly RULE_eslist_o__i__s__i__s_expr_p_ = 42;
	public static readonly RULE_slist_o__i__s__i__s_expr_p_ = 43;
	public static readonly RULE_atomexp = 44;
	public static readonly RULE_slist_o__i__u__i__s_lexer_and_p_ = 45;
	public static readonly RULE_lexer__y_ = 46;
	public static readonly RULE_list_o_lexer_atomexpr_p_ = 47;
	public static readonly RULE_lexer_and = 48;
	public static readonly RULE_lexer_atomexpr = 49;
	public static readonly RULE_lexer_atom = 50;
	public static readonly RULE_lexerdef = 51;
	// tslint:disable:no-trailing-whitespace
	public static readonly ruleNames: string[] = [
		"start", "list_o_toplevel_p_", "start__y_", "identstr", "typ", "slist_o__i__s__i__s_param_type_p_", 
		"empty_o_slist_o__i__s__i__s_param_type_p__p_", "eslist_o__i__s__i__s_param_type_p_", 
		"arrow_typ", "slist_o__i__s__i__s_typ_p_", "typ2", "type_product", "top_typ", 
		"tvar", "tvar_str", "param_type", "slist_o__i__s__i__s_tvar_str_p_", "type_params", 
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
		undefined, "','", "'->'", "'('", "')'", "'<'", "'>'", "'*'", "'''", "':'", 
		"'extern'", "'var'", "'case'", "'type'", "'ignore'", "'|'", "'{'", "'}'", 
		"'let'", "'='", "'in'", "'fun'", "';'", "'$'", "'['", "']'", "'.'", "'true'", 
		"'false'", "'+'", "'?'", "'!'", "'\\'", "'_'",
	];
	private static readonly _SYMBOLIC_NAMES: Array<string | undefined> = [
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, undefined, 
		undefined, undefined, undefined, undefined, undefined, undefined, "UNICODE_RANGE", 
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
			this.state = 104;
			_localctx._v = this.start__y_();
			this.state = 105;
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
			this.state = 109;
			_localctx._list_o_toplevel_p__0__1 = this.toplevel();
			 
			                _localctx.result =  <Array<definition>>[ _localctx._list_o_toplevel_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 118;
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
					_localctx._list_o_toplevel_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_list_o_toplevel_p_);
					this.state = 112;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 113;
					_localctx._list_o_toplevel_p__1__2 = this.toplevel();
					 
					                          _localctx.result =  <Array<definition>> addList<definition>(<Array<definition>> _localctx._list_o_toplevel_p__1__1.result, <definition> _localctx._list_o_toplevel_p__1__2.result);
					                      
					}
					}
				}
				this.state = 120;
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
			this.state = 121;
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
			this.state = 124;
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
			this.state = 127;
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
			this.state = 131;
			_localctx._slist_o__i__s__i__s_param_type_p__0__1 = this.param_type();
			 
			                _localctx.result =  <Array<[string, monot]>>[ _localctx._slist_o__i__s__i__s_param_type_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 141;
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
					_localctx._slist_o__i__s__i__s_param_type_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_param_type_p_);
					this.state = 134;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 135;
					this.match(TypedBNFParser.T__0);
					this.state = 136;
					_localctx._slist_o__i__s__i__s_param_type_p__1__3 = this.param_type();
					 
					                          _localctx.result =  <Array<[string, monot]>> addList<[string, monot]>(<Array<[string, monot]>> _localctx._slist_o__i__s__i__s_param_type_p__1__1.result, <[string, monot]> _localctx._slist_o__i__s__i__s_param_type_p__1__3.result);
					                      
					}
					}
				}
				this.state = 143;
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
			this.state = 148;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.T__3:
				this.enterOuterAlt(_localctx, 1);
				{
				 
				                _localctx.result =  <Array<[string, monot]>>[  ];
				            
				}
				break;
			case TypedBNFParser.T__2:
			case TypedBNFParser.T__7:
			case TypedBNFParser.CNAMEPLUS:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 145;
				_localctx._empty_o_slist_o__i__s__i__s_param_type_p__p__1__1 = this.slist_o__i__s__i__s_param_type_p_(0);
				 
				                _localctx.result =  _localctx._empty_o_slist_o__i__s__i__s_param_type_p__p__1__1.result;
				            
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
			this.state = 150;
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
			this.state = 168;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 3, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 153;
				_localctx._arrow_typ_0__1 = this.typ2(0);
				this.state = 154;
				this.match(TypedBNFParser.T__1);
				this.state = 155;
				_localctx._arrow_typ_0__3 = this.arrow_typ();
				 
				                _localctx.result =  <monot> MK_TFun(<Array<[string, monot]>> <Array<[string, monot]>>[ <[string, monot]>["value", _localctx._arrow_typ_0__1.result] ], <monot> _localctx._arrow_typ_0__3.result);
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 158;
				this.match(TypedBNFParser.T__2);
				this.state = 159;
				_localctx._arrow_typ_1__2 = this.eslist_o__i__s__i__s_param_type_p_();
				this.state = 160;
				this.match(TypedBNFParser.T__3);
				this.state = 161;
				this.match(TypedBNFParser.T__1);
				this.state = 162;
				_localctx._arrow_typ_1__5 = this.arrow_typ();
				 
				                _localctx.result =  <monot> MK_TFun(<Array<[string, monot]>> <Array<[string, monot]>> process_tparam(<Array<[string, monot]>> _localctx._arrow_typ_1__2.result), <monot> _localctx._arrow_typ_1__5.result);
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 165;
				_localctx._arrow_typ_2__1 = this.type_product(0);
				 
				                _localctx.result =  <monot> MK_TTuple(<Array<monot>> _localctx._arrow_typ_2__1.result);
				            
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
			this.state = 171;
			_localctx._slist_o__i__s__i__s_typ_p__0__1 = this.typ();
			 
			                _localctx.result =  <Array<monot>>[ _localctx._slist_o__i__s__i__s_typ_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 181;
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
					_localctx._slist_o__i__s__i__s_typ_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_typ_p_);
					this.state = 174;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 175;
					this.match(TypedBNFParser.T__0);
					this.state = 176;
					_localctx._slist_o__i__s__i__s_typ_p__1__3 = this.typ();
					 
					                          _localctx.result =  <Array<monot>> addList<monot>(<Array<monot>> _localctx._slist_o__i__s__i__s_typ_p__1__1.result, <monot> _localctx._slist_o__i__s__i__s_typ_p__1__3.result);
					                      
					}
					}
				}
				this.state = 183;
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
			this.state = 190;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.CNAMEPLUS:
				{
				this.state = 185;
				_localctx._typ2_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
				 
				                _localctx.result =  <monot> MK_TConst(<string> <string> str(<Token> _localctx._typ2_0__1));
				            
				}
				break;
			case TypedBNFParser.T__7:
				{
				this.state = 187;
				_localctx._typ2_1__1 = this.tvar();
				 
				                _localctx.result =  _localctx._typ2_1__1.result;
				            
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 200;
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
					_localctx = new Typ2Context(_parentctx, _parentState);
					_localctx._typ2_2__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_typ2);
					this.state = 192;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 193;
					this.match(TypedBNFParser.T__4);
					this.state = 194;
					_localctx._typ2_2__3 = this.slist_o__i__s__i__s_typ_p_(0);
					this.state = 195;
					this.match(TypedBNFParser.T__5);
					 
					                          _localctx.result =  <monot> MK_TApp(<monot> _localctx._typ2_2__1.result, <Array<monot>> _localctx._typ2_2__3.result);
					                      
					}
					}
				}
				this.state = 202;
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
			this.state = 204;
			_localctx._type_product_1__1 = this.typ2(0);
			 
			                _localctx.result =  <Array<monot>>[ _localctx._type_product_1__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 214;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 7, this._ctx);
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
					this.state = 207;
					if (!(this.precpred(this._ctx, 2))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
					}
					this.state = 208;
					this.match(TypedBNFParser.T__6);
					this.state = 209;
					_localctx._type_product_0__3 = this.typ2(0);
					 
					                          _localctx.result =  <Array<monot>> addList<monot>(<Array<monot>> _localctx._type_product_0__1.result, <monot> _localctx._type_product_0__3.result);
					                      
					}
					}
				}
				this.state = 216;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 7, this._ctx);
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
			this.state = 226;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.T__4:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 217;
				this.match(TypedBNFParser.T__4);
				this.state = 218;
				_localctx._top_typ_0__2 = this.slist_o__i__s__i__s_tvar_str_p_(0);
				this.state = 219;
				this.match(TypedBNFParser.T__5);
				this.state = 220;
				_localctx._top_typ_0__4 = this.typ();
				 
				                _localctx.result =  <polyt> MK_Poly(<Array<string>> _localctx._top_typ_0__2.result, <monot> _localctx._top_typ_0__4.result);
				            
				}
				break;
			case TypedBNFParser.T__2:
			case TypedBNFParser.T__7:
			case TypedBNFParser.CNAMEPLUS:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 223;
				_localctx._top_typ_1__1 = this.typ();
				 
				                _localctx.result =  <polyt> MK_Mono(<monot> _localctx._top_typ_1__1.result);
				            
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
	public tvar(): TvarContext {
		let _localctx: TvarContext = new TvarContext(this._ctx, this.state);
		this.enterRule(_localctx, 26, TypedBNFParser.RULE_tvar);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 228;
			this.match(TypedBNFParser.T__7);
			this.state = 229;
			_localctx._tvar_0__2 = this.match(TypedBNFParser.CNAMEPLUS);
			 
			                _localctx.result =  <monot> MK_TVar(<string> <string> str(<Token> _localctx._tvar_0__2));
			            
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
		this.enterRule(_localctx, 28, TypedBNFParser.RULE_tvar_str);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 232;
			this.match(TypedBNFParser.T__7);
			this.state = 233;
			_localctx._tvar_str_0__2 = this.match(TypedBNFParser.CNAMEPLUS);
			 
			                _localctx.result =  <string> str(<Token> _localctx._tvar_str_0__2);
			            
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
		this.enterRule(_localctx, 30, TypedBNFParser.RULE_param_type);
		try {
			this.state = 244;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 9, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 236;
				_localctx._param_type_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
				this.state = 237;
				this.match(TypedBNFParser.T__8);
				this.state = 238;
				_localctx._param_type_0__3 = this.typ();
				 
				                _localctx.result =  <[string, monot]>[<string> str(<Token> _localctx._param_type_0__1), _localctx._param_type_0__3.result];
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 241;
				_localctx._param_type_1__1 = this.typ();
				 
				                _localctx.result =  <[string, monot]>["_", _localctx._param_type_1__1.result];
				            
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
		let _startState: number = 32;
		this.enterRecursionRule(_localctx, 32, TypedBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 247;
			_localctx._slist_o__i__s__i__s_tvar_str_p__0__1 = this.tvar_str();
			 
			                _localctx.result =  <Array<string>>[ _localctx._slist_o__i__s__i__s_tvar_str_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 257;
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
					_localctx = new Slist_o__i__s__i__s_tvar_str_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_tvar_str_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_);
					this.state = 250;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 251;
					this.match(TypedBNFParser.T__0);
					this.state = 252;
					_localctx._slist_o__i__s__i__s_tvar_str_p__1__3 = this.tvar_str();
					 
					                          _localctx.result =  <Array<string>> addList<string>(<Array<string>> _localctx._slist_o__i__s__i__s_tvar_str_p__1__1.result, <string> _localctx._slist_o__i__s__i__s_tvar_str_p__1__3.result);
					                      
					}
					}
				}
				this.state = 259;
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
	public type_params(): Type_paramsContext {
		let _localctx: Type_paramsContext = new Type_paramsContext(this._ctx, this.state);
		this.enterRule(_localctx, 34, TypedBNFParser.RULE_type_params);
		try {
			this.state = 266;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 11, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 260;
				this.match(TypedBNFParser.T__4);
				this.state = 261;
				_localctx._type_params_0__2 = this.slist_o__i__s__i__s_tvar_str_p_(0);
				this.state = 262;
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
		this.enterRule(_localctx, 36, TypedBNFParser.RULE_field_ann);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 268;
			_localctx._field_ann_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
			this.state = 269;
			this.match(TypedBNFParser.T__8);
			this.state = 270;
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
		let _startState: number = 38;
		this.enterRecursionRule(_localctx, 38, TypedBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 274;
			_localctx._slist_o__i__s__i__s_field_ann_p__0__1 = this.field_ann();
			 
			                _localctx.result =  <Array<[string, monot, position]>>[ _localctx._slist_o__i__s__i__s_field_ann_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 284;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 12, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Slist_o__i__s__i__s_field_ann_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_field_ann_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_);
					this.state = 277;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 278;
					this.match(TypedBNFParser.T__0);
					this.state = 279;
					_localctx._slist_o__i__s__i__s_field_ann_p__1__3 = this.field_ann();
					 
					                          _localctx.result =  <Array<[string, monot, position]>> addList<[string, monot, position]>(<Array<[string, monot, position]>> _localctx._slist_o__i__s__i__s_field_ann_p__1__1.result, <[string, monot, position]> _localctx._slist_o__i__s__i__s_field_ann_p__1__3.result);
					                      
					}
					}
				}
				this.state = 286;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 12, this._ctx);
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
		this.enterRule(_localctx, 40, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_);
		try {
			this.state = 291;
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
				this.state = 288;
				_localctx._empty_o_slist_o__i__s__i__s_field_ann_p__p__1__1 = this.slist_o__i__s__i__s_field_ann_p_(0);
				 
				                _localctx.result =  _localctx._empty_o_slist_o__i__s__i__s_field_ann_p__p__1__1.result;
				            
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
		this.enterRule(_localctx, 42, TypedBNFParser.RULE_eslist_o__i__s__i__s_field_ann_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 293;
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
		this.enterRule(_localctx, 44, TypedBNFParser.RULE_field_anns);
		try {
			this.state = 302;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 14, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 296;
				this.match(TypedBNFParser.T__2);
				this.state = 297;
				_localctx._field_anns_0__2 = this.eslist_o__i__s__i__s_field_ann_p_();
				this.state = 298;
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
		this.enterRule(_localctx, 46, TypedBNFParser.RULE_decl);
		try {
			this.state = 330;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 15, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 304;
				this.match(TypedBNFParser.T__9);
				this.state = 305;
				_localctx._decl_0__2 = this.match(TypedBNFParser.T__10);
				this.state = 306;
				_localctx._decl_0__3 = this.identstr();
				this.state = 307;
				this.match(TypedBNFParser.T__8);
				this.state = 308;
				_localctx._decl_0__5 = this.top_typ();
				 
				                _localctx.result =  <definition> MK_Declvar(<string> _localctx._decl_0__3.result, <polyt> _localctx._decl_0__5.result, <position> <position> mkpos(<Token> _localctx._decl_0__2));
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 311;
				_localctx._decl_1__1 = this.match(TypedBNFParser.T__11);
				this.state = 312;
				_localctx._decl_1__2 = this.identstr();
				this.state = 313;
				this.match(TypedBNFParser.T__8);
				this.state = 314;
				_localctx._decl_1__4 = this.typ();
				 
				                _localctx.result =  <definition> MK_Declctor(<string> _localctx._decl_1__2.result, <monot> _localctx._decl_1__4.result, <position> <position> mkpos(<Token> _localctx._decl_1__1));
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 317;
				_localctx._decl_2__1 = this.match(TypedBNFParser.T__9);
				this.state = 318;
				this.match(TypedBNFParser.T__12);
				this.state = 319;
				_localctx._decl_2__3 = this.identstr();
				this.state = 320;
				_localctx._decl_2__4 = this.type_params();
				this.state = 321;
				_localctx._decl_2__5 = this.field_anns();
				 
				                _localctx.result =  <definition> MK_Decltype(<boolean> true, <boolean> <boolean> fst<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_2__5.result), <string> _localctx._decl_2__3.result, <Array<string>> _localctx._decl_2__4.result, <Array<[string, monot, position]>> <Array<[string, monot, position]>> snd<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_2__5.result), <position> <position> mkpos(<Token> _localctx._decl_2__1));
				            
				}
				break;

			case 4:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 324;
				_localctx._decl_3__1 = this.match(TypedBNFParser.T__12);
				this.state = 325;
				_localctx._decl_3__2 = this.identstr();
				this.state = 326;
				_localctx._decl_3__3 = this.type_params();
				this.state = 327;
				_localctx._decl_3__4 = this.field_anns();
				 
				                _localctx.result =  <definition> MK_Decltype(<boolean> false, <boolean> <boolean> fst<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_3__4.result), <string> _localctx._decl_3__2.result, <Array<string>> _localctx._decl_3__3.result, <Array<[string, monot, position]>> <Array<[string, monot, position]>> snd<boolean, Array<[string, monot, position]>>(<[boolean, Array<[string, monot, position]>]> _localctx._decl_3__4.result), <position> <position> mkpos(<Token> _localctx._decl_3__1));
				            
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
		this.enterRule(_localctx, 48, TypedBNFParser.RULE_toplevel);
		try {
			this.state = 345;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 16, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 332;
				_localctx._toplevel_0__1 = this.def();
				 
				                _localctx.result =  _localctx._toplevel_0__1.result;
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 335;
				_localctx._toplevel_1__1 = this.decl();
				 
				                _localctx.result =  _localctx._toplevel_1__1.result;
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 338;
				_localctx._toplevel_2__1 = this.lexerdef();
				 
				                _localctx.result =  _localctx._toplevel_2__1.result;
				            
				}
				break;

			case 4:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 341;
				_localctx._toplevel_3__1 = this.match(TypedBNFParser.T__13);
				this.state = 342;
				_localctx._toplevel_3__2 = this.slist_o__i__s__i__s_identstr_p_(0);
				 
				                _localctx.result =  <definition> MK_Defignore(<Array<string>> _localctx._toplevel_3__2.result, <position> <position> mkpos(<Token> _localctx._toplevel_3__1));
				            
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
		let _startState: number = 50;
		this.enterRecursionRule(_localctx, 50, TypedBNFParser.RULE_slist_o__i__s__i__s_identstr_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 348;
			_localctx._slist_o__i__s__i__s_identstr_p__0__1 = this.identstr();
			 
			                _localctx.result =  <Array<string>>[ _localctx._slist_o__i__s__i__s_identstr_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 358;
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
					_localctx = new Slist_o__i__s__i__s_identstr_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_identstr_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_identstr_p_);
					this.state = 351;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 352;
					this.match(TypedBNFParser.T__0);
					this.state = 353;
					_localctx._slist_o__i__s__i__s_identstr_p__1__3 = this.identstr();
					 
					                          _localctx.result =  <Array<string>> addList<string>(<Array<string>> _localctx._slist_o__i__s__i__s_identstr_p__1__1.result, <string> _localctx._slist_o__i__s__i__s_identstr_p__1__3.result);
					                      
					}
					}
				}
				this.state = 360;
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
	public def(): DefContext {
		let _localctx: DefContext = new DefContext(this._ctx, this.state);
		this.enterRule(_localctx, 52, TypedBNFParser.RULE_def);
		try {
			this.state = 372;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 18, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 361;
				_localctx._def_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
				this.state = 362;
				this.match(TypedBNFParser.T__2);
				this.state = 363;
				_localctx._def_0__3 = this.slist_o__i__s__i__s_identstr_p_(0);
				this.state = 364;
				this.match(TypedBNFParser.T__3);
				this.state = 365;
				_localctx._def_0__5 = this.productions(0);
				 
				                _localctx.result =  <definition> MK_Defmacro(<string> <string> str(<Token> _localctx._def_0__1), <Array<string>> _localctx._def_0__3.result, <Array<[position, production]>> _localctx._def_0__5.result, <position> <position> mkpos(<Token> _localctx._def_0__1));
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 368;
				_localctx._def_1__1 = this.match(TypedBNFParser.CNAMEPLUS);
				this.state = 369;
				_localctx._def_1__2 = this.productions(0);
				 
				                _localctx.result =  <definition> MK_Defrule(<string> <string> str(<Token> _localctx._def_1__1), <Array<[position, production]>> _localctx._def_1__2.result, <position> <position> mkpos(<Token> _localctx._def_1__1));
				            
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
		let _startState: number = 54;
		this.enterRecursionRule(_localctx, 54, TypedBNFParser.RULE_productions, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 375;
			_localctx._productions_0__1 = this.match(TypedBNFParser.T__8);
			this.state = 376;
			_localctx._productions_0__2 = this.production();
			 
			                _localctx.result =  <Array<[position, production]>>[ <[position, production]>[<position> mkpos(<Token> _localctx._productions_0__1), _localctx._productions_0__2.result] ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 386;
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
					_localctx = new ProductionsContext(_parentctx, _parentState);
					_localctx._productions_1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_productions);
					this.state = 379;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 380;
					_localctx._productions_1__2 = this.match(TypedBNFParser.T__14);
					this.state = 381;
					_localctx._productions_1__3 = this.production();
					 
					                          _localctx.result =  <Array<[position, production]>> addList<[position, production]>(<Array<[position, production]>> _localctx._productions_1__1.result, <[position, production]> <[position, production]>[<position> mkpos(<Token> _localctx._productions_1__2), _localctx._productions_1__3.result]);
					                      
					}
					}
				}
				this.state = 388;
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
		let _startState: number = 56;
		this.enterRecursionRule(_localctx, 56, TypedBNFParser.RULE_list_o_psym_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 390;
			_localctx._list_o_psym_p__0__1 = this.psym();
			 
			                _localctx.result =  <Array<symbol>>[ _localctx._list_o_psym_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 399;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 20, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new List_o_psym_p_Context(_parentctx, _parentState);
					_localctx._list_o_psym_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_list_o_psym_p_);
					this.state = 393;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 394;
					_localctx._list_o_psym_p__1__2 = this.psym();
					 
					                          _localctx.result =  <Array<symbol>> addList<symbol>(<Array<symbol>> _localctx._list_o_psym_p__1__1.result, <symbol> _localctx._list_o_psym_p__1__2.result);
					                      
					}
					}
				}
				this.state = 401;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 20, this._ctx);
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
		this.enterRule(_localctx, 58, TypedBNFParser.RULE_empty_o_list_o_psym_p__p_);
		try {
			this.state = 406;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.T__15:
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
				this.state = 403;
				_localctx._empty_o_list_o_psym_p__p__1__1 = this.list_o_psym_p_(0);
				 
				                _localctx.result =  _localctx._empty_o_list_o_psym_p__p__1__1.result;
				            
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
		this.enterRule(_localctx, 60, TypedBNFParser.RULE_elist_o_psym_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 408;
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
		this.enterRule(_localctx, 62, TypedBNFParser.RULE_production);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 411;
			_localctx._production_0__1 = this.elist_o_psym_p_();
			this.state = 412;
			this.match(TypedBNFParser.T__15);
			this.state = 413;
			_localctx._production_0__3 = this.expr();
			this.state = 414;
			this.match(TypedBNFParser.T__16);
			 
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
		let _startState: number = 64;
		this.enterRecursionRule(_localctx, 64, TypedBNFParser.RULE_slist_o__i__s__i__s_psym_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 418;
			_localctx._slist_o__i__s__i__s_psym_p__0__1 = this.psym();
			 
			                _localctx.result =  <Array<symbol>>[ _localctx._slist_o__i__s__i__s_psym_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 428;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 22, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Slist_o__i__s__i__s_psym_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_psym_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_psym_p_);
					this.state = 421;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 422;
					this.match(TypedBNFParser.T__0);
					this.state = 423;
					_localctx._slist_o__i__s__i__s_psym_p__1__3 = this.psym();
					 
					                          _localctx.result =  <Array<symbol>> addList<symbol>(<Array<symbol>> _localctx._slist_o__i__s__i__s_psym_p__1__1.result, <symbol> _localctx._slist_o__i__s__i__s_psym_p__1__3.result);
					                      
					}
					}
				}
				this.state = 430;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 22, this._ctx);
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
		this.enterRule(_localctx, 66, TypedBNFParser.RULE_psym);
		try {
			this.state = 447;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 23, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 431;
				this.match(TypedBNFParser.T__4);
				this.state = 432;
				_localctx._psym_0__2 = this.identstr();
				this.state = 433;
				this.match(TypedBNFParser.T__5);
				 
				                _localctx.result =  <symbol> MK_Term(<string> _localctx._psym_0__2.result, <boolean> false);
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 436;
				_localctx._psym_1__1 = this.match(TypedBNFParser.ESCAPED_STRING);
				 
				                _localctx.result =  <symbol> MK_Term(<string> <string> unescape(<string> <string> str(<Token> _localctx._psym_1__1)), <boolean> true);
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 438;
				_localctx._psym_2__1 = this.identstr();
				 
				                _localctx.result =  <symbol> MK_Nonterm(<string> _localctx._psym_2__1.result);
				            
				}
				break;

			case 4:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 441;
				_localctx._psym_3__1 = this.match(TypedBNFParser.CNAMEPLUS);
				this.state = 442;
				this.match(TypedBNFParser.T__2);
				this.state = 443;
				_localctx._psym_3__3 = this.slist_o__i__s__i__s_psym_p_(0);
				this.state = 444;
				this.match(TypedBNFParser.T__3);
				 
				                _localctx.result =  <symbol> MK_Macrocall(<string> <string> str(<Token> _localctx._psym_3__1), <Array<symbol>> _localctx._psym_3__3.result, <position> <position> mkpos(<Token> _localctx._psym_3__1));
				            
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
		this.enterRule(_localctx, 68, TypedBNFParser.RULE_ann);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 449;
			_localctx._ann_0__1 = this.identstr();
			this.state = 450;
			this.match(TypedBNFParser.T__8);
			this.state = 451;
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
		let _startState: number = 70;
		this.enterRecursionRule(_localctx, 70, TypedBNFParser.RULE_slist_o__i__s__i__s_ann_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 455;
			_localctx._slist_o__i__s__i__s_ann_p__0__1 = this.ann();
			 
			                _localctx.result =  <Array<[string, monot]>>[ _localctx._slist_o__i__s__i__s_ann_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 465;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 24, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Slist_o__i__s__i__s_ann_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_ann_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_ann_p_);
					this.state = 458;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 459;
					this.match(TypedBNFParser.T__0);
					this.state = 460;
					_localctx._slist_o__i__s__i__s_ann_p__1__3 = this.ann();
					 
					                          _localctx.result =  <Array<[string, monot]>> addList<[string, monot]>(<Array<[string, monot]>> _localctx._slist_o__i__s__i__s_ann_p__1__1.result, <[string, monot]> _localctx._slist_o__i__s__i__s_ann_p__1__3.result);
					                      
					}
					}
				}
				this.state = 467;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 24, this._ctx);
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
		this.enterRule(_localctx, 72, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_ann_p__p_);
		try {
			this.state = 472;
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
				this.state = 469;
				_localctx._empty_o_slist_o__i__s__i__s_ann_p__p__1__1 = this.slist_o__i__s__i__s_ann_p_(0);
				 
				                _localctx.result =  _localctx._empty_o_slist_o__i__s__i__s_ann_p__p__1__1.result;
				            
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
		this.enterRule(_localctx, 74, TypedBNFParser.RULE_eslist_o__i__s__i__s_ann_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 474;
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
		this.enterRule(_localctx, 76, TypedBNFParser.RULE_func_parameters);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 477;
			this.match(TypedBNFParser.T__2);
			this.state = 478;
			_localctx._func_parameters_0__2 = this.eslist_o__i__s__i__s_ann_p_();
			this.state = 479;
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
		this.enterRule(_localctx, 78, TypedBNFParser.RULE_expr);
		try {
			this.state = 504;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 26, this._ctx) ) {
			case 1:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 482;
				_localctx._expr_0__1 = this.match(TypedBNFParser.T__17);
				this.state = 483;
				_localctx._expr_0__2 = this.identstr();
				this.state = 484;
				this.match(TypedBNFParser.T__18);
				this.state = 485;
				_localctx._expr_0__4 = this.expr();
				this.state = 486;
				this.match(TypedBNFParser.T__19);
				this.state = 487;
				_localctx._expr_0__6 = this.expr();
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_ELet(<string> _localctx._expr_0__2.result, <expr> _localctx._expr_0__4.result, <expr> _localctx._expr_0__6.result), <position> <position> mkpos(<Token> _localctx._expr_0__1));
				            
				}
				break;

			case 2:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 490;
				_localctx._expr_1__1 = this.match(TypedBNFParser.T__20);
				this.state = 491;
				_localctx._expr_1__2 = this.func_parameters();
				this.state = 492;
				this.match(TypedBNFParser.T__1);
				this.state = 493;
				_localctx._expr_1__4 = this.expr();
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EFun(<Array<[string, monot]>> _localctx._expr_1__2.result, <expr> _localctx._expr_1__4.result), <position> <position> mkpos(<Token> _localctx._expr_1__1));
				            
				}
				break;

			case 3:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 496;
				_localctx._expr_2__1 = this.call(0);
				 
				                _localctx.result =  _localctx._expr_2__1.result;
				            
				}
				break;

			case 4:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 499;
				_localctx._expr_3__1 = this.call(0);
				this.state = 500;
				this.match(TypedBNFParser.T__21);
				this.state = 501;
				_localctx._expr_3__3 = this.expr();
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_ELet(<string> "_", <expr> _localctx._expr_3__1.result, <expr> _localctx._expr_3__3.result), <position> <position> getpos(<expr> _localctx._expr_3__1.result));
				            
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
		let _startState: number = 80;
		this.enterRecursionRule(_localctx, 80, TypedBNFParser.RULE_call, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 507;
			_localctx._call_1__1 = this.atomexp(0);
			 
			                _localctx.result =  _localctx._call_1__1.result;
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 518;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 27, this._ctx);
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
					this.state = 510;
					if (!(this.precpred(this._ctx, 2))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
					}
					this.state = 511;
					this.match(TypedBNFParser.T__2);
					this.state = 512;
					_localctx._call_0__3 = this.eslist_o__i__s__i__s_expr_p_();
					this.state = 513;
					this.match(TypedBNFParser.T__3);
					 
					                          _localctx.result =  <expr> MK_Expr(<node> <node> MK_EApp(<expr> _localctx._call_0__1.result, <Array<expr>> _localctx._call_0__3.result), <position> <position> getpos(<expr> _localctx._call_0__1.result));
					                      
					}
					}
				}
				this.state = 520;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 27, this._ctx);
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
		this.enterRule(_localctx, 82, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_expr_p__p_);
		try {
			this.state = 525;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.T__3:
			case TypedBNFParser.T__24:
				this.enterOuterAlt(_localctx, 1);
				{
				 
				                _localctx.result =  <Array<expr>>[  ];
				            
				}
				break;
			case TypedBNFParser.T__2:
			case TypedBNFParser.T__17:
			case TypedBNFParser.T__20:
			case TypedBNFParser.T__22:
			case TypedBNFParser.T__23:
			case TypedBNFParser.T__26:
			case TypedBNFParser.T__27:
			case TypedBNFParser.CNAMEPLUS:
			case TypedBNFParser.INT:
			case TypedBNFParser.FLOAT:
			case TypedBNFParser.ESCAPED_STRING:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 522;
				_localctx._empty_o_slist_o__i__s__i__s_expr_p__p__1__1 = this.slist_o__i__s__i__s_expr_p_(0);
				 
				                _localctx.result =  _localctx._empty_o_slist_o__i__s__i__s_expr_p__p__1__1.result;
				            
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
		this.enterRule(_localctx, 84, TypedBNFParser.RULE_eslist_o__i__s__i__s_expr_p_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 527;
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
		let _startState: number = 86;
		this.enterRecursionRule(_localctx, 86, TypedBNFParser.RULE_slist_o__i__s__i__s_expr_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 531;
			_localctx._slist_o__i__s__i__s_expr_p__0__1 = this.expr();
			 
			                _localctx.result =  <Array<expr>>[ _localctx._slist_o__i__s__i__s_expr_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 541;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 29, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new Slist_o__i__s__i__s_expr_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__s__i__s_expr_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__s__i__s_expr_p_);
					this.state = 534;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 535;
					this.match(TypedBNFParser.T__0);
					this.state = 536;
					_localctx._slist_o__i__s__i__s_expr_p__1__3 = this.expr();
					 
					                          _localctx.result =  <Array<expr>> addList<expr>(<Array<expr>> _localctx._slist_o__i__s__i__s_expr_p__1__1.result, <expr> _localctx._slist_o__i__s__i__s_expr_p__1__3.result);
					                      
					}
					}
				}
				this.state = 543;
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
		let _startState: number = 88;
		this.enterRecursionRule(_localctx, 88, TypedBNFParser.RULE_atomexp, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 573;
			this._errHandler.sync(this);
			switch ( this.interpreter.adaptivePredict(this._input, 30, this._ctx) ) {
			case 1:
				{
				this.state = 545;
				_localctx._atomexp_0__1 = this.match(TypedBNFParser.INT);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EInt(<number> <number> toint(<Token> _localctx._atomexp_0__1)), <position> <position> mkpos(<Token> _localctx._atomexp_0__1));
				            
				}
				break;

			case 2:
				{
				this.state = 547;
				_localctx._atomexp_1__1 = this.match(TypedBNFParser.FLOAT);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EFlt(<number> <number> tofloat(<Token> _localctx._atomexp_1__1)), <position> <position> mkpos(<Token> _localctx._atomexp_1__1));
				            
				}
				break;

			case 3:
				{
				this.state = 549;
				_localctx._atomexp_2__1 = this.match(TypedBNFParser.ESCAPED_STRING);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EStr(<string> <string> unescape(<string> <string> str(<Token> _localctx._atomexp_2__1))), <position> <position> mkpos(<Token> _localctx._atomexp_2__1));
				            
				}
				break;

			case 4:
				{
				this.state = 551;
				_localctx._atomexp_3__1 = this.match(TypedBNFParser.T__22);
				this.state = 552;
				_localctx._atomexp_3__2 = this.match(TypedBNFParser.INT);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_ESlot(<number> <number> toint(<Token> _localctx._atomexp_3__2)), <position> <position> mkpos(<Token> _localctx._atomexp_3__1));
				            
				}
				break;

			case 5:
				{
				this.state = 554;
				_localctx._atomexp_4__1 = this.match(TypedBNFParser.T__23);
				this.state = 555;
				_localctx._atomexp_4__2 = this.eslist_o__i__s__i__s_expr_p_();
				this.state = 556;
				this.match(TypedBNFParser.T__24);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EList(<Array<expr>> _localctx._atomexp_4__2.result), <position> <position> mkpos(<Token> _localctx._atomexp_4__1));
				            
				}
				break;

			case 6:
				{
				this.state = 559;
				_localctx._atomexp_5__1 = this.match(TypedBNFParser.T__2);
				this.state = 560;
				this.match(TypedBNFParser.T__3);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_ETuple(<Array<expr>> <Array<expr>>[  ]), <position> <position> mkpos(<Token> _localctx._atomexp_5__1));
				            
				}
				break;

			case 7:
				{
				this.state = 562;
				_localctx._atomexp_6__1 = this.match(TypedBNFParser.T__2);
				this.state = 563;
				_localctx._atomexp_6__2 = this.slist_o__i__s__i__s_expr_p_(0);
				this.state = 564;
				this.match(TypedBNFParser.T__3);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_ETuple(<Array<expr>> _localctx._atomexp_6__2.result), <position> <position> mkpos(<Token> _localctx._atomexp_6__1));
				            
				}
				break;

			case 8:
				{
				this.state = 567;
				_localctx._atomexp_7__1 = this.match(TypedBNFParser.CNAMEPLUS);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EVar(<string> <string> str(<Token> _localctx._atomexp_7__1)), <position> <position> mkpos(<Token> _localctx._atomexp_7__1));
				            
				}
				break;

			case 9:
				{
				this.state = 569;
				_localctx._atomexp_9__1 = this.match(TypedBNFParser.T__26);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EBool(<boolean> true), <position> <position> mkpos(<Token> _localctx._atomexp_9__1));
				            
				}
				break;

			case 10:
				{
				this.state = 571;
				_localctx._atomexp_10__1 = this.match(TypedBNFParser.T__27);
				 
				                _localctx.result =  <expr> MK_Expr(<node> <node> MK_EBool(<boolean> false), <position> <position> mkpos(<Token> _localctx._atomexp_10__1));
				            
				}
				break;
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 581;
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
					_localctx = new AtomexpContext(_parentctx, _parentState);
					_localctx._atomexp_8__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_atomexp);
					this.state = 575;
					if (!(this.precpred(this._ctx, 3))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 3)");
					}
					this.state = 576;
					this.match(TypedBNFParser.T__25);
					this.state = 577;
					_localctx._atomexp_8__3 = this.match(TypedBNFParser.CNAMEPLUS);
					 
					                          _localctx.result =  <expr> MK_Expr(<node> <node> MK_EField(<expr> _localctx._atomexp_8__1.result, <string> <string> str(<Token> _localctx._atomexp_8__3)), <position> <position> getpos(<expr> _localctx._atomexp_8__1.result));
					                      
					}
					}
				}
				this.state = 583;
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
		let _startState: number = 90;
		this.enterRecursionRule(_localctx, 90, TypedBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 585;
			_localctx._slist_o__i__u__i__s_lexer_and_p__0__1 = this.lexer_and();
			 
			                _localctx.result =  <Array<lexerule>>[ _localctx._slist_o__i__u__i__s_lexer_and_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 595;
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
					_localctx = new Slist_o__i__u__i__s_lexer_and_p_Context(_parentctx, _parentState);
					_localctx._slist_o__i__u__i__s_lexer_and_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_);
					this.state = 588;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 589;
					this.match(TypedBNFParser.T__14);
					this.state = 590;
					_localctx._slist_o__i__u__i__s_lexer_and_p__1__3 = this.lexer_and();
					 
					                          _localctx.result =  <Array<lexerule>> addList<lexerule>(<Array<lexerule>> _localctx._slist_o__i__u__i__s_lexer_and_p__1__1.result, <lexerule> _localctx._slist_o__i__u__i__s_lexer_and_p__1__3.result);
					                      
					}
					}
				}
				this.state = 597;
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
	public lexer__y_(): Lexer__y_Context {
		let _localctx: Lexer__y_Context = new Lexer__y_Context(this._ctx, this.state);
		this.enterRule(_localctx, 92, TypedBNFParser.RULE_lexer__y_);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 598;
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
		let _startState: number = 94;
		this.enterRecursionRule(_localctx, 94, TypedBNFParser.RULE_list_o_lexer_atomexpr_p_, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 602;
			_localctx._list_o_lexer_atomexpr_p__0__1 = this.lexer_atomexpr(0);
			 
			                _localctx.result =  <Array<lexerule>>[ _localctx._list_o_lexer_atomexpr_p__0__1.result ];
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 611;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 33, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					{
					_localctx = new List_o_lexer_atomexpr_p_Context(_parentctx, _parentState);
					_localctx._list_o_lexer_atomexpr_p__1__1 = _prevctx;
					this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_list_o_lexer_atomexpr_p_);
					this.state = 605;
					if (!(this.precpred(this._ctx, 1))) {
						throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
					}
					this.state = 606;
					_localctx._list_o_lexer_atomexpr_p__1__2 = this.lexer_atomexpr(0);
					 
					                          _localctx.result =  <Array<lexerule>> addList<lexerule>(<Array<lexerule>> _localctx._list_o_lexer_atomexpr_p__1__1.result, <lexerule> _localctx._list_o_lexer_atomexpr_p__1__2.result);
					                      
					}
					}
				}
				this.state = 613;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 33, this._ctx);
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
		this.enterRule(_localctx, 96, TypedBNFParser.RULE_lexer_and);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 614;
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
		let _startState: number = 98;
		this.enterRecursionRule(_localctx, 98, TypedBNFParser.RULE_lexer_atomexpr, _p);
		try {
			let _alt: number;
			this.enterOuterAlt(_localctx, 1);
			{
			{
			this.state = 618;
			_localctx._lexer_atomexpr_3__1 = this.lexer_atom();
			 
			                _localctx.result =  _localctx._lexer_atomexpr_3__1.result;
			            
			}
			this._ctx._stop = this._input.tryLT(-1);
			this.state = 632;
			this._errHandler.sync(this);
			_alt = this.interpreter.adaptivePredict(this._input, 35, this._ctx);
			while (_alt !== 2 && _alt !== ATN.INVALID_ALT_NUMBER) {
				if (_alt === 1) {
					if (this._parseListeners != null) {
						this.triggerExitRuleEvent();
					}
					_prevctx = _localctx;
					{
					this.state = 630;
					this._errHandler.sync(this);
					switch ( this.interpreter.adaptivePredict(this._input, 34, this._ctx) ) {
					case 1:
						{
						_localctx = new Lexer_atomexprContext(_parentctx, _parentState);
						_localctx._lexer_atomexpr_0__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_lexer_atomexpr);
						this.state = 621;
						if (!(this.precpred(this._ctx, 4))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 4)");
						}
						this.state = 622;
						this.match(TypedBNFParser.T__28);
						 
						                          _localctx.result =  <lexerule> MK_LPlus(<lexerule> _localctx._lexer_atomexpr_0__1.result);
						                      
						}
						break;

					case 2:
						{
						_localctx = new Lexer_atomexprContext(_parentctx, _parentState);
						_localctx._lexer_atomexpr_1__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_lexer_atomexpr);
						this.state = 624;
						if (!(this.precpred(this._ctx, 3))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 3)");
						}
						this.state = 625;
						this.match(TypedBNFParser.T__6);
						 
						                          _localctx.result =  <lexerule> MK_LStar(<lexerule> _localctx._lexer_atomexpr_1__1.result);
						                      
						}
						break;

					case 3:
						{
						_localctx = new Lexer_atomexprContext(_parentctx, _parentState);
						_localctx._lexer_atomexpr_2__1 = _prevctx;
						this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_lexer_atomexpr);
						this.state = 627;
						if (!(this.precpred(this._ctx, 2))) {
							throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
						}
						this.state = 628;
						this.match(TypedBNFParser.T__29);
						 
						                          _localctx.result =  <lexerule> MK_LOptional(<lexerule> _localctx._lexer_atomexpr_2__1.result);
						                      
						}
						break;
					}
					}
				}
				this.state = 634;
				this._errHandler.sync(this);
				_alt = this.interpreter.adaptivePredict(this._input, 35, this._ctx);
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
		this.enterRule(_localctx, 100, TypedBNFParser.RULE_lexer_atom);
		try {
			this.state = 658;
			this._errHandler.sync(this);
			switch (this._input.LA(1)) {
			case TypedBNFParser.ESCAPED_STRING:
				this.enterOuterAlt(_localctx, 1);
				{
				this.state = 635;
				_localctx._lexer_atom_0__1 = this.match(TypedBNFParser.ESCAPED_STRING);
				 
				                _localctx.result =  <lexerule> MK_LStr(<string> <string> unescape(<string> <string> str(<Token> _localctx._lexer_atom_0__1)));
				            
				}
				break;
			case TypedBNFParser.T__30:
				this.enterOuterAlt(_localctx, 2);
				{
				this.state = 637;
				this.match(TypedBNFParser.T__30);
				this.state = 638;
				_localctx._lexer_atom_1__2 = this.lexer_atom();
				 
				                _localctx.result =  <lexerule> MK_LNot(<lexerule> _localctx._lexer_atom_1__2.result);
				            
				}
				break;
			case TypedBNFParser.T__2:
				this.enterOuterAlt(_localctx, 3);
				{
				this.state = 641;
				this.match(TypedBNFParser.T__2);
				this.state = 642;
				_localctx._lexer_atom_2__2 = this.lexer__y_();
				this.state = 643;
				this.match(TypedBNFParser.T__3);
				 
				                _localctx.result =  <lexerule> MK_LGroup(<lexerule> _localctx._lexer_atom_2__2.result);
				            
				}
				break;
			case TypedBNFParser.T__31:
				this.enterOuterAlt(_localctx, 4);
				{
				this.state = 646;
				this.match(TypedBNFParser.T__31);
				 
				                _localctx.result =  MK_LNumber;
				            
				}
				break;
			case TypedBNFParser.RANGE:
				this.enterOuterAlt(_localctx, 5);
				{
				this.state = 648;
				_localctx._lexer_atom_4__1 = this.match(TypedBNFParser.RANGE);
				 
				                _localctx.result =  <lexerule> getrange(<string> <string> str(<Token> _localctx._lexer_atom_4__1));
				            
				}
				break;
			case TypedBNFParser.UNICODE_RANGE:
				this.enterOuterAlt(_localctx, 6);
				{
				this.state = 650;
				_localctx._lexer_atom_5__1 = this.match(TypedBNFParser.UNICODE_RANGE);
				 
				                _localctx.result =  <lexerule> getunicoderange(<string> <string> str(<Token> _localctx._lexer_atom_5__1));
				            
				}
				break;
			case TypedBNFParser.T__32:
				this.enterOuterAlt(_localctx, 7);
				{
				this.state = 652;
				this.match(TypedBNFParser.T__32);
				 
				                _localctx.result =  MK_LWildcard;
				            
				}
				break;
			case TypedBNFParser.T__25:
				this.enterOuterAlt(_localctx, 8);
				{
				this.state = 654;
				this.match(TypedBNFParser.T__25);
				 
				                _localctx.result =  MK_LWildcard;
				            
				}
				break;
			case TypedBNFParser.CNAMEPLUS:
				this.enterOuterAlt(_localctx, 9);
				{
				this.state = 656;
				_localctx._lexer_atom_8__1 = this.match(TypedBNFParser.CNAMEPLUS);
				 
				                _localctx.result =  <lexerule> MK_LRef(<string> <string> str(<Token> _localctx._lexer_atom_8__1));
				            
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
		this.enterRule(_localctx, 102, TypedBNFParser.RULE_lexerdef);
		try {
			this.enterOuterAlt(_localctx, 1);
			{
			this.state = 660;
			_localctx._lexerdef_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
			this.state = 661;
			this.match(TypedBNFParser.T__18);
			this.state = 662;
			_localctx._lexerdef_0__3 = this.lexer__y_();
			this.state = 663;
			this.match(TypedBNFParser.T__21);
			 
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

		case 16:
			return this.slist_o__i__s__i__s_tvar_str_p__sempred(_localctx as Slist_o__i__s__i__s_tvar_str_p_Context, predIndex);

		case 19:
			return this.slist_o__i__s__i__s_field_ann_p__sempred(_localctx as Slist_o__i__s__i__s_field_ann_p_Context, predIndex);

		case 25:
			return this.slist_o__i__s__i__s_identstr_p__sempred(_localctx as Slist_o__i__s__i__s_identstr_p_Context, predIndex);

		case 27:
			return this.productions_sempred(_localctx as ProductionsContext, predIndex);

		case 28:
			return this.list_o_psym_p__sempred(_localctx as List_o_psym_p_Context, predIndex);

		case 32:
			return this.slist_o__i__s__i__s_psym_p__sempred(_localctx as Slist_o__i__s__i__s_psym_p_Context, predIndex);

		case 35:
			return this.slist_o__i__s__i__s_ann_p__sempred(_localctx as Slist_o__i__s__i__s_ann_p_Context, predIndex);

		case 40:
			return this.call_sempred(_localctx as CallContext, predIndex);

		case 43:
			return this.slist_o__i__s__i__s_expr_p__sempred(_localctx as Slist_o__i__s__i__s_expr_p_Context, predIndex);

		case 44:
			return this.atomexp_sempred(_localctx as AtomexpContext, predIndex);

		case 45:
			return this.slist_o__i__u__i__s_lexer_and_p__sempred(_localctx as Slist_o__i__u__i__s_lexer_and_p_Context, predIndex);

		case 47:
			return this.list_o_lexer_atomexpr_p__sempred(_localctx as List_o_lexer_atomexpr_p_Context, predIndex);

		case 49:
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
		"\x03\uC91D\uCABA\u058D\uAFBA\u4F53\u0607\uEA8B\uC241\x03,\u029D\x04\x02" +
		"\t\x02\x04\x03\t\x03\x04\x04\t\x04\x04\x05\t\x05\x04\x06\t\x06\x04\x07" +
		"\t\x07\x04\b\t\b\x04\t\t\t\x04\n\t\n\x04\v\t\v\x04\f\t\f\x04\r\t\r\x04" +
		"\x0E\t\x0E\x04\x0F\t\x0F\x04\x10\t\x10\x04\x11\t\x11\x04\x12\t\x12\x04" +
		"\x13\t\x13\x04\x14\t\x14\x04\x15\t\x15\x04\x16\t\x16\x04\x17\t\x17\x04" +
		"\x18\t\x18\x04\x19\t\x19\x04\x1A\t\x1A\x04\x1B\t\x1B\x04\x1C\t\x1C\x04" +
		"\x1D\t\x1D\x04\x1E\t\x1E\x04\x1F\t\x1F\x04 \t \x04!\t!\x04\"\t\"\x04#" +
		"\t#\x04$\t$\x04%\t%\x04&\t&\x04\'\t\'\x04(\t(\x04)\t)\x04*\t*\x04+\t+" +
		"\x04,\t,\x04-\t-\x04.\t.\x04/\t/\x040\t0\x041\t1\x042\t2\x043\t3\x044" +
		"\t4\x045\t5\x03\x02\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03" +
		"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x07\x03w\n\x03\f\x03\x0E\x03z\v\x03" +
		"\x03\x04\x03\x04\x03\x04\x03\x05\x03\x05\x03\x05\x03\x06\x03\x06\x03\x06" +
		"\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07" +
		"\x07\x07\x8E\n\x07\f\x07\x0E\x07\x91\v\x07\x03\b\x03\b\x03\b\x03\b\x05" +
		"\b\x97\n\b\x03\t\x03\t\x03\t\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n" +
		"\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x05\n\xAB\n\n\x03\v\x03" +
		"\v\x03\v\x03\v\x03\v\x03\v\x03\v\x03\v\x03\v\x07\v\xB6\n\v\f\v\x0E\v\xB9" +
		"\v\v\x03\f\x03\f\x03\f\x03\f\x03\f\x03\f\x05\f\xC1\n\f\x03\f\x03\f\x03" +
		"\f\x03\f\x03\f\x03\f\x07\f\xC9\n\f\f\f\x0E\f\xCC\v\f\x03\r\x03\r\x03\r" +
		"\x03\r\x03\r\x03\r\x03\r\x03\r\x03\r\x07\r\xD7\n\r\f\r\x0E\r\xDA\v\r\x03" +
		"\x0E\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x05" +
		"\x0E\xE5\n\x0E\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x10\x03\x10\x03\x10" +
		"\x03\x10\x03\x11\x03\x11\x03\x11\x03\x11\x03\x11\x03\x11\x03\x11\x03\x11" +
		"\x05\x11\xF7\n\x11\x03\x12\x03\x12\x03\x12\x03\x12\x03\x12\x03\x12\x03" +
		"\x12\x03\x12\x03\x12\x07\x12\u0102\n\x12\f\x12\x0E\x12\u0105\v\x12\x03" +
		"\x13\x03\x13\x03\x13\x03\x13\x03\x13\x03\x13\x05\x13\u010D\n\x13\x03\x14" +
		"\x03\x14\x03\x14\x03\x14\x03\x14\x03\x15\x03\x15\x03\x15\x03\x15\x03\x15" +
		"\x03\x15\x03\x15\x03\x15\x03\x15\x07\x15\u011D\n\x15\f\x15\x0E\x15\u0120" +
		"\v\x15\x03\x16\x03\x16\x03\x16\x03\x16\x05\x16\u0126\n\x16\x03\x17\x03" +
		"\x17\x03\x17\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x05\x18\u0131" +
		"\n\x18\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19" +
		"\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19" +
		"\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19" +
		"\x05\x19\u014D\n\x19\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03" +
		"\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x05\x1A\u015C\n\x1A" +
		"\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B" +
		"\x07\x1B\u0167\n\x1B\f\x1B\x0E\x1B\u016A\v\x1B\x03\x1C\x03\x1C\x03\x1C" +
		"\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x05\x1C" +
		"\u0177\n\x1C\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03" +
		"\x1D\x03\x1D\x03\x1D\x07\x1D\u0183\n\x1D\f\x1D\x0E\x1D\u0186\v\x1D\x03" +
		"\x1E\x03\x1E\x03\x1E\x03\x1E\x03\x1E\x03\x1E\x03\x1E\x03\x1E\x07\x1E\u0190" +
		"\n\x1E\f\x1E\x0E\x1E\u0193\v\x1E\x03\x1F\x03\x1F\x03\x1F\x03\x1F\x05\x1F" +
		"\u0199\n\x1F\x03 \x03 \x03 \x03!\x03!\x03!\x03!\x03!\x03!\x03\"\x03\"" +
		"\x03\"\x03\"\x03\"\x03\"\x03\"\x03\"\x03\"\x07\"\u01AD\n\"\f\"\x0E\"\u01B0" +
		"\v\"\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#" +
		"\x03#\x03#\x03#\x05#\u01C2\n#\x03$\x03$\x03$\x03$\x03$\x03%\x03%\x03%" +
		"\x03%\x03%\x03%\x03%\x03%\x03%\x07%\u01D2\n%\f%\x0E%\u01D5\v%\x03&\x03" +
		"&\x03&\x03&\x05&\u01DB\n&\x03\'\x03\'\x03\'\x03(\x03(\x03(\x03(\x03(\x03" +
		")\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03" +
		")\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x05)\u01FB\n)\x03*\x03*\x03*\x03" +
		"*\x03*\x03*\x03*\x03*\x03*\x03*\x07*\u0207\n*\f*\x0E*\u020A\v*\x03+\x03" +
		"+\x03+\x03+\x05+\u0210\n+\x03,\x03,\x03,\x03-\x03-\x03-\x03-\x03-\x03" +
		"-\x03-\x03-\x03-\x07-\u021E\n-\f-\x0E-\u0221\v-\x03.\x03.\x03.\x03.\x03" +
		".\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03" +
		".\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x05.\u0240\n.\x03" +
		".\x03.\x03.\x03.\x07.\u0246\n.\f.\x0E.\u0249\v.\x03/\x03/\x03/\x03/\x03" +
		"/\x03/\x03/\x03/\x03/\x07/\u0254\n/\f/\x0E/\u0257\v/\x030\x030\x030\x03" +
		"1\x031\x031\x031\x031\x031\x031\x031\x071\u0264\n1\f1\x0E1\u0267\v1\x03" +
		"2\x032\x032\x033\x033\x033\x033\x033\x033\x033\x033\x033\x033\x033\x03" +
		"3\x033\x073\u0279\n3\f3\x0E3\u027C\v3\x034\x034\x034\x034\x034\x034\x03" +
		"4\x034\x034\x034\x034\x034\x034\x034\x034\x034\x034\x034\x034\x034\x03" +
		"4\x034\x034\x054\u0295\n4\x035\x035\x035\x035\x035\x035\x035\x02\x02\x14" +
		"\x04\f\x14\x16\x18\"(48:BHRXZ\\`d6\x02\x02\x04\x02\x06\x02\b\x02\n\x02" +
		"\f\x02\x0E\x02\x10\x02\x12\x02\x14\x02\x16\x02\x18\x02\x1A\x02\x1C\x02" +
		"\x1E\x02 \x02\"\x02$\x02&\x02(\x02*\x02,\x02.\x020\x022\x024\x026\x02" +
		"8\x02:\x02<\x02>\x02@\x02B\x02D\x02F\x02H\x02J\x02L\x02N\x02P\x02R\x02" +
		"T\x02V\x02X\x02Z\x02\\\x02^\x02`\x02b\x02d\x02f\x02h\x02\x02\x02\x02\u02A6" +
		"\x02j\x03\x02\x02\x02\x04n\x03\x02\x02\x02\x06{\x03\x02\x02\x02\b~\x03" +
		"\x02\x02\x02\n\x81\x03\x02\x02\x02\f\x84\x03\x02\x02\x02\x0E\x96\x03\x02" +
		"\x02\x02\x10\x98\x03\x02\x02\x02\x12\xAA\x03\x02\x02\x02\x14\xAC\x03\x02" +
		"\x02\x02\x16\xC0\x03\x02\x02\x02\x18\xCD\x03\x02\x02\x02\x1A\xE4\x03\x02" +
		"\x02\x02\x1C\xE6\x03\x02\x02\x02\x1E\xEA\x03\x02\x02\x02 \xF6\x03\x02" +
		"\x02\x02\"\xF8\x03\x02\x02\x02$\u010C\x03\x02\x02\x02&\u010E\x03\x02\x02" +
		"\x02(\u0113\x03\x02\x02\x02*\u0125\x03\x02\x02\x02,\u0127\x03\x02\x02" +
		"\x02.\u0130\x03\x02\x02\x020\u014C\x03\x02\x02\x022\u015B\x03\x02\x02" +
		"\x024\u015D\x03\x02\x02\x026\u0176\x03\x02\x02\x028\u0178\x03\x02\x02" +
		"\x02:\u0187\x03\x02\x02\x02<\u0198\x03\x02\x02\x02>\u019A\x03\x02\x02" +
		"\x02@\u019D\x03\x02\x02\x02B\u01A3\x03\x02\x02\x02D\u01C1\x03\x02\x02" +
		"\x02F\u01C3\x03\x02\x02\x02H\u01C8\x03\x02\x02\x02J\u01DA\x03\x02\x02" +
		"\x02L\u01DC\x03\x02\x02\x02N\u01DF\x03\x02\x02\x02P\u01FA\x03\x02\x02" +
		"\x02R\u01FC\x03\x02\x02\x02T\u020F\x03\x02\x02\x02V\u0211\x03\x02\x02" +
		"\x02X\u0214\x03\x02\x02\x02Z\u023F\x03\x02\x02\x02\\\u024A\x03\x02\x02" +
		"\x02^\u0258\x03\x02\x02\x02`\u025B\x03\x02\x02\x02b\u0268\x03\x02\x02" +
		"\x02d\u026B\x03\x02\x02\x02f\u0294\x03\x02\x02\x02h\u0296\x03\x02\x02" +
		"\x02jk\x05\x06\x04\x02kl\x07\x02\x02\x03lm\b\x02\x01\x02m\x03\x03\x02" +
		"\x02\x02no\b\x03\x01\x02op\x052\x1A\x02pq\b\x03\x01\x02qx\x03\x02\x02" +
		"\x02rs\f\x03\x02\x02st\x052\x1A\x02tu\b\x03\x01\x02uw\x03\x02\x02\x02" +
		"vr\x03\x02\x02\x02wz\x03\x02\x02\x02xv\x03\x02\x02\x02xy\x03\x02\x02\x02" +
		"y\x05\x03\x02\x02\x02zx\x03\x02\x02\x02{|\x05\x04\x03\x02|}\b\x04\x01" +
		"\x02}\x07\x03\x02\x02\x02~\x7F\x07&\x02\x02\x7F\x80\b\x05\x01\x02\x80" +
		"\t\x03\x02\x02\x02\x81\x82\x05\x12\n\x02\x82\x83\b\x06\x01\x02\x83\v\x03" +
		"\x02\x02\x02\x84\x85\b\x07\x01\x02\x85\x86\x05 \x11\x02\x86\x87\b\x07" +
		"\x01\x02\x87\x8F\x03\x02\x02\x02\x88\x89\f\x03\x02\x02\x89\x8A\x07\x03" +
		"\x02\x02\x8A\x8B\x05 \x11\x02\x8B\x8C\b\x07\x01\x02\x8C\x8E\x03\x02\x02" +
		"\x02\x8D\x88\x03\x02\x02\x02\x8E\x91\x03\x02\x02\x02\x8F\x8D\x03\x02\x02" +
		"\x02\x8F\x90\x03\x02\x02\x02\x90\r\x03\x02\x02\x02\x91\x8F\x03\x02\x02" +
		"\x02\x92\x97\b\b\x01\x02\x93\x94\x05\f\x07\x02\x94\x95\b\b\x01\x02\x95" +
		"\x97\x03\x02\x02\x02\x96\x92\x03\x02\x02\x02\x96\x93\x03\x02\x02\x02\x97" +
		"\x0F\x03\x02\x02\x02\x98\x99\x05\x0E\b\x02\x99\x9A\b\t\x01\x02\x9A\x11" +
		"\x03\x02\x02\x02\x9B\x9C\x05\x16\f\x02\x9C\x9D\x07\x04\x02\x02\x9D\x9E" +
		"\x05\x12\n\x02\x9E\x9F\b\n\x01\x02\x9F\xAB\x03\x02\x02\x02\xA0\xA1\x07" +
		"\x05\x02\x02\xA1\xA2\x05\x10\t\x02\xA2\xA3\x07\x06\x02\x02\xA3\xA4\x07" +
		"\x04\x02\x02\xA4\xA5\x05\x12\n\x02\xA5\xA6\b\n\x01\x02\xA6\xAB\x03\x02" +
		"\x02\x02\xA7\xA8\x05\x18\r\x02\xA8\xA9\b\n\x01\x02\xA9\xAB\x03\x02\x02" +
		"\x02\xAA\x9B\x03\x02\x02\x02\xAA\xA0\x03\x02\x02\x02\xAA\xA7\x03\x02\x02" +
		"\x02\xAB\x13\x03\x02\x02\x02\xAC\xAD\b\v\x01\x02\xAD\xAE\x05\n\x06\x02" +
		"\xAE\xAF\b\v\x01\x02\xAF\xB7\x03\x02\x02\x02\xB0\xB1\f\x03\x02\x02\xB1" +
		"\xB2\x07\x03\x02\x02\xB2\xB3\x05\n\x06\x02\xB3\xB4\b\v\x01\x02\xB4\xB6" +
		"\x03\x02\x02\x02\xB5\xB0\x03\x02\x02\x02\xB6\xB9\x03\x02\x02\x02\xB7\xB5" +
		"\x03\x02\x02\x02\xB7\xB8\x03\x02\x02\x02\xB8\x15\x03\x02\x02\x02\xB9\xB7" +
		"\x03\x02\x02\x02\xBA\xBB\b\f\x01\x02\xBB\xBC\x07&\x02\x02\xBC\xC1\b\f" +
		"\x01\x02\xBD\xBE\x05\x1C\x0F\x02\xBE\xBF\b\f\x01\x02\xBF\xC1\x03\x02\x02" +
		"\x02\xC0\xBA\x03\x02\x02\x02\xC0\xBD\x03\x02\x02\x02\xC1\xCA\x03\x02\x02" +
		"\x02\xC2\xC3\f\x03\x02\x02\xC3\xC4\x07\x07\x02\x02\xC4\xC5\x05\x14\v\x02" +
		"\xC5\xC6\x07\b\x02\x02\xC6\xC7\b\f\x01\x02\xC7\xC9\x03\x02\x02\x02\xC8" +
		"\xC2\x03\x02\x02\x02\xC9\xCC\x03\x02\x02\x02\xCA\xC8\x03\x02\x02\x02\xCA" +
		"\xCB\x03\x02\x02\x02\xCB\x17\x03\x02\x02\x02\xCC\xCA\x03\x02\x02\x02\xCD" +
		"\xCE\b\r\x01\x02\xCE\xCF\x05\x16\f\x02\xCF\xD0\b\r\x01\x02\xD0\xD8\x03" +
		"\x02\x02\x02\xD1\xD2\f\x04\x02\x02\xD2\xD3\x07\t\x02\x02\xD3\xD4\x05\x16" +
		"\f\x02\xD4\xD5\b\r\x01\x02\xD5\xD7\x03\x02\x02\x02\xD6\xD1\x03\x02\x02" +
		"\x02\xD7\xDA\x03\x02\x02\x02\xD8\xD6\x03\x02\x02\x02\xD8\xD9\x03\x02\x02" +
		"\x02\xD9\x19\x03\x02\x02\x02\xDA\xD8\x03\x02\x02\x02\xDB\xDC\x07\x07\x02" +
		"\x02\xDC\xDD\x05\"\x12\x02\xDD\xDE\x07\b\x02\x02\xDE\xDF\x05\n\x06\x02" +
		"\xDF\xE0\b\x0E\x01\x02\xE0\xE5\x03\x02\x02\x02\xE1\xE2\x05\n\x06\x02\xE2" +
		"\xE3\b\x0E\x01\x02\xE3\xE5\x03\x02\x02\x02\xE4\xDB\x03\x02\x02\x02\xE4" +
		"\xE1\x03\x02\x02\x02\xE5\x1B\x03\x02\x02\x02\xE6\xE7\x07\n\x02\x02\xE7" +
		"\xE8\x07&\x02\x02\xE8\xE9\b\x0F\x01\x02\xE9\x1D\x03\x02\x02\x02\xEA\xEB" +
		"\x07\n\x02\x02\xEB\xEC\x07&\x02\x02\xEC\xED\b\x10\x01\x02\xED\x1F\x03" +
		"\x02\x02\x02\xEE\xEF\x07&\x02\x02\xEF\xF0\x07\v\x02\x02\xF0\xF1\x05\n" +
		"\x06\x02\xF1\xF2\b\x11\x01\x02\xF2\xF7\x03\x02\x02\x02\xF3\xF4\x05\n\x06" +
		"\x02\xF4\xF5\b\x11\x01\x02\xF5\xF7\x03\x02\x02\x02\xF6\xEE\x03\x02\x02" +
		"\x02\xF6\xF3\x03\x02\x02\x02\xF7!\x03\x02\x02\x02\xF8\xF9\b\x12\x01\x02" +
		"\xF9\xFA\x05\x1E\x10\x02\xFA\xFB\b\x12\x01\x02\xFB\u0103\x03\x02\x02\x02" +
		"\xFC\xFD\f\x03\x02\x02\xFD\xFE\x07\x03\x02\x02\xFE\xFF\x05\x1E\x10\x02" +
		"\xFF\u0100\b\x12\x01\x02\u0100\u0102\x03\x02\x02\x02\u0101\xFC\x03\x02" +
		"\x02\x02\u0102\u0105\x03\x02\x02\x02\u0103\u0101\x03\x02\x02\x02\u0103" +
		"\u0104\x03\x02\x02\x02\u0104#\x03\x02\x02\x02\u0105\u0103\x03\x02\x02" +
		"\x02\u0106\u0107\x07\x07\x02\x02\u0107\u0108\x05\"\x12\x02\u0108\u0109" +
		"\x07\b\x02\x02\u0109\u010A\b\x13\x01\x02\u010A\u010D\x03\x02\x02\x02\u010B" +
		"\u010D\b\x13\x01\x02\u010C\u0106\x03\x02\x02\x02\u010C\u010B\x03\x02\x02" +
		"\x02\u010D%\x03\x02\x02\x02\u010E\u010F\x07&\x02\x02\u010F\u0110\x07\v" +
		"\x02\x02\u0110\u0111\x05\n\x06\x02\u0111\u0112\b\x14\x01\x02\u0112\'\x03" +
		"\x02\x02\x02\u0113\u0114\b\x15\x01\x02\u0114\u0115\x05&\x14\x02\u0115" +
		"\u0116\b\x15\x01\x02\u0116\u011E\x03\x02\x02\x02\u0117\u0118\f\x03\x02" +
		"\x02\u0118\u0119\x07\x03\x02\x02\u0119\u011A\x05&\x14\x02\u011A\u011B" +
		"\b\x15\x01\x02\u011B\u011D\x03\x02\x02\x02\u011C\u0117\x03\x02\x02\x02" +
		"\u011D\u0120\x03\x02\x02\x02\u011E\u011C\x03\x02\x02\x02\u011E\u011F\x03" +
		"\x02\x02\x02\u011F)\x03\x02\x02\x02\u0120\u011E\x03\x02\x02\x02\u0121" +
		"\u0126\b\x16\x01\x02\u0122\u0123\x05(\x15\x02\u0123\u0124\b\x16\x01\x02" +
		"\u0124\u0126\x03\x02\x02\x02\u0125\u0121\x03\x02\x02\x02\u0125\u0122\x03" +
		"\x02\x02\x02\u0126+\x03\x02\x02\x02\u0127\u0128\x05*\x16\x02\u0128\u0129" +
		"\b\x17\x01\x02\u0129-\x03\x02\x02\x02\u012A\u012B\x07\x05\x02\x02\u012B" +
		"\u012C\x05,\x17\x02\u012C\u012D\x07\x06\x02\x02\u012D\u012E\b\x18\x01" +
		"\x02\u012E\u0131\x03\x02\x02\x02\u012F\u0131\b\x18\x01\x02\u0130\u012A" +
		"\x03\x02\x02\x02\u0130\u012F\x03\x02\x02\x02\u0131/\x03\x02\x02\x02\u0132" +
		"\u0133\x07\f\x02\x02\u0133\u0134\x07\r\x02\x02\u0134\u0135\x05\b\x05\x02" +
		"\u0135\u0136\x07\v\x02\x02\u0136\u0137\x05\x1A\x0E\x02\u0137\u0138\b\x19" +
		"\x01\x02\u0138\u014D\x03\x02\x02\x02\u0139\u013A\x07\x0E\x02\x02\u013A" +
		"\u013B\x05\b\x05\x02\u013B\u013C\x07\v\x02\x02\u013C\u013D\x05\n\x06\x02" +
		"\u013D\u013E\b\x19\x01\x02\u013E\u014D\x03\x02\x02\x02\u013F\u0140\x07" +
		"\f\x02\x02\u0140\u0141\x07\x0F\x02\x02\u0141\u0142\x05\b\x05\x02\u0142" +
		"\u0143\x05$\x13\x02\u0143\u0144\x05.\x18\x02\u0144\u0145\b\x19\x01\x02" +
		"\u0145\u014D\x03\x02\x02\x02\u0146\u0147\x07\x0F\x02\x02\u0147\u0148\x05" +
		"\b\x05\x02\u0148\u0149\x05$\x13\x02\u0149\u014A\x05.\x18\x02\u014A\u014B" +
		"\b\x19\x01\x02\u014B\u014D\x03\x02\x02\x02\u014C\u0132\x03\x02\x02\x02" +
		"\u014C\u0139\x03\x02\x02\x02\u014C\u013F\x03\x02\x02\x02\u014C\u0146\x03" +
		"\x02\x02\x02\u014D1\x03\x02\x02\x02\u014E\u014F\x056\x1C\x02\u014F\u0150" +
		"\b\x1A\x01\x02\u0150\u015C\x03\x02\x02\x02\u0151\u0152\x050\x19\x02\u0152" +
		"\u0153\b\x1A\x01\x02\u0153\u015C\x03\x02\x02\x02\u0154\u0155\x05h5\x02" +
		"\u0155\u0156\b\x1A\x01\x02\u0156\u015C\x03\x02\x02\x02\u0157\u0158\x07" +
		"\x10\x02\x02\u0158\u0159\x054\x1B\x02\u0159\u015A\b\x1A\x01\x02\u015A" +
		"\u015C\x03\x02\x02\x02\u015B\u014E\x03\x02\x02\x02\u015B\u0151\x03\x02" +
		"\x02\x02\u015B\u0154\x03\x02\x02\x02\u015B\u0157\x03\x02\x02\x02\u015C" +
		"3\x03\x02\x02\x02\u015D\u015E\b\x1B\x01\x02\u015E\u015F\x05\b\x05\x02" +
		"\u015F\u0160\b\x1B\x01\x02\u0160\u0168\x03\x02\x02\x02\u0161\u0162\f\x03" +
		"\x02\x02\u0162\u0163\x07\x03\x02\x02\u0163\u0164\x05\b\x05\x02\u0164\u0165" +
		"\b\x1B\x01\x02\u0165\u0167\x03\x02\x02\x02\u0166\u0161\x03\x02\x02\x02" +
		"\u0167\u016A\x03\x02\x02\x02\u0168\u0166\x03\x02\x02\x02\u0168\u0169\x03" +
		"\x02\x02\x02\u01695\x03\x02\x02\x02\u016A\u0168\x03\x02\x02\x02\u016B" +
		"\u016C\x07&\x02\x02\u016C\u016D\x07\x05\x02\x02\u016D\u016E\x054\x1B\x02" +
		"\u016E\u016F\x07\x06\x02\x02\u016F\u0170\x058\x1D\x02\u0170\u0171\b\x1C" +
		"\x01\x02\u0171\u0177\x03\x02\x02\x02\u0172\u0173\x07&\x02\x02\u0173\u0174" +
		"\x058\x1D\x02\u0174\u0175\b\x1C\x01\x02\u0175\u0177\x03\x02\x02\x02\u0176" +
		"\u016B\x03\x02\x02\x02\u0176\u0172\x03\x02\x02\x02\u01777\x03\x02\x02" +
		"\x02\u0178\u0179\b\x1D\x01\x02\u0179\u017A\x07\v\x02\x02\u017A\u017B\x05" +
		"@!\x02\u017B\u017C\b\x1D\x01\x02\u017C\u0184\x03\x02\x02\x02\u017D\u017E" +
		"\f\x03\x02\x02\u017E\u017F\x07\x11\x02\x02\u017F\u0180\x05@!\x02\u0180" +
		"\u0181\b\x1D\x01\x02\u0181\u0183\x03\x02\x02\x02\u0182\u017D\x03\x02\x02" +
		"\x02\u0183\u0186\x03\x02\x02\x02\u0184\u0182\x03\x02\x02\x02\u0184\u0185" +
		"\x03\x02\x02\x02\u01859\x03\x02\x02\x02\u0186\u0184\x03\x02\x02\x02\u0187" +
		"\u0188\b\x1E\x01\x02\u0188\u0189\x05D#\x02\u0189\u018A\b\x1E\x01\x02\u018A" +
		"\u0191\x03\x02\x02\x02\u018B\u018C\f\x03\x02\x02\u018C\u018D\x05D#\x02" +
		"\u018D\u018E\b\x1E\x01\x02\u018E\u0190\x03\x02\x02\x02\u018F\u018B\x03" +
		"\x02\x02\x02\u0190\u0193\x03\x02\x02\x02\u0191\u018F\x03\x02\x02\x02\u0191" +
		"\u0192\x03\x02\x02\x02\u0192;\x03\x02\x02\x02\u0193\u0191\x03\x02\x02" +
		"\x02\u0194\u0199\b\x1F\x01\x02\u0195\u0196\x05:\x1E\x02\u0196\u0197\b" +
		"\x1F\x01\x02\u0197\u0199\x03\x02\x02\x02\u0198\u0194\x03\x02\x02\x02\u0198" +
		"\u0195\x03\x02\x02\x02\u0199=\x03\x02\x02\x02\u019A\u019B\x05<\x1F\x02" +
		"\u019B\u019C\b \x01\x02\u019C?\x03\x02\x02\x02\u019D\u019E\x05> \x02\u019E" +
		"\u019F\x07\x12\x02\x02\u019F\u01A0\x05P)\x02\u01A0\u01A1\x07\x13\x02\x02" +
		"\u01A1\u01A2\b!\x01\x02\u01A2A\x03\x02\x02\x02\u01A3\u01A4\b\"\x01\x02" +
		"\u01A4\u01A5\x05D#\x02\u01A5\u01A6\b\"\x01\x02\u01A6\u01AE\x03\x02\x02" +
		"\x02\u01A7\u01A8\f\x03\x02\x02\u01A8\u01A9\x07\x03\x02\x02\u01A9\u01AA" +
		"\x05D#\x02\u01AA\u01AB\b\"\x01\x02\u01AB\u01AD\x03\x02\x02\x02\u01AC\u01A7" +
		"\x03\x02\x02\x02\u01AD\u01B0\x03\x02\x02\x02\u01AE\u01AC\x03\x02\x02\x02" +
		"\u01AE\u01AF\x03\x02\x02\x02\u01AFC\x03\x02\x02\x02\u01B0\u01AE\x03\x02" +
		"\x02\x02\u01B1\u01B2\x07\x07\x02\x02\u01B2\u01B3\x05\b\x05\x02\u01B3\u01B4" +
		"\x07\b\x02\x02\u01B4\u01B5\b#\x01\x02\u01B5\u01C2\x03\x02\x02\x02\u01B6" +
		"\u01B7\x07*\x02\x02\u01B7\u01C2\b#\x01\x02\u01B8\u01B9\x05\b\x05\x02\u01B9" +
		"\u01BA\b#\x01\x02\u01BA\u01C2\x03\x02\x02\x02\u01BB\u01BC\x07&\x02\x02" +
		"\u01BC\u01BD\x07\x05\x02\x02\u01BD\u01BE\x05B\"\x02\u01BE\u01BF\x07\x06" +
		"\x02\x02\u01BF\u01C0\b#\x01\x02\u01C0\u01C2\x03\x02\x02\x02\u01C1\u01B1" +
		"\x03\x02\x02\x02\u01C1\u01B6\x03\x02\x02\x02\u01C1\u01B8\x03\x02\x02\x02" +
		"\u01C1\u01BB\x03\x02\x02\x02\u01C2E\x03\x02\x02\x02\u01C3\u01C4\x05\b" +
		"\x05\x02\u01C4\u01C5\x07\v\x02\x02\u01C5\u01C6\x05\n\x06\x02\u01C6\u01C7" +
		"\b$\x01\x02\u01C7G\x03\x02\x02\x02\u01C8\u01C9\b%\x01\x02\u01C9\u01CA" +
		"\x05F$\x02\u01CA\u01CB\b%\x01\x02\u01CB\u01D3\x03\x02\x02\x02\u01CC\u01CD" +
		"\f\x03\x02\x02\u01CD\u01CE\x07\x03\x02\x02\u01CE\u01CF\x05F$\x02\u01CF" +
		"\u01D0\b%\x01\x02\u01D0\u01D2\x03\x02\x02\x02\u01D1\u01CC\x03\x02\x02" +
		"\x02\u01D2\u01D5\x03\x02\x02\x02\u01D3\u01D1\x03\x02\x02\x02\u01D3\u01D4" +
		"\x03\x02\x02\x02\u01D4I\x03\x02\x02\x02\u01D5\u01D3\x03\x02\x02\x02\u01D6" +
		"\u01DB\b&\x01\x02\u01D7\u01D8\x05H%\x02\u01D8\u01D9\b&\x01\x02\u01D9\u01DB" +
		"\x03\x02\x02\x02\u01DA\u01D6\x03\x02\x02\x02\u01DA\u01D7\x03\x02\x02\x02" +
		"\u01DBK\x03\x02\x02\x02\u01DC\u01DD\x05J&\x02\u01DD\u01DE\b\'\x01\x02" +
		"\u01DEM\x03\x02\x02\x02\u01DF\u01E0\x07\x05\x02\x02\u01E0\u01E1\x05L\'" +
		"\x02\u01E1\u01E2\x07\x06\x02\x02\u01E2\u01E3\b(\x01\x02\u01E3O\x03\x02" +
		"\x02\x02\u01E4\u01E5\x07\x14\x02\x02\u01E5\u01E6\x05\b\x05\x02\u01E6\u01E7" +
		"\x07\x15\x02\x02\u01E7\u01E8\x05P)\x02\u01E8\u01E9\x07\x16\x02\x02\u01E9" +
		"\u01EA\x05P)\x02\u01EA\u01EB\b)\x01\x02\u01EB\u01FB\x03\x02\x02\x02\u01EC" +
		"\u01ED\x07\x17\x02\x02\u01ED\u01EE\x05N(\x02\u01EE\u01EF\x07\x04\x02\x02" +
		"\u01EF\u01F0\x05P)\x02\u01F0\u01F1\b)\x01\x02\u01F1\u01FB\x03\x02\x02" +
		"\x02\u01F2\u01F3\x05R*\x02\u01F3\u01F4\b)\x01\x02\u01F4\u01FB\x03\x02" +
		"\x02\x02\u01F5\u01F6\x05R*\x02\u01F6\u01F7\x07\x18\x02\x02\u01F7\u01F8" +
		"\x05P)\x02\u01F8\u01F9\b)\x01\x02\u01F9\u01FB\x03\x02\x02\x02\u01FA\u01E4" +
		"\x03\x02\x02\x02\u01FA\u01EC\x03\x02\x02\x02\u01FA\u01F2\x03\x02\x02\x02" +
		"\u01FA\u01F5\x03\x02\x02\x02\u01FBQ\x03\x02\x02\x02\u01FC\u01FD\b*\x01" +
		"\x02\u01FD\u01FE\x05Z.\x02\u01FE\u01FF\b*\x01\x02\u01FF\u0208\x03\x02" +
		"\x02\x02\u0200\u0201\f\x04\x02\x02\u0201\u0202\x07\x05\x02\x02\u0202\u0203" +
		"\x05V,\x02\u0203\u0204\x07\x06\x02\x02\u0204\u0205\b*\x01\x02\u0205\u0207" +
		"\x03\x02\x02\x02\u0206\u0200\x03\x02\x02\x02\u0207\u020A\x03\x02\x02\x02" +
		"\u0208\u0206\x03\x02\x02\x02\u0208\u0209\x03\x02\x02\x02\u0209S\x03\x02" +
		"\x02\x02\u020A\u0208\x03\x02\x02\x02\u020B\u0210\b+\x01\x02\u020C\u020D" +
		"\x05X-\x02\u020D\u020E\b+\x01\x02\u020E\u0210\x03\x02\x02\x02\u020F\u020B" +
		"\x03\x02\x02\x02\u020F\u020C\x03\x02\x02\x02\u0210U\x03\x02\x02\x02\u0211" +
		"\u0212\x05T+\x02\u0212\u0213\b,\x01\x02\u0213W\x03\x02\x02\x02\u0214\u0215" +
		"\b-\x01\x02\u0215\u0216\x05P)\x02\u0216\u0217\b-\x01\x02\u0217\u021F\x03" +
		"\x02\x02\x02\u0218\u0219\f\x03\x02\x02\u0219\u021A\x07\x03\x02\x02\u021A" +
		"\u021B\x05P)\x02\u021B\u021C\b-\x01\x02\u021C\u021E\x03\x02\x02\x02\u021D" +
		"\u0218\x03\x02\x02\x02\u021E\u0221\x03\x02\x02\x02\u021F\u021D\x03\x02" +
		"\x02\x02\u021F\u0220\x03\x02\x02\x02\u0220Y\x03\x02\x02\x02\u0221\u021F" +
		"\x03\x02\x02\x02\u0222\u0223\b.\x01\x02\u0223\u0224\x07\'\x02\x02\u0224" +
		"\u0240\b.\x01\x02\u0225\u0226\x07)\x02\x02\u0226\u0240\b.\x01\x02\u0227" +
		"\u0228\x07*\x02\x02\u0228\u0240\b.\x01\x02\u0229\u022A\x07\x19\x02\x02" +
		"\u022A\u022B\x07\'\x02\x02\u022B\u0240\b.\x01\x02\u022C\u022D\x07\x1A" +
		"\x02\x02\u022D\u022E\x05V,\x02\u022E\u022F\x07\x1B\x02\x02\u022F\u0230" +
		"\b.\x01\x02\u0230\u0240\x03\x02\x02\x02\u0231\u0232\x07\x05\x02\x02\u0232" +
		"\u0233\x07\x06\x02\x02\u0233\u0240\b.\x01\x02\u0234\u0235\x07\x05\x02" +
		"\x02\u0235\u0236\x05X-\x02\u0236\u0237\x07\x06\x02\x02\u0237\u0238\b." +
		"\x01\x02\u0238\u0240\x03\x02\x02\x02\u0239\u023A\x07&\x02\x02\u023A\u0240" +
		"\b.\x01\x02\u023B\u023C\x07\x1D\x02\x02\u023C\u0240\b.\x01\x02\u023D\u023E" +
		"\x07\x1E\x02\x02\u023E\u0240\b.\x01\x02\u023F\u0222\x03\x02\x02\x02\u023F" +
		"\u0225\x03\x02\x02\x02\u023F\u0227\x03\x02\x02\x02\u023F\u0229\x03\x02" +
		"\x02\x02\u023F\u022C\x03\x02\x02\x02\u023F\u0231\x03\x02\x02\x02\u023F" +
		"\u0234\x03\x02\x02\x02\u023F\u0239\x03\x02\x02\x02\u023F\u023B\x03\x02" +
		"\x02\x02\u023F\u023D\x03\x02\x02\x02\u0240\u0247\x03\x02\x02\x02\u0241" +
		"\u0242\f\x05\x02\x02\u0242\u0243\x07\x1C\x02\x02\u0243\u0244\x07&\x02" +
		"\x02\u0244\u0246\b.\x01\x02\u0245\u0241\x03\x02\x02\x02\u0246\u0249\x03" +
		"\x02\x02\x02\u0247\u0245\x03\x02\x02\x02\u0247\u0248";
	private static readonly _serializedATNSegment1: string =
		"\x03\x02\x02\x02\u0248[\x03\x02\x02\x02\u0249\u0247\x03\x02\x02\x02\u024A" +
		"\u024B\b/\x01\x02\u024B\u024C\x05b2\x02\u024C\u024D\b/\x01\x02\u024D\u0255" +
		"\x03\x02\x02\x02\u024E\u024F\f\x03\x02\x02\u024F\u0250\x07\x11\x02\x02" +
		"\u0250\u0251\x05b2\x02\u0251\u0252\b/\x01\x02\u0252\u0254\x03\x02\x02" +
		"\x02\u0253\u024E\x03\x02\x02\x02\u0254\u0257\x03\x02\x02\x02\u0255\u0253" +
		"\x03\x02\x02\x02\u0255\u0256\x03\x02\x02\x02\u0256]\x03\x02\x02\x02\u0257" +
		"\u0255\x03\x02\x02\x02\u0258\u0259\x05\\/\x02\u0259\u025A\b0\x01\x02\u025A" +
		"_\x03\x02\x02\x02\u025B\u025C\b1\x01\x02\u025C\u025D\x05d3\x02\u025D\u025E" +
		"\b1\x01\x02\u025E\u0265\x03\x02\x02\x02\u025F\u0260\f\x03\x02\x02\u0260" +
		"\u0261\x05d3\x02\u0261\u0262\b1\x01\x02\u0262\u0264\x03\x02\x02\x02\u0263" +
		"\u025F\x03\x02\x02\x02\u0264\u0267\x03\x02\x02\x02\u0265\u0263\x03\x02" +
		"\x02\x02\u0265\u0266\x03\x02\x02\x02\u0266a\x03\x02\x02\x02\u0267\u0265" +
		"\x03\x02\x02\x02\u0268\u0269\x05`1\x02\u0269\u026A\b2\x01\x02\u026Ac\x03" +
		"\x02\x02\x02\u026B\u026C\b3\x01\x02\u026C\u026D\x05f4\x02\u026D\u026E" +
		"\b3\x01\x02\u026E\u027A\x03\x02\x02\x02\u026F\u0270\f\x06\x02\x02\u0270" +
		"\u0271\x07\x1F\x02\x02\u0271\u0279\b3\x01\x02\u0272\u0273\f\x05\x02\x02" +
		"\u0273\u0274\x07\t\x02\x02\u0274\u0279\b3\x01\x02\u0275\u0276\f\x04\x02" +
		"\x02\u0276\u0277\x07 \x02\x02\u0277\u0279\b3\x01\x02\u0278\u026F\x03\x02" +
		"\x02\x02\u0278\u0272\x03\x02\x02\x02\u0278\u0275\x03\x02\x02\x02\u0279" +
		"\u027C\x03\x02\x02\x02\u027A\u0278\x03\x02\x02\x02\u027A\u027B\x03\x02" +
		"\x02\x02\u027Be\x03\x02\x02\x02\u027C\u027A\x03\x02\x02\x02\u027D\u027E" +
		"\x07*\x02\x02\u027E\u0295\b4\x01\x02\u027F\u0280\x07!\x02\x02\u0280\u0281" +
		"\x05f4\x02\u0281\u0282\b4\x01\x02\u0282\u0295\x03\x02\x02\x02\u0283\u0284" +
		"\x07\x05\x02\x02\u0284\u0285\x05^0\x02\u0285\u0286\x07\x06\x02\x02\u0286" +
		"\u0287\b4\x01\x02\u0287\u0295\x03\x02\x02\x02\u0288\u0289\x07\"\x02\x02" +
		"\u0289\u0295\b4\x01\x02\u028A\u028B\x07%\x02\x02\u028B\u0295\b4\x01\x02" +
		"\u028C\u028D\x07$\x02\x02\u028D\u0295\b4\x01\x02\u028E\u028F\x07#\x02" +
		"\x02\u028F\u0295\b4\x01\x02\u0290\u0291\x07\x1C\x02\x02\u0291\u0295\b" +
		"4\x01\x02\u0292\u0293\x07&\x02\x02\u0293\u0295\b4\x01\x02\u0294\u027D" +
		"\x03\x02\x02\x02\u0294\u027F\x03\x02\x02\x02\u0294\u0283\x03\x02\x02\x02" +
		"\u0294\u0288\x03\x02\x02\x02\u0294\u028A\x03\x02\x02\x02\u0294\u028C\x03" +
		"\x02\x02\x02\u0294\u028E\x03\x02\x02\x02\u0294\u0290\x03\x02\x02\x02\u0294" +
		"\u0292\x03\x02\x02\x02\u0295g\x03\x02\x02\x02\u0296\u0297\x07&\x02\x02" +
		"\u0297\u0298\x07\x15\x02\x02\u0298\u0299\x05^0\x02\u0299\u029A\x07\x18" +
		"\x02\x02\u029A\u029B\b5\x01\x02\u029Bi\x03\x02\x02\x02\'x\x8F\x96\xAA" +
		"\xB7\xC0\xCA\xD8\xE4\xF6\u0103\u010C\u011E\u0125\u0130\u014C\u015B\u0168" +
		"\u0176\u0184\u0191\u0198\u01AE\u01C1\u01D3\u01DA\u01FA\u0208\u020F\u021F" +
		"\u023F\u0247\u0255\u0265\u0278\u027A\u0294";
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
	public _list_o_toplevel_p__1__1!: List_o_toplevel_p_Context;
	public _list_o_toplevel_p__0__1!: ToplevelContext;
	public _list_o_toplevel_p__1__2!: ToplevelContext;
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
	public _slist_o__i__s__i__s_param_type_p__1__1!: Slist_o__i__s__i__s_param_type_p_Context;
	public _slist_o__i__s__i__s_param_type_p__0__1!: Param_typeContext;
	public _slist_o__i__s__i__s_param_type_p__1__3!: Param_typeContext;
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
	public _empty_o_slist_o__i__s__i__s_param_type_p__p__1__1!: Slist_o__i__s__i__s_param_type_p_Context;
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
	public _arrow_typ_1__2!: Eslist_o__i__s__i__s_param_type_p_Context;
	public _arrow_typ_1__5!: Arrow_typContext;
	public _arrow_typ_2__1!: Type_productContext;
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
	public _slist_o__i__s__i__s_typ_p__1__1!: Slist_o__i__s__i__s_typ_p_Context;
	public _slist_o__i__s__i__s_typ_p__0__1!: TypContext;
	public _slist_o__i__s__i__s_typ_p__1__3!: TypContext;
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
	public _typ2_1__1!: TvarContext;
	public _typ2_2__3!: Slist_o__i__s__i__s_typ_p_Context;
	public CNAMEPLUS(): TerminalNode | undefined { return this.tryGetToken(TypedBNFParser.CNAMEPLUS, 0); }
	public tvar(): TvarContext | undefined {
		return this.tryGetRuleContext(0, TvarContext);
	}
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
	public _type_product_1__1!: Typ2Context;
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
	public _top_typ_1__1!: TypContext;
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


export class TvarContext extends ParserRuleContext {
	public result: monot;
	public _tvar_0__2!: Token;
	public CNAMEPLUS(): TerminalNode { return this.getToken(TypedBNFParser.CNAMEPLUS, 0); }
	constructor(parent: ParserRuleContext | undefined, invokingState: number) {
		super(parent, invokingState);
	}
	// @Override
	public get ruleIndex(): number { return TypedBNFParser.RULE_tvar; }
	// @Override
	public enterRule(listener: TypedBNFListener): void {
		if (listener.enterTvar) {
			listener.enterTvar(this);
		}
	}
	// @Override
	public exitRule(listener: TypedBNFListener): void {
		if (listener.exitTvar) {
			listener.exitTvar(this);
		}
	}
}


export class Tvar_strContext extends ParserRuleContext {
	public result: string;
	public _tvar_str_0__2!: Token;
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
	public _param_type_1__1!: TypContext;
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
	public _slist_o__i__s__i__s_tvar_str_p__1__1!: Slist_o__i__s__i__s_tvar_str_p_Context;
	public _slist_o__i__s__i__s_tvar_str_p__0__1!: Tvar_strContext;
	public _slist_o__i__s__i__s_tvar_str_p__1__3!: Tvar_strContext;
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
	public _slist_o__i__s__i__s_field_ann_p__1__1!: Slist_o__i__s__i__s_field_ann_p_Context;
	public _slist_o__i__s__i__s_field_ann_p__0__1!: Field_annContext;
	public _slist_o__i__s__i__s_field_ann_p__1__3!: Field_annContext;
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
	public _empty_o_slist_o__i__s__i__s_field_ann_p__p__1__1!: Slist_o__i__s__i__s_field_ann_p_Context;
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
	public _decl_1__1!: Token;
	public _decl_1__2!: IdentstrContext;
	public _decl_1__4!: TypContext;
	public _decl_2__1!: Token;
	public _decl_2__3!: IdentstrContext;
	public _decl_2__4!: Type_paramsContext;
	public _decl_2__5!: Field_annsContext;
	public _decl_3__1!: Token;
	public _decl_3__2!: IdentstrContext;
	public _decl_3__3!: Type_paramsContext;
	public _decl_3__4!: Field_annsContext;
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
	public _toplevel_1__1!: DeclContext;
	public _toplevel_2__1!: LexerdefContext;
	public _toplevel_3__1!: Token;
	public _toplevel_3__2!: Slist_o__i__s__i__s_identstr_p_Context;
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
	public _slist_o__i__s__i__s_identstr_p__1__1!: Slist_o__i__s__i__s_identstr_p_Context;
	public _slist_o__i__s__i__s_identstr_p__0__1!: IdentstrContext;
	public _slist_o__i__s__i__s_identstr_p__1__3!: IdentstrContext;
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
	public _def_1__1!: Token;
	public _def_1__2!: ProductionsContext;
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
	public _productions_1__1!: ProductionsContext;
	public _productions_0__1!: Token;
	public _productions_0__2!: ProductionContext;
	public _productions_1__2!: Token;
	public _productions_1__3!: ProductionContext;
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
	public _list_o_psym_p__1__1!: List_o_psym_p_Context;
	public _list_o_psym_p__0__1!: PsymContext;
	public _list_o_psym_p__1__2!: PsymContext;
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
	public _empty_o_list_o_psym_p__p__1__1!: List_o_psym_p_Context;
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
	public _slist_o__i__s__i__s_psym_p__1__1!: Slist_o__i__s__i__s_psym_p_Context;
	public _slist_o__i__s__i__s_psym_p__0__1!: PsymContext;
	public _slist_o__i__s__i__s_psym_p__1__3!: PsymContext;
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
	public _psym_1__1!: Token;
	public _psym_2__1!: IdentstrContext;
	public _psym_3__1!: Token;
	public _psym_3__3!: Slist_o__i__s__i__s_psym_p_Context;
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
	public _slist_o__i__s__i__s_ann_p__1__1!: Slist_o__i__s__i__s_ann_p_Context;
	public _slist_o__i__s__i__s_ann_p__0__1!: AnnContext;
	public _slist_o__i__s__i__s_ann_p__1__3!: AnnContext;
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
	public _empty_o_slist_o__i__s__i__s_ann_p__p__1__1!: Slist_o__i__s__i__s_ann_p_Context;
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
	public _expr_1__1!: Token;
	public _expr_1__2!: Func_parametersContext;
	public _expr_1__4!: ExprContext;
	public _expr_2__1!: CallContext;
	public _expr_3__1!: CallContext;
	public _expr_3__3!: ExprContext;
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
	public _call_1__1!: AtomexpContext;
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
	public _empty_o_slist_o__i__s__i__s_expr_p__p__1__1!: Slist_o__i__s__i__s_expr_p_Context;
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
	public _slist_o__i__s__i__s_expr_p__1__1!: Slist_o__i__s__i__s_expr_p_Context;
	public _slist_o__i__s__i__s_expr_p__0__1!: ExprContext;
	public _slist_o__i__s__i__s_expr_p__1__3!: ExprContext;
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
	public _atomexp_8__1!: AtomexpContext;
	public _atomexp_0__1!: Token;
	public _atomexp_1__1!: Token;
	public _atomexp_2__1!: Token;
	public _atomexp_3__1!: Token;
	public _atomexp_3__2!: Token;
	public _atomexp_4__1!: Token;
	public _atomexp_4__2!: Eslist_o__i__s__i__s_expr_p_Context;
	public _atomexp_5__1!: Token;
	public _atomexp_6__1!: Token;
	public _atomexp_6__2!: Slist_o__i__s__i__s_expr_p_Context;
	public _atomexp_7__1!: Token;
	public _atomexp_9__1!: Token;
	public _atomexp_10__1!: Token;
	public _atomexp_8__3!: Token;
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
	public _slist_o__i__u__i__s_lexer_and_p__1__1!: Slist_o__i__u__i__s_lexer_and_p_Context;
	public _slist_o__i__u__i__s_lexer_and_p__0__1!: Lexer_andContext;
	public _slist_o__i__u__i__s_lexer_and_p__1__3!: Lexer_andContext;
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
	public _list_o_lexer_atomexpr_p__1__1!: List_o_lexer_atomexpr_p_Context;
	public _list_o_lexer_atomexpr_p__0__1!: Lexer_atomexprContext;
	public _list_o_lexer_atomexpr_p__1__2!: Lexer_atomexprContext;
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
	public _lexer_atomexpr_1__1!: Lexer_atomexprContext;
	public _lexer_atomexpr_2__1!: Lexer_atomexprContext;
	public _lexer_atomexpr_3__1!: Lexer_atomContext;
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
	public _lexer_atom_1__2!: Lexer_atomContext;
	public _lexer_atom_2__2!: Lexer__y_Context;
	public _lexer_atom_4__1!: Token;
	public _lexer_atom_5__1!: Token;
	public _lexer_atom_8__1!: Token;
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


