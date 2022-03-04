"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.Array_drop = Array_drop;
exports.Doc = void 0;
exports.Doc$reflection = Doc$reflection;
exports.DocPrimitive = void 0;
exports.DocPrimitive$reflection = DocPrimitive$reflection;
exports.Doc_op_Addition_Z7CFFAC00 = Doc_op_Addition_Z7CFFAC00;
exports.Doc_op_Multiply_Z7CFFAC00 = Doc_op_Multiply_Z7CFFAC00;
exports.Doc_op_RightShift_2AAA0F3C = Doc_op_RightShift_2AAA0F3C;
exports.Stack$1 = void 0;
exports.Stack$1$reflection = Stack$1$reflection;
exports.Stack$1_$ctor_2605DBCF = Stack$1_$ctor_2605DBCF;
exports.Stack$1__Pop = Stack$1__Pop;
exports.Stack$1__Push_2B595 = Stack$1__Push_2B595;
exports.Stack$1__get_Last = Stack$1__get_Last;
exports.align = align;
exports.bracket = bracket;
exports.compileToPrims = compileToPrims;
exports.concat = concat;
exports.empty = void 0;
exports.genDoc = genDoc;
exports.indent = indent;
exports.listof = listof;
exports.parens = parens;
exports.pretty = pretty;
exports.render = render;
exports.seplist = seplist;
exports.showDoc = showDoc;
exports.vsep = vsep;
exports.word = word;

var _Types = require("../fable_modules/fable-library.3.7.5/Types.js");

var _Reflection = require("../fable_modules/fable-library.3.7.5/Reflection.js");

var _Array = require("../fable_modules/fable-library.3.7.5/Array.js");

var _Seq = require("../fable_modules/fable-library.3.7.5/Seq.js");

var _List = require("../fable_modules/fable-library.3.7.5/List.js");

var _String = require("../fable_modules/fable-library.3.7.5/String.js");

var _Util = require("../fable_modules/fable-library.3.7.5/Util.js");

var _SystemText = require("../fable_modules/fable-library.3.7.5/System.Text.js");

class Doc extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["Concat", "VSep", "Align", "Indent", "Word"];
  }

}

exports.Doc = Doc;

function Doc$reflection() {
  return (0, _Reflection.union_type)("Fable.CodeGen.Doc", [], Doc, () => [[["Item1", Doc$reflection()], ["Item2", Doc$reflection()]], [["Item", (0, _Reflection.list_type)(Doc$reflection())]], [["Item", Doc$reflection()]], [["Item1", _Reflection.int32_type], ["Item2", Doc$reflection()]], [["Item", _Reflection.string_type]]]);
}

function Doc_op_Multiply_Z7CFFAC00(a, b) {
  return new Doc(0, a, b);
}

function Doc_op_Addition_Z7CFFAC00(a, b) {
  return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(a, new Doc(4, " ")), b);
}

function Doc_op_RightShift_2AAA0F3C(a, b) {
  return new Doc(3, b, a);
}

class DocPrimitive extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["DP_PopIndent", "DP_PushCurrentIndent", "DP_PushIndent", "DP_Word"];
  }

}

exports.DocPrimitive = DocPrimitive;

function DocPrimitive$reflection() {
  return (0, _Reflection.union_type)("Fable.CodeGen.DocPrimitive", [], DocPrimitive, () => [[], [], [["Item", _Reflection.int32_type]], [["Item", _Reflection.string_type]]]);
}

function Array_drop(i, arr) {
  return (0, _Array.take)(arr.length - i, arr);
}

function compileToPrims(doc) {
  switch (doc.tag) {
    case 2:
      {
        const it = compileToPrims(doc.fields[0]);

        if (it.length === 0) {
          return it;
        } else {
          it[0] = (0, _Array.append)([new DocPrimitive(1)], it[0]);
          it[it.length - 1] = (0, _Array.append)(it[it.length - 1], [new DocPrimitive(0)]);
          return it;
        }
      }

    case 3:
      {
        const prefix = [new DocPrimitive(2, doc.fields[0])];
        const it_1 = compileToPrims(doc.fields[1]);

        if (it_1.length === 0) {
          return it_1;
        } else {
          it_1[0] = (0, _Array.append)(prefix, it_1[0]);
          it_1[it_1.length - 1] = (0, _Array.append)(it_1[it_1.length - 1], [new DocPrimitive(0)]);
          return it_1;
        }
      }

    case 1:
      {
        return (0, _Array.concat)((0, _Seq.map)(compileToPrims, doc.fields[0]));
      }

    case 4:
      {
        return [[new DocPrimitive(3, doc.fields[0])]];
      }

    default:
      {
        const l_1 = compileToPrims(doc.fields[0]);
        const r_1 = compileToPrims(doc.fields[1]);

        if (l_1.length === 0) {
          return r_1;
        } else if (r_1.length === 0) {
          return l_1;
        } else {
          return (0, _Array.concat)([Array_drop(1, l_1), [(0, _Array.append)((0, _Array.last)(l_1), (0, _Array.head)(r_1))], (0, _Array.skip)(1, r_1)]);
        }
      }
  }
}

