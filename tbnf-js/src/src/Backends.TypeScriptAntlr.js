"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.CSharpKeywords = void 0;
exports.angled = angled;
exports.codegen = codegen;

var _CodeGen = require("../FableSedlex/CodeGen.js");

var _Option = require("../fable_modules/fable-library.3.7.9/Option.js");

var _List = require("../fable_modules/fable-library.3.7.9/List.js");

var _Set = require("../fable_modules/fable-library.3.7.9/Set.js");

var _Array = require("../fable_modules/fable-library.3.7.9/Array.js");

var _Util = require("../fable_modules/fable-library.3.7.9/Util.js");

var _Map = require("../fable_modules/fable-library.3.7.9/Map.js");

var _Seq = require("../fable_modules/fable-library.3.7.9/Seq.js");

var _Analysis = require("./Analysis.js");

var _BackendsCommon = require("./Backends.Common.js");

var _Utils = require("./Utils.js");

var _Grammar = require("./Grammar.js");

var _Exceptions = require("./Exceptions.js");

var _String = require("../fable_modules/fable-library.3.7.9/String.js");

var _ErrorReport = require("./ErrorReport.js");

const CSharpKeywords = ["__arglist", "__makeref", "__reftype", "__refvalue", "abstract", "as", "base", "bool", "break", "byte", "case", "catch", "char", "checked", "class", "const", "continue", "decimal", "default", "delegate", "do", "double", "else", "enum", "event", "explicit", "extern", "false", "finally", "fixed", "float", "for", "foreach", "goto", "if", "implicit", "in", "int", "interface", "internal", "is", "lock", "long", "namespace", "new", "null", "object", "operator", "out", "override", "params", "private", "protected", "public", "readonly", "ref", "return", "sbyte", "sealed", "short", "sizeof", "stackalloc", "static", "string", "struct", "switch", "this", "throw", "true", "try", "typeof", "uint", "ulong", "unchecked", "unsafe", "ushort", "using", "virtual", "volatile", "void", "while", "lexer", "parser"];
exports.CSharpKeywords = CSharpKeywords;

function angled(x) {
  return (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)("\u003c"), x), (0, _CodeGen.word)("\u003e"));
}

