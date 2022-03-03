import { Record } from "../fable_modules/fable-library.3.7.5/Types.js";
import { array_type, class_type, record_type, tuple_type, list_type, string_type } from "../fable_modules/fable-library.3.7.5/Reflection.js";
import { TConst_token, TList, node as node_5, TConst_float, TConst_bool, TConst_int, TConst_str, expr as expr_1, position$reflection, TTuple, polyt, monot, monot__ApplyToChildren_Z6A62BCBF, monot__Prune, _predefined_typenames, monot$reflection } from "./Grammar.fs.js";
import { add, tryFind, FSharpMap__get_Item, containsKey, ofArray, empty } from "../fable_modules/fable-library.3.7.5/Map.js";
import { add as add_1, contains, empty as empty_1 } from "../fable_modules/fable-library.3.7.5/Set.js";
import { disposeSafe, getEnumerator, stringHash, comparePrimitives } from "../fable_modules/fable-library.3.7.5/Util.js";
import { toArray, contains as contains_1, fold, mapIndexed, tryItem, ofArray as ofArray_1, cons, isEmpty, iterate, length, reverse, map, empty as empty_2 } from "../fable_modules/fable-library.3.7.5/List.js";
import { Manager_$ctor, Manager$reflection, Manager__Instantiate_Z25E5E15E, Manager__Unify_Z1D753960, Manager__NewTyRef_Z721C83C5 } from "./Unification.fs.js";
import { UnboundNonterminal, DuplicateLexer, DuplicateNonterminal, UnboundLexer, ComponentAccessingOutOfBound, UnboundVariable, NoField, InvalidConstructorDefinination, InvalidConstructorDefininationCause, DuplicateTypeVariable, DuplicateVariable, InvalidTypeApplication, UnboundTypeVariable, InvalidKind, NotGlobalVariable } from "./Exceptions.fs.js";
import { List_tryLookup, List_replaceWith } from "./Utils.fs.js";
import { basename } from "./Op.fs.js";
import { printf, toConsole } from "../fable_modules/fable-library.3.7.5/String.js";
import { resolve_macro } from "./MacroResolve.fs.js";
import { reverse as reverse_1 } from "../fable_modules/fable-library.3.7.5/Array.js";

export class Shape extends Record {
    constructor(parameters, fields) {
        super();
        this.parameters = parameters;
        this.fields = fields;
    }
}

export function Shape$reflection() {
    return record_type("tbnf.Analysis.Shape", [], Shape, () => [["parameters", list_type(string_type)], ["fields", list_type(tuple_type(string_type, monot$reflection()))]]);
}

export class Sigma {
    constructor(UM) {
        this.UM = UM;
        this.shapes = empty();
        this.kinds = ofArray(_predefined_typenames);
        this.global_variables = empty();
        this.constructors = empty_1({
            Compare: comparePrimitives,
        });
        this.externalTypes = empty_1({
            Compare: comparePrimitives,
        });
        this.records = empty_2();
        this.adtCases = empty_2();
    }
}

export function Sigma$reflection() {
    return class_type("tbnf.Analysis.Sigma", void 0, Sigma);
}

export function Sigma_$ctor_Z57FA2555(UM) {
    return new Sigma(UM);
}

export function Sigma__KindCheck_Z25145215(__, t) {
    Sigma__checkKind__Z25145215(__, t);
    return t;
}

export function Sigma__KindCheckMono_Z25145215(__, t) {
    return Sigma__KindCheck_Z25145215(__, t);
}

export function Sigma__KindCheck_Z25E5E15E(__, t) {
    if (t.tag === 1) {
        Sigma__checkKind__Z25145215(__, t.fields[0]);
        return t;
    }
    else {
        Sigma__checkKind__Z25145215(__, t.fields[1]);
        return t;
    }
}

export function Sigma__RegisterType(__, external, hasFields, typename, parameters, fields) {
    Sigma__defineShape(__, external, hasFields, typename, parameters, fields);
}

