"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.TypedBNFParser = exports.Type_productContext = exports.Type_paramsContext = exports.TypContext = exports.Typ2Context = exports.Tvar_strContext = exports.TvarContext = exports.ToplevelContext = exports.Top_typContext = exports.Start__y_Context = exports.StartContext = exports.Slist_o__i__u__i__s_lexer_and_p_Context = exports.Slist_o__i__s__i__s_typ_p_Context = exports.Slist_o__i__s__i__s_tvar_str_p_Context = exports.Slist_o__i__s__i__s_psym_p_Context = exports.Slist_o__i__s__i__s_param_type_p_Context = exports.Slist_o__i__s__i__s_identstr_p_Context = exports.Slist_o__i__s__i__s_field_ann_p_Context = exports.Slist_o__i__s__i__s_expr_p_Context = exports.Slist_o__i__s__i__s_ann_p_Context = exports.PsymContext = exports.ProductionsContext = exports.ProductionContext = exports.Param_typeContext = exports.List_o_toplevel_p_Context = exports.List_o_psym_p_Context = exports.List_o_lexer_atomexpr_p_Context = exports.LexerdefContext = exports.Lexer_atomexprContext = exports.Lexer_atomContext = exports.Lexer_andContext = exports.Lexer__y_Context = exports.IdentstrContext = exports.Func_parametersContext = exports.Field_annsContext = exports.Field_annContext = exports.ExprContext = exports.Eslist_o__i__s__i__s_param_type_p_Context = exports.Eslist_o__i__s__i__s_field_ann_p_Context = exports.Eslist_o__i__s__i__s_expr_p_Context = exports.Eslist_o__i__s__i__s_ann_p_Context = exports.Empty_o_slist_o__i__s__i__s_param_type_p__p_Context = exports.Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context = exports.Empty_o_slist_o__i__s__i__s_expr_p__p_Context = exports.Empty_o_slist_o__i__s__i__s_ann_p__p_Context = exports.Empty_o_list_o_psym_p__p_Context = exports.Elist_o_psym_p_Context = exports.DefContext = exports.DeclContext = exports.CallContext = exports.AtomexpContext = exports.Arrow_typContext = exports.AnnContext = void 0;

var _TypedBNF_require = require("./TypedBNF_require");

var _ATN = require("antlr4ts/atn/ATN");

var _ATNDeserializer = require("antlr4ts/atn/ATNDeserializer");

var _FailedPredicateException = require("antlr4ts/FailedPredicateException");

var _NoViableAltException = require("antlr4ts/NoViableAltException");

var _Parser = require("antlr4ts/Parser");

var _ParserRuleContext = require("antlr4ts/ParserRuleContext");

var _ParserATNSimulator = require("antlr4ts/atn/ParserATNSimulator");

var _RecognitionException = require("antlr4ts/RecognitionException");

var _VocabularyImpl = require("antlr4ts/VocabularyImpl");

var Utils = _interopRequireWildcard(require("antlr4ts/misc/Utils"));

function _getRequireWildcardCache(nodeInterop) { if (typeof WeakMap !== "function") return null; var cacheBabelInterop = new WeakMap(); var cacheNodeInterop = new WeakMap(); return (_getRequireWildcardCache = function (nodeInterop) { return nodeInterop ? cacheNodeInterop : cacheBabelInterop; })(nodeInterop); }

function _interopRequireWildcard(obj, nodeInterop) { if (!nodeInterop && obj && obj.__esModule) { return obj; } if (obj === null || typeof obj !== "object" && typeof obj !== "function") { return { default: obj }; } var cache = _getRequireWildcardCache(nodeInterop); if (cache && cache.has(obj)) { return cache.get(obj); } var newObj = {}; var hasPropertyDescriptor = Object.defineProperty && Object.getOwnPropertyDescriptor; for (var key in obj) { if (key !== "default" && Object.prototype.hasOwnProperty.call(obj, key)) { var desc = hasPropertyDescriptor ? Object.getOwnPropertyDescriptor(obj, key) : null; if (desc && (desc.get || desc.set)) { Object.defineProperty(newObj, key, desc); } else { newObj[key] = obj[key]; } } } newObj.default = obj; if (cache) { cache.set(obj, newObj); } return newObj; }

// Generated from ./tbnf-js/src/TypedBNF.g4 by ANTLR 4.9.0-SNAPSHOT
class TypedBNFParser extends _Parser.Parser {
  constructor(input) {
    super(input);
    this._interp = new _ParserATNSimulator.ParserATNSimulator(TypedBNFParser._ATN, this);
  } // @Override
  // @NotNull


  get vocabulary() {
    return TypedBNFParser.VOCABULARY;
  } // tslint:enable:no-trailing-whitespace
  // @Override


  get grammarFileName() {
    return "TypedBNF.g4";
  } // @Override


  get ruleNames() {
    return TypedBNFParser.ruleNames;
  } // @Override


  get serializedATN() {
    return TypedBNFParser._serializedATN;
  }

  createFailedPredicateException(predicate, message) {
    return new _FailedPredicateException.FailedPredicateException(this, predicate, message);
  } // @RuleVersion(0)


