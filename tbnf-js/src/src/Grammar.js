"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.$007CTTuple$007C_$007C = $007CTTuple$007C_$007C;
exports.Cell$1 = void 0;
exports.Cell$1$reflection = Cell$1$reflection;
exports.Cell$1_$ctor = Cell$1_$ctor;
exports.Cell$1__Set_2B595 = Cell$1__Set_2B595;
exports.Cell$1__get_Get = Cell$1__get_Get;
exports.Cell$1__get_IsNull = Cell$1__get_IsNull;
exports.TConst_tuple = exports.TConst_token = exports.TConst_str = exports.TConst_list = exports.TConst_int = exports.TConst_float = exports.TConst_bool = void 0;
exports.TList = TList;
exports.TTuple = TTuple;
exports.definition = exports._predefined_typenames = void 0;
exports.definition$reflection = definition$reflection;
exports.definition__Inspect = definition__Inspect;
exports.definition__get_Position = definition__get_Position;
exports.expr = void 0;
exports.expr$reflection = expr$reflection;
exports.expr_WithNode = expr_WithNode;
exports.expr__DeepCopy = expr__DeepCopy;
exports.expr__TransformChildren_Z51B8244A = expr__TransformChildren_Z51B8244A;
exports.lexerule = void 0;
exports.lexerule$reflection = lexerule$reflection;
exports.monot = void 0;
exports.monot$reflection = monot$reflection;
exports.monot__ApplyToChildren_Z6A62BCBF = monot__ApplyToChildren_Z6A62BCBF;
exports.monot__FindAnyChildren_Z23D07CE9 = monot__FindAnyChildren_Z23D07CE9;
exports.monot__Prune = monot__Prune;
exports.monot__SubstGen_1D5B3D8E = monot__SubstGen_1D5B3D8E;
exports.monot__TransformChildren_Z2CAB662A = monot__TransformChildren_Z2CAB662A;
exports.node = void 0;
exports.node$reflection = node$reflection;
exports.polyt = void 0;
exports.polyt$reflection = polyt$reflection;
exports.position = void 0;
exports.position$reflection = position$reflection;
exports.position_get_Fake = position_get_Fake;
exports.production = void 0;
exports.production$reflection = production$reflection;
exports.symbol = void 0;
exports.symbol$reflection = symbol$reflection;
exports.symbol__Inspect = symbol__Inspect;

var _Types = require("../fable_modules/fable-library.3.7.9/Types.js");

var _Reflection = require("../fable_modules/fable-library.3.7.9/Reflection.js");

var _List = require("../fable_modules/fable-library.3.7.9/List.js");

var _Map = require("../fable_modules/fable-library.3.7.9/Map.js");

var _String = require("../fable_modules/fable-library.3.7.9/String.js");

var _Utils = require("./Utils.js");

var _Option = require("../fable_modules/fable-library.3.7.9/Option.js");

class Cell$1 {
  constructor() {
    this._cell = null;
  }

  toString() {
    const __ = this;

    if (Cell$1__get_IsNull(__)) {
      return "\u003cnull\u003e";
    } else {
      let copyOfStruct = Cell$1__get_Get(__);
      return (0, _Types.toString)(copyOfStruct);
    }
  }

}

exports.Cell$1 = Cell$1;

function Cell$1$reflection(gen0) {
  return (0, _Reflection.class_type)("tbnf.Grammar.Cell`1", [gen0], Cell$1);
}

function Cell$1_$ctor() {
  return new Cell$1();
}

function Cell$1__Set_2B595(this$, a) {
  this$._cell = a;
}

function Cell$1__get_Get(this$) {
  return this$._cell;
}

function Cell$1__get_IsNull(this$) {
  return this$._cell === null;
}

class position extends _Types.Record {
  constructor(line, col, filename) {
    super();
    this.line = line | 0;
    this.col = col | 0;
    this.filename = filename;
  }

}

exports.position = position;

function position$reflection() {
  return (0, _Reflection.record_type)("tbnf.Grammar.position", [], position, () => [["line", _Reflection.int32_type], ["col", _Reflection.int32_type], ["filename", _Reflection.string_type]]);
}

class node extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["EApp", "ETuple", "EList", "EField", "ELet", "EFun", "EVar", "ESlot", "EInt", "EStr", "EFlt", "EBool"];
  }

}

exports.node = node;