export function Sigma__RegisterExtGVar(__, ident, t) {
    Sigma__registerExtGVar(__, ident, t);
}

export function Sigma__RegisterCtorGVar(__, ident, t) {
    Sigma__registerCtorGVar(__, ident, t);
}

export function Sigma__LookupField(__, t, field) {
    return Sigma__lookupField(__, t, field, Manager__NewTyRef_Z721C83C5(__.UM, "." + field));
}

export function Sigma__get_GlobalVariables(__) {
    return __.global_variables;
}

export function Sigma__IsGlobalVariableConstructor_Z721C83C5(__, varname) {
    if (containsKey(varname, __.global_variables)) {
        return contains(varname, __.constructors);
    }
    else {
        const exn = new NotGlobalVariable(varname);
        throw exn;
    }
}

export function Sigma__GetADTCases(__) {
    return __.adtCases;
}

export function Sigma__GetRecordTypes(__) {
    return map((x) => [x, FSharpMap__get_Item(__.shapes, x)], reverse(__.records));
}

function Sigma__checkKind__Z25145215(this$, t) {
    const t_1 = monot__Prune(t);
    if (t_1.tag === 1) {
        const matchValue = tryFind(t_1.fields[0], this$.kinds);
        if (matchValue != null) {
            if (matchValue === 0) {
            }
            else {
                const kind = matchValue | 0;
                const got = 0;
                if ((kind >= 0) && (kind !== got)) {
                    const exn_1 = new InvalidKind({
                        expect: kind,
                        got: got,
                        name: t_1.fields[0],
                    });
                    throw exn_1;
                }
            }
        }
        else {
            const exn = UnboundTypeVariable(t_1.fields[0]);
            throw exn;
        }
    }
    else if (t_1.tag === 2) {
        if (t_1.fields[0].tag === 1) {
            const matchValue_1 = tryFind(t_1.fields[0].fields[0], this$.kinds);
            if (matchValue_1 != null) {
                const kind_1 = matchValue_1 | 0;
                const got_1 = length(t_1.fields[1]) | 0;
                if ((kind_1 >= 0) && (kind_1 !== got_1)) {
                    const exn_3 = new InvalidKind({
                        expect: kind_1,
                        got: got_1,
                        name: t_1.fields[0].fields[0],
                    });
                    throw exn_3;
                }
                iterate((t_2) => {
                    Sigma__checkKind__Z25145215(this$, t_2);
                }, t_1.fields[1]);
            }
            else {
                const exn_2 = UnboundTypeVariable(t_1.fields[0].fields[0]);
                throw exn_2;
            }
        }
        else {
            const exn_4 = new InvalidTypeApplication(t_1.fields[0]);
            throw exn_4;
        }
    }
    else {
        monot__ApplyToChildren_Z6A62BCBF(t_1, (t_3) => {
            Sigma__checkKind__Z25145215(this$, t_3);
        });
    }
}

function Sigma__registerExistingVariable(this$, varname, t) {
    if (containsKey(varname, this$.global_variables)) {
        const exn = DuplicateVariable(varname);
        throw exn;
    }
    else {
        this$.global_variables = add(varname, t, this$.global_variables);
    }
}

function Sigma__registerType(this$, typename, kind) {
    if (containsKey(typename, this$.kinds)) {
        const exn = DuplicateTypeVariable(typename);
        throw exn;
    }
    else {
        this$.kinds = add(typename, kind, this$.kinds);
    }
}