  start() {
    let _localctx = new StartContext(this._ctx, this.state);

    this.enterRule(_localctx, 0, TypedBNFParser.RULE_start);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 104;
        _localctx._v = this.start__y_();
        this.state = 105;
        this.match(TypedBNFParser.EOF);
        _localctx.result = _localctx._v.result;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  list_o_toplevel_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new List_o_toplevel_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 2;
    this.enterRecursionRule(_localctx, 2, TypedBNFParser.RULE_list_o_toplevel_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 109;
          _localctx._list_o_toplevel_p__0__1 = this.toplevel();
          _localctx.result = [_localctx._list_o_toplevel_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 118;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 0, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 113;
                _localctx._list_o_toplevel_p__1__2 = this.toplevel();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._list_o_toplevel_p__1__1.result, _localctx._list_o_toplevel_p__1__2.result);
              }
            }
          }

          this.state = 120;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 0, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  start__y_() {
    let _localctx = new Start__y_Context(this._ctx, this.state);

    this.enterRule(_localctx, 4, TypedBNFParser.RULE_start__y_);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 121;
        _localctx._start__y__0__1 = this.list_o_toplevel_p_(0);
        _localctx.result = _localctx._start__y__0__1.result;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  identstr() {
    let _localctx = new IdentstrContext(this._ctx, this.state);

    this.enterRule(_localctx, 6, TypedBNFParser.RULE_identstr);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 124;
        _localctx._identstr_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
        _localctx.result = (0, _TypedBNF_require.str)(_localctx._identstr_0__1);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  typ() {
    let _localctx = new TypContext(this._ctx, this.state);

    this.enterRule(_localctx, 8, TypedBNFParser.RULE_typ);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 127;
        _localctx._typ_0__1 = this.arrow_typ();
        _localctx.result = _localctx._typ_0__1.result;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  slist_o__i__s__i__s_param_type_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Slist_o__i__s__i__s_param_type_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 10;
    this.enterRecursionRule(_localctx, 10, TypedBNFParser.RULE_slist_o__i__s__i__s_param_type_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 131;
          _localctx._slist_o__i__s__i__s_param_type_p__0__1 = this.param_type();
          _localctx.result = [_localctx._slist_o__i__s__i__s_param_type_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 141;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 1, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 135;
                this.match(TypedBNFParser.T__0);
                this.state = 136;
                _localctx._slist_o__i__s__i__s_param_type_p__1__3 = this.param_type();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._slist_o__i__s__i__s_param_type_p__1__1.result, _localctx._slist_o__i__s__i__s_param_type_p__1__3.result);
              }
            }
          }

          this.state = 143;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 1, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  empty_o_slist_o__i__s__i__s_param_type_p__p_() {
    let _localctx = new Empty_o_slist_o__i__s__i__s_param_type_p__p_Context(this._ctx, this.state);

    this.enterRule(_localctx, 12, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_param_type_p__p_);

    try {
      this.state = 148;

      this._errHandler.sync(this);

      switch (this._input.LA(1)) {
        case TypedBNFParser.T__3:
          this.enterOuterAlt(_localctx, 1);
          {
            _localctx.result = [];
          }
          break;

        case TypedBNFParser.T__2:
        case TypedBNFParser.T__7:
        case TypedBNFParser.CNAMEPLUS:
          this.enterOuterAlt(_localctx, 2);
          {
            this.state = 145;
            _localctx._empty_o_slist_o__i__s__i__s_param_type_p__p__1__1 = this.slist_o__i__s__i__s_param_type_p_(0);
            _localctx.result = _localctx._empty_o_slist_o__i__s__i__s_param_type_p__p__1__1.result;
          }
          break;

        default:
          throw new _NoViableAltException.NoViableAltException(this);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  eslist_o__i__s__i__s_param_type_p_() {
    let _localctx = new Eslist_o__i__s__i__s_param_type_p_Context(this._ctx, this.state);

    this.enterRule(_localctx, 14, TypedBNFParser.RULE_eslist_o__i__s__i__s_param_type_p_);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 150;
        _localctx._eslist_o__i__s__i__s_param_type_p__0__1 = this.empty_o_slist_o__i__s__i__s_param_type_p__p_();
        _localctx.result = _localctx._eslist_o__i__s__i__s_param_type_p__0__1.result;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  arrow_typ() {
    let _localctx = new Arrow_typContext(this._ctx, this.state);

    this.enterRule(_localctx, 16, TypedBNFParser.RULE_arrow_typ);

    try {
      this.state = 168;

      this._errHandler.sync(this);

      switch (this.interpreter.adaptivePredict(this._input, 3, this._ctx)) {
        case 1:
          this.enterOuterAlt(_localctx, 1);
          {
            this.state = 153;
            _localctx._arrow_typ_0__1 = this.typ2(0);
            this.state = 154;
            this.match(TypedBNFParser.T__1);
            this.state = 155;
            _localctx._arrow_typ_0__3 = this.arrow_typ();
            _localctx.result = (0, _TypedBNF_require.MK_TFun)([["value", _localctx._arrow_typ_0__1.result]], _localctx._arrow_typ_0__3.result);
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
            _localctx.result = (0, _TypedBNF_require.MK_TFun)((0, _TypedBNF_require.process_tparam)(_localctx._arrow_typ_1__2.result), _localctx._arrow_typ_1__5.result);
          }
          break;

        case 3:
          this.enterOuterAlt(_localctx, 3);
          {
            this.state = 165;
            _localctx._arrow_typ_2__1 = this.type_product(0);
            _localctx.result = (0, _TypedBNF_require.MK_TTuple)(_localctx._arrow_typ_2__1.result);
          }
          break;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  slist_o__i__s__i__s_typ_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Slist_o__i__s__i__s_typ_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 18;
    this.enterRecursionRule(_localctx, 18, TypedBNFParser.RULE_slist_o__i__s__i__s_typ_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 171;
          _localctx._slist_o__i__s__i__s_typ_p__0__1 = this.typ();
          _localctx.result = [_localctx._slist_o__i__s__i__s_typ_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 181;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 4, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 175;
                this.match(TypedBNFParser.T__0);
                this.state = 176;
                _localctx._slist_o__i__s__i__s_typ_p__1__3 = this.typ();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._slist_o__i__s__i__s_typ_p__1__1.result, _localctx._slist_o__i__s__i__s_typ_p__1__3.result);
              }
            }
          }

          this.state = 183;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 4, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  typ2(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Typ2Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 20;
    this.enterRecursionRule(_localctx, 20, TypedBNFParser.RULE_typ2, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 190;

        this._errHandler.sync(this);

        switch (this._input.LA(1)) {
          case TypedBNFParser.CNAMEPLUS:
            {
              this.state = 185;
              _localctx._typ2_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
              _localctx.result = (0, _TypedBNF_require.MK_TConst)((0, _TypedBNF_require.str)(_localctx._typ2_0__1));
            }
            break;

          case TypedBNFParser.T__7:
            {
              this.state = 187;
              _localctx._typ2_1__1 = this.tvar();
              _localctx.result = _localctx._typ2_1__1.result;
            }
            break;

          default:
            throw new _NoViableAltException.NoViableAltException(this);
        }

        this._ctx._stop = this._input.tryLT(-1);
        this.state = 200;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 6, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 193;
                this.match(TypedBNFParser.T__4);
                this.state = 194;
                _localctx._typ2_2__3 = this.slist_o__i__s__i__s_typ_p_(0);
                this.state = 195;
                this.match(TypedBNFParser.T__5);
                _localctx.result = (0, _TypedBNF_require.MK_TApp)(_localctx._typ2_2__1.result, _localctx._typ2_2__3.result);
              }
            }
          }

          this.state = 202;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 6, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  type_product(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Type_productContext(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 22;
    this.enterRecursionRule(_localctx, 22, TypedBNFParser.RULE_type_product, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 204;
          _localctx._type_product_1__1 = this.typ2(0);
          _localctx.result = [_localctx._type_product_1__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 214;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 7, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 2)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
                }

                this.state = 208;
                this.match(TypedBNFParser.T__6);
                this.state = 209;
                _localctx._type_product_0__3 = this.typ2(0);
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._type_product_0__1.result, _localctx._type_product_0__3.result);
              }
            }
          }

          this.state = 216;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 7, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  top_typ() {
    let _localctx = new Top_typContext(this._ctx, this.state);

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
            _localctx.result = (0, _TypedBNF_require.MK_Poly)(_localctx._top_typ_0__2.result, _localctx._top_typ_0__4.result);
          }
          break;

        case TypedBNFParser.T__2:
        case TypedBNFParser.T__7:
        case TypedBNFParser.CNAMEPLUS:
          this.enterOuterAlt(_localctx, 2);
          {
            this.state = 223;
            _localctx._top_typ_1__1 = this.typ();
            _localctx.result = (0, _TypedBNF_require.MK_Mono)(_localctx._top_typ_1__1.result);
          }
          break;

        default:
          throw new _NoViableAltException.NoViableAltException(this);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  tvar() {
    let _localctx = new TvarContext(this._ctx, this.state);

    this.enterRule(_localctx, 26, TypedBNFParser.RULE_tvar);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 228;
        this.match(TypedBNFParser.T__7);
        this.state = 229;
        _localctx._tvar_0__2 = this.match(TypedBNFParser.CNAMEPLUS);
        _localctx.result = (0, _TypedBNF_require.MK_TVar)((0, _TypedBNF_require.str)(_localctx._tvar_0__2));
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  tvar_str() {
    let _localctx = new Tvar_strContext(this._ctx, this.state);

    this.enterRule(_localctx, 28, TypedBNFParser.RULE_tvar_str);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 232;
        this.match(TypedBNFParser.T__7);
        this.state = 233;
        _localctx._tvar_str_0__2 = this.match(TypedBNFParser.CNAMEPLUS);
        _localctx.result = (0, _TypedBNF_require.str)(_localctx._tvar_str_0__2);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  param_type() {
    let _localctx = new Param_typeContext(this._ctx, this.state);

    this.enterRule(_localctx, 30, TypedBNFParser.RULE_param_type);

    try {
      this.state = 244;

      this._errHandler.sync(this);

      switch (this.interpreter.adaptivePredict(this._input, 9, this._ctx)) {
        case 1:
          this.enterOuterAlt(_localctx, 1);
          {
            this.state = 236;
            _localctx._param_type_0__1 = this.match(TypedBNFParser.CNAMEPLUS);
            this.state = 237;
            this.match(TypedBNFParser.T__8);
            this.state = 238;
            _localctx._param_type_0__3 = this.typ();
            _localctx.result = [(0, _TypedBNF_require.str)(_localctx._param_type_0__1), _localctx._param_type_0__3.result];
          }
          break;

        case 2:
          this.enterOuterAlt(_localctx, 2);
          {
            this.state = 241;
            _localctx._param_type_1__1 = this.typ();
            _localctx.result = ["_", _localctx._param_type_1__1.result];
          }
          break;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  slist_o__i__s__i__s_tvar_str_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Slist_o__i__s__i__s_tvar_str_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 32;
    this.enterRecursionRule(_localctx, 32, TypedBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 247;
          _localctx._slist_o__i__s__i__s_tvar_str_p__0__1 = this.tvar_str();
          _localctx.result = [_localctx._slist_o__i__s__i__s_tvar_str_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 257;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 10, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 251;
                this.match(TypedBNFParser.T__0);
                this.state = 252;
                _localctx._slist_o__i__s__i__s_tvar_str_p__1__3 = this.tvar_str();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._slist_o__i__s__i__s_tvar_str_p__1__1.result, _localctx._slist_o__i__s__i__s_tvar_str_p__1__3.result);
              }
            }
          }

          this.state = 259;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 10, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  type_params() {
    let _localctx = new Type_paramsContext(this._ctx, this.state);

    this.enterRule(_localctx, 34, TypedBNFParser.RULE_type_params);

    try {
      this.state = 266;

      this._errHandler.sync(this);

      switch (this.interpreter.adaptivePredict(this._input, 11, this._ctx)) {
        case 1:
          this.enterOuterAlt(_localctx, 1);
          {
            this.state = 260;
            this.match(TypedBNFParser.T__4);
            this.state = 261;
            _localctx._type_params_0__2 = this.slist_o__i__s__i__s_tvar_str_p_(0);
            this.state = 262;
            this.match(TypedBNFParser.T__5);
            _localctx.result = _localctx._type_params_0__2.result;
          }
          break;

        case 2:
          this.enterOuterAlt(_localctx, 2);
          {
            _localctx.result = [];
          }
          break;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  field_ann() {
    let _localctx = new Field_annContext(this._ctx, this.state);

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
        _localctx.result = [(0, _TypedBNF_require.str)(_localctx._field_ann_0__1), _localctx._field_ann_0__3.result, (0, _TypedBNF_require.mkpos)(_localctx._field_ann_0__1)];
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  slist_o__i__s__i__s_field_ann_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Slist_o__i__s__i__s_field_ann_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 38;
    this.enterRecursionRule(_localctx, 38, TypedBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 274;
          _localctx._slist_o__i__s__i__s_field_ann_p__0__1 = this.field_ann();
          _localctx.result = [_localctx._slist_o__i__s__i__s_field_ann_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 284;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 12, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 278;
                this.match(TypedBNFParser.T__0);
                this.state = 279;
                _localctx._slist_o__i__s__i__s_field_ann_p__1__3 = this.field_ann();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._slist_o__i__s__i__s_field_ann_p__1__1.result, _localctx._slist_o__i__s__i__s_field_ann_p__1__3.result);
              }
            }
          }

          this.state = 286;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 12, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  empty_o_slist_o__i__s__i__s_field_ann_p__p_() {
    let _localctx = new Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context(this._ctx, this.state);

    this.enterRule(_localctx, 40, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_);

    try {
      this.state = 291;

      this._errHandler.sync(this);

      switch (this._input.LA(1)) {
        case TypedBNFParser.T__3:
          this.enterOuterAlt(_localctx, 1);
          {
            _localctx.result = [];
          }
          break;

        case TypedBNFParser.CNAMEPLUS:
          this.enterOuterAlt(_localctx, 2);
          {
            this.state = 288;
            _localctx._empty_o_slist_o__i__s__i__s_field_ann_p__p__1__1 = this.slist_o__i__s__i__s_field_ann_p_(0);
            _localctx.result = _localctx._empty_o_slist_o__i__s__i__s_field_ann_p__p__1__1.result;
          }
          break;

        default:
          throw new _NoViableAltException.NoViableAltException(this);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  eslist_o__i__s__i__s_field_ann_p_() {
    let _localctx = new Eslist_o__i__s__i__s_field_ann_p_Context(this._ctx, this.state);

    this.enterRule(_localctx, 42, TypedBNFParser.RULE_eslist_o__i__s__i__s_field_ann_p_);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 293;
        _localctx._eslist_o__i__s__i__s_field_ann_p__0__1 = this.empty_o_slist_o__i__s__i__s_field_ann_p__p_();
        _localctx.result = _localctx._eslist_o__i__s__i__s_field_ann_p__0__1.result;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  field_anns() {
    let _localctx = new Field_annsContext(this._ctx, this.state);

    this.enterRule(_localctx, 44, TypedBNFParser.RULE_field_anns);

    try {
      this.state = 302;

      this._errHandler.sync(this);

      switch (this.interpreter.adaptivePredict(this._input, 14, this._ctx)) {
        case 1:
          this.enterOuterAlt(_localctx, 1);
          {
            this.state = 296;
            this.match(TypedBNFParser.T__2);
            this.state = 297;
            _localctx._field_anns_0__2 = this.eslist_o__i__s__i__s_field_ann_p_();
            this.state = 298;
            this.match(TypedBNFParser.T__3);
            _localctx.result = [true, _localctx._field_anns_0__2.result];
          }
          break;

        case 2:
          this.enterOuterAlt(_localctx, 2);
          {
            _localctx.result = [false, []];
          }
          break;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  decl() {
    let _localctx = new DeclContext(this._ctx, this.state);

    this.enterRule(_localctx, 46, TypedBNFParser.RULE_decl);

    try {
      this.state = 330;

      this._errHandler.sync(this);

      switch (this.interpreter.adaptivePredict(this._input, 15, this._ctx)) {
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
            _localctx.result = (0, _TypedBNF_require.MK_Declvar)(_localctx._decl_0__3.result, _localctx._decl_0__5.result, (0, _TypedBNF_require.mkpos)(_localctx._decl_0__2));
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
            _localctx.result = (0, _TypedBNF_require.MK_Declctor)(_localctx._decl_1__2.result, _localctx._decl_1__4.result, (0, _TypedBNF_require.mkpos)(_localctx._decl_1__1));
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
            _localctx.result = (0, _TypedBNF_require.MK_Decltype)(true, (0, _TypedBNF_require.fst)(_localctx._decl_2__5.result), _localctx._decl_2__3.result, _localctx._decl_2__4.result, (0, _TypedBNF_require.snd)(_localctx._decl_2__5.result), (0, _TypedBNF_require.mkpos)(_localctx._decl_2__1));
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
            _localctx.result = (0, _TypedBNF_require.MK_Decltype)(false, (0, _TypedBNF_require.fst)(_localctx._decl_3__4.result), _localctx._decl_3__2.result, _localctx._decl_3__3.result, (0, _TypedBNF_require.snd)(_localctx._decl_3__4.result), (0, _TypedBNF_require.mkpos)(_localctx._decl_3__1));
          }
          break;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  toplevel() {
    let _localctx = new ToplevelContext(this._ctx, this.state);

    this.enterRule(_localctx, 48, TypedBNFParser.RULE_toplevel);

    try {
      this.state = 345;

      this._errHandler.sync(this);

      switch (this.interpreter.adaptivePredict(this._input, 16, this._ctx)) {
        case 1:
          this.enterOuterAlt(_localctx, 1);
          {
            this.state = 332;
            _localctx._toplevel_0__1 = this.def();
            _localctx.result = _localctx._toplevel_0__1.result;
          }
          break;

        case 2:
          this.enterOuterAlt(_localctx, 2);
          {
            this.state = 335;
            _localctx._toplevel_1__1 = this.decl();
            _localctx.result = _localctx._toplevel_1__1.result;
          }
          break;

        case 3:
          this.enterOuterAlt(_localctx, 3);
          {
            this.state = 338;
            _localctx._toplevel_2__1 = this.lexerdef();
            _localctx.result = _localctx._toplevel_2__1.result;
          }
          break;

        case 4:
          this.enterOuterAlt(_localctx, 4);
          {
            this.state = 341;
            _localctx._toplevel_3__1 = this.match(TypedBNFParser.T__13);
            this.state = 342;
            _localctx._toplevel_3__2 = this.slist_o__i__s__i__s_identstr_p_(0);
            _localctx.result = (0, _TypedBNF_require.MK_Defignore)(_localctx._toplevel_3__2.result, (0, _TypedBNF_require.mkpos)(_localctx._toplevel_3__1));
          }
          break;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  slist_o__i__s__i__s_identstr_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Slist_o__i__s__i__s_identstr_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 50;
    this.enterRecursionRule(_localctx, 50, TypedBNFParser.RULE_slist_o__i__s__i__s_identstr_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 348;
          _localctx._slist_o__i__s__i__s_identstr_p__0__1 = this.identstr();
          _localctx.result = [_localctx._slist_o__i__s__i__s_identstr_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 358;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 17, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 352;
                this.match(TypedBNFParser.T__0);
                this.state = 353;
                _localctx._slist_o__i__s__i__s_identstr_p__1__3 = this.identstr();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._slist_o__i__s__i__s_identstr_p__1__1.result, _localctx._slist_o__i__s__i__s_identstr_p__1__3.result);
              }
            }
          }

          this.state = 360;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 17, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  def() {
    let _localctx = new DefContext(this._ctx, this.state);

    this.enterRule(_localctx, 52, TypedBNFParser.RULE_def);

    try {
      this.state = 372;

      this._errHandler.sync(this);

      switch (this.interpreter.adaptivePredict(this._input, 18, this._ctx)) {
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
            _localctx.result = (0, _TypedBNF_require.MK_Defmacro)((0, _TypedBNF_require.str)(_localctx._def_0__1), _localctx._def_0__3.result, _localctx._def_0__5.result, (0, _TypedBNF_require.mkpos)(_localctx._def_0__1));
          }
          break;

        case 2:
          this.enterOuterAlt(_localctx, 2);
          {
            this.state = 368;
            _localctx._def_1__1 = this.match(TypedBNFParser.CNAMEPLUS);
            this.state = 369;
            _localctx._def_1__2 = this.productions(0);
            _localctx.result = (0, _TypedBNF_require.MK_Defrule)((0, _TypedBNF_require.str)(_localctx._def_1__1), _localctx._def_1__2.result, (0, _TypedBNF_require.mkpos)(_localctx._def_1__1));
          }
          break;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  productions(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new ProductionsContext(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 54;
    this.enterRecursionRule(_localctx, 54, TypedBNFParser.RULE_productions, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 375;
          _localctx._productions_0__1 = this.match(TypedBNFParser.T__8);
          this.state = 376;
          _localctx._productions_0__2 = this.production();
          _localctx.result = [[(0, _TypedBNF_require.mkpos)(_localctx._productions_0__1), _localctx._productions_0__2.result]];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 386;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 19, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 380;
                _localctx._productions_1__2 = this.match(TypedBNFParser.T__14);
                this.state = 381;
                _localctx._productions_1__3 = this.production();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._productions_1__1.result, [(0, _TypedBNF_require.mkpos)(_localctx._productions_1__2), _localctx._productions_1__3.result]);
              }
            }
          }

          this.state = 388;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 19, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  list_o_psym_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new List_o_psym_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 56;
    this.enterRecursionRule(_localctx, 56, TypedBNFParser.RULE_list_o_psym_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 390;
          _localctx._list_o_psym_p__0__1 = this.psym();
          _localctx.result = [_localctx._list_o_psym_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 399;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 20, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 394;
                _localctx._list_o_psym_p__1__2 = this.psym();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._list_o_psym_p__1__1.result, _localctx._list_o_psym_p__1__2.result);
              }
            }
          }

          this.state = 401;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 20, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  empty_o_list_o_psym_p__p_() {
    let _localctx = new Empty_o_list_o_psym_p__p_Context(this._ctx, this.state);

    this.enterRule(_localctx, 58, TypedBNFParser.RULE_empty_o_list_o_psym_p__p_);

    try {
      this.state = 406;

      this._errHandler.sync(this);

      switch (this._input.LA(1)) {
        case TypedBNFParser.T__15:
          this.enterOuterAlt(_localctx, 1);
          {
            _localctx.result = [];
          }
          break;

        case TypedBNFParser.T__4:
        case TypedBNFParser.CNAMEPLUS:
        case TypedBNFParser.ESCAPED_STRING:
          this.enterOuterAlt(_localctx, 2);
          {
            this.state = 403;
            _localctx._empty_o_list_o_psym_p__p__1__1 = this.list_o_psym_p_(0);
            _localctx.result = _localctx._empty_o_list_o_psym_p__p__1__1.result;
          }
          break;

        default:
          throw new _NoViableAltException.NoViableAltException(this);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  elist_o_psym_p_() {
    let _localctx = new Elist_o_psym_p_Context(this._ctx, this.state);

    this.enterRule(_localctx, 60, TypedBNFParser.RULE_elist_o_psym_p_);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 408;
        _localctx._elist_o_psym_p__0__1 = this.empty_o_list_o_psym_p__p_();
        _localctx.result = _localctx._elist_o_psym_p__0__1.result;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  production() {
    let _localctx = new ProductionContext(this._ctx, this.state);

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
        _localctx.result = (0, _TypedBNF_require.MK_production)(_localctx._production_0__1.result, _localctx._production_0__3.result);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  slist_o__i__s__i__s_psym_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Slist_o__i__s__i__s_psym_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 64;
    this.enterRecursionRule(_localctx, 64, TypedBNFParser.RULE_slist_o__i__s__i__s_psym_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 418;
          _localctx._slist_o__i__s__i__s_psym_p__0__1 = this.psym();
          _localctx.result = [_localctx._slist_o__i__s__i__s_psym_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 428;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 22, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 422;
                this.match(TypedBNFParser.T__0);
                this.state = 423;
                _localctx._slist_o__i__s__i__s_psym_p__1__3 = this.psym();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._slist_o__i__s__i__s_psym_p__1__1.result, _localctx._slist_o__i__s__i__s_psym_p__1__3.result);
              }
            }
          }

          this.state = 430;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 22, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  psym() {
    let _localctx = new PsymContext(this._ctx, this.state);

    this.enterRule(_localctx, 66, TypedBNFParser.RULE_psym);

    try {
      this.state = 447;

      this._errHandler.sync(this);

      switch (this.interpreter.adaptivePredict(this._input, 23, this._ctx)) {
        case 1:
          this.enterOuterAlt(_localctx, 1);
          {
            this.state = 431;
            this.match(TypedBNFParser.T__4);
            this.state = 432;
            _localctx._psym_0__2 = this.identstr();
            this.state = 433;
            this.match(TypedBNFParser.T__5);
            _localctx.result = (0, _TypedBNF_require.MK_Term)(_localctx._psym_0__2.result, false);
          }
          break;

        case 2:
          this.enterOuterAlt(_localctx, 2);
          {
            this.state = 436;
            _localctx._psym_1__1 = this.match(TypedBNFParser.ESCAPED_STRING);
            _localctx.result = (0, _TypedBNF_require.MK_Term)((0, _TypedBNF_require.unescape)((0, _TypedBNF_require.str)(_localctx._psym_1__1)), true);
          }
          break;

        case 3:
          this.enterOuterAlt(_localctx, 3);
          {
            this.state = 438;
            _localctx._psym_2__1 = this.identstr();
            _localctx.result = (0, _TypedBNF_require.MK_Nonterm)(_localctx._psym_2__1.result);
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
            _localctx.result = (0, _TypedBNF_require.MK_Macrocall)((0, _TypedBNF_require.str)(_localctx._psym_3__1), _localctx._psym_3__3.result, (0, _TypedBNF_require.mkpos)(_localctx._psym_3__1));
          }
          break;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  ann() {
    let _localctx = new AnnContext(this._ctx, this.state);

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
        _localctx.result = [_localctx._ann_0__1.result, _localctx._ann_0__3.result];
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  slist_o__i__s__i__s_ann_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Slist_o__i__s__i__s_ann_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 70;
    this.enterRecursionRule(_localctx, 70, TypedBNFParser.RULE_slist_o__i__s__i__s_ann_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 455;
          _localctx._slist_o__i__s__i__s_ann_p__0__1 = this.ann();
          _localctx.result = [_localctx._slist_o__i__s__i__s_ann_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 465;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 24, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 459;
                this.match(TypedBNFParser.T__0);
                this.state = 460;
                _localctx._slist_o__i__s__i__s_ann_p__1__3 = this.ann();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._slist_o__i__s__i__s_ann_p__1__1.result, _localctx._slist_o__i__s__i__s_ann_p__1__3.result);
              }
            }
          }

          this.state = 467;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 24, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  empty_o_slist_o__i__s__i__s_ann_p__p_() {
    let _localctx = new Empty_o_slist_o__i__s__i__s_ann_p__p_Context(this._ctx, this.state);

    this.enterRule(_localctx, 72, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_ann_p__p_);

    try {
      this.state = 472;

      this._errHandler.sync(this);

      switch (this._input.LA(1)) {
        case TypedBNFParser.T__3:
          this.enterOuterAlt(_localctx, 1);
          {
            _localctx.result = [];
          }
          break;

        case TypedBNFParser.CNAMEPLUS:
          this.enterOuterAlt(_localctx, 2);
          {
            this.state = 469;
            _localctx._empty_o_slist_o__i__s__i__s_ann_p__p__1__1 = this.slist_o__i__s__i__s_ann_p_(0);
            _localctx.result = _localctx._empty_o_slist_o__i__s__i__s_ann_p__p__1__1.result;
          }
          break;

        default:
          throw new _NoViableAltException.NoViableAltException(this);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  eslist_o__i__s__i__s_ann_p_() {
    let _localctx = new Eslist_o__i__s__i__s_ann_p_Context(this._ctx, this.state);

    this.enterRule(_localctx, 74, TypedBNFParser.RULE_eslist_o__i__s__i__s_ann_p_);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 474;
        _localctx._eslist_o__i__s__i__s_ann_p__0__1 = this.empty_o_slist_o__i__s__i__s_ann_p__p_();
        _localctx.result = _localctx._eslist_o__i__s__i__s_ann_p__0__1.result;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  func_parameters() {
    let _localctx = new Func_parametersContext(this._ctx, this.state);

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
        _localctx.result = _localctx._func_parameters_0__2.result;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  expr() {
    let _localctx = new ExprContext(this._ctx, this.state);

    this.enterRule(_localctx, 78, TypedBNFParser.RULE_expr);

    try {
      this.state = 504;

      this._errHandler.sync(this);

      switch (this.interpreter.adaptivePredict(this._input, 26, this._ctx)) {
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
            _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_ELet)(_localctx._expr_0__2.result, _localctx._expr_0__4.result, _localctx._expr_0__6.result), (0, _TypedBNF_require.mkpos)(_localctx._expr_0__1));
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
            _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_EFun)(_localctx._expr_1__2.result, _localctx._expr_1__4.result), (0, _TypedBNF_require.mkpos)(_localctx._expr_1__1));
          }
          break;

        case 3:
          this.enterOuterAlt(_localctx, 3);
          {
            this.state = 496;
            _localctx._expr_2__1 = this.call(0);
            _localctx.result = _localctx._expr_2__1.result;
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
            _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_ELet)("_", _localctx._expr_3__1.result, _localctx._expr_3__3.result), (0, _TypedBNF_require.getpos)(_localctx._expr_3__1.result));
          }
          break;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  call(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new CallContext(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 80;
    this.enterRecursionRule(_localctx, 80, TypedBNFParser.RULE_call, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 507;
          _localctx._call_1__1 = this.atomexp(0);
          _localctx.result = _localctx._call_1__1.result;
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 518;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 27, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 2)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
                }

                this.state = 511;
                this.match(TypedBNFParser.T__2);
                this.state = 512;
                _localctx._call_0__3 = this.eslist_o__i__s__i__s_expr_p_();
                this.state = 513;
                this.match(TypedBNFParser.T__3);
                _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_EApp)(_localctx._call_0__1.result, _localctx._call_0__3.result), (0, _TypedBNF_require.getpos)(_localctx._call_0__1.result));
              }
            }
          }

          this.state = 520;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 27, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  empty_o_slist_o__i__s__i__s_expr_p__p_() {
    let _localctx = new Empty_o_slist_o__i__s__i__s_expr_p__p_Context(this._ctx, this.state);

    this.enterRule(_localctx, 82, TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_expr_p__p_);

    try {
      this.state = 525;

      this._errHandler.sync(this);

      switch (this._input.LA(1)) {
        case TypedBNFParser.T__3:
        case TypedBNFParser.T__24:
          this.enterOuterAlt(_localctx, 1);
          {
            _localctx.result = [];
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
            _localctx.result = _localctx._empty_o_slist_o__i__s__i__s_expr_p__p__1__1.result;
          }
          break;

        default:
          throw new _NoViableAltException.NoViableAltException(this);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  eslist_o__i__s__i__s_expr_p_() {
    let _localctx = new Eslist_o__i__s__i__s_expr_p_Context(this._ctx, this.state);

    this.enterRule(_localctx, 84, TypedBNFParser.RULE_eslist_o__i__s__i__s_expr_p_);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 527;
        _localctx._eslist_o__i__s__i__s_expr_p__0__1 = this.empty_o_slist_o__i__s__i__s_expr_p__p_();
        _localctx.result = _localctx._eslist_o__i__s__i__s_expr_p__0__1.result;
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  slist_o__i__s__i__s_expr_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Slist_o__i__s__i__s_expr_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 86;
    this.enterRecursionRule(_localctx, 86, TypedBNFParser.RULE_slist_o__i__s__i__s_expr_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 531;
          _localctx._slist_o__i__s__i__s_expr_p__0__1 = this.expr();
          _localctx.result = [_localctx._slist_o__i__s__i__s_expr_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 541;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 29, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 535;
                this.match(TypedBNFParser.T__0);
                this.state = 536;
                _localctx._slist_o__i__s__i__s_expr_p__1__3 = this.expr();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._slist_o__i__s__i__s_expr_p__1__1.result, _localctx._slist_o__i__s__i__s_expr_p__1__3.result);
              }
            }
          }

          this.state = 543;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 29, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  atomexp(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new AtomexpContext(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 88;
    this.enterRecursionRule(_localctx, 88, TypedBNFParser.RULE_atomexp, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 573;

        this._errHandler.sync(this);

        switch (this.interpreter.adaptivePredict(this._input, 30, this._ctx)) {
          case 1:
            {
              this.state = 545;
              _localctx._atomexp_0__1 = this.match(TypedBNFParser.INT);
              _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_EInt)((0, _TypedBNF_require.toint)(_localctx._atomexp_0__1)), (0, _TypedBNF_require.mkpos)(_localctx._atomexp_0__1));
            }
            break;

          case 2:
            {
              this.state = 547;
              _localctx._atomexp_1__1 = this.match(TypedBNFParser.FLOAT);
              _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_EFlt)((0, _TypedBNF_require.tofloat)(_localctx._atomexp_1__1)), (0, _TypedBNF_require.mkpos)(_localctx._atomexp_1__1));
            }
            break;

          case 3:
            {
              this.state = 549;
              _localctx._atomexp_2__1 = this.match(TypedBNFParser.ESCAPED_STRING);
              _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_EStr)((0, _TypedBNF_require.unescape)((0, _TypedBNF_require.str)(_localctx._atomexp_2__1))), (0, _TypedBNF_require.mkpos)(_localctx._atomexp_2__1));
            }
            break;

          case 4:
            {
              this.state = 551;
              _localctx._atomexp_3__1 = this.match(TypedBNFParser.T__22);
              this.state = 552;
              _localctx._atomexp_3__2 = this.match(TypedBNFParser.INT);
              _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_ESlot)((0, _TypedBNF_require.toint)(_localctx._atomexp_3__2)), (0, _TypedBNF_require.mkpos)(_localctx._atomexp_3__1));
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
              _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_EList)(_localctx._atomexp_4__2.result), (0, _TypedBNF_require.mkpos)(_localctx._atomexp_4__1));
            }
            break;

          case 6:
            {
              this.state = 559;
              _localctx._atomexp_5__1 = this.match(TypedBNFParser.T__2);
              this.state = 560;
              this.match(TypedBNFParser.T__3);
              _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_ETuple)([]), (0, _TypedBNF_require.mkpos)(_localctx._atomexp_5__1));
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
              _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_ETuple)(_localctx._atomexp_6__2.result), (0, _TypedBNF_require.mkpos)(_localctx._atomexp_6__1));
            }
            break;

          case 8:
            {
              this.state = 567;
              _localctx._atomexp_7__1 = this.match(TypedBNFParser.CNAMEPLUS);
              _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_EVar)((0, _TypedBNF_require.str)(_localctx._atomexp_7__1)), (0, _TypedBNF_require.mkpos)(_localctx._atomexp_7__1));
            }
            break;

          case 9:
            {
              this.state = 569;
              _localctx._atomexp_9__1 = this.match(TypedBNFParser.T__26);
              _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_EBool)(true), (0, _TypedBNF_require.mkpos)(_localctx._atomexp_9__1));
            }
            break;

          case 10:
            {
              this.state = 571;
              _localctx._atomexp_10__1 = this.match(TypedBNFParser.T__27);
              _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_EBool)(false), (0, _TypedBNF_require.mkpos)(_localctx._atomexp_10__1));
            }
            break;
        }

        this._ctx._stop = this._input.tryLT(-1);
        this.state = 581;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 31, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 3)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 3)");
                }

                this.state = 576;
                this.match(TypedBNFParser.T__25);
                this.state = 577;
                _localctx._atomexp_8__3 = this.match(TypedBNFParser.CNAMEPLUS);
                _localctx.result = (0, _TypedBNF_require.MK_Expr)((0, _TypedBNF_require.MK_EField)(_localctx._atomexp_8__1.result, (0, _TypedBNF_require.str)(_localctx._atomexp_8__3)), (0, _TypedBNF_require.getpos)(_localctx._atomexp_8__1.result));
              }
            }
          }

          this.state = 583;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 31, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  slist_o__i__u__i__s_lexer_and_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Slist_o__i__u__i__s_lexer_and_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 90;
    this.enterRecursionRule(_localctx, 90, TypedBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 585;
          _localctx._slist_o__i__u__i__s_lexer_and_p__0__1 = this.lexer_and();
          _localctx.result = [_localctx._slist_o__i__u__i__s_lexer_and_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 595;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 32, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 589;
                this.match(TypedBNFParser.T__14);
                this.state = 590;
                _localctx._slist_o__i__u__i__s_lexer_and_p__1__3 = this.lexer_and();
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._slist_o__i__u__i__s_lexer_and_p__1__1.result, _localctx._slist_o__i__u__i__s_lexer_and_p__1__3.result);
              }
            }
          }

          this.state = 597;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 32, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  lexer__y_() {
    let _localctx = new Lexer__y_Context(this._ctx, this.state);

    this.enterRule(_localctx, 92, TypedBNFParser.RULE_lexer__y_);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 598;
        _localctx._lexer__y__0__1 = this.slist_o__i__u__i__s_lexer_and_p_(0);
        _localctx.result = (0, _TypedBNF_require.MK_LOr)(_localctx._lexer__y__0__1.result);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  list_o_lexer_atomexpr_p_(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new List_o_lexer_atomexpr_p_Context(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 94;
    this.enterRecursionRule(_localctx, 94, TypedBNFParser.RULE_list_o_lexer_atomexpr_p_, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 602;
          _localctx._list_o_lexer_atomexpr_p__0__1 = this.lexer_atomexpr(0);
          _localctx.result = [_localctx._list_o_lexer_atomexpr_p__0__1.result];
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 611;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 33, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
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

                if (!this.precpred(this._ctx, 1)) {
                  throw this.createFailedPredicateException("this.precpred(this._ctx, 1)");
                }

                this.state = 606;
                _localctx._list_o_lexer_atomexpr_p__1__2 = this.lexer_atomexpr(0);
                _localctx.result = (0, _TypedBNF_require.addList)(_localctx._list_o_lexer_atomexpr_p__1__1.result, _localctx._list_o_lexer_atomexpr_p__1__2.result);
              }
            }
          }

          this.state = 613;

          this._errHandler.sync(this);

          _alt = this.interpreter.adaptivePredict(this._input, 33, this._ctx);
        }
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  lexer_and() {
    let _localctx = new Lexer_andContext(this._ctx, this.state);

    this.enterRule(_localctx, 96, TypedBNFParser.RULE_lexer_and);

    try {
      this.enterOuterAlt(_localctx, 1);
      {
        this.state = 614;
        _localctx._lexer_and_0__1 = this.list_o_lexer_atomexpr_p_(0);
        _localctx.result = (0, _TypedBNF_require.MK_LSeq)(_localctx._lexer_and_0__1.result);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  lexer_atomexpr(_p) {
    if (_p === undefined) {
      _p = 0;
    }

    let _parentctx = this._ctx;
    let _parentState = this.state;

    let _localctx = new Lexer_atomexprContext(this._ctx, _parentState);

    let _prevctx = _localctx;
    let _startState = 98;
    this.enterRecursionRule(_localctx, 98, TypedBNFParser.RULE_lexer_atomexpr, _p);

    try {
      let _alt;

      this.enterOuterAlt(_localctx, 1);
      {
        {
          this.state = 618;
          _localctx._lexer_atomexpr_3__1 = this.lexer_atom();
          _localctx.result = _localctx._lexer_atomexpr_3__1.result;
        }
        this._ctx._stop = this._input.tryLT(-1);
        this.state = 632;

        this._errHandler.sync(this);

        _alt = this.interpreter.adaptivePredict(this._input, 35, this._ctx);

        while (_alt !== 2 && _alt !== _ATN.ATN.INVALID_ALT_NUMBER) {
          if (_alt === 1) {
            if (this._parseListeners != null) {
              this.triggerExitRuleEvent();
            }

            _prevctx = _localctx;
            {
              this.state = 630;

              this._errHandler.sync(this);

              switch (this.interpreter.adaptivePredict(this._input, 34, this._ctx)) {
                case 1:
                  {
                    _localctx = new Lexer_atomexprContext(_parentctx, _parentState);
                    _localctx._lexer_atomexpr_0__1 = _prevctx;
                    this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_lexer_atomexpr);
                    this.state = 621;

                    if (!this.precpred(this._ctx, 4)) {
                      throw this.createFailedPredicateException("this.precpred(this._ctx, 4)");
                    }

                    this.state = 622;
                    this.match(TypedBNFParser.T__28);
                    _localctx.result = (0, _TypedBNF_require.MK_LPlus)(_localctx._lexer_atomexpr_0__1.result);
                  }
                  break;

                case 2:
                  {
                    _localctx = new Lexer_atomexprContext(_parentctx, _parentState);
                    _localctx._lexer_atomexpr_1__1 = _prevctx;
                    this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_lexer_atomexpr);
                    this.state = 624;

                    if (!this.precpred(this._ctx, 3)) {
                      throw this.createFailedPredicateException("this.precpred(this._ctx, 3)");
                    }

                    this.state = 625;
                    this.match(TypedBNFParser.T__6);
                    _localctx.result = (0, _TypedBNF_require.MK_LStar)(_localctx._lexer_atomexpr_1__1.result);
                  }
                  break;

                case 3:
                  {
                    _localctx = new Lexer_atomexprContext(_parentctx, _parentState);
                    _localctx._lexer_atomexpr_2__1 = _prevctx;
                    this.pushNewRecursionContext(_localctx, _startState, TypedBNFParser.RULE_lexer_atomexpr);
                    this.state = 627;

                    if (!this.precpred(this._ctx, 2)) {
                      throw this.createFailedPredicateException("this.precpred(this._ctx, 2)");
                    }

                    this.state = 628;
                    this.match(TypedBNFParser.T__29);
                    _localctx.result = (0, _TypedBNF_require.MK_LOptional)(_localctx._lexer_atomexpr_2__1.result);
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
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.unrollRecursionContexts(_parentctx);
    }

    return _localctx;
  } // @RuleVersion(0)


  lexer_atom() {
    let _localctx = new Lexer_atomContext(this._ctx, this.state);

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
            _localctx.result = (0, _TypedBNF_require.MK_LStr)((0, _TypedBNF_require.unescape)((0, _TypedBNF_require.str)(_localctx._lexer_atom_0__1)));
          }
          break;

        case TypedBNFParser.T__30:
          this.enterOuterAlt(_localctx, 2);
          {
            this.state = 637;
            this.match(TypedBNFParser.T__30);
            this.state = 638;
            _localctx._lexer_atom_1__2 = this.lexer_atom();
            _localctx.result = (0, _TypedBNF_require.MK_LNot)(_localctx._lexer_atom_1__2.result);
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
            _localctx.result = (0, _TypedBNF_require.MK_LGroup)(_localctx._lexer_atom_2__2.result);
          }
          break;

        case TypedBNFParser.T__31:
          this.enterOuterAlt(_localctx, 4);
          {
            this.state = 646;
            this.match(TypedBNFParser.T__31);
            _localctx.result = _TypedBNF_require.MK_LNumber;
          }
          break;

        case TypedBNFParser.RANGE:
          this.enterOuterAlt(_localctx, 5);
          {
            this.state = 648;
            _localctx._lexer_atom_4__1 = this.match(TypedBNFParser.RANGE);
            _localctx.result = (0, _TypedBNF_require.getrange)((0, _TypedBNF_require.str)(_localctx._lexer_atom_4__1));
          }
          break;

        case TypedBNFParser.UNICODE_RANGE:
          this.enterOuterAlt(_localctx, 6);
          {
            this.state = 650;
            _localctx._lexer_atom_5__1 = this.match(TypedBNFParser.UNICODE_RANGE);
            _localctx.result = (0, _TypedBNF_require.getunicoderange)((0, _TypedBNF_require.str)(_localctx._lexer_atom_5__1));
          }
          break;

        case TypedBNFParser.T__32:
          this.enterOuterAlt(_localctx, 7);
          {
            this.state = 652;
            this.match(TypedBNFParser.T__32);
            _localctx.result = _TypedBNF_require.MK_LWildcard;
          }
          break;

        case TypedBNFParser.T__25:
          this.enterOuterAlt(_localctx, 8);
          {
            this.state = 654;
            this.match(TypedBNFParser.T__25);
            _localctx.result = _TypedBNF_require.MK_LWildcard;
          }
          break;

        case TypedBNFParser.CNAMEPLUS:
          this.enterOuterAlt(_localctx, 9);
          {
            this.state = 656;
            _localctx._lexer_atom_8__1 = this.match(TypedBNFParser.CNAMEPLUS);
            _localctx.result = (0, _TypedBNF_require.MK_LRef)((0, _TypedBNF_require.str)(_localctx._lexer_atom_8__1));
          }
          break;

        default:
          throw new _NoViableAltException.NoViableAltException(this);
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  } // @RuleVersion(0)


  lexerdef() {
    let _localctx = new LexerdefContext(this._ctx, this.state);

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
        _localctx.result = (0, _TypedBNF_require.MK_Deflexer)((0, _TypedBNF_require.str)(_localctx._lexerdef_0__1), _localctx._lexerdef_0__3.result, (0, _TypedBNF_require.mkpos)(_localctx._lexerdef_0__1));
      }
    } catch (re) {
      if (re instanceof _RecognitionException.RecognitionException) {
        _localctx.exception = re;

        this._errHandler.reportError(this, re);

        this._errHandler.recover(this, re);
      } else {
        throw re;
      }
    } finally {
      this.exitRule();
    }

    return _localctx;
  }

  sempred(_localctx, ruleIndex, predIndex) {
    switch (ruleIndex) {
      case 1:
        return this.list_o_toplevel_p__sempred(_localctx, predIndex);

      case 5:
        return this.slist_o__i__s__i__s_param_type_p__sempred(_localctx, predIndex);

      case 9:
        return this.slist_o__i__s__i__s_typ_p__sempred(_localctx, predIndex);

      case 10:
        return this.typ2_sempred(_localctx, predIndex);

      case 11:
        return this.type_product_sempred(_localctx, predIndex);

      case 16:
        return this.slist_o__i__s__i__s_tvar_str_p__sempred(_localctx, predIndex);

      case 19:
        return this.slist_o__i__s__i__s_field_ann_p__sempred(_localctx, predIndex);

      case 25:
        return this.slist_o__i__s__i__s_identstr_p__sempred(_localctx, predIndex);

      case 27:
        return this.productions_sempred(_localctx, predIndex);

      case 28:
        return this.list_o_psym_p__sempred(_localctx, predIndex);

      case 32:
        return this.slist_o__i__s__i__s_psym_p__sempred(_localctx, predIndex);

      case 35:
        return this.slist_o__i__s__i__s_ann_p__sempred(_localctx, predIndex);

      case 40:
        return this.call_sempred(_localctx, predIndex);

      case 43:
        return this.slist_o__i__s__i__s_expr_p__sempred(_localctx, predIndex);

      case 44:
        return this.atomexp_sempred(_localctx, predIndex);

      case 45:
        return this.slist_o__i__u__i__s_lexer_and_p__sempred(_localctx, predIndex);

      case 47:
        return this.list_o_lexer_atomexpr_p__sempred(_localctx, predIndex);

      case 49:
        return this.lexer_atomexpr_sempred(_localctx, predIndex);
    }

    return true;
  }

  list_o_toplevel_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 0:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  slist_o__i__s__i__s_param_type_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 1:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  slist_o__i__s__i__s_typ_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 2:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  typ2_sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 3:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  type_product_sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 4:
        return this.precpred(this._ctx, 2);
    }

    return true;
  }

  slist_o__i__s__i__s_tvar_str_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 5:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  slist_o__i__s__i__s_field_ann_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 6:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  slist_o__i__s__i__s_identstr_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 7:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  productions_sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 8:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  list_o_psym_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 9:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  slist_o__i__s__i__s_psym_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 10:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  slist_o__i__s__i__s_ann_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 11:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  call_sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 12:
        return this.precpred(this._ctx, 2);
    }

    return true;
  }

  slist_o__i__s__i__s_expr_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 13:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  atomexp_sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 14:
        return this.precpred(this._ctx, 3);
    }

    return true;
  }

  slist_o__i__u__i__s_lexer_and_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 15:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  list_o_lexer_atomexpr_p__sempred(_localctx, predIndex) {
    switch (predIndex) {
      case 16:
        return this.precpred(this._ctx, 1);
    }

    return true;
  }

  lexer_atomexpr_sempred(_localctx, predIndex) {
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

  static get _ATN() {
    if (!TypedBNFParser.__ATN) {
      TypedBNFParser.__ATN = new _ATNDeserializer.ATNDeserializer().deserialize(Utils.toCharArray(TypedBNFParser._serializedATN));
    }

    return TypedBNFParser.__ATN;
  }

}