class Stack$1 {
  constructor(init) {
    this._content = init != null ? (0, _Seq.toList)(init) : (0, _List.empty)();
  }

}

exports.Stack$1 = Stack$1;

function Stack$1$reflection(gen0) {
  return (0, _Reflection.class_type)("Fable.CodeGen.Stack`1", [gen0], Stack$1);
}

function Stack$1_$ctor_2605DBCF(init) {
  return new Stack$1(init);
}

function Stack$1__Push_2B595(__, a) {
  __._content = (0, _List.cons)(a, __._content);
}

function Stack$1__Pop(__) {
  const matchValue = __._content;

  if (!(0, _List.isEmpty)(matchValue)) {
    __._content = (0, _List.tail)(matchValue);
    return (0, _List.head)(matchValue);
  } else {
    const exn = new Error("negative stacksize");
    throw exn;
  }
}

function Stack$1__get_Last(__) {
  const matchValue = __._content;

  if (!(0, _List.isEmpty)(matchValue)) {
    return (0, _List.head)(matchValue);
  } else {
    const exn = new Error("negative stacksize");
    throw exn;
  }
}

function render(setences, write) {
  const levels = Stack$1_$ctor_2605DBCF([0]);

  if (setences.length === 0) {} else {
    for (let idx = 0; idx <= setences.length - 1; idx++) {
      const words = setences[idx];
      let col = 0;
      let initialized = false;

      for (let idx_1 = 0; idx_1 <= words.length - 1; idx_1++) {
        const word_1 = words[idx_1];

        switch (word_1.tag) {
          case 1:
            {
              Stack$1__Push_2B595(levels, col);
              break;
            }

          case 0:
            {
              Stack$1__Pop(levels);
              break;
            }

          case 2:
            {
              Stack$1__Push_2B595(levels, Stack$1__get_Last(levels) + word_1.fields[0]);
              break;
            }

          default:
            {
              const s = word_1.fields[0];

              if (!initialized) {
                col = Stack$1__get_Last(levels) + col | 0;
                write((0, _String.replicate)(col, " "));
                initialized = true;
              }

              write(s);
              col = col + s.length | 0;
            }
        }
      }

      write("\n");
    }
  }
}

function pretty(s) {
  let copyOfStruct;
  return new Doc(4, (copyOfStruct = s, (0, _Types.toString)(copyOfStruct)));
}

function word(s) {
  return new Doc(4, s);
}

function vsep(lines) {
  return new Doc(1, lines);
}

function align(seg) {
  return new Doc(2, seg);
}

function indent(i, x) {
  return new Doc(3, i, x);
}

function concat(a, b) {
  return new Doc(0, a, b);
}

const empty = word("");
exports.empty = empty;

function parens(seg) {
  return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word("("), seg), word(")"));
}

function bracket(seg) {
  return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word("["), seg), word("]"));
}

function listof(lst) {
  if (!(0, _List.isEmpty)(lst)) {
    let res = (0, _List.head)(lst);
    const enumerator = (0, _Util.getEnumerator)((0, _List.tail)(lst));

    try {
      while (enumerator["System.Collections.IEnumerator.MoveNext"]()) {
        const each = enumerator["System.Collections.Generic.IEnumerator`1.get_Current"]();
        res = Doc_op_Multiply_Z7CFFAC00(res, each);
      }
    } finally {
      (0, _Util.disposeSafe)(enumerator);
    }

    return res;
  } else {
    return empty;
  }
}

function seplist(sep, lst) {
  if (!(0, _List.isEmpty)(lst)) {
    let res = (0, _List.head)(lst);
    const enumerator = (0, _Util.getEnumerator)((0, _List.tail)(lst));

    try {
      while (enumerator["System.Collections.IEnumerator.MoveNext"]()) {
        const each = enumerator["System.Collections.Generic.IEnumerator`1.get_Current"]();
        res = Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(res, sep), each);
      }
    } finally {
      (0, _Util.disposeSafe)(enumerator);
    }

    return res;
  } else {
    return empty;
  }
}

function showDoc(doc) {
  const sb = (0, _SystemText.StringBuilder_$ctor)();
  render(compileToPrims(doc), x => {
    (0, _SystemText.StringBuilder__Append_Z721C83C5)(sb, x);
  });
  return (0, _Types.toString)(sb);
}

function genDoc(doc, write) {
  render(compileToPrims(doc), write);
}