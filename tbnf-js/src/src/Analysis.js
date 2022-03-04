"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.Analyzer = void 0;
exports.Analyzer$reflection = Analyzer$reflection;
exports.Shape = void 0;
exports.Shape$reflection = Shape$reflection;
exports.Sigma = void 0;
exports.Sigma$reflection = Sigma$reflection;
exports.Sigma_$ctor_Z57FA2555 = Sigma_$ctor_Z57FA2555;
exports.Sigma__GetADTCases = Sigma__GetADTCases;
exports.Sigma__GetRecordTypes = Sigma__GetRecordTypes;
exports.Sigma__IsGlobalVariableConstructor_Z721C83C5 = Sigma__IsGlobalVariableConstructor_Z721C83C5;
exports.Sigma__KindCheckMono_Z25145215 = Sigma__KindCheckMono_Z25145215;
exports.Sigma__KindCheck_Z25145215 = Sigma__KindCheck_Z25145215;
exports.Sigma__KindCheck_Z25E5E15E = Sigma__KindCheck_Z25E5E15E;
exports.Sigma__LookupField = Sigma__LookupField;
exports.Sigma__RegisterCtorGVar = Sigma__RegisterCtorGVar;
exports.Sigma__RegisterExtGVar = Sigma__RegisterExtGVar;
exports.Sigma__RegisterType = Sigma__RegisterType;
exports.Sigma__get_GlobalVariables = Sigma__get_GlobalVariables;
exports.build_analyzer = build_analyzer;

var _Types = require("../fable_modules/fable-library.3.7.5/Types.js");

var _Reflection = require("../fable_modules/fable-library.3.7.5/Reflection.js");

var _Grammar = require("./Grammar.js");

var _Map = require("../fable_modules/fable-library.3.7.5/Map.js");

var _Set = require("../fable_modules/fable-library.3.7.5/Set.js");

var _Util = require("../fable_modules/fable-library.3.7.5/Util.js");

var _List = require("../fable_modules/fable-library.3.7.5/List.js");

var _Unification = require("./Unification.js");

var _Exceptions = require("./Exceptions.js");

var _Utils = require("./Utils.js");

var _Op = require("./Op.js");

var _String = require("../fable_modules/fable-library.3.7.5/String.js");

var _MacroResolve = require("./MacroResolve.js");

var _Array = require("../fable_modules/fable-library.3.7.5/Array.js");

class Shape extends _Types.Record {
  constructor(parameters, fields) {
    super();
    this.parameters = parameters;
    this.fields = fields;
  }

}

exports.Shape = Shape;

function Shape$reflection() {
  return (0, _Reflection.record_type)("tbnf.Analysis.Shape", [], Shape, () => [["parameters", (0, _Reflection.list_type)(_Reflection.string_type)], ["fields", (0, _Reflection.list_type)((0, _Reflection.tuple_type)(_Reflection.string_type, (0, _Grammar.monot$reflection)()))]]);
}

class Sigma {
  constructor(UM) {
    this.UM = UM;
    this.shapes = (0, _Map.empty)();
    this.kinds = (0, _Map.ofArray)(_Grammar._predefined_typenames);
    this.global_variables = (0, _Map.empty)();
    this.constructors = (0, _Set.empty)({
      Compare: _Util.comparePrimitives
    });
    this.externalTypes = (0, _Set.empty)({
      Compare: _Util.comparePrimitives
    });
    this.records = (0, _List.empty)();
    this.adtCases = (0, _List.empty)();
  }

}

exports.Sigma = Sigma;

function Sigma$reflection() {
  return (0, _Reflection.class_type)("tbnf.Analysis.Sigma", void 0, Sigma);
}

function Sigma_$ctor_Z57FA2555(UM) {
  return new Sigma(UM);
}

function Sigma__KindCheck_Z25145215(__, t) {
  Sigma__checkKind__Z25145215(__, t);
  return t;
}

function Sigma__KindCheckMono_Z25145215(__, t) {
  return Sigma__KindCheck_Z25145215(__, t);
}