function Sigma__addCase(this$, typename, ctorName, t) {
    if (contains(typename, this$.externalTypes)) {
        const exn = new InvalidConstructorDefinination(new InvalidConstructorDefininationCause(0));
        throw exn;
    }
    const matchValue = tryFind(typename, this$.shapes);
    let pattern_matching_result;
    if (matchValue != null) {
        if (length(matchValue.fields) !== 0) {
            pattern_matching_result = 0;
        }
        else {
            pattern_matching_result = 1;
        }
    }
    else {
        pattern_matching_result = 1;
    }
    switch (pattern_matching_result) {
        case 0: {
            const exn_1 = new InvalidConstructorDefinination(new InvalidConstructorDefininationCause(1));
            throw exn_1;
            break;
        }
        case 1: {
            if (matchValue == null) {
                Sigma__registerType(this$, typename, 0);
                this$.shapes = add(typename, new Shape(empty_2(), empty_2()), this$.shapes);
            }
            else if (!isEmpty(matchValue.parameters)) {
                const exn_2 = new InvalidConstructorDefinination(new InvalidConstructorDefininationCause(2));
                throw exn_2;
            }
            break;
        }
    }
    let adtCases$0027 = List_replaceWith(typename, (_arg1) => {
        if (_arg1 != null) {
            if (containsKey(ctorName, _arg1)) {
                const cases_1 = _arg1;
                const exn_3 = new InvalidConstructorDefinination(new InvalidConstructorDefininationCause(3, ctorName));
                throw exn_3;
            }
            else if (_arg1 != null) {
                return add(ctorName, t, _arg1);
            }
            else {
                throw (new Error("Match failure"));
            }
        }
        else {
            return ofArray([[ctorName, t]]);
        }
    }, this$.adtCases);
    this$.adtCases = adtCases$0027;
}

function Sigma__defineShape(this$, external, hasFields, typename, parameters, fields) {
    if (containsKey(typename, this$.shapes)) {
        const exn = DuplicateTypeVariable(typename);
        throw exn;
    }
    else {
        const matchValue = tryFind(typename, this$.kinds);
        if (matchValue == null) {
            Sigma__registerType(this$, typename, length(parameters));
        }
        else {
            const kind = matchValue | 0;
            if ((kind >= 0) && (length(parameters) !== kind)) {
                const exn_1 = new InvalidKind({
                    expect: kind,
                    got: length(parameters),
                    name: typename,
                });
                throw exn_1;
            }
        }
        if (external) {
            this$.externalTypes = add_1(typename, this$.externalTypes);
        }
        else if (hasFields) {
            Sigma__registerExistingVariable(this$, typename, isEmpty(parameters) ? (new polyt(1, new monot(3, fields, new monot(1, typename)))) : (new polyt(0, parameters, new monot(3, fields, new monot(2, new monot(1, typename), map((arg0) => (new monot(4, arg0)), parameters))))));
            this$.records = cons(typename, this$.records);
        }
        this$.shapes = add(typename, new Shape(parameters, fields), this$.shapes);
    }
}

function Sigma__lookupField(this$, t, fieldname, tyref) {
    const typename = basename(t);
    const matchValue = tryFind(typename, this$.shapes);
    if (matchValue != null) {
        const shape = matchValue;
        const matchValue_1 = List_tryLookup(fieldname, shape.fields);
        if (matchValue_1 != null) {
            const ft = matchValue_1;
            const inst_target = TTuple(ofArray_1([t, tyref]));
            Manager__Unify_Z1D753960(this$.UM, inst_target, Manager__Instantiate_Z25E5E15E(this$.UM, new polyt(0, shape.parameters, TTuple(ofArray_1([new monot(2, new monot(1, typename), map((arg0) => (new monot(4, arg0)), shape.parameters)), ft]))))[1]);
            Sigma__checkKind__Z25145215(this$, inst_target);
            return monot__Prune(tyref);
        }
        else {
            const exn_1 = new NoField(t, fieldname);
            throw exn_1;
        }
    }
    else {
        const exn = UnboundTypeVariable(typename);
        throw exn;
    }
}

function Sigma__registerExtGVar(this$, varname, t) {
    if (containsKey(varname, this$.global_variables)) {
        const exn = DuplicateVariable(varname);
        throw exn;
    }
    else {
        this$.global_variables = add(varname, t, this$.global_variables);
    }
}

