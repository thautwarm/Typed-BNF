"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.codegen = codegen;

var _Option = require("../fable_modules/fable-library.3.7.14/Option.js");

var _List = require("../fable_modules/fable-library.3.7.14/List.js");

var _Set = require("../fable_modules/fable-library.3.7.14/Set.js");

var _Util = require("../fable_modules/fable-library.3.7.14/Util.js");

var _Map = require("../fable_modules/fable-library.3.7.14/Map.js");

var _Seq = require("../fable_modules/fable-library.3.7.14/Seq.js");

var _Analysis = require("./Analysis.js");

var _BackendsCommon = require("./Backends.Common.js");

var _Utils = require("./Utils.js");

var _Grammar = require("./Grammar.js");

var _CodeGen = require("../FableSedlex/CodeGen.js");

var _Exceptions = require("./Exceptions.js");

var _String = require("../fable_modules/fable-library.3.7.14/String.js");

var _Sedlex = require("../FableSedlex/Sedlex.js");

var _ErrorReport = require("./ErrorReport.js");

var _Array = require("../fable_modules/fable-library.3.7.14/Array.js");

var _CodeGenPython = require("../FableSedlex/CodeGen.Python.js");

function codegen(analyzer, cg_options, langName, stmts) {
  let objectArg_1;
  const rename_var = (0, _Option.defaultArg)(cg_options.rename_var, x => x);
  const rename_ctor = (0, _Option.defaultArg)(cg_options.rename_ctor, x_1 => x_1);
  const rename_field = (0, _Option.defaultArg)(cg_options.rename_field, x_2 => x_2);
  const rename_type = (0, _Option.defaultArg)(cg_options.rename_type, x_3 => x_3);
  const PythonPackage_Sedlex = "_tbnf.FableSedlex";
  let importNames = (0, _List.empty)();
  const export_Parser = "parser";
  const export_Grammar = "grammar";
  const export_names = (0, _Set.ofArray)([export_Parser, export_Grammar], {
    Compare: _Util.comparePrimitives
  });
  const export_tokenmaps = "tokenmaps";
  const export_tokenreprs = "tokenreprs";
  const abandoned_names = (0, _Set.ofArray)([export_tokenmaps, export_tokenreprs, "False", "None", "True", "and", "as", "assert", "async", "await", "break", "class", "continue", "def", "del", "elif", "else", "except", "finally", "for", "from", "global", "if", "import", "in", "is", "lambda", "nonlocal", "not", "or", "pass", "raise", "return", "try", "while", "with", "yield", "match", "case"], {
    Compare: _Util.comparePrimitives
  });
  let symmap = (0, _Map.empty)();
  let toplevel_transformer = (0, _List.empty)();
  let lexerMaps = (0, _Map.empty)();
  let larkDeclsForNamedTerminals = (0, _List.empty)();
  const global_scope = (0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.map)(k => (0, _Analysis.Sigma__IsGlobalVariableConstructor_Z721C83C5)(analyzer.Sigma, k[0]) ? [k[0], rename_ctor(k[0])] : [k[0], rename_var(k[0])], (0, _Analysis.Sigma__get_GlobalVariables)(analyzer.Sigma))));
  const pythonIdentifierDescr = (0, _BackendsCommon.NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B)((0, _BackendsCommon.NameMangling_IdentifierDescriptor_Create_Z48C5CCEF)((i, c) => {
    const test = (((0, _Utils.isLower)(c) ? true : (0, _Utils.isUnicode)(c)) ? true : (0, _Utils.isUpper)(c)) ? true : c === "_";
    return i === 0 ? test : test ? true : (0, _Utils.isDigit)(c);
  }, (i_1, c_1) => (0, _Utils.isDigit)(c_1) ? `_${i_1 * c_1.charCodeAt(0) + 7}_` : `_${c_1.charCodeAt(0)}_`), new _BackendsCommon.NameMangling_nameEnv((0, _Set.ofList)((0, _List.map)(tuple => tuple[1], global_scope), {
    Compare: _Util.comparePrimitives
  })));
  const larkLexerIdentifierDescr = (0, _BackendsCommon.NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B)((0, _BackendsCommon.NameMangling_IdentifierDescriptor_Create_Z48C5CCEF)((i_2, c_2) => i_2 === 0 ? (0, _Utils.isUpper)(c_2) : ((0, _Utils.isUpper)(c_2) ? true : c_2 === "_") ? true : (0, _Utils.isDigit)(c_2), (_arg1, c_3) => (0, _Utils.isLower)(c_3) ? c_3.toUpperCase() : "_" + (0, _BackendsCommon.NameMangling_maskChar)(65, 90, c_3.charCodeAt(0)) + "_"), new _BackendsCommon.NameMangling_nameEnv((0, _Set.ofArray)(["UNKNOWN"], {
    Compare: _Util.comparePrimitives
  })));
  const larkParserIdentifierDescr = (0, _BackendsCommon.NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B)((0, _BackendsCommon.NameMangling_IdentifierDescriptor_Create_Z48C5CCEF)((i_3, c_4) => i_3 === 0 ? (0, _Utils.isLower)(c_4) : ((0, _Utils.isLower)(c_4) ? true : c_4 === "_") ? true : (0, _Utils.isDigit)(c_4), (_arg2, c_5) => (0, _Utils.isUpper)(c_5) ? c_5.toLowerCase() : "_" + (0, _BackendsCommon.NameMangling_maskChar)(97, 122, c_5.charCodeAt(0)) + "_"), new _BackendsCommon.NameMangling_nameEnv((0, _Set.ofArray)(["start"], {
    Compare: _Util.comparePrimitives
  })));
  let mangle;
  const abandoned_names_1 = (0, _Set.union)(abandoned_names, export_names);

  mangle = idr => n => (0, _BackendsCommon.NameMangling_mangle)(abandoned_names_1, idr, n);

  const cg_symbol = x_9 => {
    const matchValue = (0, _Map.tryFind)(x_9, symmap);

    if (matchValue == null) {
      let valid_py_ident;

      if (x_9.tag === 0) {
        valid_py_ident = x_9.fields[1] ? mangle(larkLexerIdentifierDescr)("\"" + x_9.fields[0] + "\"") : x_9.fields[0] === "EOF" ? "EOF" : mangle(larkLexerIdentifierDescr)(x_9.fields[0]);
      } else if (x_9.tag === 1) {
        valid_py_ident = x_9.fields[0] === "start" ? "start" : mangle(larkParserIdentifierDescr)(x_9.fields[0]);
      } else {
        throw new Error("macro not processed");
      }

      symmap = (0, _Map.add)(x_9, valid_py_ident, symmap);
      return valid_py_ident;
    } else {
      return matchValue;
    }
  };

  const name_of_named_term = n_2 => cg_symbol(new _Grammar.symbol(0, n_2, false));

  const definePyFunc = (fname, args, body) => (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("def"), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)(fname, (0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), args))), (0, _CodeGen.word)(":"))), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)(body, 4)]));

  const TREE_NAME = "__tbnf_COMPONENTS";

  const cg_expr = (actionName, scope, expr) => (0, _Analysis.Sigma__WithExpr)(analyzer.Sigma, expr, () => (0, _BackendsCommon.DocBuilder_Builder__Run_ZD0BB270)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Delay_Z3A9C5A06)(_BackendsCommon.DocBuilder_cg, () => {
    let arg20_1;
    const matchValue_1 = expr.node;

    if (matchValue_1.tag === 6) {
      const matchValue_2 = (0, _Utils.List_tryLookup)(matchValue_1.fields[0], scope);
      return matchValue_2 != null ? (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)(matchValue_2)) : (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (() => {
        throw (0, _Exceptions.UnboundVariable)(matchValue_1.fields[0]);
      })());
    } else if (matchValue_1.tag === 11) {
      return matchValue_1.fields[0] ? (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)("True")) : (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)("False"));
    } else if (matchValue_1.tag === 3) {
      return (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, cg_expr(actionName, scope, matchValue_1.fields[0]), _arg5 => (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)(_arg5, (0, _CodeGen.word)(".")), (0, _CodeGen.word)(rename_field(matchValue_1.fields[1])))));
    } else if (matchValue_1.tag === 8) {
      return (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)((0, _String.toText)((0, _String.printf)("%d"))(matchValue_1.fields[0])));
    } else if (matchValue_1.tag === 10) {
      return (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)((0, _String.toText)((0, _String.printf)("%f"))(matchValue_1.fields[0])));
    } else if (matchValue_1.tag === 9) {
      return (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)((0, _Utils.escapeString)(matchValue_1.fields[0])));
    } else if (matchValue_1.tag === 5) {
      const args_3 = (0, _List.map)(tuple_1 => tuple_1[0], matchValue_1.fields[0]);
      const patternInput = (0, _BackendsCommon.DocBuilder_runCG)(cg_expr(actionName, (0, _List.append)((0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.map)(arg_1 => [arg_1, mangle(pythonIdentifierDescr)(arg_1)], args_3))), scope), matchValue_1.fields[1]));
      const func_name = mangle(pythonIdentifierDescr)("lambda");
      return (0, _BackendsCommon.DocBuilder_Builder__Combine_Z5C764E00)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Yield_417FD60)(_BackendsCommon.DocBuilder_cg, definePyFunc((0, _CodeGen.word)(func_name), (0, _List.map)(_CodeGen.word, args_3), (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.vsep)(patternInput[1]), (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("return"), patternInput[0])])))), (0, _BackendsCommon.DocBuilder_Builder__Delay_Z3A9C5A06)(_BackendsCommon.DocBuilder_cg, () => (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)(func_name))));
    } else {
      return matchValue_1.tag === 4 ? (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, cg_expr(actionName, scope, matchValue_1.fields[1]), _arg6 => {
        const m_name = mangle(pythonIdentifierDescr)(matchValue_1.fields[0]);
        return (0, _BackendsCommon.DocBuilder_Builder__Combine_Z5C764E00)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Yield_417FD60)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(m_name), (0, _CodeGen.word)("=")), _arg6)), (0, _BackendsCommon.DocBuilder_Builder__Delay_Z3A9C5A06)(_BackendsCommon.DocBuilder_cg, () => (0, _BackendsCommon.DocBuilder_Builder__ReturnFrom_ZD0BB270)(_BackendsCommon.DocBuilder_cg, cg_expr(actionName, (0, _List.cons)([matchValue_1.fields[0], m_name], scope), matchValue_1.fields[2]))));
      }) : matchValue_1.tag === 2 ? (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Run_ZD0BB270)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Delay_Z3A9C5A06)(_BackendsCommon.DocBuilder_cg, () => (0, _BackendsCommon.DocBuilder_Builder__For_2B96F4AF)(_BackendsCommon.DocBuilder_cg, matchValue_1.fields[0], _arg7 => (0, _BackendsCommon.DocBuilder_Builder__ReturnFrom_ZD0BB270)(_BackendsCommon.DocBuilder_cg, cg_expr(actionName, scope, _arg7))))), _arg8 => (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.bracket)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), _arg8)))) : matchValue_1.tag === 7 ? (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)((arg20_1 = matchValue_1.fields[0] - 1 | 0, (0, _String.toText)((0, _String.printf)("%s[%d]"))(TREE_NAME)(arg20_1)))) : matchValue_1.tag === 1 ? (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Run_ZD0BB270)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Delay_Z3A9C5A06)(_BackendsCommon.DocBuilder_cg, () => (0, _BackendsCommon.DocBuilder_Builder__For_2B96F4AF)(_BackendsCommon.DocBuilder_cg, matchValue_1.fields[0], _arg9 => (0, _BackendsCommon.DocBuilder_Builder__ReturnFrom_ZD0BB270)(_BackendsCommon.DocBuilder_cg, cg_expr(actionName, scope, _arg9))))), _arg10 => {
        const elts$0027_1 = _arg10;
        return !(0, _List.isEmpty)(elts$0027_1) ? (0, _List.isEmpty)((0, _List.tail)(elts$0027_1)) ? (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.parens)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _List.head)(elts$0027_1), (0, _CodeGen.word)(",")))) : (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), elts$0027_1))) : (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.parens)(_CodeGen.empty));
      }) : (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, cg_expr(actionName, scope, matchValue_1.fields[0]), _arg2_1 => (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Run_ZD0BB270)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Delay_Z3A9C5A06)(_BackendsCommon.DocBuilder_cg, () => (0, _BackendsCommon.DocBuilder_Builder__For_2B96F4AF)(_BackendsCommon.DocBuilder_cg, matchValue_1.fields[1], _arg3 => (0, _BackendsCommon.DocBuilder_Builder__ReturnFrom_ZD0BB270)(_BackendsCommon.DocBuilder_cg, cg_expr(actionName, scope, _arg3))))), _arg4 => (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)(_arg2_1, (0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), _arg4))))));
    }
  })));

  const mk_lexer = def => {
    const op_Dereference = mk_lexer;

    if (def.tag === 9) {
      return op_Dereference(def.fields[0]);
    } else if (def.tag === 5) {
      return (0, _Sedlex.pcompl)(op_Dereference(def.fields[0]));
    } else if (def.tag === 0) {
      return (0, _Sedlex.pinterval)(48, 57);
    } else if (def.tag === 6) {
      return (0, _Sedlex.pplus)(op_Dereference(def.fields[0]));
    } else if (def.tag === 7) {
      return (0, _Sedlex.pstar)(op_Dereference(def.fields[0]));
    } else if (def.tag === 1) {
      return _Sedlex.pany;
    } else if (def.tag === 11) {
      const matchValue_4 = (0, _Map.tryFind)(def.fields[0], lexerMaps);

      if (matchValue_4 == null) {
        const exn = (0, _Exceptions.UnboundLexer)(def.fields[0]);
        throw exn;
      } else {
        return matchValue_4;
      }
    } else if (def.tag === 2) {
      return (0, _Sedlex.pseq)((0, _List.toArray)((0, _List.map)(mk_lexer, def.fields[0])));
    } else if (def.tag === 10) {
      return (0, _Sedlex.pinterval)(def.fields[0], def.fields[1]);
    } else if (def.tag === 4) {
      if (!(0, _List.isEmpty)(def.fields[0])) {
        return (0, _List.fold)(_Sedlex.por, op_Dereference((0, _List.head)(def.fields[0])), (0, _List.map)(mk_lexer, (0, _List.tail)(def.fields[0])));
      } else {
        throw new Error("impossible: alternatives cannot be empty.");
      }
    } else if (def.tag === 8) {
      return (0, _Sedlex.popt)(op_Dereference(def.fields[0]));
    } else {
      return (0, _Sedlex.pstring)(def.fields[0]);
    }
  };

  const mk_lexer_debug = def_1 => {
    const op_Dereference_1 = mk_lexer_debug;

    if (def_1.tag === 9) {
      return op_Dereference_1(def_1.fields[0]);
    } else if (def_1.tag === 5) {
      return `pnot(${op_Dereference_1(def_1.fields[0])})`;
    } else if (def_1.tag === 0) {
      return "pnumber";
    } else if (def_1.tag === 6) {
      return `pplus(${op_Dereference_1(def_1.fields[0])})`;
    } else if (def_1.tag === 7) {
      return `pstar(${op_Dereference_1(def_1.fields[0])})`;
    } else if (def_1.tag === 1) {
      return "pany";
    } else if (def_1.tag === 11) {
      return def_1.fields[0];
    } else if (def_1.tag === 2) {
      const seq = (0, _String.join)(", ", (0, _Seq.ofList)((0, _List.map)(mk_lexer_debug, def_1.fields[0])));
      return `pseq([${seq}])`;
    } else if (def_1.tag === 10) {
      return `pinterval(${def_1.fields[0]}, ${def_1.fields[1]})`;
    } else if (def_1.tag === 4) {
      if (!(0, _List.isEmpty)(def_1.fields[0])) {
        return (0, _List.fold)((a_2, b_1) => `por(${a_2}, ${b_1})`, op_Dereference_1((0, _List.head)(def_1.fields[0])), (0, _List.map)(mk_lexer_debug, (0, _List.tail)(def_1.fields[0])));
      } else {
        throw new Error("impossible: alternatives cannot be empty.");
      }
    } else if (def_1.tag === 8) {
      return `popt${op_Dereference_1(def_1.fields[0])}`;
    } else {
      return `pstring(${(0, _Utils.escapeString)(def_1.fields[0])})`;
    }
  };

  const filename_lexer = (0, _String.toText)((0, _String.printf)("%s_lexer"))(langName);
  const filename_require = (0, _String.toText)((0, _String.printf)("%s_require"))(langName);
  const filename_python = (0, _String.toText)((0, _String.printf)("%s_parser"))(langName);
  const filename_constructors = (0, _String.toText)((0, _String.printf)("%s_construct"))(langName);
  const var_tokenmaps = export_tokenmaps;
  const classvar_LarkLexer = mangle(pythonIdentifierDescr)("Lexer");
  const classvar_SedlexLexer = mangle(pythonIdentifierDescr)("Sedlex");
  const classvar_LarkToken = rename_type("token");
  const var_iseof = mangle(pythonIdentifierDescr)("is_eof");
  const var_construct_token = mangle(pythonIdentifierDescr)("construct_token");
  const var_lexall = mangle(pythonIdentifierDescr)("lexall");
  const var_from_ustring = mangle(pythonIdentifierDescr)("from_ustring");
  const classvar_LarkTransformer = mangle(pythonIdentifierDescr)("Transformer");
  const classvar_RBNFTransformer = mangle(pythonIdentifierDescr)("RBNFTransformer");
  const classvar_LarkBuilder = mangle(pythonIdentifierDescr)("Lark");
  const modulevar_dataclass = mangle(pythonIdentifierDescr)("dataclasses");
  const modulevar_typing = mangle(pythonIdentifierDescr)("typing");

  const _cg_type = t => {
    let pattern_matching_result, n_4, args_4, r_2;

    if (t.tag === 4) {
      pattern_matching_result = 1;
    } else if (t.tag === 0) {
      pattern_matching_result = 2;
    } else if (t.tag === 3) {
      pattern_matching_result = 3;
      args_4 = t.fields[0];
      r_2 = t.fields[1];
    } else if (t.tag === 2) {
      if ((0, _Grammar.$007CTTuple$007C_$007C)(t.fields[0]) != null) {
        if ((0, _List.isEmpty)(t.fields[1])) {
          pattern_matching_result = 4;
        } else {
          pattern_matching_result = 5;
        }
      } else {
        pattern_matching_result = 5;
      }
    } else {
      pattern_matching_result = 0;
      n_4 = t.fields[0];
    }

    switch (pattern_matching_result) {
      case 0:
        {
          return rename_type(n_4);
        }

      case 1:
        {
          return "object";
        }

      case 2:
        {
          const exn_1 = new _Exceptions.UnsolvedTypeVariable();
          throw exn_1;
        }

      case 3:
        {
          const r_3 = _cg_type(r_2);

          const it = (0, _String.join)(", ", (0, _List.map)(tupledArg => _cg_type(tupledArg[1]), args_4));
          return `${modulevar_typing}.Callable[[${it}], ${r_3}]`;
        }

      case 4:
        {
          throw new Error("0-element tuple type detected");
        }

      case 5:
        {
          let pattern_matching_result_1, args_6;

          if (t.tag === 2) {
            if ((0, _Grammar.$007CTTuple$007C_$007C)(t.fields[0]) != null) {
              pattern_matching_result_1 = 0;
              args_6 = t.fields[1];
            } else {
              pattern_matching_result_1 = 1;
            }
          } else {
            pattern_matching_result_1 = 1;
          }

          switch (pattern_matching_result_1) {
            case 0:
              {
                const it_1 = (0, _String.join)(", ", (0, _List.map)(_cg_type, args_6));
                return `${modulevar_typing}.Tuple[` + it_1 + "]";
              }

            case 1:
              {
                if (t.tag === 2) {
                  const it_2 = (0, _String.join)(", ", (0, _List.map)(_cg_type, t.fields[1]));
                  return _cg_type(t.fields[0]) + "[" + it_2 + "]";
                } else {
                  throw new Error("Match failure");
                }
              }
          }
        }
    }
  };

  const cg_type = t_1 => _cg_type((0, _Grammar.monot__Prune)(t_1));

  return (0, _ErrorReport.withErrorHandler)((objectArg_1 = analyzer.Sigma, () => (0, _Analysis.Sigma__GetErrorTrace)(objectArg_1)), () => {
    const file_grammar = (0, _CodeGen.vsep)((0, _List.ofArray)((0, _Array.map)(stmt => {
      (0, _Analysis.Sigma__SetCurrentDefinition_Z759AB257)(analyzer.Sigma, stmt);

      switch (stmt.tag) {
        case 2:
          {
            const decl_1 = stmt.fields[0];
            lexerMaps = (0, _Map.add)(decl_1.lhs, mk_lexer(decl_1.define), lexerMaps);

            if ((0, _Set.contains)(decl_1.lhs, analyzer.ReferencedNamedTokens)) {
              const tname = name_of_named_term(decl_1.lhs);
              larkDeclsForNamedTerminals = (0, _List.cons)(tname, larkDeclsForNamedTerminals);
            }

            return _CodeGen.empty;
          }

        case 6:
          {
            return _CodeGen.empty;
          }

        case 3:
          {
            importNames = (0, _List.cons)(rename_var(stmt.fields[0].ident), importNames);
            return _CodeGen.empty;
          }

        case 4:
          {
            return _CodeGen.empty;
          }

        case 5:
          {
            const decl_5 = stmt.fields[0];

            if (decl_5.external) {
              importNames = (0, _List.cons)(rename_type(decl_5.ident), importNames);
            }

            return _CodeGen.empty;
          }

        case 0:
          {
            throw new Error("macro not processed");
          }

        default:
          {
            const decl = stmt.fields[0];
            const ntname_1 = cg_symbol(new _Grammar.symbol(1, decl.lhs));
            let idx_1 = 0;
            const body_4 = (0, _CodeGen.align)((0, _CodeGen.vsep)((0, _List.mapIndexed)((i_6, e_1) => (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)(i_6 === 0 ? (0, _CodeGen.word)(":") : (0, _CodeGen.word)("|"), e_1), (0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_3 => {
              const production = matchValue_3[1];
              (0, _Analysis.Sigma__SetCurrentPos_Z302187B)(analyzer.Sigma, matchValue_3[0]);
              (0, _Analysis.Sigma__SetCurrentDefinitionBranch_Z524259A4)(analyzer.Sigma, idx_1);
              let actionName_2;
              const idx = idx_1 | 0;
              actionName_2 = (0, _String.toText)((0, _String.printf)("%s_%i"))(ntname_1)(idx);
              return (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.seplist)((0, _CodeGen.word)(" "), (0, _List.map)(arg_2 => (0, _CodeGen.word)(cg_symbol(arg_2)), production.symbols)), (0, _CodeGen.word)("-\u003e")), (0, _CodeGen.word)(actionName_2))), (0, _Seq.delay)(() => {
                const patternInput_1 = (0, _BackendsCommon.DocBuilder_runCG)(cg_expr(actionName_2, global_scope, production.action));
                const a = definePyFunc((0, _CodeGen.word)(actionName_2), (0, _List.ofArray)([(0, _CodeGen.word)("self"), (0, _CodeGen.word)(TREE_NAME)]), (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.vsep)(patternInput_1[1]), (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("return"), patternInput_1[0])])));
                toplevel_transformer = (0, _List.ofArrayWithTail)([a, _CodeGen.empty], toplevel_transformer);
                idx_1 = idx_1 + 1 | 0;
                return (0, _Seq.empty)();
              }));
            }, decl.define))))));
            return (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(ntname_1), body_4);
          }
      }
    }, stmts)));
    const import_items = (0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(","), (0, _List.map)(_CodeGen.word, importNames)));
    const file_constructors = [filename_constructors + ".py", (0, _CodeGen.vsep)((0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)("from __future__ import annotations as __01asda1ha")), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`from lark import Token as ${classvar_LarkToken}`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`import dataclasses as ${modulevar_dataclass}`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`import typing as ${modulevar_typing}`)), (0, _Seq.delay)(() => {
      const adtCases = (0, _Analysis.Sigma__GetADTCases)(analyzer.Sigma);
      return (0, _Seq.append)(!(0, _List.isEmpty)(importNames) ? (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(`from .${filename_require} import`), import_items)) : (0, _Seq.empty)(), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)(_CodeGen.empty), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.collect)(matchValue_5 => {
        const typename$0027 = rename_type(matchValue_5[0]);
        let docCtorNames = (0, _List.empty)();
        return (0, _Seq.append)((0, _Seq.collect)(matchValue_6 => {
          const fields = matchValue_6[1];
          const ctorName_1 = rename_ctor(matchValue_6[0]);
          docCtorNames = (0, _List.cons)((0, _CodeGen.word)(ctorName_1), docCtorNames);
          return (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`@${modulevar_dataclass}.dataclass`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _List.length)(fields) === 0 ? (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`class ${ctorName_1}:`)), (0, _Seq.delay)(() => (0, _Seq.singleton)((0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.word)("pass"), 4)))) : (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`class ${ctorName_1}:`)), (0, _Seq.delay)(() => (0, _Seq.singleton)((0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_7 => (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(rename_field(matchValue_7[0])), (0, _CodeGen.word)(":")), (0, _CodeGen.word)(cg_type(matchValue_7[1])))), fields)))), 4)))), (0, _Seq.delay)(() => (0, _Seq.singleton)(_CodeGen.empty)))));
        }, (0, _Map.toArray)(matchValue_5[1])), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`if ${modulevar_typing}.TYPE_CHECKING:`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _Seq.toList)((0, _Seq.delay)(() => {
          let t_3;
          return !(0, _List.isEmpty)(docCtorNames) ? (0, _List.isEmpty)((0, _List.tail)(docCtorNames)) ? (t_3 = (0, _List.head)(docCtorNames), (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(typename$0027), (0, _CodeGen.word)("=")), t_3))) : (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(typename$0027), (0, _CodeGen.word)("=")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(`${modulevar_typing}.Union[`), (0, _CodeGen.seplist)((0, _CodeGen.word)(","), docCtorNames)), (0, _CodeGen.word)("]")))) : (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(typename$0027), (0, _CodeGen.word)("=")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(`${modulevar_typing}.Union[`), (0, _CodeGen.seplist)((0, _CodeGen.word)(","), docCtorNames)), (0, _CodeGen.word)("]"))));
        }))), 4)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)("else:")), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(typename$0027), (0, _CodeGen.word)("=")), (0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(","), docCtorNames))))), 4)), (0, _Seq.delay)(() => (0, _Seq.singleton)(_CodeGen.empty)))))))))));
      }, adtCases), (0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_8 => {
        const typename_1 = matchValue_8[0];
        const shape = matchValue_8[1];
        const typename$0027_1 = rename_type(typename_1);
        const varname = rename_var(typename_1);
        return (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`@${modulevar_dataclass}.dataclass`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`class ${typename$0027_1}:`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _List.isEmpty)(shape.fields) ? (0, _Seq.singleton)((0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.word)("pass"), 4)) : (0, _Seq.singleton)((0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_9 => {
          const field_1 = rename_field(matchValue_9[0]);
          const t_4 = cg_type(matchValue_9[1]);
          return (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(field_1), (0, _CodeGen.word)(":")), (0, _CodeGen.word)(t_4)));
        }, shape.fields)))), 4)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)(_CodeGen.empty), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(varname), (0, _CodeGen.word)("=")), (0, _CodeGen.word)(typename$0027_1))), (0, _Seq.delay)(() => (0, _Seq.singleton)(_CodeGen.empty)))))))))));
      }, (0, _Analysis.Sigma__GetRecordTypes)(analyzer.Sigma))))))));
    })))))))))))];
    let lexerInfo = (0, _List.empty)();
    let tokenNames = (0, _List.empty)();
    let tokenReprs = (0, _List.empty)();
    let idx_2 = 0;
    let token_id = 0;
    const ReferencedNamedTokens = Array.from(analyzer.ReferencedNamedTokens);
    (0, _Array.sortInPlaceBy)(k_2 => analyzer.TokenFragments.findIndex(y_5 => k_2 === y_5), ReferencedNamedTokens, {
      Compare: _Util.comparePrimitives
    });
    const arr = (0, _Array.sort)(Array.from(analyzer.LiteralTokens), {
      Compare: _Util.comparePrimitives
    });

    for (let idx_3 = 0; idx_3 <= arr.length - 1; idx_3++) {
      const k_3 = arr[idx_3];
      const v_4 = (0, _Sedlex.pstring)(k_3);
      lexerInfo = (0, _List.cons)([v_4, new _Sedlex.keep_token(1, token_id)], lexerInfo);
      tokenNames = (0, _List.cons)(cg_symbol(new _Grammar.symbol(0, k_3, true)), tokenNames);
      tokenReprs = (0, _List.cons)((0, _Utils.escapeString)(k_3), tokenReprs);
      token_id = token_id + 1 | 0;
      idx_2 = idx_2 + 1 | 0;
    }

    for (let idx_4 = 0; idx_4 <= ReferencedNamedTokens.length - 1; idx_4++) {
      const k_4 = ReferencedNamedTokens[idx_4];
      const v_5 = (0, _Map.FSharpMap__get_Item)(lexerMaps, k_4);

      if ((0, _Set.contains)(k_4, analyzer.IgnoreSet)) {
        lexerInfo = (0, _List.cons)([v_5, new _Sedlex.keep_token(0)], lexerInfo);
      } else {
        lexerInfo = (0, _List.cons)([v_5, new _Sedlex.keep_token(1, token_id)], lexerInfo);
        tokenNames = (0, _List.cons)(name_of_named_term(k_4), tokenNames);
        tokenReprs = (0, _List.cons)(k_4, tokenReprs);
        token_id = token_id + 1 | 0;
      }

      idx_2 = idx_2 + 1 | 0;
    }

    lexerInfo = (0, _List.cons)([_Sedlex.pany, new _Sedlex.keep_token(1, token_id)], lexerInfo);
    tokenNames = (0, _List.cons)("UNKNOWN", tokenNames);
    tokenReprs = (0, _List.cons)("UNKNOWN", tokenReprs);
    const tokenNames_1 = (0, _List.reverse)(tokenNames);
    const tokenReprs_1 = (0, _List.reverse)(tokenReprs);
    const lexerInfo_1 = (0, _List.toArray)((0, _List.reverse)((0, _List.cons)([_Sedlex.peof, new _Sedlex.keep_token(1, -1)], lexerInfo)));
    return [file_constructors, [langName + ".lark", (0, _CodeGen.vsep)((0, _List.ofArray)([file_grammar, (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("%declare"), (0, _CodeGen.seplist)((0, _CodeGen.word)(" "), (0, _List.map)(_CodeGen.word, tokenNames_1)))]))], [filename_lexer + ".py", (0, _CodeGenPython.codegen_python)(PythonPackage_Sedlex, (0, _Sedlex.build)(lexerInfo_1, "the last branch must be a catch-all error case!"))], [filename_python + ".py", (0, _CodeGen.vsep)((0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)("from __future__ import annotations")), (0, _Seq.delay)(() => (0, _Seq.append)(!(0, _List.isEmpty)(importNames) ? (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(`from .${filename_require} import`), import_items)) : (0, _Seq.empty)(), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`from .${filename_lexer} import lexall as ${var_lexall}`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`from .${filename_constructors} import *`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`from lark.lexer import Lexer as ${classvar_LarkLexer}`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`from lark import Transformer as ${classvar_LarkTransformer}`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`from lark import Lark as ${classvar_LarkBuilder}`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`from ${PythonPackage_Sedlex}.sedlex import from_ustring as ${var_from_ustring}`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(var_tokenmaps), (0, _CodeGen.word)("=")), (0, _CodeGen.bracket)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), (0, _List.map)(arg_3 => (0, _CodeGen.word)((0, _Utils.escapeString)(arg_3)), tokenNames_1))))), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(export_tokenreprs), (0, _CodeGen.word)("=")), (0, _CodeGen.bracket)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), (0, _List.map)(arg_4 => (0, _CodeGen.word)((0, _Utils.escapeString)(arg_4)), tokenReprs_1))))), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)(_CodeGen.empty), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)(definePyFunc((0, _CodeGen.word)(var_construct_token), (0, _List.ofArray)([(0, _CodeGen.word)("token_id"), (0, _CodeGen.word)("lexeme"), (0, _CodeGen.word)("line"), (0, _CodeGen.word)("col"), (0, _CodeGen.word)("span"), (0, _CodeGen.word)("offset"), (0, _CodeGen.word)("file")]), (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.word)(`if token_id == -1: return ${classvar_LarkToken}("EOF", "")`), (0, _CodeGen.word)(`return ${classvar_LarkToken}(${var_tokenmaps}[token_id], lexeme, offset, line, col, None, None, span + offset)`)])))), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)(_CodeGen.empty), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)(definePyFunc((0, _CodeGen.word)(var_iseof), (0, _List.singleton)((0, _CodeGen.word)("token")), (0, _CodeGen.word)("return token.type == \"EOF\""))), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`class ${classvar_SedlexLexer}(${classvar_LarkLexer}):`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.ofArray)([definePyFunc((0, _CodeGen.word)("__init__"), (0, _List.ofArray)([(0, _CodeGen.word)("self"), (0, _CodeGen.word)("lex_conf")]), (0, _CodeGen.word)("pass")), definePyFunc((0, _CodeGen.word)("lex"), (0, _List.ofArray)([(0, _CodeGen.word)("self"), (0, _CodeGen.word)("raw_string")]), (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("lexbuf"), (0, _CodeGen.word)("=")), (0, _CodeGen.word)(`${var_from_ustring}(raw_string)`)), (0, _CodeGen.word)(`return ${var_lexall}(lexbuf, ${var_construct_token}, ${var_iseof})`)])))])), 4)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)(_CodeGen.empty), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`class ${classvar_RBNFTransformer}(${classvar_LarkTransformer}):`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)(toplevel_transformer), 4)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.word)("pass"), 4)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)(_CodeGen.empty), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`with (__import__('pathlib').Path(__file__).parent /'${langName}.lark').open(encoding='utf8') as __0123fx9:`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(export_Grammar), (0, _CodeGen.word)("= __0123fx9.read()")), 4)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)(_CodeGen.empty), (0, _Seq.delay)(() => (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(export_Parser), (0, _CodeGen.word)("=")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(classvar_LarkBuilder), (0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), (0, _List.ofArray)([(0, _CodeGen.word)(export_Grammar), (0, _CodeGen.word)("start=\u0027start\u0027"), (0, _CodeGen.word)("parser=\u0027lalr\u0027"), (0, _CodeGen.word)(`lexer=${classvar_SedlexLexer}`), (0, _CodeGen.word)(`transformer=${classvar_RBNFTransformer}()`), (0, _CodeGen.word)("keep_all_tokens=True")])))))))))))))))))))))))))))))))))))))))))))))))))))))))))]];
  });
}