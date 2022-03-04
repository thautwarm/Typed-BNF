"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.DocBuilder_Builder = void 0;
exports.DocBuilder_Builder$reflection = DocBuilder_Builder$reflection;
exports.DocBuilder_Builder_$ctor = DocBuilder_Builder_$ctor;
exports.DocBuilder_Builder__Bind_30A200B3 = DocBuilder_Builder__Bind_30A200B3;
exports.DocBuilder_Builder__Combine_Z5C764E00 = DocBuilder_Builder__Combine_Z5C764E00;
exports.DocBuilder_Builder__Delay_Z3A9C5A06 = DocBuilder_Builder__Delay_Z3A9C5A06;
exports.DocBuilder_Builder__For_2B96F4AF = DocBuilder_Builder__For_2B96F4AF;
exports.DocBuilder_Builder__ReturnFrom_ZD0BB270 = DocBuilder_Builder__ReturnFrom_ZD0BB270;
exports.DocBuilder_Builder__Return_1505 = DocBuilder_Builder__Return_1505;
exports.DocBuilder_Builder__Run_ZD0BB270 = DocBuilder_Builder__Run_ZD0BB270;
exports.DocBuilder_Builder__YieldFrom_38ABB44A = DocBuilder_Builder__YieldFrom_38ABB44A;
exports.DocBuilder_Builder__Yield_417FD60 = DocBuilder_Builder__Yield_417FD60;
exports.DocBuilder_Builder__Zero = DocBuilder_Builder__Zero;
exports.DocBuilder_block$1 = void 0;
exports.DocBuilder_block$1$reflection = DocBuilder_block$1$reflection;
exports.DocBuilder_cg = void 0;
exports.DocBuilder_runCG = DocBuilder_runCG;
exports.NameMangling_IdentifierDescriptor = void 0;
exports.NameMangling_IdentifierDescriptor$reflection = NameMangling_IdentifierDescriptor$reflection;
exports.NameMangling_IdentifierDescriptor_Create_Z48C5CCEF = NameMangling_IdentifierDescriptor_Create_Z48C5CCEF;
exports.NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B;
exports.NameMangling_is_valid_identifier = NameMangling_is_valid_identifier;
exports.NameMangling_mangle = NameMangling_mangle;
exports.NameMangling_maskChar = NameMangling_maskChar;
exports.NameMangling_nameEnv = void 0;
exports.NameMangling_nameEnv$reflection = NameMangling_nameEnv$reflection;
exports.NameMangling_to_valid_identifier = NameMangling_to_valid_identifier;

var _Types = require("../fable_modules/fable-library.3.7.5/Types.js");

var _Reflection = require("../fable_modules/fable-library.3.7.5/Reflection.js");

var _Set = require("../fable_modules/fable-library.3.7.5/Set.js");

var _Util = require("../fable_modules/fable-library.3.7.5/Util.js");

var _SystemText = require("../fable_modules/fable-library.3.7.5/System.Text.js");

var _Utils = require("./Utils.js");

var _CodeGen = require("../FableSedlex/CodeGen.js");

var _List = require("../fable_modules/fable-library.3.7.5/List.js");

var _Seq = require("../fable_modules/fable-library.3.7.5/Seq.js");

class NameMangling_nameEnv extends _Types.Record {
  constructor(usedNames) {
    super();
    this.usedNames = usedNames;
  }

}

exports.NameMangling_nameEnv = NameMangling_nameEnv;

function NameMangling_nameEnv$reflection() {
  return (0, _Reflection.record_type)("tbnf.Backends.Common.NameMangling.nameEnv", [], NameMangling_nameEnv, () => [["usedNames", (0, _Reflection.class_type)("Microsoft.FSharp.Collections.FSharpSet`1", [_Reflection.string_type])]]);
}

class NameMangling_IdentifierDescriptor extends _Types.Record {
  constructor(isValidChar, charToValid, nameEnv) {
    super();
    this.isValidChar = isValidChar;
    this.charToValid = charToValid;
    this.nameEnv = nameEnv;
  }

}

exports.NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor;

function NameMangling_IdentifierDescriptor$reflection() {
  return (0, _Reflection.record_type)("tbnf.Backends.Common.NameMangling.IdentifierDescriptor", [], NameMangling_IdentifierDescriptor, () => [["isValidChar", (0, _Reflection.lambda_type)(_Reflection.int32_type, (0, _Reflection.lambda_type)(_Reflection.char_type, _Reflection.bool_type))], ["charToValid", (0, _Reflection.lambda_type)(_Reflection.int32_type, (0, _Reflection.lambda_type)(_Reflection.char_type, _Reflection.string_type))], ["nameEnv", NameMangling_nameEnv$reflection()]]);
}

function NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(isValidChar, charToValid) {
  return new NameMangling_IdentifierDescriptor(isValidChar, charToValid, new NameMangling_nameEnv((0, _Set.empty)({
    Compare: _Util.comparePrimitives
  })));
}

function NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(this$, x) {
  return new NameMangling_IdentifierDescriptor(this$.isValidChar, this$.charToValid, x);
}