function Sigma__registerCtorGVar(this$, varname, t) {
    if (containsKey(varname, this$.global_variables)) {
        const exn = DuplicateVariable(varname);
        throw exn;
    }
    else {
        this$.global_variables = add(varname, new polyt(1, t), this$.global_variables);
        this$.constructors = add_1(varname, this$.constructors);
        let pattern_matching_result, args, typename;
        if (t.tag === 3) {
            if (t.fields[1].tag === 1) {
                pattern_matching_result = 0;
                args = t.fields[0];
                typename = t.fields[1].fields[0];
            }
            else {
                pattern_matching_result = 1;
            }
        }
        else {
            pattern_matching_result = 1;
        }
        switch (pattern_matching_result) {
            case 0: {
                Sigma__addCase(this$, typename, varname, args);
                break;
            }
            case 1: {
                const exn_1 = new InvalidConstructorDefinination(new InvalidConstructorDefininationCause(4, t));
                throw exn_1;
                break;
            }
        }
    }
}

export class Analyzer extends Record {
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

export function Analyzer$reflection() {
    return record_type("tbnf.Analysis.Analyzer", [], Analyzer, () => [["UM", Manager$reflection()], ["Sigma", Sigma$reflection()], ["currentPos", position$reflection()], ["Omega", class_type("Microsoft.FSharp.Collections.FSharpMap`2", [string_type, monot$reflection()])], ["LiteralTokens", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [string_type])], ["ReferencedNamedTokens", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [string_type])], ["TokenFragments", array_type(string_type)], ["IgnoreSet", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [string_type])]]);
}

