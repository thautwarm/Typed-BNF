// file: src/grammar/tbnf.config.js

"use strict";

function rename_type(x) {
  if (x == "list") return "Array";
  if (x == "int") return "number";
  if (x == "float") return "number";
  if (x == "str") return "string";
  if (x == "bool") return "boolean";
  if (x == "token") return "antlr.Token";
  return x + "_t";
}


module.exports = {
  rename_type
};
