"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.List_lookup = List_lookup;
exports.List_replaceWith = List_replaceWith;
exports.List_tryLookup = List_tryLookup;
exports._escapeString = _escapeString;
exports._escapeStringSingleQuoted = _escapeStringSingleQuoted;
exports.capitalized = capitalized;
exports.digitRange = void 0;
exports.escapeString = escapeString;
exports.escapeStringSingleQuoted = escapeStringSingleQuoted;
exports.iToU4 = iToU4;
exports.isDigit = isDigit;
exports.isLower = isLower;
exports.isUnicode = isUnicode;
exports.isUpper = isUpper;
exports.upperRange = exports.upperChars = exports.unicodeRange = exports.sampleUnicodes = exports.lowerRange = exports.lowerChars = void 0;

var _Seq = require("../fable_modules/fable-library.3.7.14/Seq.js");

var _Range = require("../fable_modules/fable-library.3.7.14/Range.js");

var _SystemText = require("../fable_modules/fable-library.3.7.14/System.Text.js");

var _Types = require("../fable_modules/fable-library.3.7.14/Types.js");

var _String = require("../fable_modules/fable-library.3.7.14/String.js");

var _List = require("../fable_modules/fable-library.3.7.14/List.js");

var _Util = require("../fable_modules/fable-library.3.7.14/Util.js");

var _Option = require("../fable_modules/fable-library.3.7.14/Option.js");

const lowerChars = (0, _Seq.toArray)((0, _Seq.delay)(() => (0, _Seq.map)(a => a, (0, _Range.rangeChar)("a", "z"))));
exports.lowerChars = lowerChars;
const upperChars = (0, _Seq.toArray)((0, _Seq.delay)(() => (0, _Seq.map)(a => a, (0, _Range.rangeChar)("A", "Z"))));
exports.upperChars = upperChars;
const sampleUnicodes = [20320, 26159, 22612, 33778, 21527];
exports.sampleUnicodes = sampleUnicodes;
const lowerRange = ["a", "z"];
exports.lowerRange = lowerRange;
const upperRange = ["A", "Z"];
exports.upperRange = upperRange;
const unicodeRange = ["一", "龥"];
exports.unicodeRange = unicodeRange;
const digitRange = ["0", "9"];
exports.digitRange = digitRange;

function isDigit(c) {
  if ("0" <= c) {
    return c <= "9";
  } else {
    return false;
  }
}

function isUpper(c) {
  if ("A" <= c) {
    return c <= "Z";
  } else {
    return false;
  }
}

function isLower(c) {
  if ("a" <= c) {
    return c <= "z";
  } else {
    return false;
  }
}

function isUnicode(c) {
  if ("一" <= c) {
    return c <= "龥";
  } else {
    return false;
  }
}

function _escapeString(s) {
  let matchValue;
  const sb = (0, _SystemText.StringBuilder_$ctor_Z721C83C5)("\"");

  for (let i = 0; i <= s.length - 1; i++) {
    matchValue = s[i], matchValue === "\t" ? (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\\t") : matchValue === "\n" ? (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\\n") : matchValue === "\r" ? (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\\r") : matchValue === "\"" ? (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\\\"") : matchValue === "\\" ? (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\\\\") : (0, _SystemText.StringBuilder__Append_244C7CD6)(sb, matchValue);
  }

  (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\"");
  return (0, _Types.toString)(sb);
}

function iToU4(i) {
  return "\\u" + (0, _String.replace)((0, _String.toText)((0, _String.printf)("%4X"))(i), " ", "0");
}

function _escapeStringSingleQuoted(s) {
  let matchValue;
  const sb = (0, _SystemText.StringBuilder_$ctor_Z721C83C5)("\u0027");

  for (let i = 0; i <= s.length - 1; i++) {
    matchValue = s[i], matchValue === "\t" ? (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\\t") : matchValue === "\n" ? (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\\n") : matchValue === "\r" ? (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\\r") : matchValue === "\u0027" ? (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\\\u0027") : matchValue === "\\" ? (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\\\\") : (0, _SystemText.StringBuilder__Append_244C7CD6)(sb, matchValue);
  }

  (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, "\u0027");
  return (0, _Types.toString)(sb);
}

function escapeStringSingleQuoted(s) {
  return _escapeStringSingleQuoted(s);
}

function escapeString(s) {
  return _escapeString(s);
}

function capitalized(s) {
  if (s === "") {
    return s;
  } else {
    return s[0].toUpperCase() + s.slice(1, s.length - 1 + 1);
  }
}

function List_tryLookup(key_mut, x_mut) {
  List_tryLookup: while (true) {
    const key = key_mut,
          x = x_mut;

    if (!(0, _List.isEmpty)(x)) {
      if ((0, _Util.equals)((0, _List.head)(x)[0], key)) {
        return (0, _Option.some)((0, _List.head)(x)[1]);
      } else if (!(0, _List.isEmpty)(x)) {
        key_mut = key;
        x_mut = (0, _List.tail)(x);
        continue List_tryLookup;
      } else {
        throw new Error("Match failure");
      }
    } else {
      return void 0;
    }

    break;
  }
}

function List_lookup(key_mut, x_mut) {
  List_lookup: while (true) {
    const key = key_mut,
          x = x_mut;

    if (!(0, _List.isEmpty)(x)) {
      if ((0, _Util.equals)((0, _List.head)(x)[0], key)) {
        return (0, _List.head)(x)[1];
      } else if (!(0, _List.isEmpty)(x)) {
        key_mut = key;
        x_mut = (0, _List.tail)(x);
        continue List_lookup;
      } else {
        throw new Error("Match failure");
      }
    } else {
      throw new Error("key not found");
    }

    break;
  }
}

function List_replaceWith(key, func, xs) {
  if (!(0, _List.isEmpty)(xs)) {
    if ((0, _Util.equals)((0, _List.head)(xs)[0], key)) {
      return (0, _List.cons)([(0, _List.head)(xs)[0], func((0, _Option.some)((0, _List.head)(xs)[1]))], (0, _List.tail)(xs));
    } else if (!(0, _List.isEmpty)(xs)) {
      return (0, _List.cons)((0, _List.head)(xs), List_replaceWith(key, func, (0, _List.tail)(xs)));
    } else {
      throw new Error("Match failure");
    }
  } else {
    return (0, _List.singleton)([key, func(void 0)]);
  }
}