function node$reflection() {
  return (0, _Reflection.union_type)("tbnf.Grammar.node", [], node, () => [[["Item1", expr$reflection()], ["Item2", (0, _Reflection.list_type)(expr$reflection())]], [["Item", (0, _Reflection.list_type)(expr$reflection())]], [["Item", (0, _Reflection.list_type)(expr$reflection())]], [["Item1", expr$reflection()], ["Item2", _Reflection.string_type]], [["Item1", _Reflection.string_type], ["Item2", expr$reflection()], ["Item3", expr$reflection()]], [["Item1", (0, _Reflection.list_type)((0, _Reflection.tuple_type)(_Reflection.string_type, monot$reflection()))], ["Item2", expr$reflection()]], [["Item1", _Reflection.string_type], ["Item2", (0, _Reflection.record_type)("Microsoft.FSharp.Core.FSharpRef`1", [(0, _Reflection.list_type)(monot$reflection())], _Types.FSharpRef, () => [["contents", (0, _Reflection.list_type)(monot$reflection())]])]], [["Item", _Reflection.int32_type]], [["Item", _Reflection.int32_type]], [["Item", _Reflection.string_type]], [["Item", _Reflection.float64_type]], [["Item", _Reflection.bool_type]]]);
}

class expr extends _Types.Record {
  constructor(node, pos, t) {
    super();
    this.node = node;
    this.pos = pos;
    this.t = t;
  }

}

exports.expr = expr;

function expr$reflection() {
  return (0, _Reflection.record_type)("tbnf.Grammar.expr", [], expr, () => [["node", node$reflection()], ["pos", position$reflection()], ["t", monot$reflection()]]);
}

class monot extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["TRef", "TConst", "TApp", "TFun", "TVar"];
  }

}

exports.monot = monot;

function monot$reflection() {
  return (0, _Reflection.union_type)("tbnf.Grammar.monot", [], monot, () => [[["Item", Cell$1$reflection(monot$reflection())]], [["Item", _Reflection.string_type]], [["Item1", monot$reflection()], ["Item2", (0, _Reflection.list_type)(monot$reflection())]], [["Item1", (0, _Reflection.list_type)((0, _Reflection.tuple_type)(_Reflection.string_type, monot$reflection()))], ["Item2", monot$reflection()]], [["Item", _Reflection.string_type]]]);
}

class polyt extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["Poly", "Mono"];
  }

}

exports.polyt = polyt;

function polyt$reflection() {
  return (0, _Reflection.union_type)("tbnf.Grammar.polyt", [], polyt, () => [[["Item1", (0, _Reflection.list_type)(_Reflection.string_type)], ["Item2", monot$reflection()]], [["Item", monot$reflection()]]]);
}

class production extends _Types.Record {
  constructor(symbols, action) {
    super();
    this.symbols = symbols;
    this.action = action;
  }

}

exports.production = production;

function production$reflection() {
  return (0, _Reflection.record_type)("tbnf.Grammar.production", [], production, () => [["symbols", (0, _Reflection.list_type)(symbol$reflection())], ["action", expr$reflection()]]);
}

class symbol extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["Term", "Nonterm", "Macrocall"];
  }

}

exports.symbol = symbol;

function symbol$reflection() {
  return (0, _Reflection.union_type)("tbnf.Grammar.symbol", [], symbol, () => [[["Item1", _Reflection.string_type], ["Item2", _Reflection.bool_type]], [["Item", _Reflection.string_type]], [["Item1", _Reflection.string_type], ["Item2", (0, _Reflection.list_type)(symbol$reflection())], ["Item3", position$reflection()]]]);
}

class definition extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["Defmacro", "Defrule", "Deflexer", "Declvar", "Declctor", "Decltype", "Defignore"];
  }

}

exports.definition = definition;

function definition$reflection() {
  return (0, _Reflection.union_type)("tbnf.Grammar.definition", [], definition, () => [[["Item", (0, _Reflection.anonRecord_type)(["define", (0, _Reflection.list_type)((0, _Reflection.tuple_type)(position$reflection(), production$reflection()))], ["lhs", _Reflection.string_type], ["parameters", (0, _Reflection.list_type)(_Reflection.string_type)], ["pos", position$reflection()])]], [["Item", (0, _Reflection.anonRecord_type)(["define", (0, _Reflection.list_type)((0, _Reflection.tuple_type)(position$reflection(), production$reflection()))], ["lhs", _Reflection.string_type], ["pos", position$reflection()])]], [["Item", (0, _Reflection.anonRecord_type)(["define", lexerule$reflection()], ["lhs", _Reflection.string_type], ["pos", position$reflection()])]], [["Item", (0, _Reflection.anonRecord_type)(["ident", _Reflection.string_type], ["pos", position$reflection()], ["t", polyt$reflection()])]], [["Item", (0, _Reflection.anonRecord_type)(["ident", _Reflection.string_type], ["pos", position$reflection()], ["t", monot$reflection()])]], [["Item", (0, _Reflection.anonRecord_type)(["external", _Reflection.bool_type], ["fields", (0, _Reflection.list_type)((0, _Reflection.tuple_type)(_Reflection.string_type, monot$reflection(), position$reflection()))], ["hasFields", _Reflection.bool_type], ["ident", _Reflection.string_type], ["parameters", (0, _Reflection.list_type)(_Reflection.string_type)], ["pos", position$reflection()])]], [["Item", (0, _Reflection.anonRecord_type)(["ignoreList", (0, _Reflection.list_type)(_Reflection.string_type)], ["pos", position$reflection()])]]]);
}