function NameMangling_maskChar(low, high, i) {
  return String.fromCharCode(low + i % (high - low + 1));
}

function NameMangling_is_valid_identifier(idr, s) {
  if (s === "") {
    return true;
  } else {
    const loop = i_mut => {
      loop: while (true) {
        const i = i_mut;

        if (i >= s.length) {
          return true;
        } else if (idr.isValidChar(i, s[i])) {
          i_mut = i + 1;
          continue loop;
        } else {
          return false;
        }

        break;
      }
    };

    return loop(0);
  }
}

function NameMangling_to_valid_identifier(idr, s) {
  if (s === "") {
    throw new Error("empty identifier");
  } else {
    const sb = (0, _SystemText.StringBuilder_$ctor)();

    const loop = i_mut => {
      loop: while (true) {
        const i = i_mut;

        if (i >= s.length) {} else {
          if (idr.isValidChar(i, s[i])) {
            (0, _SystemText.StringBuilder__Append_244C7CD6)(sb, s[i]);
          } else {
            (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, idr.charToValid(i, s[i]));
          }

          i_mut = i + 1;
          continue loop;
        }

        break;
      }
    };

    loop(0);
    return (0, _Types.toString)(sb);
  }
}

function NameMangling_mangle(abandoned_names, idr, n) {
  let s = NameMangling_is_valid_identifier(idr, n) ? n : NameMangling_to_valid_identifier(idr, n);

  while ((0, _Set.contains)(s, abandoned_names)) {
    const add = idr.isValidChar(s.length, "_") ? "_" + idr.charToValid(s.length + 1, _Utils.lowerChars[s.length % _Utils.lowerChars.length]) : idr.charToValid(s.length, _Utils.lowerChars[s.length % _Utils.lowerChars.length]);
    s = s + add;
  }

  const nameEnv = idr.nameEnv;

  while ((0, _Set.contains)(s, nameEnv.usedNames)) {
    const add_1 = idr.isValidChar(s.length, "_") ? "_" + idr.charToValid(s.length + 1, _Utils.lowerChars[s.length % _Utils.lowerChars.length]) : idr.charToValid(s.length, _Utils.lowerChars[s.length % _Utils.lowerChars.length]);
    s = s + add_1;
  }

  nameEnv.usedNames = (0, _Set.add)(s, nameEnv.usedNames);
  return s;
}

class DocBuilder_block$1 extends _Types.Record {
  constructor(suite, value) {
    super();
    this.suite = suite;
    this.value = value;
  }

}

exports.DocBuilder_block$1 = DocBuilder_block$1;

function DocBuilder_block$1$reflection(gen0) {
  return (0, _Reflection.record_type)("tbnf.Backends.Common.DocBuilder.block`1", [gen0], DocBuilder_block$1, () => [["suite", (0, _Reflection.list_type)((0, _CodeGen.Doc$reflection)())], ["value", gen0]]);
}

class DocBuilder_Builder {
  constructor() {}

}

exports.DocBuilder_Builder = DocBuilder_Builder;

function DocBuilder_Builder$reflection() {
  return (0, _Reflection.class_type)("tbnf.Backends.Common.DocBuilder.Builder", void 0, DocBuilder_Builder);
}

function DocBuilder_Builder_$ctor() {
  return new DocBuilder_Builder();
}

function DocBuilder_Builder__Bind_30A200B3(__, m, k) {
  const m$0027 = k(m.value);
  return new DocBuilder_block$1((0, _List.append)(m$0027.suite, m.suite), m$0027.value);
}

function DocBuilder_Builder__Return_1505(__, v) {
  return new DocBuilder_block$1((0, _List.empty)(), v);
}

function DocBuilder_Builder__Run_ZD0BB270(__, m) {
  return m;
}

function DocBuilder_Builder__Combine_Z5C764E00(__, m1, m2) {
  return new DocBuilder_block$1((0, _List.append)(m2.suite, m1.suite), m2.value);
}

function DocBuilder_Builder__Yield_417FD60(__, a) {
  return new DocBuilder_block$1((0, _List.singleton)(a), (0, _List.empty)());
}

function DocBuilder_Builder__YieldFrom_38ABB44A(__, a) {
  return new DocBuilder_block$1((0, _List.reverse)(a), void 0);
}

function DocBuilder_Builder__Zero(__) {
  return new DocBuilder_block$1((0, _List.empty)(), void 0);
}

function DocBuilder_Builder__Delay_Z3A9C5A06(__, x) {
  return x();
}

function DocBuilder_Builder__For_2B96F4AF(__, m, f) {
  let suite = (0, _List.empty)();
  const value = (0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(each => {
    const m$0027 = f(each);
    suite = (0, _List.append)(m$0027.suite, suite);
    return (0, _Seq.singleton)(m$0027.value);
  }, m)));
  return new DocBuilder_block$1(suite, value);
}

function DocBuilder_Builder__ReturnFrom_ZD0BB270(__, m) {
  return m;
}

function DocBuilder_runCG(m) {
  return [m.value, (0, _List.reverse)(m.suite)];
}

const DocBuilder_cg = DocBuilder_Builder_$ctor();
exports.DocBuilder_cg = DocBuilder_cg;