function Sigma__KindCheck_Z25E5E15E(__, t) {
  if (t.tag === 1) {
    Sigma__checkKind__Z25145215(__, t.fields[0]);
    return t;
  } else {
    Sigma__checkKind__Z25145215(__, t.fields[1]);
    return t;
  }
}

function Sigma__RegisterType(__, external, hasFields, typename, parameters, fields) {
  Sigma__defineShape(__, external, hasFields, typename, parameters, fields);
}

function Sigma__RegisterExtGVar(__, ident, t) {
  Sigma__registerExtGVar(__, ident, t);
}

function Sigma__RegisterCtorGVar(__, ident, t) {
  Sigma__registerCtorGVar(__, ident, t);
}

function Sigma__LookupField(__, t, field) {
  return Sigma__lookupField(__, t, field, (0, _Unification.Manager__NewTyRef_Z721C83C5)(__.UM, "." + field));
}

function Sigma__get_GlobalVariables(__) {
  return __.global_variables;
}

function Sigma__IsGlobalVariableConstructor_Z721C83C5(__, varname) {
  if ((0, _Map.containsKey)(varname, __.global_variables)) {
    return (0, _Set.contains)(varname, __.constructors);
  } else {
    const exn = new _Exceptions.NotGlobalVariable(varname);
    throw exn;
  }
}

function Sigma__GetADTCases(__) {
  return __.adtCases;
}

function Sigma__GetRecordTypes(__) {
  return (0, _List.map)(x => [x, (0, _Map.FSharpMap__get_Item)(__.shapes, x)], (0, _List.reverse)(__.records));
}

function Sigma__checkKind__Z25145215(this$, t) {
  const t_1 = (0, _Grammar.monot__Prune)(t);

  if (t_1.tag === 1) {
    const matchValue = (0, _Map.tryFind)(t_1.fields[0], this$.kinds);

    if (matchValue != null) {
      if (matchValue === 0) {} else {
        const kind = matchValue | 0;
        const got = 0;

        if (kind >= 0 && kind !== got) {
          const exn_1 = new _Exceptions.InvalidKind({
            expect: kind,
            got: got,
            name: t_1.fields[0]
          });
          throw exn_1;
        }
      }
    } else {
      const exn = (0, _Exceptions.UnboundTypeVariable)(t_1.fields[0]);
      throw exn;
    }
  } else if (t_1.tag === 2) {
    if (t_1.fields[0].tag === 1) {
      const matchValue_1 = (0, _Map.tryFind)(t_1.fields[0].fields[0], this$.kinds);

      if (matchValue_1 != null) {
        const kind_1 = matchValue_1 | 0;
        const got_1 = (0, _List.length)(t_1.fields[1]) | 0;

        if (kind_1 >= 0 && kind_1 !== got_1) {
          const exn_3 = new _Exceptions.InvalidKind({
            expect: kind_1,
            got: got_1,
            name: t_1.fields[0].fields[0]
          });
          throw exn_3;
        }

        (0, _List.iterate)(t_2 => {
          Sigma__checkKind__Z25145215(this$, t_2);
        }, t_1.fields[1]);
      } else {
        const exn_2 = (0, _Exceptions.UnboundTypeVariable)(t_1.fields[0].fields[0]);
        throw exn_2;
      }
    } else {
      const exn_4 = new _Exceptions.InvalidTypeApplication(t_1.fields[0]);
      throw exn_4;
    }
  } else {
    (0, _Grammar.monot__ApplyToChildren_Z6A62BCBF)(t_1, t_3 => {
      Sigma__checkKind__Z25145215(this$, t_3);
    });
  }
}

function Sigma__registerExistingVariable(this$, varname, t) {
  if ((0, _Map.containsKey)(varname, this$.global_variables)) {
    const exn = (0, _Exceptions.DuplicateVariable)(varname);
    throw exn;
  } else {
    this$.global_variables = (0, _Map.add)(varname, t, this$.global_variables);
  }
}