export function build_analyzer(stmts) {
    let TokenFragments_1;
    const UM = Manager_$ctor();
    const Sigma_1 = Sigma_$ctor_Z57FA2555(UM);
    let currentPos = null;
    let Omega = empty();
    let LiteralTokens = empty_1({
        Compare: comparePrimitives,
    });
    let ReferencedNamedTokens = empty_1({
        Compare: comparePrimitives,
    });
    let TokenFragments = empty_2();
    let IgnoreSet = empty_1({
        Compare: comparePrimitives,
    });
    const infer_e = (s_Gamma, S, e) => {
        const S_1 = S;
        currentPos = e.pos;
        const matchValue = e.node;
        switch (matchValue.tag) {
            case 6: {
                const v_1 = matchValue.fields[0];
                const matchValue_1 = tryFind(v_1, s_Gamma);
                if (matchValue_1 != null) {
                    const patternInput = Manager__Instantiate_Z25E5E15E(UM, matchValue_1);
                    matchValue.fields[1].contents = patternInput[0];
                    return new expr_1(e.node, e.pos, patternInput[1]);
                }
                else {
                    const exn_5 = UnboundVariable(v_1);
                    throw exn_5;
                }
            }
            case 9: {
                return new expr_1(e.node, e.pos, TConst_str);
            }
            case 8: {
                return new expr_1(e.node, e.pos, TConst_int);
            }
            case 11: {
                return new expr_1(e.node, e.pos, TConst_bool);
            }
            case 10: {
                return new expr_1(e.node, e.pos, TConst_float);
            }
            case 4: {
                const name_3 = matchValue.fields[0];
                const value_2 = infer_e(s_Gamma, S_1, matchValue.fields[1]);
                const body_1 = infer_e(add(name_3, new polyt(1, value_2.t), s_Gamma), S_1, matchValue.fields[2]);
                return new expr_1(new node_5(4, name_3, value_2, body_1), e.pos, body_1.t);
            }
            case 2: {
                const t_r = Manager__NewTyRef_Z721C83C5(UM, "list");
                return new expr_1(new node_5(2, map((elt_1) => infer_e(s_Gamma, S_1, elt_1), matchValue.fields[0])), e.pos, TList(monot__Prune(t_r)));
            }
            case 7: {
                const i = matchValue.fields[0] | 0;
                const matchValue_2 = tryItem(i - 1, S_1);
                if (matchValue_2 == null) {
                    const exn_6 = new ComponentAccessingOutOfBound(i);
                    throw exn_6;
                }
                else {
                    return new expr_1(e.node, e.pos, matchValue_2);
                }
            }
            case 0: {
                const f_1 = infer_e(s_Gamma, S_1, matchValue.fields[0]);
                const t_f = f_1.t;
                const args_1 = map((expr) => infer_e(s_Gamma, S_1, expr), matchValue.fields[1]);
                const t_args = mapIndexed((i_1, x_6) => [`arg${i_1}`, x_6.t], args_1);
                const t_r_1 = Manager__NewTyRef_Z721C83C5(UM, "@ret");
                Manager__Unify_Z1D753960(UM, new monot(3, t_args, t_r_1), t_f);
                Sigma__KindCheckMono_Z25145215(Sigma_1, monot__Prune(t_f));
                return new expr_1(new node_5(0, f_1, args_1), e.pos, monot__Prune(t_r_1));
            }
            case 3: {
                const fieldname_1 = matchValue.fields[1];
                const value_4 = infer_e(s_Gamma, S_1, matchValue.fields[0]);
                return new expr_1(new node_5(3, value_4, fieldname_1), e.pos, Sigma__LookupField(Sigma_1, value_4.t, fieldname_1));
            }
            case 5: {
                const ann_args = matchValue.fields[0];
                const body_3 = infer_e(fold((state, tupledArg_1) => add(tupledArg_1[0], new polyt(1, Sigma__KindCheck_Z25145215(Sigma_1, tupledArg_1[1])), state), s_Gamma, ann_args), S_1, matchValue.fields[1]);
                return new expr_1(new node_5(5, ann_args, body_3), e.pos, new monot(3, ann_args, body_3.t));
            }
            default: {
                const elts_1 = map((elt) => infer_e(s_Gamma, S_1, elt), matchValue.fields[0]);
                return new expr_1(new node_5(1, elts_1), e.pos, TTuple(map((x_5) => x_5.t, elts_1)));
            }
        }
    };
    const check_lexerule = (x_7_mut) => {
        check_lexerule:
        while (true) {
            const x_7 = x_7_mut;
            let pattern_matching_result, seq, l;
            if (x_7.tag === 10) {
                pattern_matching_result = 0;
            }
            else if (x_7.tag === 0) {
                pattern_matching_result = 0;
            }
            else if (x_7.tag === 1) {
                pattern_matching_result = 0;
            }
            else if (x_7.tag === 3) {
                pattern_matching_result = 0;
            }
            else if (x_7.tag === 2) {
                pattern_matching_result = 1;
                seq = x_7.fields[0];
            }
            else if (x_7.tag === 4) {
                pattern_matching_result = 1;
                seq = x_7.fields[0];
            }
            else if (x_7.tag === 9) {
                pattern_matching_result = 2;
                l = x_7.fields[0];
            }
            else if (x_7.tag === 8) {
                pattern_matching_result = 2;
                l = x_7.fields[0];
            }
            else if (x_7.tag === 7) {
                pattern_matching_result = 2;
                l = x_7.fields[0];
            }
            else if (x_7.tag === 6) {
                pattern_matching_result = 2;
                l = x_7.fields[0];
            }
            else if (x_7.tag === 11) {
                if (contains_1(x_7.fields[0], TokenFragments, {
                    Equals: (x_8, y_5) => (x_8 === y_5),
                    GetHashCode: stringHash,
                })) {
                    pattern_matching_result = 3;
                }
                else {
                    pattern_matching_result = 4;
                }
            }
            else {
                pattern_matching_result = 0;
            }
            switch (pattern_matching_result) {
                case 0: {
                    break;
                }
                case 1: {
                    iterate(check_lexerule, seq);
                    break;
                }
                case 2: {
                    x_7_mut = l;
                    continue check_lexerule;
                    break;
                }
                case 3: {
                    break;
                }
                case 4: {
                    if (x_7.tag === 11) {
                        const exn_7 = UnboundLexer(x_7.fields[0]);
                        throw exn_7;
                    }
                    else {
                        throw (new Error("Match failure"));
                    }
                    break;
                }
            }
            break;
        }
    };
    try {
        const stmts_1 = resolve_macro((x_9) => {
            currentPos = x_9;
        }, stmts);
        for (let idx = 0; idx <= (stmts_1.length - 1); idx++) {
            const stmt = stmts_1[idx];
            let pattern_matching_result_1, decl_1, decl_2, decl_3, decl_4, decl_5;
            if (stmt.tag === 6) {
                pattern_matching_result_1 = 0;
                decl_1 = stmt.fields[0];
            }
            else if (stmt.tag === 3) {
                pattern_matching_result_1 = 1;
                decl_2 = stmt.fields[0];
            }
            else if (stmt.tag === 4) {
                pattern_matching_result_1 = 2;
                decl_3 = stmt.fields[0];
            }
            else if (stmt.tag === 5) {
                pattern_matching_result_1 = 3;
                decl_4 = stmt.fields[0];
            }
            else if (stmt.tag === 0) {
                pattern_matching_result_1 = 4;
            }
            else if (stmt.tag === 1) {
                if (containsKey(stmt.fields[0].lhs, Omega)) {
                    pattern_matching_result_1 = 5;
                    decl_5 = stmt.fields[0];
                }
                else {
                    pattern_matching_result_1 = 6;
                }
            }
            else {
                pattern_matching_result_1 = 6;
            }
            switch (pattern_matching_result_1) {
                case 0: {
                    currentPos = decl_1.pos;
                    const enumerator = getEnumerator(decl_1.ignoreList);
                    try {
                        while (enumerator["System.Collections.IEnumerator.MoveNext"]()) {
                            const each = enumerator["System.Collections.Generic.IEnumerator`1.get_Current"]();
                            ReferencedNamedTokens = add_1(each, IgnoreSet);
                            IgnoreSet = add_1(each, IgnoreSet);
                        }
                    }
                    finally {
                        disposeSafe(enumerator);
                    }
                    break;
                }
                case 1: {
                    currentPos = decl_2.pos;
                    Sigma__RegisterExtGVar(Sigma_1, decl_2.ident, Sigma__KindCheck_Z25E5E15E(Sigma_1, decl_2.t));
                    break;
                }
                case 2: {
                    currentPos = decl_3.pos;
                    Sigma__RegisterCtorGVar(Sigma_1, decl_3.ident, Sigma__KindCheck_Z25145215(Sigma_1, decl_3.t));
                    break;
                }
                case 3: {
                    currentPos = decl_4.pos;
                    Sigma__RegisterType(Sigma_1, decl_4.external, decl_4.hasFields, decl_4.ident, decl_4.parameters, map((tupledArg) => [tupledArg[0], tupledArg[1]], decl_4.fields));
                    const enumerator_1 = getEnumerator(decl_4.fields);
                    try {
                        while (enumerator_1["System.Collections.IEnumerator.MoveNext"]()) {
                            const forLoopVar = enumerator_1["System.Collections.Generic.IEnumerator`1.get_Current"]();
                            currentPos = forLoopVar[2];
                            Sigma__KindCheckMono_Z25145215(Sigma_1, forLoopVar[1]);
                        }
                    }
                    finally {
                        disposeSafe(enumerator_1);
                    }
                    break;
                }
                case 4: {
                    throw (new Error("macro definition must be processed before type checking"));
                    break;
                }
                case 5: {
                    const exn = DuplicateNonterminal(decl_5.lhs);
                    throw exn;
                    break;
                }
                case 6: {
                    let pattern_matching_result_2, decl_7, decl_8;
                    if (stmt.tag === 1) {
                        pattern_matching_result_2 = 0;
                        decl_7 = stmt.fields[0];
                    }
                    else if (stmt.tag === 2) {
                        if (contains_1(stmt.fields[0].lhs, TokenFragments, {
                            Equals: (x_3, y_3) => (x_3 === y_3),
                            GetHashCode: stringHash,
                        })) {
                            pattern_matching_result_2 = 1;
                            decl_8 = stmt.fields[0];
                        }
                        else {
                            pattern_matching_result_2 = 2;
                        }
                    }
                    else {
                        pattern_matching_result_2 = 2;
                    }
                    switch (pattern_matching_result_2) {
                        case 0: {
                            const nt = Manager__NewTyRef_Z721C83C5(UM, "\u0027" + decl_7.lhs);
                            Omega = add(decl_7.lhs, nt, Omega);
                            break;
                        }
                        case 1: {
                            const exn_1 = DuplicateLexer(decl_8.lhs);
                            throw exn_1;
                            break;
                        }
                        case 2: {
                            if (stmt.tag === 2) {
                                TokenFragments = cons(stmt.fields[0].lhs, TokenFragments);
                            }
                            else {
                                throw (new Error("Match failure"));
                            }
                            break;
                        }
                    }
                    break;
                }
            }
        }
        for (let idx_1 = 0; idx_1 <= (stmts_1.length - 1); idx_1++) {
            const stmt_2 = stmts_1[idx_1];
            switch (stmt_2.tag) {
                case 1: {
                    const decl_10 = stmt_2.fields[0];
                    currentPos = decl_10.pos;
                    const tupledArg_2 = [decl_10.lhs, decl_10.define];
                    const t_6 = FSharpMap__get_Item(Omega, tupledArg_2[0]);
                    const enumerator_2 = getEnumerator(tupledArg_2[1]);
                    try {
                        while (enumerator_2["System.Collections.IEnumerator.MoveNext"]()) {
                            const forLoopVar_1 = enumerator_2["System.Collections.Generic.IEnumerator`1.get_Current"]();
                            const production = forLoopVar_1[1];
                            currentPos = forLoopVar_1[0];
                            const S_2 = map((s) => {
                                if (s.tag === 0) {
                                    const n = s.fields[0];
                                    if (s.fields[1]) {
                                        LiteralTokens = add_1(n, LiteralTokens);
                                    }
                                    else if (!contains_1(n, TokenFragments, {
                                        Equals: (x_4, y_4) => (x_4 === y_4),
                                        GetHashCode: stringHash,
                                    })) {
                                        const exn_3 = UnboundLexer(n);
                                        throw exn_3;
                                    }
                                    else {
                                        ReferencedNamedTokens = add_1(n, ReferencedNamedTokens);
                                    }
                                    return TConst_token;
                                }
                                else if (s.tag === 1) {
                                    if (containsKey(s.fields[0], Omega)) {
                                        return FSharpMap__get_Item(Omega, s.fields[0]);
                                    }
                                    else if (s.tag === 1) {
                                        const exn_4 = UnboundNonterminal(s.fields[0]);
                                        throw exn_4;
                                    }
                                    else {
                                        throw (new Error("Match failure"));
                                    }
                                }
                                else {
                                    let exn_2;
                                    throw (new Error("macrocall not processed"));
                                    throw exn_2;
                                }
                            }, production.symbols);
                            const action = infer_e(Sigma__get_GlobalVariables(Sigma_1), S_2, production.action);
                            Manager__Unify_Z1D753960(UM, action.t, t_6);
                            production.action = action;
                        }
                    }
                    finally {
                        disposeSafe(enumerator_2);
                    }
                    break;
                }
                case 2: {
                    const decl_11 = stmt_2.fields[0];
                    currentPos = decl_11.pos;
                    check_lexerule(decl_11.define);
                    break;
                }
                default: {
                }
            }
        }
        return [stmts_1, (TokenFragments_1 = reverse_1(toArray(TokenFragments)), new Analyzer(UM, Sigma_1, currentPos, Omega, LiteralTokens, ReferencedNamedTokens, TokenFragments_1, IgnoreSet))];
    }
    catch (e_1) {
        const arg30_1 = currentPos.filename;
        const arg20_1 = currentPos.col | 0;
        const arg10_4 = currentPos.line | 0;
        toConsole(printf("line %d, column %d, file: %s\n%A"))(arg10_4)(arg20_1)(arg30_1)(e_1);
        throw (new Error("exit with error"));
    }
}

