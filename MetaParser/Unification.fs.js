import { class_type } from "../fable_modules/fable-library.3.7.5/Reflection.js";
import { UnboundTypeVariable, IllFormedType, TypeMismatch } from "./Exceptions.fs.js";
import { monot__TransformChildren_Z2CAB662A, Cell$1__Set_2B595, monot__Prune, monot__FindAnyChildren_Z23D07CE9, monot, Cell$1_$ctor } from "./Grammar.fs.js";
import { isEmpty, unzip, map, empty, iterate2, length } from "../fable_modules/fable-library.3.7.5/List.js";
import { equals } from "../fable_modules/fable-library.3.7.5/Util.js";
import { tryFind, ofList } from "../fable_modules/fable-library.3.7.5/Map.js";

export class Manager {
    constructor() {
    }
}

export function Manager$reflection() {
    return class_type("tbnf.Unification.Manager", void 0, Manager);
}

export function Manager_$ctor() {
    return new Manager();
}

export function Manager__Instantiate_Z25E5E15E(__, t) {
    return Manager__instantiate_Z25E5E15E(__, t);
}

export function Manager__Unify_Z1D753960(__, got_type, expected_type) {
    try {
        Manager__unify(__, got_type, expected_type);
    }
    catch (matchValue) {
        if (matchValue instanceof TypeMismatch) {
            throw (new TypeMismatch(got_type, expected_type));
        }
        else {
            throw matchValue;
        }
    }
}

export function Manager__NewTyRef_Z721C83C5(__, s) {
    return Manager__newTyRef_Z721C83C5(__, s);
}

export function Manager__CellRepr_7A2426C3(__, cell) {
    throw (new Error("access repr of unknown typeref."));
}

function Manager__newTyRef_Z721C83C5(this$, name) {
    return new monot(0, Cell$1_$ctor());
}

function Manager__occur_in(this$, r, other) {
    let pattern_matching_result;
    if (other.tag === 0) {
        if (other.fields[0] === r) {
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
            return true;
        }
        case 1: {
            return monot__FindAnyChildren_Z23D07CE9(other, (other_1) => Manager__occur_in(this$, r, other_1));
        }
    }
}

function Manager__op_AtEqualsAt(this$, a, b) {
    return length(a) === length(b);
}

