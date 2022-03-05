"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.filter_error = filter_error;
exports.result$2 = void 0;
exports.result$2$reflection = result$2$reflection;

var _Types = require("../fable_modules/fable-library.3.7.5/Types.js");

var _Reflection = require("../fable_modules/fable-library.3.7.5/Reflection.js");

var _Exceptions = require("./Exceptions.js");

var _Inspect = require("./Inspect.js");

var _Grammar = require("./Grammar.js");

class result$2 extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["Ok", "Err"];
  }

}

exports.result$2 = result$2;

function result$2$reflection(gen0, gen1) {
  return (0, _Reflection.union_type)("tbnf.ErrorReport.result`2", [gen0, gen1], result$2, () => [[["Item", gen0]], [["Item", gen1]]]);
}

function filter_error(errorTrace, action) {
  try {
    return new result$2(0, action());
  } catch (matchValue) {
    if (matchValue instanceof _Exceptions.IllFormedType) {
      const t1_1 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(matchValue.Data0));
      const t2_1 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(matchValue.Data1));
      return new result$2(1, `recursive types are invalid: ${t1_1} ~ ${t2_1}`);
    } else if (matchValue instanceof _Exceptions.TypeUnexpected) {
      const got_1 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(matchValue.got));
      const expected_1 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(matchValue.expected));
      return new result$2(1, `expected ${got_1} ~ ${expected_1}`);
    } else {
      throw matchValue;
    }
  }
}