function codegen(analyzer, cg_options, langName, stmts) {
  let objectArg_1;
  const var_renamer = (0, _Option.defaultArg)(cg_options.rename_var, x => x);
  const rename_ctor = (0, _Option.defaultArg)(cg_options.rename_ctor, x_1 => x_1);
  const rename_var = (0, _Option.defaultArg)(cg_options.rename_var, x_2 => x_2);
  const rename_field = (0, _Option.defaultArg)(cg_options.rename_field, x_3 => x_3);
  const type_renamer = (0, _Option.defaultArg)(cg_options.rename_type, x_4 => x_4);
  let importVarNames = (0, _List.empty)();
  let importTypeNames = (0, _List.empty)();
  const abandoned_names = (0, _Set.ofArray)((0, _Array.append)(["result"], CSharpKeywords), {
    Compare: _Util.comparePrimitives
  });
  let symmap = (0, _Map.empty)();
  let lexerMaps = (0, _List.empty)();
  const global_scope = (0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.map)(k => [k[0], var_renamer(k[0])], (0, _Analysis.Sigma__get_GlobalVariables)(analyzer.Sigma))));
  const csharpIdentDescr = (0, _BackendsCommon.NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B)((0, _BackendsCommon.NameMangling_IdentifierDescriptor_Create_Z48C5CCEF)((i, c) => {
    const test = (((0, _Utils.isLower)(c) ? true : (0, _Utils.isUpper)(c)) ? true : (0, _Utils.isUnicode)(c)) ? true : c === "_";
    return i === 0 ? test : test ? true : (0, _Utils.isDigit)(c);
  }, (i_1, c_1) => (0, _Utils.isDigit)(c_1) ? `_X${i_1}_` : `_${c_1.charCodeAt(0)}_`), new _BackendsCommon.NameMangling_nameEnv((0, _Set.ofList)((0, _List.map)(tuple => tuple[1], global_scope), {
    Compare: _Util.comparePrimitives
  })));
  const antlrLexerIdentDescr = (0, _BackendsCommon.NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B)((0, _BackendsCommon.NameMangling_IdentifierDescriptor_Create_Z48C5CCEF)((i_2, c_2) => i_2 === 0 ? (0, _Utils.isUpper)(c_2) : ((0, _Utils.isUpper)(c_2) ? true : c_2 === "_") ? true : (0, _Utils.isDigit)(c_2), (i_3, c_3) => (0, _Utils.isLower)(c_3) ? c_3.toUpperCase() : i_3 === 0 ? (0, _BackendsCommon.NameMangling_maskChar)(65, 90, c_3.charCodeAt(0)) + "_" : "_" + (0, _BackendsCommon.NameMangling_maskChar)(65, 90, c_3.charCodeAt(0)) + "_"), new _BackendsCommon.NameMangling_nameEnv((0, _Set.ofArray)(["EOF"], {
    Compare: _Util.comparePrimitives
  })));
  const antlrGrammarIdentDescr = (0, _BackendsCommon.NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B)((0, _BackendsCommon.NameMangling_IdentifierDescriptor_Create_Z48C5CCEF)((i_4, c_4) => i_4 === 0 ? (0, _Utils.isLower)(c_4) : ((0, _Utils.isLower)(c_4) ? true : c_4 === "_") ? true : (0, _Utils.isDigit)(c_4), (_arg1, c_5) => (0, _Utils.isUpper)(c_5) ? c_5.toLowerCase() : "_" + (0, _BackendsCommon.NameMangling_maskChar)(97, 122, c_5.charCodeAt(0)) + "_"), new _BackendsCommon.NameMangling_nameEnv((0, _Set.ofArray)(["start"], {
    Compare: _Util.comparePrimitives
  })));

  const mangle = (idr, n) => (0, _BackendsCommon.NameMangling_mangle)(abandoned_names, idr, n);

  const cg_symbol = x_10 => {
    const matchValue = (0, _Map.tryFind)(x_10, symmap);

    if (matchValue == null) {
      let valid_py_ident;

      switch (x_10.tag) {
        case 0:
          {
            const define = x_10.fields[0];
            valid_py_ident = x_10.fields[1] ? (0, _Utils.escapeStringSingleQuoted)(define) : mangle(antlrLexerIdentDescr, define);
            break;
          }

        case 1:
          {
            valid_py_ident = mangle(antlrGrammarIdentDescr, x_10.fields[0]);
            break;
          }

        default:
          {
            throw new Error("macro not processed");
          }
      }

      symmap = (0, _Map.add)(x_10, valid_py_ident, symmap);
      return valid_py_ident;
    } else {
      return matchValue;
    }
  };

  const name_of_named_term = n_2 => cg_symbol(new _Grammar.symbol(0, n_2, false));

  const tryLookup = (key_mut, x_11_mut) => {
    tryLookup: while (true) {
      const key = key_mut,
            x_11 = x_11_mut;

      if (!(0, _List.isEmpty)(x_11)) {
        if ((0, _Util.equals)((0, _List.head)(x_11)[0], key)) {
          return (0, _Option.some)((0, _List.head)(x_11)[1]);
        } else if (!(0, _List.isEmpty)(x_11)) {
          key_mut = key;
          x_11_mut = (0, _List.tail)(x_11);
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
    let pattern_matching_result, n_3, a, args, r;

    if (t.tag === 4) {
      pattern_matching_result = 1;
      a = t.fields[0];
    } else if (t.tag === 0) {
      pattern_matching_result = 2;
    } else if (t.tag === 3) {
      pattern_matching_result = 3;
      args = t.fields[0];
      r = t.fields[1];
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
      n_3 = t.fields[0];
    }

    switch (pattern_matching_result) {
      case 0:
        {
          return type_renamer(n_3);
        }

      case 1:
        {
          return "_GEN_" + a;
        }

      case 2:
        {
          const exn = new _Exceptions.UnsolvedTypeVariable();
          throw exn;
        }

      case 3:
        {
          return (0, _String.join)(", ", (0, _List.map)(tupledArg => tupledArg[0] + ":" + _cg_type(tupledArg[1]), args)) + " =\u003e " + _cg_type(r);
        }

      case 4:
        {
          throw new Error("[]");
        }

      case 5:
        {
          let pattern_matching_result_1, args_1;

          if (t.tag === 2) {
            if ((0, _Grammar.$007CTTuple$007C_$007C)(t.fields[0]) != null) {
              pattern_matching_result_1 = 0;
              args_1 = t.fields[1];
            } else {
              pattern_matching_result_1 = 1;
            }
          } else {
            pattern_matching_result_1 = 1;
          }

          switch (pattern_matching_result_1) {
            case 0:
              {
                return "[" + (0, _String.join)(", ", (0, _List.map)(_cg_type, args_1)) + "]";
              }

            case 1:
              {
                if (t.tag === 2) {
                  const it_2 = (0, _String.join)(", ", (0, _List.map)(_cg_type, t.fields[1]));
                  return _cg_type(t.fields[0]) + "\u003c" + it_2 + "\u003e";
                } else {
                  throw new Error("Match failure");
                }
              }
          }
        }
    }
  };

  const cg_type = t_1 => _cg_type((0, _Grammar.monot__Prune)(t_1));

  const slotName = (actionName, i_5) => `${actionName}__${i_5}`;

  const resultName = "result";

  const mk_lexer = def => {
    if (def.tag === 9) {
      return "(" + mk_lexer(def.fields[0]) + ")";
    } else if (def.tag === 5) {
      return `~${mk_lexer(def.fields[0])}`;
    } else if (def.tag === 0) {
      return "[0-9]";
    } else if (def.tag === 6) {
      return `${mk_lexer(def.fields[0])}+`;
    } else if (def.tag === 7) {
      return `${mk_lexer(def.fields[0])}*`;
    } else if (def.tag === 1) {
      return ".";
    } else if (def.tag === 11) {
      const matchValue_5 = (0, _Utils.List_tryLookup)(def.fields[0], lexerMaps);

      if (matchValue_5 == null) {
        const exn_1 = (0, _Exceptions.UnboundLexer)(def.fields[0]);
        throw exn_1;
      } else {
        return name_of_named_term(def.fields[0]);
      }
    } else if (def.tag === 2) {
      return (0, _String.join)(" ", (0, _List.toArray)((0, _List.map)(mk_lexer, def.fields[0])));
    } else if (def.tag === 10) {
      return `[${(0, _Utils.iToU4)(def.fields[0])}-${(0, _Utils.iToU4)(def.fields[1])}]`;
    } else if (def.tag === 4) {
      if ((0, _List.isEmpty)(def.fields[0])) {
        throw new Error("impossible: alternatives cannot be empty.");
      } else {
        return (0, _String.join)(" | ", (0, _List.toArray)((0, _List.map)(mk_lexer, def.fields[0])));
      }
    } else if (def.tag === 8) {
      return `${mk_lexer(def.fields[0])}?`;
    } else {
      return (0, _Utils.escapeStringSingleQuoted)(def.fields[0]);
    }
  };

  const mk_lexer_debug = def_6 => {
    const op_Dereference = mk_lexer_debug;

    if (def_6.tag === 9) {
      return op_Dereference(def_6.fields[0]);
    } else if (def_6.tag === 5) {
      return `pnot(${op_Dereference(def_6.fields[0])})`;
    } else if (def_6.tag === 0) {
      return "pnumber";
    } else if (def_6.tag === 6) {
      return `pplus(${op_Dereference(def_6.fields[0])})`;
    } else if (def_6.tag === 7) {
      return `pstar(${op_Dereference(def_6.fields[0])})`;
    } else if (def_6.tag === 1) {
      return "pany";
    } else if (def_6.tag === 11) {
      return def_6.fields[0];
    } else if (def_6.tag === 2) {
      const seq = (0, _String.join)(", ", (0, _Seq.ofList)((0, _List.map)(mk_lexer_debug, def_6.fields[0])));
      return `pseq([${seq}])`;
    } else if (def_6.tag === 10) {
      return `pinterval(${def_6.fields[0]}, ${def_6.fields[1]})`;
    } else if (def_6.tag === 4) {
      if (!(0, _List.isEmpty)(def_6.fields[0])) {
        return (0, _List.fold)((a_2, b_2) => `por(${a_2}, ${b_2})`, op_Dereference((0, _List.head)(def_6.fields[0])), (0, _List.map)(mk_lexer_debug, (0, _List.tail)(def_6.fields[0])));
      } else {
        throw new Error("impossible: alternatives cannot be empty.");
      }
    } else if (def_6.tag === 8) {
      return `popt${op_Dereference(def_6.fields[0])}`;
    } else {
      return `pstring(${(0, _Utils.escapeString)(def_6.fields[0])})`;
    }
  };

  const simplify_lexerule = x_19 => {
    switch (x_19.tag) {
      case 1:
      case 10:
      case 11:
      case 3:
        {
          return x_19;
        }

      case 9:
        {
          return _must_be_atom_rule(x_19.fields[0]);
        }

      case 5:
        {
          return new _Grammar.lexerule(5, _must_be_atom_rule(x_19.fields[0]));
        }

      case 8:
        {
          return new _Grammar.lexerule(8, _must_be_atom_rule(x_19.fields[0]));
        }

      case 6:
        {
          return new _Grammar.lexerule(6, _must_be_atom_rule(x_19.fields[0]));
        }

      case 7:
        {
          return new _Grammar.lexerule(7, _must_be_atom_rule(x_19.fields[0]));
        }

      case 4:
        {
          return new _Grammar.lexerule(4, (0, _List.map)(_must_be_atom_rule, x_19.fields[0]));
        }

      case 2:
        {
          return new _Grammar.lexerule(2, (0, _List.map)(_must_be_atom_rule, x_19.fields[0]));
        }

      default:
        {
          return x_19;
        }
    }
  };

  const _must_be_atom_rule = x_24_mut => {
    _must_be_atom_rule: while (true) {
      const x_24 = x_24_mut;

      switch (x_24.tag) {
        case 1:
        case 10:
        case 11:
        case 3:
          {
            return x_24;
          }

        case 5:
          {
            return new _Grammar.lexerule(5, _must_be_atom_rule(x_24.fields[0]));
          }

        case 8:
          {
            return new _Grammar.lexerule(8, _must_be_atom_rule(x_24.fields[0]));
          }

        case 6:
          {
            return new _Grammar.lexerule(6, _must_be_atom_rule(x_24.fields[0]));
          }

        case 7:
          {
            return new _Grammar.lexerule(7, _must_be_atom_rule(x_24.fields[0]));
          }

        case 4:
          {
            return new _Grammar.lexerule(9, new _Grammar.lexerule(4, (0, _List.map)(_must_be_atom_rule, x_24.fields[0])));
          }

        case 2:
          {
            return new _Grammar.lexerule(9, new _Grammar.lexerule(2, (0, _List.map)(_must_be_atom_rule, x_24.fields[0])));
          }

        case 9:
          {
            x_24_mut = x_24.fields[0];
            continue _must_be_atom_rule;
          }

        default:
          {
            return x_24;
          }
      }

      break;
    }
  };

  return (0, _ErrorReport.withErrorHandler)((objectArg_1 = analyzer.Sigma, () => (0, _Analysis.Sigma__GetErrorTrace)(objectArg_1)), () => {
    if (!(0, _List.isEmpty)((0, _Analysis.Sigma__GetADTCases)(analyzer.Sigma))) {
      throw new Error("typescript backend does not support defining ADTs yet.");
    }

    if (!(0, _List.isEmpty)((0, _Analysis.Sigma__GetRecordTypes)(analyzer.Sigma))) {
      throw new Error("typescript backend does not support defining records yet.");
    }

    const parensIfLOr = x_30 => {
      if (x_30.tag === 4) {
        return (0, _CodeGen.parens)((0, _CodeGen.word)(mk_lexer(x_30)));
      } else {
        return (0, _CodeGen.word)(mk_lexer(x_30));
      }
    };

    const matchValue_6 = (0, _Map.tryFind)("start", analyzer.Omega);

    if (matchValue_6 != null) {
      const start_t = matchValue_6;
      const file_grammar = (0, _CodeGen.vsep)((0, _List.ofArray)((0, _Array.map)(stmt => {
        (0, _Analysis.Sigma__SetCurrentDefinition_Z759AB257)(analyzer.Sigma, stmt);

        switch (stmt.tag) {
          case 2:
            {
              const decl_1 = stmt.fields[0];
              lexerMaps = (0, _List.cons)([decl_1.lhs, decl_1.define], lexerMaps);
              return _CodeGen.empty;
            }

          case 6:
            {
              return (0, _CodeGen.vsep)((0, _List.empty)());
            }

          case 4:
            {
              return (0, _CodeGen.vsep)((0, _List.empty)());
            }

          case 3:
            {
              importVarNames = (0, _List.cons)(var_renamer(stmt.fields[0].ident), importVarNames);
              return (0, _CodeGen.vsep)((0, _List.empty)());
            }

          case 5:
            {
              const decl_5 = stmt.fields[0];

              if (decl_5.external) {
                importTypeNames = (0, _List.cons)(type_renamer(decl_5.ident), importTypeNames);
              }

              return (0, _CodeGen.vsep)((0, _List.empty)());
            }

          case 0:
            {
              throw new Error("macro not processed");
            }

          default:
            {
              const decl = stmt.fields[0];
              const lhs = decl.lhs;
              const ntname_1 = cg_symbol(new _Grammar.symbol(1, lhs));
              let t_3;

              const _arg1_1 = new _Grammar.symbol(1, lhs);

              switch (_arg1_1.tag) {
                case 0:
                  {
                    t_3 = _Grammar.TConst_token;
                    break;
                  }

                case 1:
                  {
                    t_3 = (0, _Map.FSharpMap__get_Item)(analyzer.Omega, _arg1_1.fields[0]);
                    break;
                  }

                default:
                  {
                    throw new Error("macro not processed");
                  }
              }

              let idx_1 = 0;
              const body_3 = (0, _CodeGen.align)((0, _CodeGen.vsep)((0, _List.mapIndexed)((i_10, e_1) => (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)(i_10 === 0 ? (0, _CodeGen.word)(":") : (0, _CodeGen.word)("|"), e_1), (0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_4 => {
                let prod, actionName_2, patternInput_1, curr_expr, isTerminal, lst_1;
                let actionName_3;
                const idx = idx_1 | 0;
                actionName_3 = (0, _String.toText)((0, _String.printf)("%s_%i"))(ntname_1)(idx);
                (0, _Analysis.Sigma__SetCurrentPos_Z302187B)(analyzer.Sigma, matchValue_4[0]);
                (0, _Analysis.Sigma__SetCurrentDefinitionBranch_Z524259A4)(analyzer.Sigma, idx_1);
                idx_1 = idx_1 + 1 | 0;
                return (0, _Seq.append)((0, _Seq.singleton)((prod = matchValue_4[1], (actionName_2 = actionName_3, (patternInput_1 = (curr_expr = prod.action, (isTerminal = (0, _Seq.toArray)((0, _Seq.delay)(() => (0, _Seq.map)(sym => sym.tag === 0, prod.symbols))), (0, _Analysis.Sigma__WithExpr)(analyzer.Sigma, curr_expr, () => {
                  let usedSlots = (0, _Set.empty)({
                    Compare: _Util.comparePrimitives
                  });

                  const cg_expr = (scope_1, curr_expr_1) => (0, _BackendsCommon.DocBuilder_Builder__Run_ZD0BB270)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Delay_Z3A9C5A06)(_BackendsCommon.DocBuilder_cg, () => {
                    let typeArgs, lst, body, anns;
                    const matchValue_1 = curr_expr_1.node;

                    if (matchValue_1.tag === 6) {
                      const matchValue_2 = tryLookup(matchValue_1.fields[0], scope_1);

                      if (matchValue_2 != null) {
                        const v_1 = matchValue_2;
                        return (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _List.length)(matchValue_1.fields[1].contents) === 0 ? (0, _CodeGen.word)(v_1) : (typeArgs = (lst = (0, _List.map)(arg_1 => (0, _CodeGen.word)(cg_type(arg_1)), (0, _List.map)(_Grammar.monot__Prune, matchValue_1.fields[1].contents)), (0, _CodeGen.seplist)((0, _CodeGen.word)(", "), lst)), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(v_1), (0, _CodeGen.word)("\u003c")), typeArgs), (0, _CodeGen.word)("\u003e"))));
                      } else {
                        return (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (() => {
                          throw (0, _Exceptions.UnboundVariable)(matchValue_1.fields[0]);
                        })());
                      }
                    } else if (matchValue_1.tag === 11) {
                      return matchValue_1.fields[0] ? (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)("true")) : (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)("false"));
                    } else if (matchValue_1.tag === 3) {
                      return (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, cg_expr(scope_1, matchValue_1.fields[0]), _arg6 => (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)(_arg6, (0, _CodeGen.word)(".")), (0, _CodeGen.word)(matchValue_1.fields[1]))));
                    } else if (matchValue_1.tag === 8) {
                      return (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)((0, _String.toText)((0, _String.printf)("%d"))(matchValue_1.fields[0])));
                    } else if (matchValue_1.tag === 10) {
                      return (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)((0, _String.toText)((0, _String.printf)("%f"))(matchValue_1.fields[0])));
                    } else if (matchValue_1.tag === 9) {
                      return (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.word)((0, _Utils.escapeString)(matchValue_1.fields[0])));
                    } else if (matchValue_1.tag === 5) {
                      const patternInput = (0, _BackendsCommon.DocBuilder_runCG)(cg_expr((0, _List.append)((0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_3 => {
                        const arg_2 = matchValue_3[0];
                        return (0, _Seq.singleton)([arg_2, mangle(csharpIdentDescr, arg_2)]);
                      }, matchValue_1.fields[0]))), scope_1), matchValue_1.fields[1]));
                      return (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (body = (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.vsep)(patternInput[1]), (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("return"), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)(patternInput[0], (0, _CodeGen.word)(";")))])), (anns = (0, _List.map)(tupledArg_1 => (0, _CodeGen.word)(cg_type(tupledArg_1[1]) + " " + tupledArg_1[0]), matchValue_1.fields[0]), (0, _CodeGen.parens)((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("function"), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), anns)), (0, _CodeGen.word)("{"))), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)(body, 4), (0, _CodeGen.word)("}")]))))));
                    } else if (matchValue_1.tag === 4) {
                      return (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, cg_expr(scope_1, matchValue_1.fields[1]), _arg7 => {
                        const m_name = mangle(csharpIdentDescr, matchValue_1.fields[0]);
                        return (0, _BackendsCommon.DocBuilder_Builder__Combine_Z5C764E00)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Yield_417FD60)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("let"), (0, _CodeGen.word)(m_name)), (0, _CodeGen.word)(":")), (0, _CodeGen.word)(cg_type(matchValue_1.fields[1].t))), (0, _CodeGen.word)("=")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)(_arg7, (0, _CodeGen.word)(";")))), (0, _BackendsCommon.DocBuilder_Builder__Delay_Z3A9C5A06)(_BackendsCommon.DocBuilder_cg, () => (0, _BackendsCommon.DocBuilder_Builder__ReturnFrom_ZD0BB270)(_BackendsCommon.DocBuilder_cg, cg_expr((0, _List.cons)([matchValue_1.fields[0], m_name], scope_1), matchValue_1.fields[2]))));
                      });
                    } else if (matchValue_1.tag === 2) {
                      return (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Run_ZD0BB270)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Delay_Z3A9C5A06)(_BackendsCommon.DocBuilder_cg, () => (0, _BackendsCommon.DocBuilder_Builder__For_2B96F4AF)(_BackendsCommon.DocBuilder_cg, matchValue_1.fields[0], _arg8 => (0, _BackendsCommon.DocBuilder_Builder__ReturnFrom_ZD0BB270)(_BackendsCommon.DocBuilder_cg, cg_expr(scope_1, _arg8))))), _arg9 => (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(`<${cg_type(curr_expr_1.t)}>`), (0, _CodeGen.word)("[")), (0, _CodeGen.seplist)((0, _CodeGen.word)(","), _arg9)), (0, _CodeGen.word)("]"))));
                    } else if (matchValue_1.tag === 7) {
                      const n_5 = slotName(actionName_2, matchValue_1.fields[0]);
                      usedSlots = (0, _Set.add)(matchValue_1.fields[0], usedSlots);
                      const v_2 = (0, _CodeGen.word)(`_localctx._${n_5}`);
                      return (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, isTerminal[matchValue_1.fields[0] - 1] ? v_2 : (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)(v_2, (0, _CodeGen.word)(".result")));
                    } else {
                      return matchValue_1.tag === 1 ? (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Run_ZD0BB270)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Delay_Z3A9C5A06)(_BackendsCommon.DocBuilder_cg, () => (0, _BackendsCommon.DocBuilder_Builder__For_2B96F4AF)(_BackendsCommon.DocBuilder_cg, matchValue_1.fields[0], _arg10 => (0, _BackendsCommon.DocBuilder_Builder__ReturnFrom_ZD0BB270)(_BackendsCommon.DocBuilder_cg, cg_expr(scope_1, _arg10))))), _arg11 => (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(`<${cg_type(curr_expr_1.t)}>`), (0, _CodeGen.bracket)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), _arg11))))) : (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, cg_expr(scope_1, matchValue_1.fields[0]), _arg2 => (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Run_ZD0BB270)(_BackendsCommon.DocBuilder_cg, (0, _BackendsCommon.DocBuilder_Builder__Delay_Z3A9C5A06)(_BackendsCommon.DocBuilder_cg, () => (0, _BackendsCommon.DocBuilder_Builder__For_2B96F4AF)(_BackendsCommon.DocBuilder_cg, matchValue_1.fields[1], _arg3 => {
                        const arg = _arg3;
                        return (0, _BackendsCommon.DocBuilder_Builder__Bind_30A200B3)(_BackendsCommon.DocBuilder_cg, cg_expr(scope_1, arg), _arg4 => (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)(angled((0, _CodeGen.word)(cg_type(arg.t))), _arg4)));
                      }))), _arg5 => {
                        const t_repr = cg_type(curr_expr_1.t);
                        return (0, _BackendsCommon.DocBuilder_Builder__Return_1505)(_BackendsCommon.DocBuilder_cg, (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(`<${t_repr}>`), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)(_arg2, (0, _CodeGen.parens)((0, _CodeGen.seplist)((0, _CodeGen.word)(", "), _arg5)))));
                      }));
                    }
                  }));

                  const snd = (0, _BackendsCommon.DocBuilder_runCG)(cg_expr(global_scope, curr_expr));
                  return [usedSlots, snd];
                }))), (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((lst_1 = (0, _List.mapIndexed)((i_8, s_6) => {
                  const i_9 = i_8 + 1 | 0;
                  const sym_1 = (0, _CodeGen.word)(cg_symbol(s_6));

                  if ((0, _Set.contains)(i_9, patternInput_1[0])) {
                    return (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)((0, _CodeGen.word)(slotName(actionName_2, i_9)), (0, _CodeGen.word)("=")), sym_1);
                  } else {
                    return sym_1;
                  }
                }, prod.symbols), (0, _CodeGen.seplist)((0, _CodeGen.word)(" "), lst_1)), (0, _CodeGen.word)("{")), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.ofArray)([_CodeGen.empty, (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)((0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.vsep)(patternInput_1[1][1]), (0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("$" + resultName), (0, _CodeGen.word)("=")), (0, _CodeGen.Doc_op_Multiply_Z7CFFAC00)(patternInput_1[1][0], (0, _CodeGen.word)(";")))])), 4), (0, _CodeGen.word)("}")])), 12)))))), (0, _Seq.delay)(() => {
                  idx_1 = idx_1 + 1 | 0;
                  return (0, _Seq.empty)();
                }));
              }, decl.define))))));
              return (0, _CodeGen.vsep)((0, _List.ofArray)([(0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(ntname_1), (0, _CodeGen.word)("returns")), (0, _CodeGen.bracket)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(cg_type(t_3)), (0, _CodeGen.word)(resultName)))), (0, _CodeGen.Doc_op_RightShift_2AAA0F3C)(body_3, 4), (0, _CodeGen.word)(";")]));
            }
        }
      }, stmts)));
      const lexerDefs = (0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.collect)(matchValue_7 => {
        const k_1 = matchValue_7[0];
        const v_4 = simplify_lexerule(matchValue_7[1]);
        const n_6 = name_of_named_term(k_1);
        return (0, _Set.contains)(k_1, analyzer.IgnoreSet) ? (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(n_6), (0, _CodeGen.word)(":")), parensIfLOr(v_4)), (0, _CodeGen.word)("-\u003e channel(HIDDEN);"))) : (0, _Set.contains)(k_1, analyzer.ReferencedNamedTokens) ? (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)(n_6), (0, _CodeGen.word)(":")), (0, _CodeGen.word)(mk_lexer(v_4))), (0, _CodeGen.word)(";"))) : (0, _Seq.singleton)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.Doc_op_Addition_Z7CFFAC00)((0, _CodeGen.word)("fragment"), (0, _CodeGen.word)(n_6)), (0, _CodeGen.word)(":")), parensIfLOr(v_4)), (0, _CodeGen.word)(";")));
      }, (0, _List.reverse)(lexerMaps))));
      const start_mangled = cg_symbol(new _Grammar.symbol(1, "start"));
      const import_names = (0, _List.append)(importTypeNames, importVarNames);
      return [[langName + ".g4", (0, _CodeGen.vsep)((0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)(`grammar ${langName};`)), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)("@header {")), (0, _Seq.delay)(() => {
        let import_names_1, require_name;
        return (0, _Seq.append)(!(0, _List.isEmpty)(import_names) ? (import_names_1 = (0, _String.join)(", ", import_names), (require_name = (0, _Utils.escapeString)(`./${langName}_require`), (0, _Seq.singleton)((0, _CodeGen.word)(`import { ${import_names_1} } from ${require_name}`)))) : (0, _Seq.empty)(), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)("}")), (0, _Seq.delay)(() => {
          let arg10_4;
          return (0, _Seq.append)((0, _Seq.singleton)((0, _CodeGen.word)((arg10_4 = cg_type(start_t), (0, _String.toText)((0, _String.printf)("start returns [result: %s]: v=%s EOF { $result = _localctx._v.result; };"))(arg10_4)(start_mangled)))), (0, _Seq.delay)(() => (0, _Seq.append)((0, _Seq.singleton)(file_grammar), (0, _Seq.delay)(() => lexerDefs))));
        }))));
      })))))))]];
    } else {
      const exn_2 = (0, _Exceptions.UnboundNonterminal)("start");
      throw exn_2;
    }
  });
}