exports.TypedBNFParser = TypedBNFParser;
TypedBNFParser.T__0 = 1;
TypedBNFParser.T__1 = 2;
TypedBNFParser.T__2 = 3;
TypedBNFParser.T__3 = 4;
TypedBNFParser.T__4 = 5;
TypedBNFParser.T__5 = 6;
TypedBNFParser.T__6 = 7;
TypedBNFParser.T__7 = 8;
TypedBNFParser.T__8 = 9;
TypedBNFParser.T__9 = 10;
TypedBNFParser.T__10 = 11;
TypedBNFParser.T__11 = 12;
TypedBNFParser.T__12 = 13;
TypedBNFParser.T__13 = 14;
TypedBNFParser.T__14 = 15;
TypedBNFParser.T__15 = 16;
TypedBNFParser.T__16 = 17;
TypedBNFParser.T__17 = 18;
TypedBNFParser.T__18 = 19;
TypedBNFParser.T__19 = 20;
TypedBNFParser.T__20 = 21;
TypedBNFParser.T__21 = 22;
TypedBNFParser.T__22 = 23;
TypedBNFParser.T__23 = 24;
TypedBNFParser.T__24 = 25;
TypedBNFParser.T__25 = 26;
TypedBNFParser.T__26 = 27;
TypedBNFParser.T__27 = 28;
TypedBNFParser.T__28 = 29;
TypedBNFParser.T__29 = 30;
TypedBNFParser.T__30 = 31;
TypedBNFParser.T__31 = 32;
TypedBNFParser.T__32 = 33;
TypedBNFParser.UNICODE_RANGE = 34;
TypedBNFParser.RANGE = 35;
TypedBNFParser.CNAMEPLUS = 36;
TypedBNFParser.INT = 37;
TypedBNFParser.WS = 38;
TypedBNFParser.FLOAT = 39;
TypedBNFParser.ESCAPED_STRING = 40;
TypedBNFParser.CPP_COMMENT = 41;
TypedBNFParser.C_COMMENT = 42;
TypedBNFParser.RULE_start = 0;
TypedBNFParser.RULE_list_o_toplevel_p_ = 1;
TypedBNFParser.RULE_start__y_ = 2;
TypedBNFParser.RULE_identstr = 3;
TypedBNFParser.RULE_typ = 4;
TypedBNFParser.RULE_slist_o__i__s__i__s_param_type_p_ = 5;
TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_param_type_p__p_ = 6;
TypedBNFParser.RULE_eslist_o__i__s__i__s_param_type_p_ = 7;
TypedBNFParser.RULE_arrow_typ = 8;
TypedBNFParser.RULE_slist_o__i__s__i__s_typ_p_ = 9;
TypedBNFParser.RULE_typ2 = 10;
TypedBNFParser.RULE_type_product = 11;
TypedBNFParser.RULE_top_typ = 12;
TypedBNFParser.RULE_tvar = 13;
TypedBNFParser.RULE_tvar_str = 14;
TypedBNFParser.RULE_param_type = 15;
TypedBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_ = 16;
TypedBNFParser.RULE_type_params = 17;
TypedBNFParser.RULE_field_ann = 18;
TypedBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_ = 19;
TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_ = 20;
TypedBNFParser.RULE_eslist_o__i__s__i__s_field_ann_p_ = 21;
TypedBNFParser.RULE_field_anns = 22;
TypedBNFParser.RULE_decl = 23;
TypedBNFParser.RULE_toplevel = 24;
TypedBNFParser.RULE_slist_o__i__s__i__s_identstr_p_ = 25;
TypedBNFParser.RULE_def = 26;
TypedBNFParser.RULE_productions = 27;
TypedBNFParser.RULE_list_o_psym_p_ = 28;
TypedBNFParser.RULE_empty_o_list_o_psym_p__p_ = 29;
TypedBNFParser.RULE_elist_o_psym_p_ = 30;
TypedBNFParser.RULE_production = 31;
TypedBNFParser.RULE_slist_o__i__s__i__s_psym_p_ = 32;
TypedBNFParser.RULE_psym = 33;
TypedBNFParser.RULE_ann = 34;
TypedBNFParser.RULE_slist_o__i__s__i__s_ann_p_ = 35;
TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_ann_p__p_ = 36;
TypedBNFParser.RULE_eslist_o__i__s__i__s_ann_p_ = 37;
TypedBNFParser.RULE_func_parameters = 38;
TypedBNFParser.RULE_expr = 39;
TypedBNFParser.RULE_call = 40;
TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_expr_p__p_ = 41;
TypedBNFParser.RULE_eslist_o__i__s__i__s_expr_p_ = 42;
TypedBNFParser.RULE_slist_o__i__s__i__s_expr_p_ = 43;
TypedBNFParser.RULE_atomexp = 44;
TypedBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_ = 45;
TypedBNFParser.RULE_lexer__y_ = 46;
TypedBNFParser.RULE_list_o_lexer_atomexpr_p_ = 47;
TypedBNFParser.RULE_lexer_and = 48;
TypedBNFParser.RULE_lexer_atomexpr = 49;
TypedBNFParser.RULE_lexer_atom = 50;
TypedBNFParser.RULE_lexerdef = 51; // tslint:disable:no-trailing-whitespace