function Sigma__registerType(this$, typename, kind) {
  if ((0, _Map.containsKey)(typename, this$.kinds)) {
    const exn = (0, _Exceptions.DuplicateTypeVariable)(typename);
    throw exn;
  } else {
    this$.kinds = (0, _Map.add)(typename, kind, this$.kinds);
  }
}

function Sigma__addCase(this$, typename, ctorName, t) {
  if ((0, _Set.contains)(typename, this$.externalTypes)) {
    const exn = new _Exceptions.InvalidConstructorDefinination(new _Exceptions.InvalidConstructorDefininationCause(0));
    throw exn;
  }

  const matchValue = (0, _Map.tryFind)(typename, this$.shapes);
  let pattern_matching_result;

  if (matchValue != null) {
    if ((0, _List.length)(matchValue.fields) !== 0) {
      pattern_matching_result = 0;
    } else {
      pattern_matching_result = 1;
    }
  } else {
    pattern_matching_result = 1;
  }

  switch (pattern_matching_result) {
    case 0:
      {
        const exn_1 = new _Exceptions.InvalidConstructorDefinination(new _Exceptions.InvalidConstructorDefininationCause(1));
        throw exn_1;
        break;
      }

    case 1:
      {
        if (matchValue == null) {
          Sigma__registerType(this$, typename, 0);
          this$.shapes = (0, _Map.add)(typename, new Shape((0, _List.empty)(), (0, _List.empty)()), this$.shapes);
        } else if (!(0, _List.isEmpty)(matchValue.parameters)) {
          const exn_2 = new _Exceptions.InvalidConstructorDefinination(new _Exceptions.InvalidConstructorDefininationCause(2));
          throw exn_2;
        }

        break;
      }
  }

  let adtCases$0027 = (0, _Utils.List_replaceWith)(typename, _arg1 => {
    if (_arg1 != null) {
      if ((0, _Map.containsKey)(ctorName, _arg1)) {
        const cases_1 = _arg1;
        const exn_3 = new _Exceptions.InvalidConstructorDefinination(new _Exceptions.InvalidConstructorDefininationCause(3, ctorName));
        throw exn_3;
      } else if (_arg1 != null) {
        return (0, _Map.add)(ctorName, t, _arg1);
      } else {
        throw new Error("Match failure");
      }
    } else {
      return (0, _Map.ofArray)([[ctorName, t]]);
    }
  }, this$.adtCases);
  this$.adtCases = adtCases$0027;
}

function Sigma__defineShape(this$, external, hasFields, typename, parameters, fields) {
  if ((0, _Map.containsKey)(typename, this$.shapes)) {
    const exn = (0, _Exceptions.DuplicateTypeVariable)(typename);
    throw exn;
  } else {
    const matchValue = (0, _Map.tryFind)(typename, this$.kinds);

    if (matchValue == null) {
      Sigma__registerType(this$, typename, (0, _List.length)(parameters));
    } else {
      const kind = matchValue | 0;

      if (kind >= 0 && (0, _List.length)(parameters) !== kind) {
        const exn_1 = new _Exceptions.InvalidKind({
          expect: kind,
          got: (0, _List.length)(parameters),
          name: typename
        });
        throw exn_1;
      }
    }

    if (external) {
      this$.externalTypes = (0, _Set.add)(typename, this$.externalTypes);
    } else if (hasFields) {
      Sigma__registerExistingVariable(this$, typename, (0, _List.isEmpty)(parameters) ? new _Grammar.polyt(1, new _Grammar.monot(3, fields, new _Grammar.monot(1, typename))) : new _Grammar.polyt(0, parameters, new _Grammar.monot(3, fields, new _Grammar.monot(2, new _Grammar.monot(1, typename), (0, _List.map)(arg0 => new _Grammar.monot(4, arg0), parameters)))));
      this$.records = (0, _List.cons)(typename, this$.records);
    }

    this$.shapes = (0, _Map.add)(typename, new Shape(parameters, fields), this$.shapes);
  }
}

