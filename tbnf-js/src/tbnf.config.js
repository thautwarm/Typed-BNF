"use strict"; // if x == "list":
//     return 'Array'
// if x == 'int':
//     return 'number'
// if x == 'float':
//     return 'number'
// if x == 'str':
//     return 'string'
// if x == 'bool':
//     return 'boolean'
// if x == "token":
//     return "Token"
// return x

function rename_type(x) {
  if (x == "list") return "Array";
  if (x == "int") return "number";
  if (x == "float") return "number";
  if (x == "str") return "string";
  if (x == "bool") return "boolean";
  if (x == "token") return "Token";
  return x;
}

function rename_ctor(x) {
  return "create" + x;
}

module.exports = {
  rename_ctor,
  rename_type
};