TypedBNFParser.ruleNames = ["start", "list_o_toplevel_p_", "start__y_", "identstr", "typ", "slist_o__i__s__i__s_param_type_p_", "empty_o_slist_o__i__s__i__s_param_type_p__p_", "eslist_o__i__s__i__s_param_type_p_", "arrow_typ", "slist_o__i__s__i__s_typ_p_", "typ2", "type_product", "top_typ", "tvar", "tvar_str", "param_type", "slist_o__i__s__i__s_tvar_str_p_", "type_params", "field_ann", "slist_o__i__s__i__s_field_ann_p_", "empty_o_slist_o__i__s__i__s_field_ann_p__p_", "eslist_o__i__s__i__s_field_ann_p_", "field_anns", "decl", "toplevel", "slist_o__i__s__i__s_identstr_p_", "def", "productions", "list_o_psym_p_", "empty_o_list_o_psym_p__p_", "elist_o_psym_p_", "production", "slist_o__i__s__i__s_psym_p_", "psym", "ann", "slist_o__i__s__i__s_ann_p_", "empty_o_slist_o__i__s__i__s_ann_p__p_", "eslist_o__i__s__i__s_ann_p_", "func_parameters", "expr", "call", "empty_o_slist_o__i__s__i__s_expr_p__p_", "eslist_o__i__s__i__s_expr_p_", "slist_o__i__s__i__s_expr_p_", "atomexp", "slist_o__i__u__i__s_lexer_and_p_", "lexer__y_", "list_o_lexer_atomexpr_p_", "lexer_and", "lexer_atomexpr", "lexer_atom", "lexerdef"];
TypedBNFParser._LITERAL_NAMES = [undefined, "','", "'->'", "'('", "')'", "'<'", "'>'", "'*'", "'''", "':'", "'extern'", "'var'", "'case'", "'type'", "'ignore'", "'|'", "'{'", "'}'", "'let'", "'='", "'in'", "'fun'", "';'", "'$'", "'['", "']'", "'.'", "'true'", "'false'", "'+'", "'?'", "'!'", "'\\'", "'_'"];
TypedBNFParser._SYMBOLIC_NAMES = [undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, "UNICODE_RANGE", "RANGE", "CNAMEPLUS", "INT", "WS", "FLOAT", "ESCAPED_STRING", "CPP_COMMENT", "C_COMMENT"];
TypedBNFParser.VOCABULARY = new _VocabularyImpl.VocabularyImpl(TypedBNFParser._LITERAL_NAMES, TypedBNFParser._SYMBOLIC_NAMES, []);
TypedBNFParser._serializedATNSegments = 2;
TypedBNFParser._serializedATNSegment0 = "\x03\uC91D\uCABA\u058D\uAFBA\u4F53\u0607\uEA8B\uC241\x03,\u029D\x04\x02" + "\t\x02\x04\x03\t\x03\x04\x04\t\x04\x04\x05\t\x05\x04\x06\t\x06\x04\x07" + "\t\x07\x04\b\t\b\x04\t\t\t\x04\n\t\n\x04\v\t\v\x04\f\t\f\x04\r\t\r\x04" + "\x0E\t\x0E\x04\x0F\t\x0F\x04\x10\t\x10\x04\x11\t\x11\x04\x12\t\x12\x04" + "\x13\t\x13\x04\x14\t\x14\x04\x15\t\x15\x04\x16\t\x16\x04\x17\t\x17\x04" + "\x18\t\x18\x04\x19\t\x19\x04\x1A\t\x1A\x04\x1B\t\x1B\x04\x1C\t\x1C\x04" + "\x1D\t\x1D\x04\x1E\t\x1E\x04\x1F\t\x1F\x04 \t \x04!\t!\x04\"\t\"\x04#" + "\t#\x04$\t$\x04%\t%\x04&\t&\x04\'\t\'\x04(\t(\x04)\t)\x04*\t*\x04+\t+" + "\x04,\t,\x04-\t-\x04.\t.\x04/\t/\x040\t0\x041\t1\x042\t2\x043\t3\x044" + "\t4\x045\t5\x03\x02\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03" + "\x03\x03\x03\x03\x03\x03\x03\x03\x03\x07\x03w\n\x03\f\x03\x0E\x03z\v\x03" + "\x03\x04\x03\x04\x03\x04\x03\x05\x03\x05\x03\x05\x03\x06\x03\x06\x03\x06" + "\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07" + "\x07\x07\x8E\n\x07\f\x07\x0E\x07\x91\v\x07\x03\b\x03\b\x03\b\x03\b\x05" + "\b\x97\n\b\x03\t\x03\t\x03\t\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n" + "\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x03\n\x05\n\xAB\n\n\x03\v\x03" + "\v\x03\v\x03\v\x03\v\x03\v\x03\v\x03\v\x03\v\x07\v\xB6\n\v\f\v\x0E\v\xB9" + "\v\v\x03\f\x03\f\x03\f\x03\f\x03\f\x03\f\x05\f\xC1\n\f\x03\f\x03\f\x03" + "\f\x03\f\x03\f\x03\f\x07\f\xC9\n\f\f\f\x0E\f\xCC\v\f\x03\r\x03\r\x03\r" + "\x03\r\x03\r\x03\r\x03\r\x03\r\x03\r\x07\r\xD7\n\r\f\r\x0E\r\xDA\v\r\x03" + "\x0E\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x03\x0E\x05" + "\x0E\xE5\n\x0E\x03\x0F\x03\x0F\x03\x0F\x03\x0F\x03\x10\x03\x10\x03\x10" + "\x03\x10\x03\x11\x03\x11\x03\x11\x03\x11\x03\x11\x03\x11\x03\x11\x03\x11" + "\x05\x11\xF7\n\x11\x03\x12\x03\x12\x03\x12\x03\x12\x03\x12\x03\x12\x03" + "\x12\x03\x12\x03\x12\x07\x12\u0102\n\x12\f\x12\x0E\x12\u0105\v\x12\x03" + "\x13\x03\x13\x03\x13\x03\x13\x03\x13\x03\x13\x05\x13\u010D\n\x13\x03\x14" + "\x03\x14\x03\x14\x03\x14\x03\x14\x03\x15\x03\x15\x03\x15\x03\x15\x03\x15" + "\x03\x15\x03\x15\x03\x15\x03\x15\x07\x15\u011D\n\x15\f\x15\x0E\x15\u0120" + "\v\x15\x03\x16\x03\x16\x03\x16\x03\x16\x05\x16\u0126\n\x16\x03\x17\x03" + "\x17\x03\x17\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x03\x18\x05\x18\u0131" + "\n\x18\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19" + "\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19" + "\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19\x03\x19" + "\x05\x19\u014D\n\x19\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03" + "\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x03\x1A\x05\x1A\u015C\n\x1A" + "\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B\x03\x1B" + "\x07\x1B\u0167\n\x1B\f\x1B\x0E\x1B\u016A\v\x1B\x03\x1C\x03\x1C\x03\x1C" + "\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x03\x1C\x05\x1C" + "\u0177\n\x1C\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03\x1D\x03" + "\x1D\x03\x1D\x03\x1D\x07\x1D\u0183\n\x1D\f\x1D\x0E\x1D\u0186\v\x1D\x03" + "\x1E\x03\x1E\x03\x1E\x03\x1E\x03\x1E\x03\x1E\x03\x1E\x03\x1E\x07\x1E\u0190" + "\n\x1E\f\x1E\x0E\x1E\u0193\v\x1E\x03\x1F\x03\x1F\x03\x1F\x03\x1F\x05\x1F" + "\u0199\n\x1F\x03 \x03 \x03 \x03!\x03!\x03!\x03!\x03!\x03!\x03\"\x03\"" + "\x03\"\x03\"\x03\"\x03\"\x03\"\x03\"\x03\"\x07\"\u01AD\n\"\f\"\x0E\"\u01B0" + "\v\"\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#\x03#" + "\x03#\x03#\x03#\x05#\u01C2\n#\x03$\x03$\x03$\x03$\x03$\x03%\x03%\x03%" + "\x03%\x03%\x03%\x03%\x03%\x03%\x07%\u01D2\n%\f%\x0E%\u01D5\v%\x03&\x03" + "&\x03&\x03&\x05&\u01DB\n&\x03\'\x03\'\x03\'\x03(\x03(\x03(\x03(\x03(\x03" + ")\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x03" + ")\x03)\x03)\x03)\x03)\x03)\x03)\x03)\x05)\u01FB\n)\x03*\x03*\x03*\x03" + "*\x03*\x03*\x03*\x03*\x03*\x03*\x07*\u0207\n*\f*\x0E*\u020A\v*\x03+\x03" + "+\x03+\x03+\x05+\u0210\n+\x03,\x03,\x03,\x03-\x03-\x03-\x03-\x03-\x03" + "-\x03-\x03-\x03-\x07-\u021E\n-\f-\x0E-\u0221\v-\x03.\x03.\x03.\x03.\x03" + ".\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03" + ".\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x03.\x05.\u0240\n.\x03" + ".\x03.\x03.\x03.\x07.\u0246\n.\f.\x0E.\u0249\v.\x03/\x03/\x03/\x03/\x03" + "/\x03/\x03/\x03/\x03/\x07/\u0254\n/\f/\x0E/\u0257\v/\x030\x030\x030\x03" + "1\x031\x031\x031\x031\x031\x031\x031\x071\u0264\n1\f1\x0E1\u0267\v1\x03" + "2\x032\x032\x033\x033\x033\x033\x033\x033\x033\x033\x033\x033\x033\x03" + "3\x033\x073\u0279\n3\f3\x0E3\u027C\v3\x034\x034\x034\x034\x034\x034\x03" + "4\x034\x034\x034\x034\x034\x034\x034\x034\x034\x034\x034\x034\x034\x03" + "4\x034\x034\x054\u0295\n4\x035\x035\x035\x035\x035\x035\x035\x02\x02\x14" + "\x04\f\x14\x16\x18\"(48:BHRXZ\\`d6\x02\x02\x04\x02\x06\x02\b\x02\n\x02" + "\f\x02\x0E\x02\x10\x02\x12\x02\x14\x02\x16\x02\x18\x02\x1A\x02\x1C\x02" + "\x1E\x02 \x02\"\x02$\x02&\x02(\x02*\x02,\x02.\x020\x022\x024\x026\x02" + "8\x02:\x02<\x02>\x02@\x02B\x02D\x02F\x02H\x02J\x02L\x02N\x02P\x02R\x02" + "T\x02V\x02X\x02Z\x02\\\x02^\x02`\x02b\x02d\x02f\x02h\x02\x02\x02\x02\u02A6" + "\x02j\x03\x02\x02\x02\x04n\x03\x02\x02\x02\x06{\x03\x02\x02\x02\b~\x03" + "\x02\x02\x02\n\x81\x03\x02\x02\x02\f\x84\x03\x02\x02\x02\x0E\x96\x03\x02" + "\x02\x02\x10\x98\x03\x02\x02\x02\x12\xAA\x03\x02\x02\x02\x14\xAC\x03\x02" + "\x02\x02\x16\xC0\x03\x02\x02\x02\x18\xCD\x03\x02\x02\x02\x1A\xE4\x03\x02" + "\x02\x02\x1C\xE6\x03\x02\x02\x02\x1E\xEA\x03\x02\x02\x02 \xF6\x03\x02" + "\x02\x02\"\xF8\x03\x02\x02\x02$\u010C\x03\x02\x02\x02&\u010E\x03\x02\x02" + "\x02(\u0113\x03\x02\x02\x02*\u0125\x03\x02\x02\x02,\u0127\x03\x02\x02" + "\x02.\u0130\x03\x02\x02\x020\u014C\x03\x02\x02\x022\u015B\x03\x02\x02" + "\x024\u015D\x03\x02\x02\x026\u0176\x03\x02\x02\x028\u0178\x03\x02\x02" + "\x02:\u0187\x03\x02\x02\x02<\u0198\x03\x02\x02\x02>\u019A\x03\x02\x02" + "\x02@\u019D\x03\x02\x02\x02B\u01A3\x03\x02\x02\x02D\u01C1\x03\x02\x02" + "\x02F\u01C3\x03\x02\x02\x02H\u01C8\x03\x02\x02\x02J\u01DA\x03\x02\x02" + "\x02L\u01DC\x03\x02\x02\x02N\u01DF\x03\x02\x02\x02P\u01FA\x03\x02\x02" + "\x02R\u01FC\x03\x02\x02\x02T\u020F\x03\x02\x02\x02V\u0211\x03\x02\x02" + "\x02X\u0214\x03\x02\x02\x02Z\u023F\x03\x02\x02\x02\\\u024A\x03\x02\x02" + "\x02^\u0258\x03\x02\x02\x02`\u025B\x03\x02\x02\x02b\u0268\x03\x02\x02" + "\x02d\u026B\x03\x02\x02\x02f\u0294\x03\x02\x02\x02h\u0296\x03\x02\x02" + "\x02jk\x05\x06\x04\x02kl\x07\x02\x02\x03lm\b\x02\x01\x02m\x03\x03\x02" + "\x02\x02no\b\x03\x01\x02op\x052\x1A\x02pq\b\x03\x01\x02qx\x03\x02\x02" + "\x02rs\f\x03\x02\x02st\x052\x1A\x02tu\b\x03\x01\x02uw\x03\x02\x02\x02" + "vr\x03\x02\x02\x02wz\x03\x02\x02\x02xv\x03\x02\x02\x02xy\x03\x02\x02\x02" + "y\x05\x03\x02\x02\x02zx\x03\x02\x02\x02{|\x05\x04\x03\x02|}\b\x04\x01" + "\x02}\x07\x03\x02\x02\x02~\x7F\x07&\x02\x02\x7F\x80\b\x05\x01\x02\x80" + "\t\x03\x02\x02\x02\x81\x82\x05\x12\n\x02\x82\x83\b\x06\x01\x02\x83\v\x03" + "\x02\x02\x02\x84\x85\b\x07\x01\x02\x85\x86\x05 \x11\x02\x86\x87\b\x07" + "\x01\x02\x87\x8F\x03\x02\x02\x02\x88\x89\f\x03\x02\x02\x89\x8A\x07\x03" + "\x02\x02\x8A\x8B\x05 \x11\x02\x8B\x8C\b\x07\x01\x02\x8C\x8E\x03\x02\x02" + "\x02\x8D\x88\x03\x02\x02\x02\x8E\x91\x03\x02\x02\x02\x8F\x8D\x03\x02\x02" + "\x02\x8F\x90\x03\x02\x02\x02\x90\r\x03\x02\x02\x02\x91\x8F\x03\x02\x02" + "\x02\x92\x97\b\b\x01\x02\x93\x94\x05\f\x07\x02\x94\x95\b\b\x01\x02\x95" + "\x97\x03\x02\x02\x02\x96\x92\x03\x02\x02\x02\x96\x93\x03\x02\x02\x02\x97" + "\x0F\x03\x02\x02\x02\x98\x99\x05\x0E\b\x02\x99\x9A\b\t\x01\x02\x9A\x11" + "\x03\x02\x02\x02\x9B\x9C\x05\x16\f\x02\x9C\x9D\x07\x04\x02\x02\x9D\x9E" + "\x05\x12\n\x02\x9E\x9F\b\n\x01\x02\x9F\xAB\x03\x02\x02\x02\xA0\xA1\x07" + "\x05\x02\x02\xA1\xA2\x05\x10\t\x02\xA2\xA3\x07\x06\x02\x02\xA3\xA4\x07" + "\x04\x02\x02\xA4\xA5\x05\x12\n\x02\xA5\xA6\b\n\x01\x02\xA6\xAB\x03\x02" + "\x02\x02\xA7\xA8\x05\x18\r\x02\xA8\xA9\b\n\x01\x02\xA9\xAB\x03\x02\x02" + "\x02\xAA\x9B\x03\x02\x02\x02\xAA\xA0\x03\x02\x02\x02\xAA\xA7\x03\x02\x02" + "\x02\xAB\x13\x03\x02\x02\x02\xAC\xAD\b\v\x01\x02\xAD\xAE\x05\n\x06\x02" + "\xAE\xAF\b\v\x01\x02\xAF\xB7\x03\x02\x02\x02\xB0\xB1\f\x03\x02\x02\xB1" + "\xB2\x07\x03\x02\x02\xB2\xB3\x05\n\x06\x02\xB3\xB4\b\v\x01\x02\xB4\xB6" + "\x03\x02\x02\x02\xB5\xB0\x03\x02\x02\x02\xB6\xB9\x03\x02\x02\x02\xB7\xB5" + "\x03\x02\x02\x02\xB7\xB8\x03\x02\x02\x02\xB8\x15\x03\x02\x02\x02\xB9\xB7" + "\x03\x02\x02\x02\xBA\xBB\b\f\x01\x02\xBB\xBC\x07&\x02\x02\xBC\xC1\b\f" + "\x01\x02\xBD\xBE\x05\x1C\x0F\x02\xBE\xBF\b\f\x01\x02\xBF\xC1\x03\x02\x02" + "\x02\xC0\xBA\x03\x02\x02\x02\xC0\xBD\x03\x02\x02\x02\xC1\xCA\x03\x02\x02" + "\x02\xC2\xC3\f\x03\x02\x02\xC3\xC4\x07\x07\x02\x02\xC4\xC5\x05\x14\v\x02" + "\xC5\xC6\x07\b\x02\x02\xC6\xC7\b\f\x01\x02\xC7\xC9\x03\x02\x02\x02\xC8" + "\xC2\x03\x02\x02\x02\xC9\xCC\x03\x02\x02\x02\xCA\xC8\x03\x02\x02\x02\xCA" + "\xCB\x03\x02\x02\x02\xCB\x17\x03\x02\x02\x02\xCC\xCA\x03\x02\x02\x02\xCD" + "\xCE\b\r\x01\x02\xCE\xCF\x05\x16\f\x02\xCF\xD0\b\r\x01\x02\xD0\xD8\x03" + "\x02\x02\x02\xD1\xD2\f\x04\x02\x02\xD2\xD3\x07\t\x02\x02\xD3\xD4\x05\x16" + "\f\x02\xD4\xD5\b\r\x01\x02\xD5\xD7\x03\x02\x02\x02\xD6\xD1\x03\x02\x02" + "\x02\xD7\xDA\x03\x02\x02\x02\xD8\xD6\x03\x02\x02\x02\xD8\xD9\x03\x02\x02" + "\x02\xD9\x19\x03\x02\x02\x02\xDA\xD8\x03\x02\x02\x02\xDB\xDC\x07\x07\x02" + "\x02\xDC\xDD\x05\"\x12\x02\xDD\xDE\x07\b\x02\x02\xDE\xDF\x05\n\x06\x02" + "\xDF\xE0\b\x0E\x01\x02\xE0\xE5\x03\x02\x02\x02\xE1\xE2\x05\n\x06\x02\xE2" + "\xE3\b\x0E\x01\x02\xE3\xE5\x03\x02\x02\x02\xE4\xDB\x03\x02\x02\x02\xE4" + "\xE1\x03\x02\x02\x02\xE5\x1B\x03\x02\x02\x02\xE6\xE7\x07\n\x02\x02\xE7" + "\xE8\x07&\x02\x02\xE8\xE9\b\x0F\x01\x02\xE9\x1D\x03\x02\x02\x02\xEA\xEB" + "\x07\n\x02\x02\xEB\xEC\x07&\x02\x02\xEC\xED\b\x10\x01\x02\xED\x1F\x03" + "\x02\x02\x02\xEE\xEF\x07&\x02\x02\xEF\xF0\x07\v\x02\x02\xF0\xF1\x05\n" + "\x06\x02\xF1\xF2\b\x11\x01\x02\xF2\xF7\x03\x02\x02\x02\xF3\xF4\x05\n\x06" + "\x02\xF4\xF5\b\x11\x01\x02\xF5\xF7\x03\x02\x02\x02\xF6\xEE\x03\x02\x02" + "\x02\xF6\xF3\x03\x02\x02\x02\xF7!\x03\x02\x02\x02\xF8\xF9\b\x12\x01\x02" + "\xF9\xFA\x05\x1E\x10\x02\xFA\xFB\b\x12\x01\x02\xFB\u0103\x03\x02\x02\x02" + "\xFC\xFD\f\x03\x02\x02\xFD\xFE\x07\x03\x02\x02\xFE\xFF\x05\x1E\x10\x02" + "\xFF\u0100\b\x12\x01\x02\u0100\u0102\x03\x02\x02\x02\u0101\xFC\x03\x02" + "\x02\x02\u0102\u0105\x03\x02\x02\x02\u0103\u0101\x03\x02\x02\x02\u0103" + "\u0104\x03\x02\x02\x02\u0104#\x03\x02\x02\x02\u0105\u0103\x03\x02\x02" + "\x02\u0106\u0107\x07\x07\x02\x02\u0107\u0108\x05\"\x12\x02\u0108\u0109" + "\x07\b\x02\x02\u0109\u010A\b\x13\x01\x02\u010A\u010D\x03\x02\x02\x02\u010B" + "\u010D\b\x13\x01\x02\u010C\u0106\x03\x02\x02\x02\u010C\u010B\x03\x02\x02" + "\x02\u010D%\x03\x02\x02\x02\u010E\u010F\x07&\x02\x02\u010F\u0110\x07\v" + "\x02\x02\u0110\u0111\x05\n\x06\x02\u0111\u0112\b\x14\x01\x02\u0112\'\x03" + "\x02\x02\x02\u0113\u0114\b\x15\x01\x02\u0114\u0115\x05&\x14\x02\u0115" + "\u0116\b\x15\x01\x02\u0116\u011E\x03\x02\x02\x02\u0117\u0118\f\x03\x02" + "\x02\u0118\u0119\x07\x03\x02\x02\u0119\u011A\x05&\x14\x02\u011A\u011B" + "\b\x15\x01\x02\u011B\u011D\x03\x02\x02\x02\u011C\u0117\x03\x02\x02\x02" + "\u011D\u0120\x03\x02\x02\x02\u011E\u011C\x03\x02\x02\x02\u011E\u011F\x03" + "\x02\x02\x02\u011F)\x03\x02\x02\x02\u0120\u011E\x03\x02\x02\x02\u0121" + "\u0126\b\x16\x01\x02\u0122\u0123\x05(\x15\x02\u0123\u0124\b\x16\x01\x02" + "\u0124\u0126\x03\x02\x02\x02\u0125\u0121\x03\x02\x02\x02\u0125\u0122\x03" + "\x02\x02\x02\u0126+\x03\x02\x02\x02\u0127\u0128\x05*\x16\x02\u0128\u0129" + "\b\x17\x01\x02\u0129-\x03\x02\x02\x02\u012A\u012B\x07\x05\x02\x02\u012B" + "\u012C\x05,\x17\x02\u012C\u012D\x07\x06\x02\x02\u012D\u012E\b\x18\x01" + "\x02\u012E\u0131\x03\x02\x02\x02\u012F\u0131\b\x18\x01\x02\u0130\u012A" + "\x03\x02\x02\x02\u0130\u012F\x03\x02\x02\x02\u0131/\x03\x02\x02\x02\u0132" + "\u0133\x07\f\x02\x02\u0133\u0134\x07\r\x02\x02\u0134\u0135\x05\b\x05\x02" + "\u0135\u0136\x07\v\x02\x02\u0136\u0137\x05\x1A\x0E\x02\u0137\u0138\b\x19" + "\x01\x02\u0138\u014D\x03\x02\x02\x02\u0139\u013A\x07\x0E\x02\x02\u013A" + "\u013B\x05\b\x05\x02\u013B\u013C\x07\v\x02\x02\u013C\u013D\x05\n\x06\x02" + "\u013D\u013E\b\x19\x01\x02\u013E\u014D\x03\x02\x02\x02\u013F\u0140\x07" + "\f\x02\x02\u0140\u0141\x07\x0F\x02\x02\u0141\u0142\x05\b\x05\x02\u0142" + "\u0143\x05$\x13\x02\u0143\u0144\x05.\x18\x02\u0144\u0145\b\x19\x01\x02" + "\u0145\u014D\x03\x02\x02\x02\u0146\u0147\x07\x0F\x02\x02\u0147\u0148\x05" + "\b\x05\x02\u0148\u0149\x05$\x13\x02\u0149\u014A\x05.\x18\x02\u014A\u014B" + "\b\x19\x01\x02\u014B\u014D\x03\x02\x02\x02\u014C\u0132\x03\x02\x02\x02" + "\u014C\u0139\x03\x02\x02\x02\u014C\u013F\x03\x02\x02\x02\u014C\u0146\x03" + "\x02\x02\x02\u014D1\x03\x02\x02\x02\u014E\u014F\x056\x1C\x02\u014F\u0150" + "\b\x1A\x01\x02\u0150\u015C\x03\x02\x02\x02\u0151\u0152\x050\x19\x02\u0152" + "\u0153\b\x1A\x01\x02\u0153\u015C\x03\x02\x02\x02\u0154\u0155\x05h5\x02" + "\u0155\u0156\b\x1A\x01\x02\u0156\u015C\x03\x02\x02\x02\u0157\u0158\x07" + "\x10\x02\x02\u0158\u0159\x054\x1B\x02\u0159\u015A\b\x1A\x01\x02\u015A" + "\u015C\x03\x02\x02\x02\u015B\u014E\x03\x02\x02\x02\u015B\u0151\x03\x02" + "\x02\x02\u015B\u0154\x03\x02\x02\x02\u015B\u0157\x03\x02\x02\x02\u015C" + "3\x03\x02\x02\x02\u015D\u015E\b\x1B\x01\x02\u015E\u015F\x05\b\x05\x02" + "\u015F\u0160\b\x1B\x01\x02\u0160\u0168\x03\x02\x02\x02\u0161\u0162\f\x03" + "\x02\x02\u0162\u0163\x07\x03\x02\x02\u0163\u0164\x05\b\x05\x02\u0164\u0165" + "\b\x1B\x01\x02\u0165\u0167\x03\x02\x02\x02\u0166\u0161\x03\x02\x02\x02" + "\u0167\u016A\x03\x02\x02\x02\u0168\u0166\x03\x02\x02\x02\u0168\u0169\x03" + "\x02\x02\x02\u01695\x03\x02\x02\x02\u016A\u0168\x03\x02\x02\x02\u016B" + "\u016C\x07&\x02\x02\u016C\u016D\x07\x05\x02\x02\u016D\u016E\x054\x1B\x02" + "\u016E\u016F\x07\x06\x02\x02\u016F\u0170\x058\x1D\x02\u0170\u0171\b\x1C" + "\x01\x02\u0171\u0177\x03\x02\x02\x02\u0172\u0173\x07&\x02\x02\u0173\u0174" + "\x058\x1D\x02\u0174\u0175\b\x1C\x01\x02\u0175\u0177\x03\x02\x02\x02\u0176" + "\u016B\x03\x02\x02\x02\u0176\u0172\x03\x02\x02\x02\u01777\x03\x02\x02" + "\x02\u0178\u0179\b\x1D\x01\x02\u0179\u017A\x07\v\x02\x02\u017A\u017B\x05" + "@!\x02\u017B\u017C\b\x1D\x01\x02\u017C\u0184\x03\x02\x02\x02\u017D\u017E" + "\f\x03\x02\x02\u017E\u017F\x07\x11\x02\x02\u017F\u0180\x05@!\x02\u0180" + "\u0181\b\x1D\x01\x02\u0181\u0183\x03\x02\x02\x02\u0182\u017D\x03\x02\x02" + "\x02\u0183\u0186\x03\x02\x02\x02\u0184\u0182\x03\x02\x02\x02\u0184\u0185" + "\x03\x02\x02\x02\u01859\x03\x02\x02\x02\u0186\u0184\x03\x02\x02\x02\u0187" + "\u0188\b\x1E\x01\x02\u0188\u0189\x05D#\x02\u0189\u018A\b\x1E\x01\x02\u018A" + "\u0191\x03\x02\x02\x02\u018B\u018C\f\x03\x02\x02\u018C\u018D\x05D#\x02" + "\u018D\u018E\b\x1E\x01\x02\u018E\u0190\x03\x02\x02\x02\u018F\u018B\x03" + "\x02\x02\x02\u0190\u0193\x03\x02\x02\x02\u0191\u018F\x03\x02\x02\x02\u0191" + "\u0192\x03\x02\x02\x02\u0192;\x03\x02\x02\x02\u0193\u0191\x03\x02\x02" + "\x02\u0194\u0199\b\x1F\x01\x02\u0195\u0196\x05:\x1E\x02\u0196\u0197\b" + "\x1F\x01\x02\u0197\u0199\x03\x02\x02\x02\u0198\u0194\x03\x02\x02\x02\u0198" + "\u0195\x03\x02\x02\x02\u0199=\x03\x02\x02\x02\u019A\u019B\x05<\x1F\x02" + "\u019B\u019C\b \x01\x02\u019C?\x03\x02\x02\x02\u019D\u019E\x05> \x02\u019E" + "\u019F\x07\x12\x02\x02\u019F\u01A0\x05P)\x02\u01A0\u01A1\x07\x13\x02\x02" + "\u01A1\u01A2\b!\x01\x02\u01A2A\x03\x02\x02\x02\u01A3\u01A4\b\"\x01\x02" + "\u01A4\u01A5\x05D#\x02\u01A5\u01A6\b\"\x01\x02\u01A6\u01AE\x03\x02\x02" + "\x02\u01A7\u01A8\f\x03\x02\x02\u01A8\u01A9\x07\x03\x02\x02\u01A9\u01AA" + "\x05D#\x02\u01AA\u01AB\b\"\x01\x02\u01AB\u01AD\x03\x02\x02\x02\u01AC\u01A7" + "\x03\x02\x02\x02\u01AD\u01B0\x03\x02\x02\x02\u01AE\u01AC\x03\x02\x02\x02" + "\u01AE\u01AF\x03\x02\x02\x02\u01AFC\x03\x02\x02\x02\u01B0\u01AE\x03\x02" + "\x02\x02\u01B1\u01B2\x07\x07\x02\x02\u01B2\u01B3\x05\b\x05\x02\u01B3\u01B4" + "\x07\b\x02\x02\u01B4\u01B5\b#\x01\x02\u01B5\u01C2\x03\x02\x02\x02\u01B6" + "\u01B7\x07*\x02\x02\u01B7\u01C2\b#\x01\x02\u01B8\u01B9\x05\b\x05\x02\u01B9" + "\u01BA\b#\x01\x02\u01BA\u01C2\x03\x02\x02\x02\u01BB\u01BC\x07&\x02\x02" + "\u01BC\u01BD\x07\x05\x02\x02\u01BD\u01BE\x05B\"\x02\u01BE\u01BF\x07\x06" + "\x02\x02\u01BF\u01C0\b#\x01\x02\u01C0\u01C2\x03\x02\x02\x02\u01C1\u01B1" + "\x03\x02\x02\x02\u01C1\u01B6\x03\x02\x02\x02\u01C1\u01B8\x03\x02\x02\x02" + "\u01C1\u01BB\x03\x02\x02\x02\u01C2E\x03\x02\x02\x02\u01C3\u01C4\x05\b" + "\x05\x02\u01C4\u01C5\x07\v\x02\x02\u01C5\u01C6\x05\n\x06\x02\u01C6\u01C7" + "\b$\x01\x02\u01C7G\x03\x02\x02\x02\u01C8\u01C9\b%\x01\x02\u01C9\u01CA" + "\x05F$\x02\u01CA\u01CB\b%\x01\x02\u01CB\u01D3\x03\x02\x02\x02\u01CC\u01CD" + "\f\x03\x02\x02\u01CD\u01CE\x07\x03\x02\x02\u01CE\u01CF\x05F$\x02\u01CF" + "\u01D0\b%\x01\x02\u01D0\u01D2\x03\x02\x02\x02\u01D1\u01CC\x03\x02\x02" + "\x02\u01D2\u01D5\x03\x02\x02\x02\u01D3\u01D1\x03\x02\x02\x02\u01D3\u01D4" + "\x03\x02\x02\x02\u01D4I\x03\x02\x02\x02\u01D5\u01D3\x03\x02\x02\x02\u01D6" + "\u01DB\b&\x01\x02\u01D7\u01D8\x05H%\x02\u01D8\u01D9\b&\x01\x02\u01D9\u01DB" + "\x03\x02\x02\x02\u01DA\u01D6\x03\x02\x02\x02\u01DA\u01D7\x03\x02\x02\x02" + "\u01DBK\x03\x02\x02\x02\u01DC\u01DD\x05J&\x02\u01DD\u01DE\b\'\x01\x02" + "\u01DEM\x03\x02\x02\x02\u01DF\u01E0\x07\x05\x02\x02\u01E0\u01E1\x05L\'" + "\x02\u01E1\u01E2\x07\x06\x02\x02\u01E2\u01E3\b(\x01\x02\u01E3O\x03\x02" + "\x02\x02\u01E4\u01E5\x07\x14\x02\x02\u01E5\u01E6\x05\b\x05\x02\u01E6\u01E7" + "\x07\x15\x02\x02\u01E7\u01E8\x05P)\x02\u01E8\u01E9\x07\x16\x02\x02\u01E9" + "\u01EA\x05P)\x02\u01EA\u01EB\b)\x01\x02\u01EB\u01FB\x03\x02\x02\x02\u01EC" + "\u01ED\x07\x17\x02\x02\u01ED\u01EE\x05N(\x02\u01EE\u01EF\x07\x04\x02\x02" + "\u01EF\u01F0\x05P)\x02\u01F0\u01F1\b)\x01\x02\u01F1\u01FB\x03\x02\x02" + "\x02\u01F2\u01F3\x05R*\x02\u01F3\u01F4\b)\x01\x02\u01F4\u01FB\x03\x02" + "\x02\x02\u01F5\u01F6\x05R*\x02\u01F6\u01F7\x07\x18\x02\x02\u01F7\u01F8" + "\x05P)\x02\u01F8\u01F9\b)\x01\x02\u01F9\u01FB\x03\x02\x02\x02\u01FA\u01E4" + "\x03\x02\x02\x02\u01FA\u01EC\x03\x02\x02\x02\u01FA\u01F2\x03\x02\x02\x02" + "\u01FA\u01F5\x03\x02\x02\x02\u01FBQ\x03\x02\x02\x02\u01FC\u01FD\b*\x01" + "\x02\u01FD\u01FE\x05Z.\x02\u01FE\u01FF\b*\x01\x02\u01FF\u0208\x03\x02" + "\x02\x02\u0200\u0201\f\x04\x02\x02\u0201\u0202\x07\x05\x02\x02\u0202\u0203" + "\x05V,\x02\u0203\u0204\x07\x06\x02\x02\u0204\u0205\b*\x01\x02\u0205\u0207" + "\x03\x02\x02\x02\u0206\u0200\x03\x02\x02\x02\u0207\u020A\x03\x02\x02\x02" + "\u0208\u0206\x03\x02\x02\x02\u0208\u0209\x03\x02\x02\x02\u0209S\x03\x02" + "\x02\x02\u020A\u0208\x03\x02\x02\x02\u020B\u0210\b+\x01\x02\u020C\u020D" + "\x05X-\x02\u020D\u020E\b+\x01\x02\u020E\u0210\x03\x02\x02\x02\u020F\u020B" + "\x03\x02\x02\x02\u020F\u020C\x03\x02\x02\x02\u0210U\x03\x02\x02\x02\u0211" + "\u0212\x05T+\x02\u0212\u0213\b,\x01\x02\u0213W\x03\x02\x02\x02\u0214\u0215" + "\b-\x01\x02\u0215\u0216\x05P)\x02\u0216\u0217\b-\x01\x02\u0217\u021F\x03" + "\x02\x02\x02\u0218\u0219\f\x03\x02\x02\u0219\u021A\x07\x03\x02\x02\u021A" + "\u021B\x05P)\x02\u021B\u021C\b-\x01\x02\u021C\u021E\x03\x02\x02\x02\u021D" + "\u0218\x03\x02\x02\x02\u021E\u0221\x03\x02\x02\x02\u021F\u021D\x03\x02" + "\x02\x02\u021F\u0220\x03\x02\x02\x02\u0220Y\x03\x02\x02\x02\u0221\u021F" + "\x03\x02\x02\x02\u0222\u0223\b.\x01\x02\u0223\u0224\x07\'\x02\x02\u0224" + "\u0240\b.\x01\x02\u0225\u0226\x07)\x02\x02\u0226\u0240\b.\x01\x02\u0227" + "\u0228\x07*\x02\x02\u0228\u0240\b.\x01\x02\u0229\u022A\x07\x19\x02\x02" + "\u022A\u022B\x07\'\x02\x02\u022B\u0240\b.\x01\x02\u022C\u022D\x07\x1A" + "\x02\x02\u022D\u022E\x05V,\x02\u022E\u022F\x07\x1B\x02\x02\u022F\u0230" + "\b.\x01\x02\u0230\u0240\x03\x02\x02\x02\u0231\u0232\x07\x05\x02\x02\u0232" + "\u0233\x07\x06\x02\x02\u0233\u0240\b.\x01\x02\u0234\u0235\x07\x05\x02" + "\x02\u0235\u0236\x05X-\x02\u0236\u0237\x07\x06\x02\x02\u0237\u0238\b." + "\x01\x02\u0238\u0240\x03\x02\x02\x02\u0239\u023A\x07&\x02\x02\u023A\u0240" + "\b.\x01\x02\u023B\u023C\x07\x1D\x02\x02\u023C\u0240\b.\x01\x02\u023D\u023E" + "\x07\x1E\x02\x02\u023E\u0240\b.\x01\x02\u023F\u0222\x03\x02\x02\x02\u023F" + "\u0225\x03\x02\x02\x02\u023F\u0227\x03\x02\x02\x02\u023F\u0229\x03\x02" + "\x02\x02\u023F\u022C\x03\x02\x02\x02\u023F\u0231\x03\x02\x02\x02\u023F" + "\u0234\x03\x02\x02\x02\u023F\u0239\x03\x02\x02\x02\u023F\u023B\x03\x02" + "\x02\x02\u023F\u023D\x03\x02\x02\x02\u0240\u0247\x03\x02\x02\x02\u0241" + "\u0242\f\x05\x02\x02\u0242\u0243\x07\x1C\x02\x02\u0243\u0244\x07&\x02" + "\x02\u0244\u0246\b.\x01\x02\u0245\u0241\x03\x02\x02\x02\u0246\u0249\x03" + "\x02\x02\x02\u0247\u0245\x03\x02\x02\x02\u0247\u0248";
TypedBNFParser._serializedATNSegment1 = "\x03\x02\x02\x02\u0248[\x03\x02\x02\x02\u0249\u0247\x03\x02\x02\x02\u024A" + "\u024B\b/\x01\x02\u024B\u024C\x05b2\x02\u024C\u024D\b/\x01\x02\u024D\u0255" + "\x03\x02\x02\x02\u024E\u024F\f\x03\x02\x02\u024F\u0250\x07\x11\x02\x02" + "\u0250\u0251\x05b2\x02\u0251\u0252\b/\x01\x02\u0252\u0254\x03\x02\x02" + "\x02\u0253\u024E\x03\x02\x02\x02\u0254\u0257\x03\x02\x02\x02\u0255\u0253" + "\x03\x02\x02\x02\u0255\u0256\x03\x02\x02\x02\u0256]\x03\x02\x02\x02\u0257" + "\u0255\x03\x02\x02\x02\u0258\u0259\x05\\/\x02\u0259\u025A\b0\x01\x02\u025A" + "_\x03\x02\x02\x02\u025B\u025C\b1\x01\x02\u025C\u025D\x05d3\x02\u025D\u025E" + "\b1\x01\x02\u025E\u0265\x03\x02\x02\x02\u025F\u0260\f\x03\x02\x02\u0260" + "\u0261\x05d3\x02\u0261\u0262\b1\x01\x02\u0262\u0264\x03\x02\x02\x02\u0263" + "\u025F\x03\x02\x02\x02\u0264\u0267\x03\x02\x02\x02\u0265\u0263\x03\x02" + "\x02\x02\u0265\u0266\x03\x02\x02\x02\u0266a\x03\x02\x02\x02\u0267\u0265" + "\x03\x02\x02\x02\u0268\u0269\x05`1\x02\u0269\u026A\b2\x01\x02\u026Ac\x03" + "\x02\x02\x02\u026B\u026C\b3\x01\x02\u026C\u026D\x05f4\x02\u026D\u026E" + "\b3\x01\x02\u026E\u027A\x03\x02\x02\x02\u026F\u0270\f\x06\x02\x02\u0270" + "\u0271\x07\x1F\x02\x02\u0271\u0279\b3\x01\x02\u0272\u0273\f\x05\x02\x02" + "\u0273\u0274\x07\t\x02\x02\u0274\u0279\b3\x01\x02\u0275\u0276\f\x04\x02" + "\x02\u0276\u0277\x07 \x02\x02\u0277\u0279\b3\x01\x02\u0278\u026F\x03\x02" + "\x02\x02\u0278\u0272\x03\x02\x02\x02\u0278\u0275\x03\x02\x02\x02\u0279" + "\u027C\x03\x02\x02\x02\u027A\u0278\x03\x02\x02\x02\u027A\u027B\x03\x02" + "\x02\x02\u027Be\x03\x02\x02\x02\u027C\u027A\x03\x02\x02\x02\u027D\u027E" + "\x07*\x02\x02\u027E\u0295\b4\x01\x02\u027F\u0280\x07!\x02\x02\u0280\u0281" + "\x05f4\x02\u0281\u0282\b4\x01\x02\u0282\u0295\x03\x02\x02\x02\u0283\u0284" + "\x07\x05\x02\x02\u0284\u0285\x05^0\x02\u0285\u0286\x07\x06\x02\x02\u0286" + "\u0287\b4\x01\x02\u0287\u0295\x03\x02\x02\x02\u0288\u0289\x07\"\x02\x02" + "\u0289\u0295\b4\x01\x02\u028A\u028B\x07%\x02\x02\u028B\u0295\b4\x01\x02" + "\u028C\u028D\x07$\x02\x02\u028D\u0295\b4\x01\x02\u028E\u028F\x07#\x02" + "\x02\u028F\u0295\b4\x01\x02\u0290\u0291\x07\x1C\x02\x02\u0291\u0295\b" + "4\x01\x02\u0292\u0293\x07&\x02\x02\u0293\u0295\b4\x01\x02\u0294\u027D" + "\x03\x02\x02\x02\u0294\u027F\x03\x02\x02\x02\u0294\u0283\x03\x02\x02\x02" + "\u0294\u0288\x03\x02\x02\x02\u0294\u028A\x03\x02\x02\x02\u0294\u028C\x03" + "\x02\x02\x02\u0294\u028E\x03\x02\x02\x02\u0294\u0290\x03\x02\x02\x02\u0294" + "\u0292\x03\x02\x02\x02\u0295g\x03\x02\x02\x02\u0296\u0297\x07&\x02\x02" + "\u0297\u0298\x07\x15\x02\x02\u0298\u0299\x05^0\x02\u0299\u029A\x07\x18" + "\x02\x02\u029A\u029B\b5\x01\x02\u029Bi\x03\x02\x02\x02\'x\x8F\x96\xAA" + "\xB7\xC0\xCA\xD8\xE4\xF6\u0103\u010C\u011E\u0125\u0130\u014C\u015B\u0168" + "\u0176\u0184\u0191\u0198\u01AE\u01C1\u01D3\u01DA\u01FA\u0208\u020F\u021F" + "\u023F\u0247\u0255\u0265\u0278\u027A\u0294";
TypedBNFParser._serializedATN = Utils.join([TypedBNFParser._serializedATNSegment0, TypedBNFParser._serializedATNSegment1], "");

class StartContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  EOF() {
    return this.getToken(TypedBNFParser.EOF, 0);
  }

  start__y_() {
    return this.getRuleContext(0, Start__y_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_start;
  } // @Override


  enterRule(listener) {
    if (listener.enterStart) {
      listener.enterStart(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitStart) {
      listener.exitStart(this);
    }
  }

}

exports.StartContext = StartContext;

class List_o_toplevel_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  toplevel() {
    return this.getRuleContext(0, ToplevelContext);
  }

  list_o_toplevel_p_() {
    return this.tryGetRuleContext(0, List_o_toplevel_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_list_o_toplevel_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterList_o_toplevel_p_) {
      listener.enterList_o_toplevel_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitList_o_toplevel_p_) {
      listener.exitList_o_toplevel_p_(this);
    }
  }

}

exports.List_o_toplevel_p_Context = List_o_toplevel_p_Context;

class Start__y_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  list_o_toplevel_p_() {
    return this.getRuleContext(0, List_o_toplevel_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_start__y_;
  } // @Override


  enterRule(listener) {
    if (listener.enterStart__y_) {
      listener.enterStart__y_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitStart__y_) {
      listener.exitStart__y_(this);
    }
  }

}

exports.Start__y_Context = Start__y_Context;

class IdentstrContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  CNAMEPLUS() {
    return this.getToken(TypedBNFParser.CNAMEPLUS, 0);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_identstr;
  } // @Override


  enterRule(listener) {
    if (listener.enterIdentstr) {
      listener.enterIdentstr(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitIdentstr) {
      listener.exitIdentstr(this);
    }
  }

}