function Sigma__lookupField(this$, t, fieldname, tyref) {
  const typename = (0, _Op.basename)(t);
  const matchValue = (0, _Map.tryFind)(typename, this$.shapes);

  if (matchValue != null) {
    const shape = matchValue;
    const matchValue_1 = (0, _Utils.List_tryLookup)(fieldname, shape.fields);

    if (matchValue_1 != null) {
      const ft = matchValue_1;
      const inst_target = (0, _Grammar.TTuple)((0, _List.ofArray)([t, tyref]));
      (0, _Unification.Manager__Unify_Z1D753960)(this$.UM, inst_target, (0, _Unification.Manager__Instantiate_Z25E5E15E)(this$.UM, new _Grammar.polyt(0, shape.parameters, (0, _Grammar.TTuple)((0, _List.ofArray)([new _Grammar.monot(2, new _Grammar.monot(1, typename), (0, _List.map)(arg0 => new _Grammar.monot(4, arg0), shape.parameters)), ft]))))[1]);
      Sigma__checkKind__Z25145215(this$, inst_target);
      return (0, _Grammar.monot__Prune)(tyref);
    } else {
      const exn_1 = new _Exceptions.NoField(t, fieldname);
      throw exn_1;
    }
  } else {
    const exn = (0, _Exceptions.UnboundTypeVariable)(typename);
    throw exn;
  }
}

function Sigma__registerExtGVar(this$, varname, t) {
  if ((0, _Map.containsKey)(varname, this$.global_variables)) {
    const exn = (0, _Exceptions.DuplicateVariable)(varname);
    throw exn;
  } else {
    this$.global_variables = (0, _Map.add)(varname, t, this$.global_variables);
  }
}

function Sigma__registerCtorGVar(this$, varname, t) {
  if ((0, _Map.containsKey)(varname, this$.global_variables)) {
    const exn = (0, _Exceptions.DuplicateVariable)(varname);
    throw exn;
  } else {
    this$.global_variables = (0, _Map.add)(varname, new _Grammar.polyt(1, t), this$.global_variables);
    this$.constructors = (0, _Set.add)(varname, this$.constructors);
    let pattern_matching_result, args, typename;

    if (t.tag === 3) {
      if (t.fields[1].tag === 1) {
        pattern_matching_result = 0;
        args = t.fields[0];
        typename = t.fields[1].fields[0];
      } else {
        pattern_matching_result = 1;
      }
    } else {
      pattern_matching_result = 1;
    }

    switch (pattern_matching_result) {
      case 0:
        {
          Sigma__addCase(this$, typename, varname, args);
          break;
        }

      case 1:
        {
          const exn_1 = new _Exceptions.InvalidConstructorDefinination(new _Exceptions.InvalidConstructorDefininationCause(4, t));
          throw exn_1;
          break;
        }
    }
  }
}

class Analyzer extends _Types.Record {
  constructor(UM, Sigma, currentPos, Omega, LiteralTokens, ReferencedNamedTokens, TokenFragments, IgnoreSet) {
    super();
    this.UM = UM;
    this.Sigma = Sigma;
    this.currentPos = currentPos;
    this.Omega = Omega;
    this.LiteralTokens = LiteralTokens;
    this.ReferencedNamedTokens = ReferencedNamedTokens;
    this.TokenFragments = TokenFragments;
    this.IgnoreSet = IgnoreSet;
  }

}

exports.Analyzer = Analyzer;

function Analyzer$reflection() {
  return (0, _Reflection.record_type)("tbnf.Analysis.Analyzer", [], Analyzer, () => [["UM", (0, _Unification.Manager$reflection)()], ["Sigma", Sigma$reflection()], ["currentPos", (0, _Grammar.position$reflection)()], ["Omega", (0, _Reflection.class_type)("Microsoft.FSharp.Collections.FSharpMap`2", [_Reflection.string_type, (0, _Grammar.monot$reflection)()])], ["LiteralTokens", (0, _Reflection.class_type)("Microsoft.FSharp.Collections.FSharpSet`1", [_Reflection.string_type])], ["ReferencedNamedTokens", (0, _Reflection.class_type)("Microsoft.FSharp.Collections.FSharpSet`1", [_Reflection.string_type])], ["TokenFragments", (0, _Reflection.array_type)(_Reflection.string_type)], ["IgnoreSet", (0, _Reflection.class_type)("Microsoft.FSharp.Collections.FSharpSet`1", [_Reflection.string_type])]]);
}

