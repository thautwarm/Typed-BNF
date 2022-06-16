"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.codegen_python = codegen_python;

var _Map = require("../fable_modules/fable-library.3.7.14/Map.js");

var _String = require("../fable_modules/fable-library.3.7.14/String.js");

var _List = require("../fable_modules/fable-library.3.7.14/List.js");

var _CodeGen = require("./CodeGen.js");

var _Util = require("../fable_modules/fable-library.3.7.14/Util.js");

var _Seq = require("../fable_modules/fable-library.3.7.14/Seq.js");

var _Array = require("../fable_modules/fable-library.3.7.14/Array.js");

function codegen_python(import_head, cu) {
  let decision_funcs = (0, _Map.empty)();
  let tbl_cnt = 0;
  let dt_cnt = 0;
  let rnd_cnt = 0;

  const new_rnd_name = () => {
    rnd_cnt = rnd_cnt + 1 | 0;
    const arg10_2 = rnd_cnt | 0;
    return (0, _String.toText)((0, _String.printf)("_sedlex_rnd_%d"))(arg10_2);
  };

  let tables = (0, _Map.empty)();
  let toplevels = (0, _List.empty)();
  let later_toplevels = (0, _List.empty)();

  const push_toplevel = doc => {
    toplevels = (0, _List.ofArrayWithTail)([doc, _CodeGen.empty], toplevels);
  };

  const push_later_toplevel = doc_1 => {
    later_toplevels = (0, _List.ofArrayWithTail)([doc_1, _CodeGen.empty], later_toplevels);
  };

  const st_func_name = i => (0, _String.toText)((0, _String.printf)("_sedlex_st_%d"))(i);

  const _cg_decision_func = tree => {
    switch (tree.tag) {
      case 2:
        {
          return (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("return"), (0, _CodeGen.word)((0, _Util.int32ToString)(tree.fields[0])));
        }

      case 1:
        {
          let tname;
          const table = tree.fields[1];
          const matchValue = (0, _Map.tryFind)(table, tables);

          if (matchValue == null) {
            let table_doc;
            const lst = (0, _List.ofSeq)((0, _Seq.map)(arg => (0, _CodeGen.word)((0, _Util.int32ToString)(arg)), table));
            table_doc = (0, _CodeGen.seplist)((0, _CodeGen.word)(", "), lst);
            let n_1;
            tbl_cnt = tbl_cnt + 1 | 0;
            const arg10 = tbl_cnt | 0;
            n_1 = (0, _String.toText)((0, _String.printf)("_sedlex_DT_table_%d"))(arg10);
            push_later_toplevel((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(n_1), (0, _CodeGen.word)("=")), (0, _CodeGen.bracket)(table_doc)));
            tables = (0, _Map.add)(table, n_1, tables);
            tname = n_1;
          } else {
            tname = matchValue;
          }

          return (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("return"), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(tname), (0, _CodeGen.word)("[")), (0, _CodeGen.word)("c"))), (0, _CodeGen.word)("-")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.pretty)(tree.fields[0]), (0, _CodeGen.word)("]"))), (0, _CodeGen.word)("-")), (0, _CodeGen.pretty)(1));
        }

      default:
        {
          const yes_f = _cg_decision_func(tree.fields[1]);

          const no_f = _cg_decision_func(tree.fields[2]);

          return (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("if"), (0, _CodeGen.word)("c")), (0, _CodeGen.word)("\u003c=")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)((0, _Util.int32ToString)(tree.fields[0])), (0, _CodeGen.word)(":"))), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)(yes_f, 4), (0, _CodeGen.word)("else:"), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)(no_f, 4)]));
        }
    }
  };

  const cg_decision_func = tree_1 => {
    const matchValue_1 = (0, _Map.tryFind)(tree_1, decision_funcs);

    if (matchValue_1 == null) {
      let dtname;
      dt_cnt = dt_cnt + 1 | 0;
      const arg10_1 = dt_cnt | 0;
      dtname = (0, _String.toText)((0, _String.printf)("_sedlex_decide_%d"))(arg10_1);
      push_toplevel((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("def"), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(dtname), (0, _CodeGen.parens)((0, _CodeGen.word)("c: int"))), (0, _CodeGen.word)(":"))), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)(_cg_decision_func(tree_1), 4)])));
      decision_funcs = (0, _Map.add)(tree_1, dtname, decision_funcs);
      return dtname;
    } else {
      return matchValue_1;
    }
  };

  const _cg_state_func = lang => {
    let lst_1;

    switch (lang.tag) {
      case 3:
        {
          return (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("result"), (0, _CodeGen.word)("=")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(st_func_name(lang.fields[0])), (0, _CodeGen.parens)((0, _CodeGen.word)("lexerbuf"))));
        }

      case 4:
        {
          return (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("result"), (0, _CodeGen.word)("=")), (0, _CodeGen.pretty)(lang.fields[0]));
        }

      case 2:
        {
          return (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.word)((0, _String.toText)((0, _String.printf)("mark(lexerbuf, %d)"))(lang.fields[0])), _cg_state_func(lang.fields[1])]));
        }

      case 0:
        {
          const cases = lang.fields[1];
          let names = (0, _List.empty)();

          for (let idx = 0; idx <= cases.length - 1; idx++) {
            const body = _cg_state_func(cases[idx]);

            const name_1 = new_rnd_name();
            push_toplevel((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("def"), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(name_1), (0, _CodeGen.parens)((0, _CodeGen.word)("lexerbuf: lexbuf"))), (0, _CodeGen.word)(":"))), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.word)("result = -1"), body, (0, _CodeGen.word)("return result")])), 4)])));
            names = (0, _List.cons)(name_1, names);
          }

          const names_1 = (0, _List.reverse)(names);
          const func_table = new_rnd_name();
          push_later_toplevel((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(func_table), (0, _CodeGen.word)("=")), (0, _CodeGen.bracket)((lst_1 = (0, _List.map)(_CodeGen.word, names_1), (0, _CodeGen.seplist)((0, _CodeGen.word)(", "), lst_1)))));

          const default_body = _cg_state_func(lang.fields[2]);

          const test = (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(cg_decision_func(lang.fields[0])), (0, _CodeGen.parens)((0, _CodeGen.word)("public_next_int(lexerbuf)")));
          return (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("state_id"), (0, _CodeGen.word)("=")), test), (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("if"), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)((0, _String.toText)((0, _String.printf)("state_id \u003e= 0"))), (0, _CodeGen.word)(":"))), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("result"), (0, _CodeGen.word)("=")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)((0, _String.toText)((0, _String.printf)("%s[state_id]"))(func_table)), (0, _CodeGen.parens)((0, _CodeGen.word)("lexerbuf")))))), 4), (0, _CodeGen.word)("else:"), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)(default_body, 4)]));
        }

      default:
        {
          return (0, _CodeGen.word)("result = backtrack(lexerbuf)");
        }
    }
  };

  const enumerator = (0, _Util.getEnumerator)(cu.states);

  try {
    while (enumerator["System.Collections.IEnumerator.MoveNext"]()) {
      const kv = enumerator["System.Collections.Generic.IEnumerator`1.get_Current"]();
      push_toplevel((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("def"), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(st_func_name(kv[0])), (0, _CodeGen.parens)((0, _CodeGen.word)("lexerbuf: lexbuf"))), (0, _CodeGen.word)(":"))), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.word)("result = -1"), _cg_state_func(kv[1]), (0, _CodeGen.word)("return result")])), 4)])));
    }
  } finally {
    (0, _Util.disposeSafe)(enumerator);
  }

  const enumerator_1 = (0, _Util.getEnumerator)(cu.referenced_decision_trees);

  try {
    while (enumerator_1["System.Collections.IEnumerator.MoveNext"]()) {
      cg_decision_func(enumerator_1["System.Collections.Generic.IEnumerator`1.get_Current"]());
    }
  } finally {
    (0, _Util.disposeSafe)(enumerator_1);
  }

  let middle_toplevels;
  const patternInput = cu.lex_code;
  const error_msg_1 = "\"" + (0, _String.replace)(patternInput[1], "\"", "\\\"") + "\"";
  const initial_state_fun = st_func_name(0);
  const token_ids = (0, _List.ofArray)((0, _Array.map)(_arg1 => _arg1.tag === 1 ? (0, _CodeGen.pretty)(_arg1.fields[0]) : (0, _CodeGen.word)("None"), patternInput[0]));
  const construct_table = (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("["), (0, _CodeGen.seplist)((0, _CodeGen.word)(", "), token_ids)), (0, _CodeGen.word)("]")), (0, _CodeGen.word)(" # token_ids"));
  const table_name = new_rnd_name();
  push_toplevel((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(table_name), (0, _CodeGen.word)("=")), construct_table));
  middle_toplevels = (0, _CodeGen.vsep)((0, _List.ofArray)([_CodeGen.empty, (0, _CodeGen.word)("@dataclasses.dataclass"), (0, _CodeGen.word)("class Token:"), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.word)("token_id: int"), (0, _CodeGen.word)("lexeme : str"), (0, _CodeGen.word)("line: int"), (0, _CodeGen.word)("col: int"), (0, _CodeGen.word)("span: int"), (0, _CodeGen.word)("offset: int"), (0, _CodeGen.word)("file: str")])), 4), _CodeGen.empty, (0, _CodeGen.word)("_Token = typing.TypeVar(\"_Token\")"), _CodeGen.empty, (0, _CodeGen.word)("class TokenConstructor(typing_extensions.Protocol[_Token]):"), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.singleton)((0, _CodeGen.word)("def __call__(self, token_id: int, lexeme: str, line: int, col: int, span: int, offset: int, file: str) -\u003e _Token: ..."))), 4), _CodeGen.empty, (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("def"), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)("lex"), (0, _CodeGen.parens)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("lexerbuf: lexbuf"), (0, _CodeGen.word)(", ")), (0, _CodeGen.word)("construct_token: TokenConstructor[_Token]=Token")))), (0, _CodeGen.word)(":"))), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.word)("start(lexerbuf)"), (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("case_id"), (0, _CodeGen.word)("=")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(initial_state_fun), (0, _CodeGen.parens)((0, _CodeGen.word)("lexerbuf")))), (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("if case_id \u003c 0:"), (0, _CodeGen.word)("raise")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)("Exception"), (0, _CodeGen.parens)((0, _CodeGen.word)(error_msg_1)))), (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("token_id"), (0, _CodeGen.word)("=")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(table_name), (0, _CodeGen.word)("[")), (0, _CodeGen.word)("case_id")), (0, _CodeGen.word)("]"))), (0, _CodeGen.word)("if token_id is not None:"), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("return"), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)("construct_token"), (0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), (0, _List.ofArray)([(0, _CodeGen.word)("token_id"), (0, _CodeGen.word)("lexeme(lexerbuf)"), (0, _CodeGen.word)("lexerbuf.start_line"), (0, _CodeGen.word)("lexerbuf.pos - lexerbuf.curr_bol"), (0, _CodeGen.word)("lexerbuf.pos - lexerbuf.start_pos"), (0, _CodeGen.word)("lexerbuf.start_pos"), (0, _CodeGen.word)("lexerbuf.filename")]))))))), 4), (0, _CodeGen.word)("return None")])), 4), (0, _CodeGen.word)("def lexall(buf: lexbuf, construct: TokenConstructor[_Token], is_eof: Callable[[_Token], bool]):"), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.word)("while True:"), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.word)("token = lex(buf, construct)"), (0, _CodeGen.word)("if token is None: continue"), (0, _CodeGen.word)("if is_eof(token): break"), (0, _CodeGen.word)("yield token")])), 4)])), 4)]));
  return (0, _CodeGen.vsep)((0, _List.append)((0, _List.singleton)((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.word)(`from ${import_head}.sedlex import *`), (0, _CodeGen.word)("import typing"), (0, _CodeGen.word)("import typing_extensions"), (0, _CodeGen.word)("import dataclasses")]))), (0, _List.append)(toplevels, (0, _List.append)((0, _List.singleton)(middle_toplevels), later_toplevels))));
}