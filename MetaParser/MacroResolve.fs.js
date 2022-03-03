import { reverse, append, toArray, tail, head, isEmpty, map2, length, cons, empty as empty_1, map } from "../fable_modules/fable-library.3.7.5/List.js";
import { definition, production, expr__DeepCopy, symbol, position_get_Fake } from "./Grammar.fs.js";
import { printf, toText, join } from "../fable_modules/fable-library.3.7.5/String.js";
import { escapeString } from "./Utils.fs.js";
import { ofList, tryFind, add, empty } from "../fable_modules/fable-library.3.7.5/Map.js";
import { map as map_1, singleton, collect, delay, toList } from "../fable_modules/fable-library.3.7.5/Seq.js";
import { MacroResolveError } from "./Exceptions.fs.js";

export function toPositionIndependent(term) {
    switch (term.tag) {
        case 0: {
            return term;
        }
        case 2: {
            return new symbol(2, term.fields[0], map(toPositionIndependent, term.fields[1]), position_get_Fake());
        }
        default: {
            return term;
        }
    }
}

export function toPositionIndependentString(term) {
    if (term.tag === 1) {
        return term.fields[0];
    }
    else if (term.tag === 2) {
        const arg20 = join(",", map(toPositionIndependentString, term.fields[1]));
        return toText(printf("%s(%s)"))(term.fields[0])(arg20);
    }
    else if (term.fields[1]) {
        return escapeString(term.fields[0]);
    }
    else {
        return ("\u003c" + term.fields[0]) + "\u003e";
    }
}

export function resolve_macro(setPos, stmts) {
    let macro_defs = empty();
    let stmts_to_solve = empty_1();
    let fixed_stmts = empty_1();
    for (let idx = 0; idx <= (stmts.length - 1); idx++) {
        const each = stmts[idx];
        switch (each.tag) {
            case 0: {
                const decl = each.fields[0];
                macro_defs = add(decl.lhs, decl, macro_defs);
                break;
            }
            case 1: {
                const scope = empty();
                stmts_to_solve = cons([each.fields[0], scope], stmts_to_solve);
                break;
            }
            default: {
                fixed_stmts = cons(each, fixed_stmts);
            }
        }
    }
    let final_results_1;
    let stmts_to_solve_1 = stmts_to_solve;
    let final_results = empty_1();
    let solved = empty();
    const solve_specialization = (tupledArg) => {
        const decl_2 = tupledArg[0];
        let define = toList(delay(() => collect((matchValue) => {
            const pos = matchValue[0];
            const case$ = matchValue[1];
            setPos(pos);
            return singleton([pos, new production(map((x) => solve_sym(x)(tupledArg[1]), case$.symbols), expr__DeepCopy(case$.action))]);
        }, decl_2.define)));
        final_results = cons(new definition(1, {
            define: define,
            lhs: decl_2.lhs,
            pos: decl_2.pos,
        }), final_results);
    };
    const solve_sym = (sym) => ((scope_2) => {
        let matchValue_2, matchValue_3, macro_def, parameters, str_parameters, exn_1, scope$0027, resolved_name_1, exn;
        switch (sym.tag) {
            case 1: {
                const matchValue_1 = tryFind(sym.fields[0], scope_2);
                return (matchValue_1 == null) ? sym : matchValue_1;
            }
            case 2: {
                const pos_1 = sym.fields[2];
                const n_1 = sym.fields[0];
                setPos(pos_1);
                const args_1 = toList(delay(() => map_1((arg) => solve_sym(arg)(scope_2), sym.fields[1])));
                let sym_1 = new symbol(2, n_1, args_1, pos_1);
                const key = toPositionIndependent(sym_1);
                return new symbol(1, (matchValue_2 = tryFind(key, solved), (matchValue_2 == null) ? ((matchValue_3 = tryFind(n_1, macro_defs), (matchValue_3 != null) ? ((macro_def = matchValue_3, (parameters = macro_def.parameters, ((length(parameters) !== length(args_1)) ? ((str_parameters = join(", ", parameters), (exn_1 = (new MacroResolveError(`macro ${n_1} expects ${length(parameters)} argument(s): (${str_parameters}); got ${length(args_1)}`)), (() => {
                    throw exn_1;
                })()))) : (void 0), (scope$0027 = ofList(map2((k, v_1) => [k, v_1], parameters, args_1)), (resolved_name_1 = toPositionIndependentString(sym_1), (solved = add(key, resolved_name_1, solved), (stmts_to_solve_1 = cons([{
                    define: macro_def.define,
                    lhs: resolved_name_1,
                    pos: pos_1,
                }, scope$0027], stmts_to_solve_1), resolved_name_1)))))))) : ((exn = (new MacroResolveError(`macro definition ${n_1} not found.`)), (() => {
                    throw exn;
                })())))) : matchValue_2));
            }
            default: {
                return sym;
            }
        }
    });
    while (!isEmpty(stmts_to_solve_1)) {
        const decl_3 = head(stmts_to_solve_1);
        stmts_to_solve_1 = tail(stmts_to_solve_1);
        solve_specialization(decl_3);
    }
    final_results_1 = final_results;
    return toArray(append(reverse(fixed_stmts), final_results_1));
}

