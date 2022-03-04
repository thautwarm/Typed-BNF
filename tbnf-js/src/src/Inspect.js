"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.inspectMonoType = inspectMonoType;
exports.showExpr = showExpr;

var _Types = require("../fable_modules/fable-library.3.7.5/Types.js");

var _String = require("../fable_modules/fable-library.3.7.5/String.js");

var _List = require("../fable_modules/fable-library.3.7.5/List.js");

var _Grammar = require("./Grammar.js");

function inspectMonoType(t) {
  let pattern_matching_result, x, s, args;

  if (t.tag === 0) {
    pattern_matching_result = 0;
    x = t.fields[0];
  } else if (t.tag === 1) {
    pattern_matching_result = 1;
    s = t.fields[0];
  } else if (t.tag === 2) {
    if ((0, _Grammar.$007CTTuple$007C_$007C)(t.fields[0]) != null) {
      pattern_matching_result = 2;
      args = t.fields[1];
    } else {
      pattern_matching_result = 3;
    }
  } else {
    pattern_matching_result = 3;
  }

  switch (pattern_matching_result) {
    case 0:
      {
        return (0, _Types.toString)(x);
      }

    case 1:
      {
        return s;
      }

    case 2:
      {
        return "(" + (0, _String.join)(" * ", (0, _List.map)(inspectMonoType, args)) + ")";
      }

    case 3:
      {
        switch (t.tag) {
          case 2:
            {
              return inspectMonoType(t.fields[0]) + "\u003c" + (0, _String.join)(", ", (0, _List.map)(inspectMonoType, t.fields[1])) + "\u003e";
            }

          case 3:
            {
              return "(" + (0, _String.join)(", ", (0, _List.map)(tupledArg => tupledArg[0] + ": " + inspectMonoType(tupledArg[1]), t.fields[0])) + ") -\u003e" + inspectMonoType(t);
            }

          case 4:
            {
              return "\u0027" + t.fields[0];
            }

          default:
            {
              throw new Error("Match failure: tbnf.Grammar.monot");
            }
        }
      }
  }
}

function showExpr(e) {
  if (e.node.tag === 0) {
    throw new Error("");
  } else {
    throw new Error("Match failure");
  }
}