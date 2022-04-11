"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.MK_Cell = MK_Cell;
exports.MK_Declctor = MK_Declctor;
exports.MK_Decltype = MK_Decltype;
exports.MK_Declvar = MK_Declvar;
exports.MK_Defignore = MK_Defignore;
exports.MK_Deflexer = MK_Deflexer;
exports.MK_Defmacro = MK_Defmacro;
exports.MK_Defrule = MK_Defrule;
exports.MK_EApp = MK_EApp;
exports.MK_EBool = MK_EBool;
exports.MK_EField = MK_EField;
exports.MK_EFlt = MK_EFlt;
exports.MK_EFun = MK_EFun;
exports.MK_EInt = MK_EInt;
exports.MK_ELet = MK_ELet;
exports.MK_EList = MK_EList;
exports.MK_ESlot = MK_ESlot;
exports.MK_EStr = MK_EStr;
exports.MK_ETuple = MK_ETuple;
exports.MK_EVar = MK_EVar;
exports.MK_LGroup = MK_LGroup;
exports.MK_LNot = MK_LNot;
exports.MK_LNumber = void 0;
exports.MK_LOptional = MK_LOptional;
exports.MK_LOr = MK_LOr;
exports.MK_LPlus = MK_LPlus;
exports.MK_LRange = MK_LRange;
exports.MK_LRef = MK_LRef;
exports.MK_LSeq = MK_LSeq;
exports.MK_LStar = MK_LStar;
exports.MK_LStr = MK_LStr;
exports.MK_LWildcard = void 0;
exports.MK_Macrocall = MK_Macrocall;
exports.MK_Mono = MK_Mono;
exports.MK_Nonterm = MK_Nonterm;
exports.MK_Poly = MK_Poly;
exports.MK_TApp = MK_TApp;
exports.MK_TConst = MK_TConst;
exports.MK_TFun = MK_TFun;
exports.MK_TList = MK_TList;
exports.MK_TTuple = MK_TTuple;
exports.MK_TVar = MK_TVar;
exports.MK_Term = MK_Term;
exports.MK_expr = MK_expr;
exports.MK_position = MK_position;
exports.MK_production = MK_production;
exports.build_analyzer = build_analyzer;

var _Grammar = require("./Grammar.js");

var _List = require("../fable_modules/fable-library.3.7.9/List.js");

var _Types = require("../fable_modules/fable-library.3.7.9/Types.js");

var _Array = require("../fable_modules/fable-library.3.7.9/Array.js");

var _Util = require("../fable_modules/fable-library.3.7.9/Util.js");

var _Analysis = require("./Analysis.js");

function MK_Cell() {
  return (0, _Grammar.Cell$1_$ctor)();
}

function MK_position(line, col, filename) {
  return new _Grammar.position(line, col, filename);
}

function MK_EApp(f, args) {
  return new _Grammar.node(0, f, (0, _List.ofArray)(args));
}

function MK_ETuple(args) {
  return new _Grammar.node(1, (0, _List.ofArray)(args));
}

function MK_EList(args) {
  return new _Grammar.node(2, (0, _List.ofArray)(args));
}

function MK_ELet(name, value, body) {
  return new _Grammar.node(4, name, value, body);
}

function MK_EFun(args, body) {
  return new _Grammar.node(5, (0, _List.ofArray)(args), body);
}

function MK_EVar(n) {
  return new _Grammar.node(6, n, new _Types.FSharpRef((0, _List.empty)()));
}

function MK_ESlot(i) {
  return new _Grammar.node(7, i);
}

function MK_EInt(i) {
  return new _Grammar.node(8, i);
}

function MK_EStr(s) {
  return new _Grammar.node(9, s);
}

function MK_EFlt(s) {
  return new _Grammar.node(10, s);
}

function MK_EBool(b) {
  return new _Grammar.node(11, b);
}

function MK_EField(value, field) {
  return new _Grammar.node(3, value, field);
}

function MK_expr(node, pos) {
  return new _Grammar.expr(node, pos, new _Grammar.monot(1, "bot"));
}

function MK_TConst(n) {
  return new _Grammar.monot(1, n);
}

function MK_TApp(f, args) {
  return new _Grammar.monot(2, f, (0, _List.ofArray)(args));
}

