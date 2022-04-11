"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.main = main;
exports.z = exports.x = void 0;

var _Grammar = require("./Grammar.js");

var _List = require("../fable_modules/fable-library.3.7.9/List.js");

var _String = require("../fable_modules/fable-library.3.7.9/String.js");

var _Analysis = require("./Analysis.js");

const x = new _Grammar.node(8, 5);
exports.x = x;
const z = new _Grammar.definition(1, {
  define: (0, _List.empty)(),
  lhs: "2",
  pos: new _Grammar.position(0, 0, "")
});
exports.z = z;

function main(a, b, c) {
  const arg10 = a + ~~(b / c) | 0;
  (0, _String.toConsole)((0, _String.printf)("%d"))(arg10);
  const x_1 = (0, _Analysis.build_analyzer)([new _Grammar.definition(1, {
    define: (0, _List.empty)(),
    lhs: "Float",
    pos: new _Grammar.position(0, 0, "")
  })]);
  return [1, 2, 3, 4];
}