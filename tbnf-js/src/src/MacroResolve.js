"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.resolve_macro = resolve_macro;
exports.toPositionIndependent = toPositionIndependent;
exports.toPositionIndependentString = toPositionIndependentString;

var _List = require("../fable_modules/fable-library.3.7.9/List.js");

var _Grammar = require("./Grammar.js");

var _String = require("../fable_modules/fable-library.3.7.9/String.js");

var _Utils = require("./Utils.js");

var _Map = require("../fable_modules/fable-library.3.7.9/Map.js");

var _Seq = require("../fable_modules/fable-library.3.7.9/Seq.js");

var _Exceptions = require("./Exceptions.js");

function toPositionIndependent(term) {
  switch (term.tag) {
    case 0:
      {
        return term;
      }

    case 2:
      {
        return new _Grammar.symbol(2, term.fields[0], (0, _List.map)(toPositionIndependent, term.fields[1]), (0, _Grammar.position_get_Fake)());
      }

    default:
      {
        return term;
      }
  }
}

function toPositionIndependentString(term) {
  if (term.tag === 1) {
    return term.fields[0];
  } else if (term.tag === 2) {
    const arg20 = (0, _String.join)(",", (0, _List.map)(toPositionIndependentString, term.fields[1]));
    return (0, _String.toText)((0, _String.printf)("%s(%s)"))(term.fields[0])(arg20);
  } else if (term.fields[1]) {
    return (0, _Utils.escapeString)(term.fields[0]);
  } else {
    return "\u003c" + term.fields[0] + "\u003e";
  }
}

function resolve_macro(setPos, setDef, setBranch, stmts) {
  let macro_defs = (0, _Map.empty)();
  let stmts_to_solve = (0, _List.empty)();
  let fixed_stmts = (0, _List.empty)();

  for (let idx = 0; idx <= stmts.length - 1; idx++) {
    const each = stmts[idx];

    switch (each.tag) {
      case 0:
        {
          const decl = each.fields[0];
          macro_defs = (0, _Map.add)(decl.lhs, decl, macro_defs);
          break;
        }

      case 1:
        {
          const scope = (0, _Map.empty)();
          stmts_to_solve = (0, _List.cons)([each.fields[0], scope], stmts_to_solve);
          break;
        }

      default:
        {
          fixed_stmts = (0, _List.cons)(each, fixed_stmts);
        }
    }
  }

  let final_results_1;
  let stmts_to_solve_1 = stmts_to_solve;
  let final_results = (0, _List.empty)();
  let solved = (0, _Map.empty)();

  const solve_specialization = tupledArg => {
    const decl_2 = tupledArg[0];
    setDef(new _Grammar.definition(1, decl_2));
    let define = (0, _List.mapIndexed)((i, tupledArg_1) => {
      const pos = tupledArg_1[0];
      const case$ = tupledArg_1[1];
      setPos(pos);
      setBranch(i);
      return [pos, new _Grammar.production((0, _List.map)(x => solve_sym(x)(tupledArg[1]), case$.symbols), (0, _Grammar.expr__DeepCopy)(case$.action))];
    }, decl_2.define);
    final_results = (0, _List.cons)(new _Grammar.definition(1, {
      define: define,
      lhs: decl_2.lhs,
      pos: decl_2.pos
    }), final_results);
  };

  const solve_sym = sym => scope_2 => {
    let matchValue_1, matchValue_2, macro_def, parameters, str_parameters, exn_1, scope$0027, resolved_name_1, exn;

    switch (sym.tag) {
      case 1:
        {
          const matchValue = (0, _Map.tryFind)(sym.fields[0], scope_2);
          return matchValue == null ? sym : matchValue;
        }

      case 2:
        {
          const pos_1 = sym.fields[2];
          const n_1 = sym.fields[0];
          setPos(pos_1);
          const args_1 = (0, _Seq.toList)((0, _Seq.delay)(() => (0, _Seq.map)(arg => solve_sym(arg)(scope_2), sym.fields[1])));
          let sym_1 = new _Grammar.symbol(2, n_1, args_1, pos_1);
          const key = toPositionIndependent(sym_1);
          return new _Grammar.symbol(1, (matchValue_1 = (0, _Map.tryFind)(key, solved), matchValue_1 == null ? (matchValue_2 = (0, _Map.tryFind)(n_1, macro_defs), matchValue_2 != null ? (macro_def = matchValue_2, (parameters = macro_def.parameters, ((0, _List.length)(parameters) !== (0, _List.length)(args_1) ? (str_parameters = (0, _String.join)(", ", parameters), (exn_1 = new _Exceptions.MacroResolveError(`macro ${n_1} expects ${(0, _List.length)(parameters)} argument(s): (${str_parameters}); got ${(0, _List.length)(args_1)}`), (() => {
            throw exn_1;
          })())) : void 0, (scope$0027 = (0, _Map.ofList)((0, _List.map2)((k, v_1) => [k, v_1], parameters, args_1)), (resolved_name_1 = toPositionIndependentString(sym_1), (solved = (0, _Map.add)(key, resolved_name_1, solved), (stmts_to_solve_1 = (0, _List.cons)([{
            define: macro_def.define,
            lhs: resolved_name_1,
            pos: pos_1
          }, scope$0027], stmts_to_solve_1), resolved_name_1))))))) : (exn = new _Exceptions.MacroResolveError(`macro definition ${n_1} not found.`), (() => {
            throw exn;
          })())) : matchValue_1));
        }

      default:
        {
          return sym;
        }
    }
  };

  while (!(0, _List.isEmpty)(stmts_to_solve_1)) {
    const decl_3 = (0, _List.head)(stmts_to_solve_1);
    stmts_to_solve_1 = (0, _List.tail)(stmts_to_solve_1);
    solve_specialization(decl_3);
  }

  final_results_1 = final_results;
  return (0, _List.toArray)((0, _List.append)((0, _List.reverse)(fixed_stmts), final_results_1));
}