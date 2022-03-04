"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.basename = basename;

var _Exceptions = require("./Exceptions.js");

function basename(t_mut) {
  basename: while (true) {
    const t = t_mut;

    switch (t.tag) {
      case 3:
      case 0:
      case 4:
        {
          const exn = new _Exceptions.NoBaseName(t);
          throw exn;
        }

      case 2:
        {
          t_mut = t.fields[0];
          continue basename;
        }

      default:
        {
          return t.fields[0];
        }
    }

    break;
  }
}