exports.IdentstrContext = IdentstrContext;

class TypContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  arrow_typ() {
    return this.getRuleContext(0, Arrow_typContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_typ;
  } // @Override


  enterRule(listener) {
    if (listener.enterTyp) {
      listener.enterTyp(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitTyp) {
      listener.exitTyp(this);
    }
  }

}

exports.TypContext = TypContext;

class Slist_o__i__s__i__s_param_type_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  param_type() {
    return this.getRuleContext(0, Param_typeContext);
  }

  slist_o__i__s__i__s_param_type_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_param_type_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_slist_o__i__s__i__s_param_type_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterSlist_o__i__s__i__s_param_type_p_) {
      listener.enterSlist_o__i__s__i__s_param_type_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitSlist_o__i__s__i__s_param_type_p_) {
      listener.exitSlist_o__i__s__i__s_param_type_p_(this);
    }
  }

}

exports.Slist_o__i__s__i__s_param_type_p_Context = Slist_o__i__s__i__s_param_type_p_Context;

class Empty_o_slist_o__i__s__i__s_param_type_p__p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  slist_o__i__s__i__s_param_type_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_param_type_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_param_type_p__p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterEmpty_o_slist_o__i__s__i__s_param_type_p__p_) {
      listener.enterEmpty_o_slist_o__i__s__i__s_param_type_p__p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitEmpty_o_slist_o__i__s__i__s_param_type_p__p_) {
      listener.exitEmpty_o_slist_o__i__s__i__s_param_type_p__p_(this);
    }
  }

}