function Manager__unify(this$_mut, l_mut, r_mut) {
    Manager__unify:
    while (true) {
        const this$ = this$_mut, l = l_mut, r = r_mut;
        const l_1 = monot__Prune(l);
        const r_1 = monot__Prune(r);
        const matchValue = [l_1, r_1];
        let pattern_matching_result, cell;
        if (matchValue[0].tag === 0) {
            pattern_matching_result = 0;
            cell = matchValue[0].fields[0];
        }
        else if (matchValue[0].tag === 1) {
            if (matchValue[1].tag === 0) {
                pattern_matching_result = 1;
            }
            else if (matchValue[1].tag === 1) {
                if (matchValue[0].fields[0] === matchValue[1].fields[0]) {
                    pattern_matching_result = 2;
                }
                else {
                    pattern_matching_result = 3;
                }
            }
            else {
                pattern_matching_result = 3;
            }
        }
        else if (matchValue[1].tag === 0) {
            pattern_matching_result = 1;
        }
        else {
            pattern_matching_result = 3;
        }
        switch (pattern_matching_result) {
            case 0: {
                if (equals(l_1, r_1)) {
                }
                else if (Manager__occur_in(this$, cell, r_1)) {
                    const exn = new IllFormedType(l_1, r_1);
                    throw exn;
                }
                else {
                    Cell$1__Set_2B595(cell, r_1);
                }
                break;
            }
            case 1: {
                this$_mut = this$;
                l_mut = r_1;
                r_mut = l_1;
                continue Manager__unify;
                break;
            }
            case 2: {
                break;
            }
            case 3: {
                let pattern_matching_result_1;
                if (matchValue[0].tag === 4) {
                    if (matchValue[1].tag === 4) {
                        if (matchValue[0].fields[0] === matchValue[1].fields[0]) {
                            pattern_matching_result_1 = 0;
                        }
                        else {
                            pattern_matching_result_1 = 1;
                        }
                    }
                    else {
                        pattern_matching_result_1 = 1;
                    }
                }
                else {
                    pattern_matching_result_1 = 1;
                }
                switch (pattern_matching_result_1) {
                    case 0: {
                        break;
                    }
                    case 1: {
                        let pattern_matching_result_2, x_1, xs_1, y_1, ys_1;
                        if (matchValue[0].tag === 2) {
                            if (matchValue[1].tag === 2) {
                                if (Manager__op_AtEqualsAt(this$, matchValue[0].fields[1], matchValue[1].fields[1])) {
                                    pattern_matching_result_2 = 0;
                                    x_1 = matchValue[0].fields[0];
                                    xs_1 = matchValue[0].fields[1];
                                    y_1 = matchValue[1].fields[0];
                                    ys_1 = matchValue[1].fields[1];
                                }
                                else {
                                    pattern_matching_result_2 = 1;
                                }
                            }
                            else {
                                pattern_matching_result_2 = 1;
                            }
                        }
                        else {
                            pattern_matching_result_2 = 1;
                        }
                        switch (pattern_matching_result_2) {
                            case 0: {
                                Manager__unify(this$, x_1, y_1);
                                iterate2((l_2, r_2) => {
                                    Manager__unify(this$, l_2, r_2);
                                }, xs_1, ys_1);
                                break;
                            }
                            case 1: {
                                let pattern_matching_result_3, x_3, xs_3, y_3, ys_3;
                                if (matchValue[0].tag === 3) {
                                    if (matchValue[1].tag === 3) {
                                        if (Manager__op_AtEqualsAt(this$, matchValue[0].fields[0], matchValue[1].fields[0])) {
                                            pattern_matching_result_3 = 0;
                                            x_3 = matchValue[0].fields[1];
                                            xs_3 = matchValue[0].fields[0];
                                            y_3 = matchValue[1].fields[1];
                                            ys_3 = matchValue[1].fields[0];
                                        }
                                        else {
                                            pattern_matching_result_3 = 1;
                                        }
                                    }
                                    else {
                                        pattern_matching_result_3 = 1;
                                    }
                                }
                                else {
                                    pattern_matching_result_3 = 1;
                                }
                                switch (pattern_matching_result_3) {
                                    case 0: {
                                        iterate2((tupledArg, tupledArg_1) => {
                                            Manager__unify(this$, tupledArg[1], tupledArg_1[1]);
                                        }, xs_3, ys_3);
                                        this$_mut = this$;
                                        l_mut = x_3;
                                        r_mut = y_3;
                                        continue Manager__unify;
                                        break;
                                    }
                                    case 1: {
                                        const exn_1 = new TypeMismatch(l_1, r_1);
                                        throw exn_1;
                                        break;
                                    }
                                }
                                break;
                            }
                        }
                        break;
                    }
                }
                break;
            }
        }
        break;
    }
}

function Manager__instantiate_Z25E5E15E(this$, t) {
    let pattern_matching_result, t_1, t_2, vars;
    if (t.tag === 0) {
        if (isEmpty(t.fields[0])) {
            pattern_matching_result = 0;
            t_1 = t.fields[1];
        }
        else {
            pattern_matching_result = 1;
            t_2 = t.fields[1];
            vars = t.fields[0];
        }
    }
    else {
        pattern_matching_result = 0;
        t_1 = t.fields[0];
    }
    switch (pattern_matching_result) {
        case 0: {
            return [empty(), t_1];
        }
        case 1: {
            const specializationArgs = map((var$) => [var$, Manager__newTyRef_Z721C83C5(this$, var$)], vars);
            const replaceMap = ofList(specializationArgs);
            const instantiate = (t_3) => {
                if (t_3.tag === 4) {
                    const a = t_3.fields[0];
                    const matchValue = tryFind(a, replaceMap);
                    if (matchValue != null) {
                        return matchValue;
                    }
                    else {
                        const exn = UnboundTypeVariable(a);
                        throw exn;
                    }
                }
                else {
                    return monot__TransformChildren_Z2CAB662A(t_3, instantiate);
                }
            };
            return [unzip(specializationArgs)[1], instantiate(t_2)];
        }
    }
}