function MK_TFun(args, ret) {
  return new _Grammar.monot(3, (0, _List.ofArray)(args), ret);
}

function MK_TVar(n) {
  return new _Grammar.monot(4, n);
}

function MK_TTuple(xs) {
  if (xs.length === 1) {
    return xs[0];
  } else {
    return (0, _Grammar.TTuple)((0, _List.ofArray)(xs));
  }
}

function MK_TList(a) {
  return (0, _Grammar.TList)(a);
}

function MK_LStr(s) {
  return new _Grammar.lexerule(3, s);
}

const MK_LNumber = new _Grammar.lexerule(0);
exports.MK_LNumber = MK_LNumber;
const MK_LWildcard = new _Grammar.lexerule(1);
exports.MK_LWildcard = MK_LWildcard;

function MK_LSeq(xs) {
  if (!(0, _Array.equalsWith)(_Util.equals, xs, null) && xs.length === 1) {
    return xs[0];
  } else {
    return new _Grammar.lexerule(2, (0, _List.ofArray)(xs));
  }
}

function MK_LOr(xs) {
  if (!(0, _Array.equalsWith)(_Util.equals, xs, null) && xs.length === 1) {
    return xs[0];
  } else {
    return new _Grammar.lexerule(4, (0, _List.ofArray)(xs));
  }
}

function MK_LNot(x) {
  return new _Grammar.lexerule(5, x);
}

function MK_LPlus(x) {
  return new _Grammar.lexerule(6, x);
}

function MK_LStar(x) {
  return new _Grammar.lexerule(7, x);
}

function MK_LOptional(x) {
  return new _Grammar.lexerule(8, x);
}

function MK_LGroup(x) {
  return new _Grammar.lexerule(9, x);
}

function MK_LRange(x, y) {
  return new _Grammar.lexerule(10, x, y);
}

function MK_LRef(x) {
  return new _Grammar.lexerule(11, x);
}

function MK_Defignore(ignoreList, pos) {
  return new _Grammar.definition(6, {
    ignoreList: (0, _List.ofArray)(ignoreList),
    pos: pos
  });
}

function MK_Defmacro(lhs, parameters, define, pos) {
  let parameters_1;
  return new _Grammar.definition(0, (parameters_1 = (0, _List.ofArray)(parameters), {
    define: (0, _List.ofArray)(define),
    lhs: lhs,
    parameters: parameters_1,
    pos: pos
  }));
}

function MK_Defrule(lhs, define, pos) {
  return new _Grammar.definition(1, {
    define: (0, _List.ofArray)(define),
    lhs: lhs,
    pos: pos
  });
}

function MK_Deflexer(lhs, define, pos) {
  return new _Grammar.definition(2, {
    define: define,
    lhs: lhs,
    pos: pos
  });
}

function MK_Declvar(ident, t, pos) {
  return new _Grammar.definition(3, {
    ident: ident,
    pos: pos,
    t: t
  });
}

function MK_Declctor(ident, t, pos) {
  return new _Grammar.definition(4, {
    ident: ident,
    pos: pos,
    t: t
  });
}

function MK_Decltype(external, hasFields, ident, parameters, fields, pos) {
  let parameters_1;
  return new _Grammar.definition(5, (parameters_1 = (0, _List.ofArray)(parameters), {
    external: external,
    fields: (0, _List.ofArray)(fields),
    hasFields: hasFields,
    ident: ident,
    parameters: parameters_1,
    pos: pos
  }));
}

function MK_production(symbols, action) {
  return new _Grammar.production((0, _List.ofArray)(symbols), action);
}

function MK_Term(define, is_literal) {
  return new _Grammar.symbol(0, define, is_literal);
}

function MK_Nonterm(define) {
  return new _Grammar.symbol(1, define);
}

function MK_Macrocall(n, syms, position) {
  return new _Grammar.symbol(2, n, (0, _List.ofArray)(syms), position);
}

function MK_Poly(bounds, monot) {
  return new _Grammar.polyt(0, (0, _List.ofArray)(bounds), (0, _Grammar.processPolyType$0027)(bounds, monot));
}

function MK_Mono(monot) {
  return new _Grammar.polyt(1, monot);
}

function build_analyzer(stmts) {
  return (0, _Analysis.build_analyzer)(stmts);
}