exports.Empty_o_slist_o__i__s__i__s_param_type_p__p_Context = Empty_o_slist_o__i__s__i__s_param_type_p__p_Context;

class Eslist_o__i__s__i__s_param_type_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  empty_o_slist_o__i__s__i__s_param_type_p__p_() {
    return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_param_type_p__p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_eslist_o__i__s__i__s_param_type_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterEslist_o__i__s__i__s_param_type_p_) {
      listener.enterEslist_o__i__s__i__s_param_type_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitEslist_o__i__s__i__s_param_type_p_) {
      listener.exitEslist_o__i__s__i__s_param_type_p_(this);
    }
  }

}

exports.Eslist_o__i__s__i__s_param_type_p_Context = Eslist_o__i__s__i__s_param_type_p_Context;

class Arrow_typContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  typ2() {
    return this.tryGetRuleContext(0, Typ2Context);
  }

  arrow_typ() {
    return this.tryGetRuleContext(0, Arrow_typContext);
  }

  eslist_o__i__s__i__s_param_type_p_() {
    return this.tryGetRuleContext(0, Eslist_o__i__s__i__s_param_type_p_Context);
  }

  type_product() {
    return this.tryGetRuleContext(0, Type_productContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_arrow_typ;
  } // @Override


  enterRule(listener) {
    if (listener.enterArrow_typ) {
      listener.enterArrow_typ(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitArrow_typ) {
      listener.exitArrow_typ(this);
    }
  }

}

exports.Arrow_typContext = Arrow_typContext;

class Slist_o__i__s__i__s_typ_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  typ() {
    return this.getRuleContext(0, TypContext);
  }

  slist_o__i__s__i__s_typ_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_typ_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_slist_o__i__s__i__s_typ_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterSlist_o__i__s__i__s_typ_p_) {
      listener.enterSlist_o__i__s__i__s_typ_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitSlist_o__i__s__i__s_typ_p_) {
      listener.exitSlist_o__i__s__i__s_typ_p_(this);
    }
  }

}

exports.Slist_o__i__s__i__s_typ_p_Context = Slist_o__i__s__i__s_typ_p_Context;

class Typ2Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  CNAMEPLUS() {
    return this.tryGetToken(TypedBNFParser.CNAMEPLUS, 0);
  }

  tvar() {
    return this.tryGetRuleContext(0, TvarContext);
  }

  typ2() {
    return this.tryGetRuleContext(0, Typ2Context);
  }

  slist_o__i__s__i__s_typ_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_typ_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_typ2;
  } // @Override


  enterRule(listener) {
    if (listener.enterTyp2) {
      listener.enterTyp2(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitTyp2) {
      listener.exitTyp2(this);
    }
  }

}

exports.Typ2Context = Typ2Context;

class Type_productContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  type_product() {
    return this.tryGetRuleContext(0, Type_productContext);
  }

  typ2() {
    return this.getRuleContext(0, Typ2Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_type_product;
  } // @Override


  enterRule(listener) {
    if (listener.enterType_product) {
      listener.enterType_product(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitType_product) {
      listener.exitType_product(this);
    }
  }

}

exports.Type_productContext = Type_productContext;

class Top_typContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  slist_o__i__s__i__s_tvar_str_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_tvar_str_p_Context);
  }

  typ() {
    return this.getRuleContext(0, TypContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_top_typ;
  } // @Override


  enterRule(listener) {
    if (listener.enterTop_typ) {
      listener.enterTop_typ(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitTop_typ) {
      listener.exitTop_typ(this);
    }
  }

}

exports.Top_typContext = Top_typContext;

class TvarContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  CNAMEPLUS() {
    return this.getToken(TypedBNFParser.CNAMEPLUS, 0);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_tvar;
  } // @Override


  enterRule(listener) {
    if (listener.enterTvar) {
      listener.enterTvar(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitTvar) {
      listener.exitTvar(this);
    }
  }

}

exports.TvarContext = TvarContext;

class Tvar_strContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  CNAMEPLUS() {
    return this.getToken(TypedBNFParser.CNAMEPLUS, 0);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_tvar_str;
  } // @Override


  enterRule(listener) {
    if (listener.enterTvar_str) {
      listener.enterTvar_str(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitTvar_str) {
      listener.exitTvar_str(this);
    }
  }

}

exports.Tvar_strContext = Tvar_strContext;

class Param_typeContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  CNAMEPLUS() {
    return this.tryGetToken(TypedBNFParser.CNAMEPLUS, 0);
  }

  typ() {
    return this.getRuleContext(0, TypContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_param_type;
  } // @Override


  enterRule(listener) {
    if (listener.enterParam_type) {
      listener.enterParam_type(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitParam_type) {
      listener.exitParam_type(this);
    }
  }

}

exports.Param_typeContext = Param_typeContext;

class Slist_o__i__s__i__s_tvar_str_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  tvar_str() {
    return this.getRuleContext(0, Tvar_strContext);
  }

  slist_o__i__s__i__s_tvar_str_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_tvar_str_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_slist_o__i__s__i__s_tvar_str_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterSlist_o__i__s__i__s_tvar_str_p_) {
      listener.enterSlist_o__i__s__i__s_tvar_str_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitSlist_o__i__s__i__s_tvar_str_p_) {
      listener.exitSlist_o__i__s__i__s_tvar_str_p_(this);
    }
  }

}

exports.Slist_o__i__s__i__s_tvar_str_p_Context = Slist_o__i__s__i__s_tvar_str_p_Context;

class Type_paramsContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  slist_o__i__s__i__s_tvar_str_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_tvar_str_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_type_params;
  } // @Override


  enterRule(listener) {
    if (listener.enterType_params) {
      listener.enterType_params(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitType_params) {
      listener.exitType_params(this);
    }
  }

}

exports.Type_paramsContext = Type_paramsContext;

class Field_annContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  CNAMEPLUS() {
    return this.getToken(TypedBNFParser.CNAMEPLUS, 0);
  }

  typ() {
    return this.getRuleContext(0, TypContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_field_ann;
  } // @Override


  enterRule(listener) {
    if (listener.enterField_ann) {
      listener.enterField_ann(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitField_ann) {
      listener.exitField_ann(this);
    }
  }

}

exports.Field_annContext = Field_annContext;

class Slist_o__i__s__i__s_field_ann_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  field_ann() {
    return this.getRuleContext(0, Field_annContext);
  }

  slist_o__i__s__i__s_field_ann_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_field_ann_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_slist_o__i__s__i__s_field_ann_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterSlist_o__i__s__i__s_field_ann_p_) {
      listener.enterSlist_o__i__s__i__s_field_ann_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitSlist_o__i__s__i__s_field_ann_p_) {
      listener.exitSlist_o__i__s__i__s_field_ann_p_(this);
    }
  }

}

exports.Slist_o__i__s__i__s_field_ann_p_Context = Slist_o__i__s__i__s_field_ann_p_Context;

class Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  slist_o__i__s__i__s_field_ann_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_field_ann_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_field_ann_p__p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterEmpty_o_slist_o__i__s__i__s_field_ann_p__p_) {
      listener.enterEmpty_o_slist_o__i__s__i__s_field_ann_p__p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitEmpty_o_slist_o__i__s__i__s_field_ann_p__p_) {
      listener.exitEmpty_o_slist_o__i__s__i__s_field_ann_p__p_(this);
    }
  }

}

exports.Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context = Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context;

class Eslist_o__i__s__i__s_field_ann_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  empty_o_slist_o__i__s__i__s_field_ann_p__p_() {
    return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_field_ann_p__p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_eslist_o__i__s__i__s_field_ann_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterEslist_o__i__s__i__s_field_ann_p_) {
      listener.enterEslist_o__i__s__i__s_field_ann_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitEslist_o__i__s__i__s_field_ann_p_) {
      listener.exitEslist_o__i__s__i__s_field_ann_p_(this);
    }
  }

}

exports.Eslist_o__i__s__i__s_field_ann_p_Context = Eslist_o__i__s__i__s_field_ann_p_Context;

class Field_annsContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  eslist_o__i__s__i__s_field_ann_p_() {
    return this.tryGetRuleContext(0, Eslist_o__i__s__i__s_field_ann_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_field_anns;
  } // @Override


  enterRule(listener) {
    if (listener.enterField_anns) {
      listener.enterField_anns(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitField_anns) {
      listener.exitField_anns(this);
    }
  }

}

exports.Field_annsContext = Field_annsContext;

class DeclContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  identstr() {
    return this.getRuleContext(0, IdentstrContext);
  }

  top_typ() {
    return this.tryGetRuleContext(0, Top_typContext);
  }

  typ() {
    return this.tryGetRuleContext(0, TypContext);
  }

  type_params() {
    return this.tryGetRuleContext(0, Type_paramsContext);
  }

  field_anns() {
    return this.tryGetRuleContext(0, Field_annsContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_decl;
  } // @Override


  enterRule(listener) {
    if (listener.enterDecl) {
      listener.enterDecl(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitDecl) {
      listener.exitDecl(this);
    }
  }

}

exports.DeclContext = DeclContext;

class ToplevelContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  def() {
    return this.tryGetRuleContext(0, DefContext);
  }

  decl() {
    return this.tryGetRuleContext(0, DeclContext);
  }

  lexerdef() {
    return this.tryGetRuleContext(0, LexerdefContext);
  }

  slist_o__i__s__i__s_identstr_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_identstr_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_toplevel;
  } // @Override