class lexerule extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["LNumber", "LWildcard", "LSeq", "LStr", "LOr", "LNot", "LPlus", "LStar", "LOptional", "LGroup", "LRange", "LRef"];
  }

}

exports.lexerule = lexerule;

function lexerule$reflection() {
  return (0, _Reflection.union_type)("tbnf.Grammar.lexerule", [], lexerule, () => [[], [], [["Item", (0, _Reflection.list_type)(lexerule$reflection())]], [["Item", _Reflection.string_type]], [["Item", (0, _Reflection.list_type)(lexerule$reflection())]], [["Item", lexerule$reflection()]], [["Item", lexerule$reflection()]], [["Item", lexerule$reflection()]], [["Item", lexerule$reflection()]], [["Item", lexerule$reflection()]], [["Item1", _Reflection.int32_type], ["Item2", _Reflection.int32_type]], [["Item", _Reflection.string_type]]]);
}

function position_get_Fake() {
  return new position(0, 0, "");
}

function expr_WithNode(expr_1, node_1) {
  return new expr(node_1, expr_1.pos, expr_1.t);
}

function expr__TransformChildren_Z51B8244A(this$, op_Dereference) {
  let matchValue;
  return expr_WithNode(this$, (matchValue = this$.node, matchValue.tag === 1 ? new node(1, (0, _List.map)(op_Dereference, matchValue.fields[0])) : matchValue.tag === 2 ? new node(2, (0, _List.map)(op_Dereference, matchValue.fields[0])) : matchValue.tag === 3 ? new node(3, op_Dereference(matchValue.fields[0]), matchValue.fields[1]) : matchValue.tag === 4 ? new node(4, matchValue.fields[0], op_Dereference(matchValue.fields[1]), op_Dereference(matchValue.fields[2])) : matchValue.tag === 5 ? new node(5, matchValue.fields[0], matchValue.fields[1]) : matchValue.tag === 7 ? matchValue : matchValue.tag === 6 ? matchValue : matchValue.tag === 9 ? matchValue : matchValue.tag === 8 ? matchValue : matchValue.tag === 10 ? matchValue : matchValue.tag === 11 ? matchValue : new node(0, op_Dereference(matchValue.fields[0]), (0, _List.map)(op_Dereference, matchValue.fields[1]))));
}

function expr__DeepCopy(x) {
  const transformer = x_1 => {
    const matchValue = x_1.node;

    if (matchValue.tag === 6) {
      return expr_WithNode(x_1, new node(6, matchValue.fields[0], new _Types.FSharpRef(matchValue.fields[1].contents)));
    } else {
      return expr__TransformChildren_Z51B8244A(x_1, transformer);
    }
  };

  return transformer(x);
}

function monot__FindAnyChildren_Z23D07CE9(this$, predicate) {
  switch (this$.tag) {
    case 4:
    case 0:
      {
        return false;
      }

    case 2:
      {
        if (predicate(this$.fields[0])) {
          return true;
        } else {
          return (0, _List.exists)(predicate, this$.fields[1]);
        }
      }

    case 3:
      {
        if ((0, _List.exists)(tupledArg => predicate(tupledArg[1]), this$.fields[0])) {
          return true;
        } else {
          return predicate(this$.fields[1]);
        }
      }

    default:
      {
        return false;
      }
  }
}

function monot__TransformChildren_Z2CAB662A(this$, ap) {
  let pattern_matching_result, a;

  switch (this$.tag) {
    case 4:
      {
        pattern_matching_result = 0;
        a = this$;
        break;
      }

    case 0:
      {
        pattern_matching_result = 0;
        a = this$;
        break;
      }

    case 2:
      {
        pattern_matching_result = 1;
        break;
      }

    case 3:
      {
        pattern_matching_result = 2;
        break;
      }

    default:
      {
        pattern_matching_result = 0;
        a = this$;
      }
  }

  switch (pattern_matching_result) {
    case 0:
      {
        return a;
      }

    case 1:
      {
        return new monot(2, ap(this$.fields[0]), (0, _List.map)(ap, this$.fields[1]));
      }

    case 2:
      {
        return new monot(3, (0, _List.map)(ab => [ab[0], ap(ab[1])], this$.fields[0]), ap(this$.fields[1]));
      }
  }
}

