"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.codegen = codegen;

var _Option = require("../fable_modules/fable-library.3.7.5/Option.js");

var _ResourceKeys = require("./ResourceKeys.js");

var _List = require("../fable_modules/fable-library.3.7.5/List.js");

var _Set = require("../fable_modules/fable-library.3.7.5/Set.js");

var _Util = require("../fable_modules/fable-library.3.7.5/Util.js");

var _Map = require("../fable_modules/fable-library.3.7.5/Map.js");

var _Seq = require("../fable_modules/fable-library.3.7.5/Seq.js");

var _Analysis = require("./Analysis.js");

var _BackendsCommon = require("./Backends.Common.js");

var _Utils = require("./Utils.js");

var _Grammar = require("./Grammar.js");

var _Exceptions = require("./Exceptions.js");

var _String = require("../fable_modules/fable-library.3.7.5/String.js");

var _CodeGen = require("../FableSedlex/CodeGen.js");

var _ErrorReport = require("./ErrorReport.js");

var _Array = require("../fable_modules/fable-library.3.7.5/Array.js");

function codegen(analyzer, cg_options, langName, stmts) {
  let objectArg_1;
  const variable_renamer = (0, _Option.defaultArg)(cg_options.rename_var, x => x);
  const constructor_renamer = (0, _Option.defaultArg)(cg_options.rename_ctor, x_1 => x_1);
  const field_renamer = (0, _Option.defaultArg)(cg_options.rename_field, x_2 => x_2);
  const type_renamer = (0, _Option.defaultArg)(cg_options.rename_type, x_3 => x_3);
  const start_rule_qualified_type = cg_options.start_rule_qualified_type;
  const rts_file_string = cg_options.request_resource(_ResourceKeys.ocaml_rts_file);
  let importVarNames = (0, _List.empty)();
  let importTypeNames = (0, _List.empty)();
  const abandoned_names = (0, _Set.ofArray)(["and", "as", "assert", "asr", "begin", "class", "constraint", "do", "done", "downto", "else", "end", "exception", "external", "false", "for", "fun", "function", "functor", "if", "in", "include", "inherit", "initializer", "land", "lazy", "let", "lor", "lsl", "lsr", "lxor", "match", "method", "mod", "module", "mutable", "new", "nonrec", "object", "of", "open", "or", "private", "rec", "sig", "struct", "then", "to", "true", "try", "type", "val", "virtual", "when", "while", "with"], {
    Compare: _Util.comparePrimitives
  });
  let symmap = (0, _Map.empty)();
  let toplevel_transformer = (0, _List.empty)();
  let lexerMaps = (0, _List.empty)();
  const global_scope = (0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.map)(k => [k[0], variable_renamer(k[0])], (0, _Analysis.Sigma__get_GlobalVariables)(analyzer.Sigma))));
  const ocamlVarIdentDescr = (0, _BackendsCommon.NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B)((0, _BackendsCommon.NameMangling_IdentifierDescriptor_Create_Z48C5CCEF)((i, c) => {
    const test = ((0, _Utils.isLower)(c) ? true : (0, _Utils.isUnicode)(c)) ? true : c === "_";
    return i === 0 ? test : test ? true : (0, _Utils.isDigit)(c);
  }, (i_1, c_1) => (0, _Utils.isDigit)(c_1) ? `_X${i_1}_` : (0, _Utils.isUpper)(c_1) ? c_1.toLowerCase() : `_${c_1.charCodeAt(0)}_`), new _BackendsCommon.NameMangling_nameEnv((0, _Set.ofList)((0, _List.map)(tuple => tuple[1], global_scope), {
    Compare: _Util.comparePrimitives
  })));
  const sedlexIdentDescr = (0, _BackendsCommon.NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B)((0, _BackendsCommon.NameMangling_IdentifierDescriptor_Create_Z48C5CCEF)((i_2, c_2) => i_2 === 0 ? (0, _Utils.isUpper)(c_2) : ((0, _Utils.isUpper)(c_2) ? true : c_2 === "_") ? true : (0, _Utils.isDigit)(c_2), (i_3, c_3) => (0, _Utils.isLower)(c_3) ? c_3.toUpperCase() : i_3 === 0 ? (0, _BackendsCommon.NameMangling_maskChar)(65, 90, c_3.charCodeAt(0)) + "_" : "_" + (0, _BackendsCommon.NameMangling_maskChar)(65, 90, c_3.charCodeAt(0)) + "_"), new _BackendsCommon.NameMangling_nameEnv((0, _Set.ofArray)(["EOF"], {
    Compare: _Util.comparePrimitives
  })));
  const menhirIdentDescr = (0, _BackendsCommon.NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B)((0, _BackendsCommon.NameMangling_IdentifierDescriptor_Create_Z48C5CCEF)((i_4, c_4) => i_4 === 0 ? (0, _Utils.isLower)(c_4) : ((0, _Utils.isLower)(c_4) ? true : c_4 === "_") ? true : (0, _Utils.isDigit)(c_4), (_arg1, c_5) => (0, _Utils.isUpper)(c_5) ? c_5.toLowerCase() : "_" + (0, _BackendsCommon.NameMangling_maskChar)(97, 122, c_5.charCodeAt(0)) + "_"), new _BackendsCommon.NameMangling_nameEnv((0, _Set.ofArray)(["start"], {
    Compare: _Util.comparePrimitives
  })));

  const mangle = (idr, n) => (0, _BackendsCommon.NameMangling_mangle)(abandoned_names, idr, n);

  const cg_symbol = x_8 => {
    const matchValue = (0, _Map.tryFind)(x_8, symmap);

    if (matchValue == null) {
      let valid_py_ident;

      switch (x_8.tag) {
        case 0:
          {
            const define = x_8.fields[0];
            valid_py_ident = x_8.fields[1] ? mangle(sedlexIdentDescr, "\"" + define + "\"") : mangle(sedlexIdentDescr, define);
            break;
          }

        case 1:
          {
            valid_py_ident = mangle(menhirIdentDescr, x_8.fields[0]);
            break;
          }

        default:
          {
            throw new Error("macro not processed");
          }
      }

      symmap = (0, _Map.add)(x_8, valid_py_ident, symmap);
      return valid_py_ident;
    } else {
      return matchValue;
    }
  };

  const name_of_named_term = n_2 => cg_symbol(new _Grammar.symbol(0, n_2, false));

  const tryLookup = (key_mut, x_9_mut) => {
    tryLookup: while (true) {
      const key = key_mut,
            x_9 = x_9_mut;

      if (!(0, _List.isEmpty)(x_9)) {
        if ((0, _Util.equals)((0, _List.head)(x_9)[0], key)) {
          return (0, _Option.some)((0, _List.head)(x_9)[1]);
        } else if (!(0, _List.isEmpty)(x_9)) {
          key_mut = key;
          x_9_mut = (0, _List.tail)(x_9);
          continue tryLookup;
        } else {
          throw new Error("Match failure");
        }
      } else {
        return void 0;
      }

      break;
    }
  };

  const _cg_type = t => {
    if (t.tag === 4) {
      return "\u0027" + t.fields[0];
    } else if (t.tag === 0) {
      const exn = new _Exceptions.UnsolvedTypeVariable();
      throw exn;
    } else if (t.tag === 3) {
      return "(" + (0, _String.join)(" * ", (0, _List.map)(tupledArg => _cg_type(tupledArg[1]), t.fields[0])) + ") -\u003e " + _cg_type(t.fields[1]);
    } else if (t.tag === 2) {
      if ((0, _Grammar.$007CTTuple$007C_$007C)(t.fields[0]) != null) {
        return "(" + (0, _String.join)(" * ", (0, _List.map)(_cg_type, t.fields[1])) + ")";
      } else if (t.tag === 2) {
        return "(" + (0, _String.join)(", ", (0, _List.map)(_cg_type, t.fields[1])) + ") " + _cg_type(t.fields[0]);
      } else {
        throw new Error("Match failure");
      }
    } else {
      return type_renamer(t.fields[0]);
    }
  };

  const cg_type = t_1 => _cg_type((0, _Grammar.monot__Prune)(t_1));

  const cg_expr = (scope, curr_expr) => (0, _Analysis.Sigma__WithExpr)(analyzer.Sigma, curr_expr, () => {
    const matchValue_1 = curr_expr.node;

    if (matchValue_1.tag === 6) {
      const matchValue_2 = tryLookup(matchValue_1.fields[0], scope);

      if (matchValue_2 != null) {
        return (0, _CodeGen.word)(matchValue_2);
      } else {
        throw (0, _Exceptions.UnboundVariable)(matchValue_1.fields[0]);
      }
    } else if (matchValue_1.tag === 11) {
      return matchValue_1.fields[0] ? (0, _CodeGen.word)("true") : (0, _CodeGen.word)("false");
    } else if (matchValue_1.tag === 3) {
      return (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)(cg_expr(scope, matchValue_1.fields[0]), (0, _CodeGen.word)(":")), (0, _CodeGen.word)(cg_type(curr_expr.t))), (0, _CodeGen.word)(".")), (0, _CodeGen.word)(matchValue_1.fields[1]));
    } else if (matchValue_1.tag === 8) {
      return (0, _CodeGen.word)((0, _String.toText)((0, _String.printf)("%d"))(matchValue_1.fields[0]));
    } else if (matchValue_1.tag === 10) {
      return (0, _CodeGen.word)((0, _String.toText)((0, _String.printf)("%f"))(matchValue_1.fields[0]));
    } else if (matchValue_1.tag === 9) {
      return (0, _CodeGen.word)((0, _Utils.escapeString)(matchValue_1.fields[0]));
    } else if (matchValue_1.tag === 5) {
      const code = cg_expr((0, _List.append)((0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_3 => {
        const arg = matchValue_3[0];
        return (0, _Seq.singleton)([arg, mangle(ocamlVarIdentDescr, arg)]);
      }, matchValue_1.fields[0]))), scope), matchValue_1.fields[1]);
      const anns = (0, _List.map)(tupledArg_1 => (0, _CodeGen.word)(tupledArg_1[0] + ":" + cg_type(tupledArg_1[1])), matchValue_1.fields[0]);
      return (0, _CodeGen.parens)((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("fun"), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), anns)), (0, _CodeGen.word)("-\u003e"))), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)(code, 4)])));
    } else if (matchValue_1.tag === 4) {
      const value$0027 = cg_expr(scope, matchValue_1.fields[1]);
      const m_name = mangle(ocamlVarIdentDescr, matchValue_1.fields[0]);
      const body = cg_expr((0, _List.cons)([matchValue_1.fields[0], m_name], scope), matchValue_1.fields[2]);
      const name_2 = (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(m_name), (0, _CodeGen.word)(":")), (0, _CodeGen.word)(cg_type(matchValue_1.fields[1].t)));
      return (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("let"), name_2), (0, _CodeGen.word)("=")), value$0027), (0, _CodeGen.word)("in")), body]));
    } else if (matchValue_1.tag === 2) {
      return (0, _CodeGen.bracket)((0, _CodeGen.seplist)((0, _CodeGen.word)(";"), (0, _List.map)(elt => cg_expr(scope, elt), matchValue_1.fields[0])));
    } else if (matchValue_1.tag === 7) {
      return (0, _CodeGen.word)(`$${matchValue_1.fields[0]}`);
    } else if (matchValue_1.tag === 1) {
      return (0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), (0, _List.map)(elt_1 => cg_expr(scope, elt_1), matchValue_1.fields[0])));
    } else {
      const f$0027 = cg_expr(scope, matchValue_1.fields[0]);
      const args$0027 = (0, _List.map)(x_11 => cg_expr(scope, x_11), matchValue_1.fields[1]);
      return (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)(f$0027, (0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), args$0027)));
    }
  });

  const mk_lexer = def => {
    const op_Dereference = mk_lexer;
    let pattern_matching_result, s_6, e_2, e_3, e_4, e_5, s_7, xs, l, r_1, xs_1, e_6;

    if (def.tag === 9) {
      if (def.fields[0].tag === 9) {
        pattern_matching_result = 1;
        e_2 = def.fields[0].fields[0];
      } else {
        pattern_matching_result = 1;
        e_2 = def.fields[0];
      }
    } else if (def.tag === 5) {
      pattern_matching_result = 2;
      e_3 = def.fields[0];
    } else if (def.tag === 0) {
      pattern_matching_result = 3;
    } else if (def.tag === 6) {
      pattern_matching_result = 4;
      e_4 = def.fields[0];
    } else if (def.tag === 7) {
      pattern_matching_result = 5;
      e_5 = def.fields[0];
    } else if (def.tag === 1) {
      pattern_matching_result = 6;
    } else if (def.tag === 11) {
      pattern_matching_result = 7;
      s_7 = def.fields[0];
    } else if (def.tag === 2) {
      pattern_matching_result = 8;
      xs = def.fields[0];
    } else if (def.tag === 10) {
      pattern_matching_result = 9;
      l = def.fields[0];
      r_1 = def.fields[1];
    } else if (def.tag === 4) {
      if ((0, _List.isEmpty)(def.fields[0])) {
        pattern_matching_result = 10;
      } else {
        pattern_matching_result = 11;
        xs_1 = def.fields[0];
      }
    } else if (def.tag === 8) {
      pattern_matching_result = 12;
      e_6 = def.fields[0];
    } else {
      pattern_matching_result = 0;
      s_6 = def.fields[0];
    }

    switch (pattern_matching_result) {
      case 0:
        {
          return (0, _Utils.escapeString)(s_6);
        }

      case 1:
        {
          return "(" + op_Dereference(e_2) + ")";
        }

      case 2:
        {
          return `Compl(${op_Dereference(e_3)})`;
        }

      case 3:
        {
          return "(\u00270\u0027 .. \u00279\u0027)";
        }

      case 4:
        {
          return `Plus(${op_Dereference(e_4)})`;
        }

      case 5:
        {
          return `Star(${op_Dereference(e_5)})`;
        }

      case 6:
        {
          return "any";
        }

      case 7:
        {
          const matchValue_5 = (0, _Utils.List_tryLookup)(s_7, lexerMaps);

          if (matchValue_5 == null) {
            const exn_1 = (0, _Exceptions.UnboundLexer)(s_7);
            throw exn_1;
          } else {
            return "rule_" + name_of_named_term(s_7);
          }
        }

      case 8:
        {
          return (0, _String.join)(", ", (0, _List.toArray)((0, _List.map)(mk_lexer, xs)));
        }

      case 9:
        {
          return `(${l} .. ${r_1})`;
        }

      case 10:
        {
          throw new Error("impossible: alternatives cannot be empty.");
        }

      case 11:
        {
          return (0, _String.join)(" | ", (0, _List.toArray)((0, _List.map)(mk_lexer, xs_1)));
        }

      case 12:
        {
          return `Opt(${op_Dereference(e_6)})`;
        }
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
        return (0, _List.fold)((a_3, b_2) => `por(${a_3}, ${b_2})`, op_Dereference_1((0, _List.head)(def_1.fields[0])), (0, _List.map)(mk_lexer_debug, (0, _List.tail)(def_1.fields[0])));
      } else {
        throw new Error("impossible: alternatives cannot be empty.");
      }
    } else if (def_1.tag === 8) {
      return `popt${op_Dereference_1(def_1.fields[0])}`;
    } else {
      return `pstring(${(0, _Utils.escapeString)(def_1.fields[0])})`;
    }
  };

  return (0, _ErrorReport.withErrorHandler)((objectArg_1 = analyzer.Sigma, () => (0, _Analysis.Sigma__GetErrorTrace)(objectArg_1)), () => {
    const file_grammar = (0, _CodeGen.vsep)((0, _List.ofArray)((0, _Array.map)(stmt => {
      (0, _Analysis.Sigma__SetCurrentDefinition_Z759AB257)(analyzer.Sigma, stmt);

      switch (stmt.tag) {
        case 2:
          {
            const decl_1 = stmt.fields[0];
            lexerMaps = (0, _List.cons)([decl_1.lhs, (0, _CodeGen.word)(mk_lexer(decl_1.define))], lexerMaps);
            return _CodeGen.empty;
          }

        case 6:
          {
            return _CodeGen.empty;
          }

        case 3:
          {
            importVarNames = (0, _List.cons)(variable_renamer(stmt.fields[0].ident), importVarNames);
            return (0, _CodeGen.vsep)((0, _List.empty)());
          }

        case 5:
          {
            importTypeNames = (0, _List.cons)(type_renamer(stmt.fields[0].ident), importTypeNames);
            return (0, _CodeGen.vsep)((0, _List.empty)());
          }

        case 4:
          {
            return (0, _CodeGen.vsep)((0, _List.empty)());
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
            const body_4 = (0, _CodeGen.align)((0, _CodeGen.vsep)((0, _List.mapIndexed)((i_7, e_1) => (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)(i_7 === 0 ? (0, _CodeGen.word)(":") : (0, _CodeGen.word)("|"), e_1), (0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_4 => {
              let prod;
              (0, _Analysis.Sigma__SetCurrentPos_Z302187B)(analyzer.Sigma, matchValue_4[0]);
              (0, _Analysis.Sigma__SetCurrentDefinitionBranch_Z524259A4)(analyzer.Sigma, idx_1);
              idx_1 = idx_1 + 1 | 0;
              return (0, _Seq.singleton)((prod = matchValue_4[1], (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.seplist)((0, _CodeGen.word)(" "), (0, _List.map)(arg_1 => (0, _CodeGen.word)(cg_symbol(arg_1)), prod.symbols)), (0, _CodeGen.word)("{")), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.ofArray)([_CodeGen.empty, (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)(cg_expr(global_scope, prod.action), 4), (0, _CodeGen.word)("}")])), 12))));
            }, decl.define))))));
            return (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(ntname_1), body_4);
          }
      }
    }, stmts)));
    const filename_lexer = (0, _String.toText)((0, _String.printf)("%s_lexer"))(langName);
    const filename_parser = (0, _String.toText)((0, _String.printf)("%s_parser"))(langName);
    const filename_constructors = (0, _String.toText)((0, _String.printf)("%s_construct"))(langName);
    const filename_require = (0, _String.toText)((0, _String.printf)("%s_require"))(langName);
    const var_tokenizer = mangle(ocamlVarIdentDescr, "tokenizer");
    const var_lexbuf = mangle(ocamlVarIdentDescr, "lexbuf");
    const file_constructors = [filename_constructors + ".ml", (0, _CodeGen.vsep)((0, _Seq.toList)((0, _Seq.delay)(() => {
      let docCtorWrapFuncs = (0, _List.empty)();
      return (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`open ${(0, _Utils.capitalized)(filename_require)};;`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`open ${(0, _Utils.capitalized)(filename_lexer)};;`)), (0, _Seq.delay)(() => {
        const adtCases = (0, _Analysis.Sigma__GetADTCases)(analyzer.Sigma);
        return (0, _Seq.append)((0, _Seq.singleton)(_CodeGen.empty), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)("type ___used_t_head_90xasda")), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.collect)(matchValue_6 => {
          const typename$0027 = type_renamer(matchValue_6[0]);
          return (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`and ${typename$0027} = `)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.collect)(matchValue_7 => {
            const ctorName = matchValue_7[0];
            const fields_1 = (0, _List.map)(tupledArg_2 => [field_renamer(tupledArg_2[0]), cg_type(tupledArg_2[1])], matchValue_7[1]);
            const ctorName$0027 = constructor_renamer(ctorName);
            const ret_t = (0, _CodeGen.word)(typename$0027);
            docCtorWrapFuncs = (0, _List.cons)([variable_renamer(ctorName), ctorName$0027, fields_1, ret_t], docCtorWrapFuncs);

            if ((0, _List.isEmpty)(fields_1)) {
              return (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("|"), (0, _CodeGen.word)(ctorName$0027)), (0, _CodeGen.word)("of")), (0, _CodeGen.word)("unit")));
            } else {
              const ano_record_typ = (0, _CodeGen.seplist)((0, _CodeGen.word)(";"), (0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_8 => (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(matchValue_8[0]), (0, _CodeGen.word)(":")), (0, _CodeGen.word)(matchValue_8[1]))), fields_1))));
              return (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("|"), (0, _CodeGen.word)(ctorName$0027)), (0, _CodeGen.word)("of")), (0, _CodeGen.word)("{")), ano_record_typ), (0, _CodeGen.word)("}")));
            }
          }, (0, _Map.toArray)(matchValue_6[1])), (0, _Seq.delay)(() => (0, _Seq.singleton)(_CodeGen.empty)))));
        }, adtCases), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.collect)(matchValue_9 => {
          const typename_1 = matchValue_9[0];
          const shape = matchValue_9[1];
          const typename$0027_1 = type_renamer(typename_1);
          const varname = variable_renamer(typename_1);
          const ret_t_1 = (0, _List.isEmpty)(shape.parameters) ? (0, _CodeGen.word)(typename$0027_1) : (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.parens)((0, _CodeGen.word)((0, _String.join)(", ", (0, _List.map)(s_10 => "\u0027" + s_10, shape.parameters)))), (0, _CodeGen.word)(typename$0027_1));
          const fields_2 = (0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_10 => (0, _Seq.singleton)([field_renamer(matchValue_10[0]), cg_type(matchValue_10[1])]), shape.fields)));
          return (0, _List.isEmpty)(fields_2) ? (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("and"), ret_t_1), (0, _CodeGen.word)("=")), (0, _CodeGen.word)("MK_" + typename$0027_1)), (0, _CodeGen.word)("of unit"))), (0, _Seq.delay)(() => {
            docCtorWrapFuncs = (0, _List.cons)([varname, "MK_" + typename$0027_1, fields_2, ret_t_1], docCtorWrapFuncs);
            return (0, _Seq.empty)();
          })) : (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("and"), ret_t_1), (0, _CodeGen.word)("=")), (0, _CodeGen.word)("{"))), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_11 => (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(matchValue_11[0]), (0, _CodeGen.word)(":")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(matchValue_11[1]), (0, _CodeGen.word)(";")))), fields_2)))), 4)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)("}")), (0, _Seq.delay)(() => {
            docCtorWrapFuncs = (0, _List.cons)([varname, "", fields_2, ret_t_1], docCtorWrapFuncs);
            return (0, _Seq.empty)();
          }))))));
        }, (0, _Analysis.Sigma__GetRecordTypes)(analyzer.Sigma)), (0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_12 => {
          const function_name = matchValue_12[0];
          const fields_3 = matchValue_12[2];
          const ctor_name = matchValue_12[1];

          if ((0, _List.isEmpty)(fields_3)) {
            return (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("let"), (0, _CodeGen.word)(function_name)), (0, _CodeGen.word)("()")), (0, _CodeGen.word)("=")), (0, _CodeGen.word)(ctor_name)), (0, _CodeGen.word)("()")));
          } else {
            const args_5 = (0, _List.map)(arg_2 => (0, _CodeGen.word)(arg_2[0]), fields_3);
            return (0, _Seq.singleton)((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("let"), (0, _CodeGen.word)(function_name)), (0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), args_5))), (0, _CodeGen.word)(":")), matchValue_12[3]), (0, _CodeGen.word)("=")), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(ctor_name), (0, _CodeGen.word)("{")), (0, _CodeGen.seplist)((0, _CodeGen.word)(";"), args_5)), (0, _CodeGen.word)("}")))), 4)])));
          }
        }, docCtorWrapFuncs)))))))));
      }))));
    })))];
    let tokenNames = (0, _List.empty)();
    const ReferencedNamedTokens = Array.from(analyzer.ReferencedNamedTokens);
    (0, _Array.sortInPlaceBy)(k_1 => analyzer.TokenFragments.findIndex(y_4 => k_1 === y_4), ReferencedNamedTokens, {
      Compare: _Util.comparePrimitives
    });
    let lexical_rule_defs = (0, _List.empty)();
    let tokenizer_cases = (0, _List.empty)();
    const arr = (0, _Array.sort)(Array.from(analyzer.LiteralTokens), {
      Compare: _Util.comparePrimitives
    });

    for (let idx_2 = 0; idx_2 <= arr.length - 1; idx_2++) {
      const k_2 = arr[idx_2];
      const v_2 = (0, _CodeGen.word)(mk_lexer(new _Grammar.lexerule(3, k_2)));
      const tokenName = cg_symbol(new _Grammar.symbol(0, k_2, true));
      const lexical_rule_name = "rule_" + tokenName;
      const lexical_rule_def = (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("let"), (0, _CodeGen.word)(lexical_rule_name)), (0, _CodeGen.word)("=")), (0, _CodeGen.bracket)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("%sedlex.regexp?"), v_2)));
      lexical_rule_defs = (0, _List.cons)(lexical_rule_def, lexical_rule_defs);
      const tokenizer_case = (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("|"), (0, _CodeGen.word)(lexical_rule_name)), (0, _CodeGen.word)(`-> ${tokenName} (mktoken ${var_lexbuf})`));
      tokenizer_cases = (0, _List.cons)(tokenizer_case, tokenizer_cases);
      tokenNames = (0, _List.cons)(tokenName, tokenNames);
    }

    const enumerator = (0, _Util.getEnumerator)(lexerMaps);

    try {
      while (enumerator["System.Collections.IEnumerator.MoveNext"]()) {
        const forLoopVar = enumerator["System.Collections.Generic.IEnumerator`1.get_Current"]();
        const v_3 = forLoopVar[1];
        const k_3 = forLoopVar[0];

        if ((0, _Set.contains)(k_3, analyzer.IgnoreSet)) {
          const lexical_rule_name_1 = "rule_" + name_of_named_term(k_3);
          const lexical_rule_def_1 = (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("let"), (0, _CodeGen.word)(lexical_rule_name_1)), (0, _CodeGen.word)("=")), (0, _CodeGen.bracket)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("%sedlex.regexp?"), v_3)));
          lexical_rule_defs = (0, _List.cons)(lexical_rule_def_1, lexical_rule_defs);
          const tokenizer_case_1 = (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("|"), (0, _CodeGen.word)(lexical_rule_name_1)), (0, _CodeGen.word)(`-> ${var_tokenizer} ${var_lexbuf}`));
          tokenizer_cases = (0, _List.cons)(tokenizer_case_1, tokenizer_cases);
        } else {
          const tokenName_1 = name_of_named_term(k_3);
          const lexical_rule_name_2 = "rule_" + tokenName_1;
          const lexical_rule_def_2 = (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("let"), (0, _CodeGen.word)(lexical_rule_name_2)), (0, _CodeGen.word)("=")), (0, _CodeGen.bracket)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("%sedlex.regexp?"), v_3)));
          lexical_rule_defs = (0, _List.cons)(lexical_rule_def_2, lexical_rule_defs);

          if ((0, _Array.contains)(k_3, ReferencedNamedTokens, {
            Equals: (x_16, y_7) => x_16 === y_7,
            GetHashCode: _Util.stringHash
          })) {
            const tokenizer_case_2 = (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("|"), (0, _CodeGen.word)(lexical_rule_name_2)), (0, _CodeGen.word)(`-> ${tokenName_1} (mktoken ${var_lexbuf})`));
            tokenizer_cases = (0, _List.cons)(tokenizer_case_2, tokenizer_cases);
            tokenNames = (0, _List.cons)(tokenName_1, tokenNames);
          }
        }
      }
    } finally {
      (0, _Util.disposeSafe)(enumerator);
    }

    tokenizer_cases = (0, _List.ofArrayWithTail)([(0, _CodeGen.word)(`| _ -> _unknown_token ${var_lexbuf}`), (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("|"), (0, _CodeGen.word)("eof -\u003e")), (0, _CodeGen.word)("EOF"))], tokenizer_cases);
    const tokenNames_1 = (0, _List.reverse)(tokenNames);
    const tokenizer_cases_1 = (0, _List.reverse)(tokenizer_cases);
    const file_lexer = [filename_lexer + ".ml", (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.word)(rts_file_string), _CodeGen.empty, (0, _CodeGen.word)("type token ="), (0, _CodeGen.vsep)((0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.map)(tkn => (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("|"), (0, _CodeGen.word)(tkn)), (0, _CodeGen.word)("of")), (0, _CodeGen.word)("tbnf_token")), tokenNames_1), (0, _Seq.delay)(() => (0, _Seq.singleton)((0, _CodeGen.word)("| EOF"))))))), _CodeGen.empty, (0, _CodeGen.vsep)(lexical_rule_defs), _CodeGen.empty, (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("let rec"), (0, _CodeGen.word)(var_tokenizer)), (0, _CodeGen.word)(var_lexbuf)), (0, _CodeGen.word)("=")), (0, _CodeGen.align)((0, _CodeGen.indent)(4, (0, _CodeGen.vsep)((0, _List.cons)((0, _CodeGen.word)(`match%sedlex ${var_lexbuf} with`), tokenizer_cases_1))))]))]))];
    const matchValue_13 = (0, _Map.tryFind)("start", analyzer.Omega);

    if (matchValue_13 != null) {
      const start_t = matchValue_13;
      const start_name = cg_symbol(new _Grammar.symbol(1, "start"));
      const start_t_1 = cg_type((0, _Grammar.monot__Prune)(start_t));
      return [file_constructors, [filename_parser + ".mly", (0, _CodeGen.vsep)((0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)("%{")), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`open ${(0, _Utils.capitalized)(filename_require)};;`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`open ${(0, _Utils.capitalized)(filename_lexer)};;`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`open ${(0, _Utils.capitalized)(filename_constructors)};;`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)("%}")), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.map)(tokenName_2 => (0, _CodeGen.word)(`%token<tbnf_token> ${tokenName_2}`), tokenNames_1), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)("%token EOF")), (0, _Seq.delay)(() => {
        let start_t_2;
        return (0, _Seq.append)(start_rule_qualified_type != null ? (start_t_2 = start_rule_qualified_type, (0, _Seq.singleton)((0, _CodeGen.word)(`%start <${start_t_2}> start`))) : (0, _Seq.singleton)((0, _CodeGen.word)(`%start <${start_t_1}> start`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)("%%")), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)(_CodeGen.empty), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)((0, _String.toText)((0, _String.printf)("start : %s EOF { $1 }"))(start_name))), (0, _Seq.delay)(() => (0, _Seq.singleton)(file_grammar)))))))));
      })))))))))))))))))], file_lexer];
    } else {
      const exn_2 = (0, _Exceptions.UnboundNonterminal)("start");
      throw exn_2;
    }
  });
}