  enterRule(listener) {
    if (listener.enterToplevel) {
      listener.enterToplevel(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitToplevel) {
      listener.exitToplevel(this);
    }
  }

}

exports.ToplevelContext = ToplevelContext;

class Slist_o__i__s__i__s_identstr_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  identstr() {
    return this.getRuleContext(0, IdentstrContext);
  }

  slist_o__i__s__i__s_identstr_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_identstr_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_slist_o__i__s__i__s_identstr_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterSlist_o__i__s__i__s_identstr_p_) {
      listener.enterSlist_o__i__s__i__s_identstr_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitSlist_o__i__s__i__s_identstr_p_) {
      listener.exitSlist_o__i__s__i__s_identstr_p_(this);
    }
  }

}

exports.Slist_o__i__s__i__s_identstr_p_Context = Slist_o__i__s__i__s_identstr_p_Context;

class DefContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  CNAMEPLUS() {
    return this.getToken(TypedBNFParser.CNAMEPLUS, 0);
  }

  slist_o__i__s__i__s_identstr_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_identstr_p_Context);
  }

  productions() {
    return this.getRuleContext(0, ProductionsContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_def;
  } // @Override


  enterRule(listener) {
    if (listener.enterDef) {
      listener.enterDef(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitDef) {
      listener.exitDef(this);
    }
  }

}

exports.DefContext = DefContext;

class ProductionsContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  production() {
    return this.getRuleContext(0, ProductionContext);
  }

  productions() {
    return this.tryGetRuleContext(0, ProductionsContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_productions;
  } // @Override


  enterRule(listener) {
    if (listener.enterProductions) {
      listener.enterProductions(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitProductions) {
      listener.exitProductions(this);
    }
  }

}

exports.ProductionsContext = ProductionsContext;

class List_o_psym_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  psym() {
    return this.getRuleContext(0, PsymContext);
  }

  list_o_psym_p_() {
    return this.tryGetRuleContext(0, List_o_psym_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_list_o_psym_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterList_o_psym_p_) {
      listener.enterList_o_psym_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitList_o_psym_p_) {
      listener.exitList_o_psym_p_(this);
    }
  }

}

exports.List_o_psym_p_Context = List_o_psym_p_Context;

class Empty_o_list_o_psym_p__p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  list_o_psym_p_() {
    return this.tryGetRuleContext(0, List_o_psym_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_empty_o_list_o_psym_p__p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterEmpty_o_list_o_psym_p__p_) {
      listener.enterEmpty_o_list_o_psym_p__p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitEmpty_o_list_o_psym_p__p_) {
      listener.exitEmpty_o_list_o_psym_p__p_(this);
    }
  }

}

exports.Empty_o_list_o_psym_p__p_Context = Empty_o_list_o_psym_p__p_Context;

class Elist_o_psym_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  empty_o_list_o_psym_p__p_() {
    return this.getRuleContext(0, Empty_o_list_o_psym_p__p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_elist_o_psym_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterElist_o_psym_p_) {
      listener.enterElist_o_psym_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitElist_o_psym_p_) {
      listener.exitElist_o_psym_p_(this);
    }
  }

}

exports.Elist_o_psym_p_Context = Elist_o_psym_p_Context;

class ProductionContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  elist_o_psym_p_() {
    return this.getRuleContext(0, Elist_o_psym_p_Context);
  }

  expr() {
    return this.getRuleContext(0, ExprContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_production;
  } // @Override


  enterRule(listener) {
    if (listener.enterProduction) {
      listener.enterProduction(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitProduction) {
      listener.exitProduction(this);
    }
  }

}

exports.ProductionContext = ProductionContext;

class Slist_o__i__s__i__s_psym_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  psym() {
    return this.getRuleContext(0, PsymContext);
  }

  slist_o__i__s__i__s_psym_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_psym_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_slist_o__i__s__i__s_psym_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterSlist_o__i__s__i__s_psym_p_) {
      listener.enterSlist_o__i__s__i__s_psym_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitSlist_o__i__s__i__s_psym_p_) {
      listener.exitSlist_o__i__s__i__s_psym_p_(this);
    }
  }

}

exports.Slist_o__i__s__i__s_psym_p_Context = Slist_o__i__s__i__s_psym_p_Context;

class PsymContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  identstr() {
    return this.tryGetRuleContext(0, IdentstrContext);
  }

  ESCAPED_STRING() {
    return this.tryGetToken(TypedBNFParser.ESCAPED_STRING, 0);
  }

  CNAMEPLUS() {
    return this.tryGetToken(TypedBNFParser.CNAMEPLUS, 0);
  }

  slist_o__i__s__i__s_psym_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_psym_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_psym;
  } // @Override


  enterRule(listener) {
    if (listener.enterPsym) {
      listener.enterPsym(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitPsym) {
      listener.exitPsym(this);
    }
  }

}

exports.PsymContext = PsymContext;

class AnnContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  identstr() {
    return this.getRuleContext(0, IdentstrContext);
  }

  typ() {
    return this.getRuleContext(0, TypContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_ann;
  } // @Override


  enterRule(listener) {
    if (listener.enterAnn) {
      listener.enterAnn(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitAnn) {
      listener.exitAnn(this);
    }
  }

}

exports.AnnContext = AnnContext;

class Slist_o__i__s__i__s_ann_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  ann() {
    return this.getRuleContext(0, AnnContext);
  }

  slist_o__i__s__i__s_ann_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_ann_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_slist_o__i__s__i__s_ann_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterSlist_o__i__s__i__s_ann_p_) {
      listener.enterSlist_o__i__s__i__s_ann_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitSlist_o__i__s__i__s_ann_p_) {
      listener.exitSlist_o__i__s__i__s_ann_p_(this);
    }
  }

}

exports.Slist_o__i__s__i__s_ann_p_Context = Slist_o__i__s__i__s_ann_p_Context;

class Empty_o_slist_o__i__s__i__s_ann_p__p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  slist_o__i__s__i__s_ann_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_ann_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_ann_p__p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterEmpty_o_slist_o__i__s__i__s_ann_p__p_) {
      listener.enterEmpty_o_slist_o__i__s__i__s_ann_p__p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitEmpty_o_slist_o__i__s__i__s_ann_p__p_) {
      listener.exitEmpty_o_slist_o__i__s__i__s_ann_p__p_(this);
    }
  }

}

exports.Empty_o_slist_o__i__s__i__s_ann_p__p_Context = Empty_o_slist_o__i__s__i__s_ann_p__p_Context;

class Eslist_o__i__s__i__s_ann_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  empty_o_slist_o__i__s__i__s_ann_p__p_() {
    return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_ann_p__p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_eslist_o__i__s__i__s_ann_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterEslist_o__i__s__i__s_ann_p_) {
      listener.enterEslist_o__i__s__i__s_ann_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitEslist_o__i__s__i__s_ann_p_) {
      listener.exitEslist_o__i__s__i__s_ann_p_(this);
    }
  }

}

exports.Eslist_o__i__s__i__s_ann_p_Context = Eslist_o__i__s__i__s_ann_p_Context;

class Func_parametersContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  eslist_o__i__s__i__s_ann_p_() {
    return this.getRuleContext(0, Eslist_o__i__s__i__s_ann_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_func_parameters;
  } // @Override


  enterRule(listener) {
    if (listener.enterFunc_parameters) {
      listener.enterFunc_parameters(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitFunc_parameters) {
      listener.exitFunc_parameters(this);
    }
  }

}

exports.Func_parametersContext = Func_parametersContext;

class ExprContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  identstr() {
    return this.tryGetRuleContext(0, IdentstrContext);
  }

  expr(i) {
    if (i === undefined) {
      return this.getRuleContexts(ExprContext);
    } else {
      return this.getRuleContext(i, ExprContext);
    }
  }

  func_parameters() {
    return this.tryGetRuleContext(0, Func_parametersContext);
  }

  call() {
    return this.tryGetRuleContext(0, CallContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_expr;
  } // @Override


  enterRule(listener) {
    if (listener.enterExpr) {
      listener.enterExpr(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitExpr) {
      listener.exitExpr(this);
    }
  }

}

exports.ExprContext = ExprContext;

class CallContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  call() {
    return this.tryGetRuleContext(0, CallContext);
  }

  eslist_o__i__s__i__s_expr_p_() {
    return this.tryGetRuleContext(0, Eslist_o__i__s__i__s_expr_p_Context);
  }

  atomexp() {
    return this.tryGetRuleContext(0, AtomexpContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_call;
  } // @Override


  enterRule(listener) {
    if (listener.enterCall) {
      listener.enterCall(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitCall) {
      listener.exitCall(this);
    }
  }

}

exports.CallContext = CallContext;

class Empty_o_slist_o__i__s__i__s_expr_p__p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  slist_o__i__s__i__s_expr_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_expr_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_empty_o_slist_o__i__s__i__s_expr_p__p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterEmpty_o_slist_o__i__s__i__s_expr_p__p_) {
      listener.enterEmpty_o_slist_o__i__s__i__s_expr_p__p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitEmpty_o_slist_o__i__s__i__s_expr_p__p_) {
      listener.exitEmpty_o_slist_o__i__s__i__s_expr_p__p_(this);
    }
  }

}

exports.Empty_o_slist_o__i__s__i__s_expr_p__p_Context = Empty_o_slist_o__i__s__i__s_expr_p__p_Context;

class Eslist_o__i__s__i__s_expr_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  empty_o_slist_o__i__s__i__s_expr_p__p_() {
    return this.getRuleContext(0, Empty_o_slist_o__i__s__i__s_expr_p__p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_eslist_o__i__s__i__s_expr_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterEslist_o__i__s__i__s_expr_p_) {
      listener.enterEslist_o__i__s__i__s_expr_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitEslist_o__i__s__i__s_expr_p_) {
      listener.exitEslist_o__i__s__i__s_expr_p_(this);
    }
  }

}

exports.Eslist_o__i__s__i__s_expr_p_Context = Eslist_o__i__s__i__s_expr_p_Context;

class Slist_o__i__s__i__s_expr_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  expr() {
    return this.getRuleContext(0, ExprContext);
  }

  slist_o__i__s__i__s_expr_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_expr_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_slist_o__i__s__i__s_expr_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterSlist_o__i__s__i__s_expr_p_) {
      listener.enterSlist_o__i__s__i__s_expr_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitSlist_o__i__s__i__s_expr_p_) {
      listener.exitSlist_o__i__s__i__s_expr_p_(this);
    }
  }

}

exports.Slist_o__i__s__i__s_expr_p_Context = Slist_o__i__s__i__s_expr_p_Context;

class AtomexpContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  INT() {
    return this.tryGetToken(TypedBNFParser.INT, 0);
  }

  FLOAT() {
    return this.tryGetToken(TypedBNFParser.FLOAT, 0);
  }

  ESCAPED_STRING() {
    return this.tryGetToken(TypedBNFParser.ESCAPED_STRING, 0);
  }

  eslist_o__i__s__i__s_expr_p_() {
    return this.tryGetRuleContext(0, Eslist_o__i__s__i__s_expr_p_Context);
  }

  slist_o__i__s__i__s_expr_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__s__i__s_expr_p_Context);
  }

  CNAMEPLUS() {
    return this.tryGetToken(TypedBNFParser.CNAMEPLUS, 0);
  }

  atomexp() {
    return this.tryGetRuleContext(0, AtomexpContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_atomexp;
  } // @Override


  enterRule(listener) {
    if (listener.enterAtomexp) {
      listener.enterAtomexp(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitAtomexp) {
      listener.exitAtomexp(this);
    }
  }

}

exports.AtomexpContext = AtomexpContext;

class Slist_o__i__u__i__s_lexer_and_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  lexer_and() {
    return this.getRuleContext(0, Lexer_andContext);
  }

  slist_o__i__u__i__s_lexer_and_p_() {
    return this.tryGetRuleContext(0, Slist_o__i__u__i__s_lexer_and_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_slist_o__i__u__i__s_lexer_and_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterSlist_o__i__u__i__s_lexer_and_p_) {
      listener.enterSlist_o__i__u__i__s_lexer_and_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitSlist_o__i__u__i__s_lexer_and_p_) {
      listener.exitSlist_o__i__u__i__s_lexer_and_p_(this);
    }
  }

}

exports.Slist_o__i__u__i__s_lexer_and_p_Context = Slist_o__i__u__i__s_lexer_and_p_Context;

class Lexer__y_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  slist_o__i__u__i__s_lexer_and_p_() {
    return this.getRuleContext(0, Slist_o__i__u__i__s_lexer_and_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_lexer__y_;
  } // @Override


  enterRule(listener) {
    if (listener.enterLexer__y_) {
      listener.enterLexer__y_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitLexer__y_) {
      listener.exitLexer__y_(this);
    }
  }

}

exports.Lexer__y_Context = Lexer__y_Context;

class List_o_lexer_atomexpr_p_Context extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  lexer_atomexpr() {
    return this.getRuleContext(0, Lexer_atomexprContext);
  }

  list_o_lexer_atomexpr_p_() {
    return this.tryGetRuleContext(0, List_o_lexer_atomexpr_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_list_o_lexer_atomexpr_p_;
  } // @Override


  enterRule(listener) {
    if (listener.enterList_o_lexer_atomexpr_p_) {
      listener.enterList_o_lexer_atomexpr_p_(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitList_o_lexer_atomexpr_p_) {
      listener.exitList_o_lexer_atomexpr_p_(this);
    }
  }

}

exports.List_o_lexer_atomexpr_p_Context = List_o_lexer_atomexpr_p_Context;

class Lexer_andContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  list_o_lexer_atomexpr_p_() {
    return this.getRuleContext(0, List_o_lexer_atomexpr_p_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_lexer_and;
  } // @Override


  enterRule(listener) {
    if (listener.enterLexer_and) {
      listener.enterLexer_and(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitLexer_and) {
      listener.exitLexer_and(this);
    }
  }

}

exports.Lexer_andContext = Lexer_andContext;

class Lexer_atomexprContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  lexer_atomexpr() {
    return this.tryGetRuleContext(0, Lexer_atomexprContext);
  }

  lexer_atom() {
    return this.tryGetRuleContext(0, Lexer_atomContext);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_lexer_atomexpr;
  } // @Override


  enterRule(listener) {
    if (listener.enterLexer_atomexpr) {
      listener.enterLexer_atomexpr(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitLexer_atomexpr) {
      listener.exitLexer_atomexpr(this);
    }
  }

}

exports.Lexer_atomexprContext = Lexer_atomexprContext;

class Lexer_atomContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  ESCAPED_STRING() {
    return this.tryGetToken(TypedBNFParser.ESCAPED_STRING, 0);
  }

  lexer_atom() {
    return this.tryGetRuleContext(0, Lexer_atomContext);
  }

  lexer__y_() {
    return this.tryGetRuleContext(0, Lexer__y_Context);
  }

  RANGE() {
    return this.tryGetToken(TypedBNFParser.RANGE, 0);
  }

  UNICODE_RANGE() {
    return this.tryGetToken(TypedBNFParser.UNICODE_RANGE, 0);
  }

  CNAMEPLUS() {
    return this.tryGetToken(TypedBNFParser.CNAMEPLUS, 0);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_lexer_atom;
  } // @Override


  enterRule(listener) {
    if (listener.enterLexer_atom) {
      listener.enterLexer_atom(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitLexer_atom) {
      listener.exitLexer_atom(this);
    }
  }

}

exports.Lexer_atomContext = Lexer_atomContext;

class LexerdefContext extends _ParserRuleContext.ParserRuleContext {
  constructor(parent, invokingState) {
    super(parent, invokingState);
  }

  CNAMEPLUS() {
    return this.getToken(TypedBNFParser.CNAMEPLUS, 0);
  }

  lexer__y_() {
    return this.getRuleContext(0, Lexer__y_Context);
  } // @Override


  get ruleIndex() {
    return TypedBNFParser.RULE_lexerdef;
  } // @Override


  enterRule(listener) {
    if (listener.enterLexerdef) {
      listener.enterLexerdef(this);
    }
  } // @Override


  exitRule(listener) {
    if (listener.exitLexerdef) {
      listener.exitLexerdef(this);
    }
  }

}

exports.LexerdefContext = LexerdefContext;