function monot__SubstGen_1D5B3D8E(this$, ty_arguments) {
  const findAndSubst = t => {
    let pattern_matching_result, x_1;

    if (t.tag === 1) {
      if ((0, _Map.containsKey)(t.fields[0], ty_arguments)) {
        pattern_matching_result = 0;
        x_1 = t.fields[0];
      } else {
        pattern_matching_result = 1;
      }
    } else {
      pattern_matching_result = 1;
    }

    switch (pattern_matching_result) {
      case 0:
        {
          return (0, _Map.FSharpMap__get_Item)(ty_arguments, x_1);
        }

      case 1:
        {
          return monot__TransformChildren_Z2CAB662A(t, findAndSubst);
        }
    }
  };

  return findAndSubst(this$);
}

function monot__ApplyToChildren_Z6A62BCBF(this$, op_Dereference) {
  switch (this$.tag) {
    case 4:
    case 0:
      {
        break;
      }

    case 2:
      {
        op_Dereference(this$.fields[0]);
        (0, _List.iterate)(op_Dereference, this$.fields[1]);
        break;
      }

    case 3:
      {
        (0, _List.iterate)(tupledArg => {
          op_Dereference(tupledArg[1]);
        }, this$.fields[0]);
        op_Dereference(this$.fields[1]);
        break;
      }

    default:
      {}
  }
}

function monot__Prune(this$) {
  const prune = t => {
    let pattern_matching_result;

    if (t.tag === 0) {
      if (Cell$1__get_IsNull(t.fields[0])) {
        pattern_matching_result = 0;
      } else {
        pattern_matching_result = 1;
      }
    } else {
      pattern_matching_result = 1;
    }

    switch (pattern_matching_result) {
      case 0:
        {
          return t;
        }

      case 1:
        {
          if (t.tag === 0) {
            const a_2 = t.fields[0];
            const r = prune(Cell$1__get_Get(a_2));
            Cell$1__Set_2B595(a_2, r);
            return r;
          } else {
            return monot__TransformChildren_Z2CAB662A(t, prune);
          }
        }
    }
  };

  return prune(this$);
}

function symbol__Inspect(this$) {
  if (this$.tag === 1) {
    return this$.fields[0];
  } else if (this$.tag === 2) {
    return this$.fields[0] + "(" + (0, _String.join)(", ", (0, _List.map)(symbol__Inspect, this$.fields[1])) + ")";
  } else if (this$.fields[1]) {
    return (0, _Utils.escapeString)(this$.fields[0]);
  } else {
    return "\u003c" + this$.fields[0] + "\u003e";
  }
}

function definition__get_Position(this$) {
  switch (this$.tag) {
    case 1:
      {
        return this$.fields[0].pos;
      }

    case 2:
      {
        return this$.fields[0].pos;
      }

    case 3:
      {
        return this$.fields[0].pos;
      }

    case 4:
      {
        return this$.fields[0].pos;
      }

    case 5:
      {
        return this$.fields[0].pos;
      }

    case 6:
      {
        return this$.fields[0].pos;
      }

    default:
      {
        return this$.fields[0].pos;
      }
  }
}

function definition__Inspect(this$) {
  if (this$.tag === 1) {
    const decl = this$.fields[0];
    return decl.lhs + " :\n " + (0, _String.join)("\n| ", (0, _List.map)(tupledArg => (0, _String.join)(" ", (0, _List.map)(symbol__Inspect, tupledArg[1].symbols)), decl.define));
  } else {
    return "omit";
  }
}

const TConst_token = new monot(1, "token");
exports.TConst_token = TConst_token;
const TConst_tuple = new monot(1, "tuple");
exports.TConst_tuple = TConst_tuple;
const TConst_list = new monot(1, "list");
exports.TConst_list = TConst_list;
const TConst_int = new monot(1, "int");
exports.TConst_int = TConst_int;
const TConst_float = new monot(1, "float");
exports.TConst_float = TConst_float;
const TConst_str = new monot(1, "str");
exports.TConst_str = TConst_str;
const TConst_bool = new monot(1, "bool");
exports.TConst_bool = TConst_bool;
const _predefined_typenames = [["token", 0], ["tuple", -1], ["list", 1], ["int", 0], ["float", 0], ["str", 0], ["bool", 0]];
exports._predefined_typenames = _predefined_typenames;

function TTuple(xs) {
  return new monot(2, TConst_tuple, xs);
}

function TList(a) {
  return new monot(2, TConst_list, (0, _List.singleton)(a));
}

function $007CTTuple$007C_$007C(x) {
  let pattern_matching_result;

  if (x.tag === 1) {
    if (x.fields[0] === "tuple") {
      pattern_matching_result = 0;
    } else {
      pattern_matching_result = 1;
    }
  } else {
    pattern_matching_result = 1;
  }

  switch (pattern_matching_result) {
    case 0:
      {
        return (0, _Option.some)(void 0);
      }

    case 1:
      {
        return void 0;
      }
  }
}