function build_analyzer(stmts) {
  let TokenFragments_1;
  const UM = (0, _Unification.Manager_$ctor)();
  const Sigma_1 = Sigma_$ctor_Z57FA2555(UM);
  let currentPos = null;
  let Omega = (0, _Map.empty)();
  let LiteralTokens = (0, _Set.empty)({
    Compare: _Util.comparePrimitives
  });
  let ReferencedNamedTokens = (0, _Set.empty)({
    Compare: _Util.comparePrimitives
  });
  let TokenFragments = (0, _List.empty)();
  let IgnoreSet = (0, _Set.empty)({
    Compare: _Util.comparePrimitives
  });

  const infer_e = (s_Gamma, S, e) => {
    const S_1 = S;
    currentPos = e.pos;
    const matchValue = e.node;

    switch (matchValue.tag) {
      case 6:
        {
          const v_1 = matchValue.fields[0];
          const matchValue_1 = (0, _Map.tryFind)(v_1, s_Gamma);

          if (matchValue_1 != null) {
            const patternInput = (0, _Unification.Manager__Instantiate_Z25E5E15E)(UM, matchValue_1);
            matchValue.fields[1].contents = patternInput[0];
            return new _Grammar.expr(e.node, e.pos, patternInput[1]);
          } else {
            const exn_5 = (0, _Exceptions.UnboundVariable)(v_1);
            throw exn_5;
          }
        }

      case 9:
        {
          return new _Grammar.expr(e.node, e.pos, _Grammar.TConst_str);
        }

      case 8:
        {
          return new _Grammar.expr(e.node, e.pos, _Grammar.TConst_int);
        }

      case 11:
        {
          return new _Grammar.expr(e.node, e.pos, _Grammar.TConst_bool);
        }

      case 10:
        {
          return new _Grammar.expr(e.node, e.pos, _Grammar.TConst_float);
        }

      case 4:
        {
          const name_3 = matchValue.fields[0];
          const value_2 = infer_e(s_Gamma, S_1, matchValue.fields[1]);
          const body_1 = infer_e((0, _Map.add)(name_3, new _Grammar.polyt(1, value_2.t), s_Gamma), S_1, matchValue.fields[2]);
          return new _Grammar.expr(new _Grammar.node(4, name_3, value_2, body_1), e.pos, body_1.t);
        }

      case 2:
        {
          const t_r = (0, _Unification.Manager__NewTyRef_Z721C83C5)(UM, "list");
          return new _Grammar.expr(new _Grammar.node(2, (0, _List.map)(elt_1 => infer_e(s_Gamma, S_1, elt_1), matchValue.fields[0])), e.pos, (0, _Grammar.TList)((0, _Grammar.monot__Prune)(t_r)));
        }

      case 7:
        {
          const i = matchValue.fields[0] | 0;
          const matchValue_2 = (0, _List.tryItem)(i - 1, S_1);

          if (matchValue_2 == null) {
            const exn_6 = new _Exceptions.ComponentAccessingOutOfBound(i);
            throw exn_6;
          } else {
            return new _Grammar.expr(e.node, e.pos, matchValue_2);
          }
        }

      case 0:
        {
          const f_1 = infer_e(s_Gamma, S_1, matchValue.fields[0]);
          const t_f = f_1.t;
          const args_1 = (0, _List.map)(expr => infer_e(s_Gamma, S_1, expr), matchValue.fields[1]);
          const t_args = (0, _List.mapIndexed)((i_1, x_6) => [`arg${i_1}`, x_6.t], args_1);
          const t_r_1 = (0, _Unification.Manager__NewTyRef_Z721C83C5)(UM, "@ret");
          (0, _Unification.Manager__Unify_Z1D753960)(UM, new _Grammar.monot(3, t_args, t_r_1), t_f);
          Sigma__KindCheckMono_Z25145215(Sigma_1, (0, _Grammar.monot__Prune)(t_f));
          return new _Grammar.expr(new _Grammar.node(0, f_1, args_1), e.pos, (0, _Grammar.monot__Prune)(t_r_1));
        }

      case 3:
        {
          const fieldname_1 = matchValue.fields[1];
          const value_4 = infer_e(s_Gamma, S_1, matchValue.fields[0]);
          return new _Grammar.expr(new _Grammar.node(3, value_4, fieldname_1), e.pos, Sigma__LookupField(Sigma_1, value_4.t, fieldname_1));
        }

      case 5:
        {
          const ann_args = matchValue.fields[0];
          const body_3 = infer_e((0, _List.fold)((state, tupledArg_1) => (0, _Map.add)(tupledArg_1[0], new _Grammar.polyt(1, Sigma__KindCheck_Z25145215(Sigma_1, tupledArg_1[1])), state), s_Gamma, ann_args), S_1, matchValue.fields[1]);
          return new _Grammar.expr(new _Grammar.node(5, ann_args, body_3), e.pos, new _Grammar.monot(3, ann_args, body_3.t));
        }

      default:
        {
          const elts_1 = (0, _List.map)(elt => infer_e(s_Gamma, S_1, elt), matchValue.fields[0]);
          return new _Grammar.expr(new _Grammar.node(1, elts_1), e.pos, (0, _Grammar.TTuple)((0, _List.map)(x_5 => x_5.t, elts_1)));
        }
    }
  };

  const check_lexerule = x_7_mut => {
    check_lexerule: while (true) {
      const x_7 = x_7_mut;
      let pattern_matching_result, seq, l;

      if (x_7.tag === 10) {
        pattern_matching_result = 0;
      } else if (x_7.tag === 0) {
        pattern_matching_result = 0;
      } else if (x_7.tag === 1) {
        pattern_matching_result = 0;
      } else if (x_7.tag === 3) {
        pattern_matching_result = 0;
      } else if (x_7.tag === 2) {
        pattern_matching_result = 1;
        seq = x_7.fields[0];
      } else if (x_7.tag === 4) {
        pattern_matching_result = 1;
        seq = x_7.fields[0];
      } else if (x_7.tag === 9) {
        pattern_matching_result = 2;
        l = x_7.fields[0];
      } else if (x_7.tag === 8) {
        pattern_matching_result = 2;
        l = x_7.fields[0];
      } else if (x_7.tag === 7) {
        pattern_matching_result = 2;
        l = x_7.fields[0];
      } else if (x_7.tag === 6) {
        pattern_matching_result = 2;
        l = x_7.fields[0];
      } else if (x_7.tag === 11) {
        if ((0, _List.contains)(x_7.fields[0], TokenFragments, {
          Equals: (x_8, y_5) => x_8 === y_5,
          GetHashCode: _Util.stringHash
        })) {
          pattern_matching_result = 3;
        } else {
          pattern_matching_result = 4;
        }
      } else {
        pattern_matching_result = 0;
      }

      switch (pattern_matching_result) {
        case 0:
          {
            break;
          }

        case 1:
          {
            (0, _List.iterate)(check_lexerule, seq);
            break;
          }

        case 2:
          {
            x_7_mut = l;
            continue check_lexerule;
            break;
          }

        case 3:
          {
            break;
          }

        case 4:
          {
            if (x_7.tag === 11) {
              const exn_7 = (0, _Exceptions.UnboundLexer)(x_7.fields[0]);
              throw exn_7;
            } else {
              throw new Error("Match failure");
            }

            break;
          }
      }

      break;
    }
  };

  try {
    const stmts_1 = (0, _MacroResolve.resolve_macro)(x_9 => {
      currentPos = x_9;
    }, stmts);

    for (let idx = 0; idx <= stmts_1.length - 1; idx++) {
      const stmt = stmts_1[idx];
      let pattern_matching_result_1, decl_1, decl_2, decl_3, decl_4, decl_5;

      if (stmt.tag === 6) {
        pattern_matching_result_1 = 0;
        decl_1 = stmt.fields[0];
      } else if (stmt.tag === 3) {
        pattern_matching_result_1 = 1;
        decl_2 = stmt.fields[0];
      } else if (stmt.tag === 4) {
        pattern_matching_result_1 = 2;
        decl_3 = stmt.fields[0];
      } else if (stmt.tag === 5) {
        pattern_matching_result_1 = 3;
        decl_4 = stmt.fields[0];
      } else if (stmt.tag === 0) {
        pattern_matching_result_1 = 4;
      } else if (stmt.tag === 1) {
        if ((0, _Map.containsKey)(stmt.fields[0].lhs, Omega)) {
          pattern_matching_result_1 = 5;
          decl_5 = stmt.fields[0];
        } else {
          pattern_matching_result_1 = 6;
        }
      } else {
        pattern_matching_result_1 = 6;
      }

      switch (pattern_matching_result_1) {
        case 0:
          {
            currentPos = decl_1.pos;
            const enumerator = (0, _Util.getEnumerator)(decl_1.ignoreList);

            try {
              while (enumerator["System.Collections.IEnumerator.MoveNext"]()) {
                const each = enumerator["System.Collections.Generic.IEnumerator`1.get_Current"]();
                ReferencedNamedTokens = (0, _Set.add)(each, IgnoreSet);
                IgnoreSet = (0, _Set.add)(each, IgnoreSet);
              }
            } finally {
              (0, _Util.disposeSafe)(enumerator);
            }

            break;
          }

        case 1:
          {
            currentPos = decl_2.pos;
            Sigma__RegisterExtGVar(Sigma_1, decl_2.ident, Sigma__KindCheck_Z25E5E15E(Sigma_1, decl_2.t));
            break;
          }

        case 2:
          {
            currentPos = decl_3.pos;
            Sigma__RegisterCtorGVar(Sigma_1, decl_3.ident, Sigma__KindCheck_Z25145215(Sigma_1, decl_3.t));
            break;
          }

        case 3:
          {
            currentPos = decl_4.pos;
            Sigma__RegisterType(Sigma_1, decl_4.external, decl_4.hasFields, decl_4.ident, decl_4.parameters, (0, _List.map)(tupledArg => [tupledArg[0], tupledArg[1]], decl_4.fields));
            const enumerator_1 = (0, _Util.getEnumerator)(decl_4.fields);

            try {
              while (enumerator_1["System.Collections.IEnumerator.MoveNext"]()) {
                const forLoopVar = enumerator_1["System.Collections.Generic.IEnumerator`1.get_Current"]();
                currentPos = forLoopVar[2];
                Sigma__KindCheckMono_Z25145215(Sigma_1, forLoopVar[1]);
              }
            } finally {
              (0, _Util.disposeSafe)(enumerator_1);
            }

            break;
          }

        case 4:
          {
            throw new Error("macro definition must be processed before type checking");
            break;
          }

        case 5:
          {
            const exn = (0, _Exceptions.DuplicateNonterminal)(decl_5.lhs);
            throw exn;
            break;
          }

        case 6:
          {
            let pattern_matching_result_2, decl_7, decl_8;

            if (stmt.tag === 1) {
              pattern_matching_result_2 = 0;
              decl_7 = stmt.fields[0];
            } else if (stmt.tag === 2) {
              if ((0, _List.contains)(stmt.fields[0].lhs, TokenFragments, {
                Equals: (x_3, y_3) => x_3 === y_3,
                GetHashCode: _Util.stringHash
              })) {
                pattern_matching_result_2 = 1;
                decl_8 = stmt.fields[0];
              } else {
                pattern_matching_result_2 = 2;
              }
            } else {
              pattern_matching_result_2 = 2;
            }

            switch (pattern_matching_result_2) {
              case 0:
                {
                  const nt = (0, _Unification.Manager__NewTyRef_Z721C83C5)(UM, "\u0027" + decl_7.lhs);
                  Omega = (0, _Map.add)(decl_7.lhs, nt, Omega);
                  break;
                }

              case 1:
                {
                  const exn_1 = (0, _Exceptions.DuplicateLexer)(decl_8.lhs);
                  throw exn_1;
                  break;
                }

              case 2:
                {
                  if (stmt.tag === 2) {
                    TokenFragments = (0, _List.cons)(stmt.fields[0].lhs, TokenFragments);
                  } else {
                    throw new Error("Match failure");
                  }

                  break;
                }
            }

            break;
          }
      }
    }

    for (let idx_1 = 0; idx_1 <= stmts_1.length - 1; idx_1++) {
      const stmt_2 = stmts_1[idx_1];

      switch (stmt_2.tag) {
        case 1:
          {
            const decl_10 = stmt_2.fields[0];
            currentPos = decl_10.pos;
            const tupledArg_2 = [decl_10.lhs, decl_10.define];
            const t_6 = (0, _Map.FSharpMap__get_Item)(Omega, tupledArg_2[0]);
            const enumerator_2 = (0, _Util.getEnumerator)(tupledArg_2[1]);

            try {
              while (enumerator_2["System.Collections.IEnumerator.MoveNext"]()) {
                const forLoopVar_1 = enumerator_2["System.Collections.Generic.IEnumerator`1.get_Current"]();
                const production = forLoopVar_1[1];
                currentPos = forLoopVar_1[0];
                const S_2 = (0, _List.map)(s => {
                  if (s.tag === 0) {
                    const n = s.fields[0];

                    if (s.fields[1]) {
                      LiteralTokens = (0, _Set.add)(n, LiteralTokens);
                    } else if (!(0, _List.contains)(n, TokenFragments, {
                      Equals: (x_4, y_4) => x_4 === y_4,
                      GetHashCode: _Util.stringHash
                    })) {
                      const exn_3 = (0, _Exceptions.UnboundLexer)(n);
                      throw exn_3;
                    } else {
                      ReferencedNamedTokens = (0, _Set.add)(n, ReferencedNamedTokens);
                    }

                    return _Grammar.TConst_token;
                  } else if (s.tag === 1) {
                    if ((0, _Map.containsKey)(s.fields[0], Omega)) {
                      return (0, _Map.FSharpMap__get_Item)(Omega, s.fields[0]);
                    } else if (s.tag === 1) {
                      const exn_4 = (0, _Exceptions.UnboundNonterminal)(s.fields[0]);
                      throw exn_4;
                    } else {
                      throw new Error("Match failure");
                    }
                  } else {
                    let exn_2;
                    throw new Error("macrocall not processed");
                    throw exn_2;
                  }
                }, production.symbols);
                const action = infer_e(Sigma__get_GlobalVariables(Sigma_1), S_2, production.action);
                (0, _Unification.Manager__Unify_Z1D753960)(UM, action.t, t_6);
                production.action = action;
              }
            } finally {
              (0, _Util.disposeSafe)(enumerator_2);
            }

            break;
          }

        case 2:
          {
            const decl_11 = stmt_2.fields[0];
            currentPos = decl_11.pos;
            check_lexerule(decl_11.define);
            break;
          }

        default:
          {}
      }
    }

    return [stmts_1, (TokenFragments_1 = (0, _Array.reverse)((0, _List.toArray)(TokenFragments)), new Analyzer(UM, Sigma_1, currentPos, Omega, LiteralTokens, ReferencedNamedTokens, TokenFragments_1, IgnoreSet))];
  } catch (e_1) {
    const arg30_1 = currentPos.filename;
    const arg20_1 = currentPos.col | 0;
    const arg10_4 = currentPos.line | 0;
    (0, _String.toConsole)((0, _String.printf)("line %d, column %d, file: %s\n%A"))(arg10_4)(arg20_1)(arg30_1)(e_1);
    throw new Error("exit with error");
  }
}