import { some, defaultArg } from "../fable_modules/fable-library.3.7.5/Option.js";
import { ocaml_rts_file } from "./ResourceKeys.fs.js";
import { reverse, ofArrayWithTail, singleton as singleton_1, mapIndexed, fold, toArray, cons, ofArray as ofArray_1, append, tail, head, isEmpty, map as map_1, empty } from "../fable_modules/fable-library.3.7.5/List.js";
import { contains, ofList, ofArray } from "../fable_modules/fable-library.3.7.5/Set.js";
import { stringHash, disposeSafe, getEnumerator, equals, comparePrimitives } from "../fable_modules/fable-library.3.7.5/Util.js";
import { toArray as toArray_1, add, tryFind, empty as empty_1 } from "../fable_modules/fable-library.3.7.5/Map.js";
import { empty as empty_3, append as append_1, ofList as ofList_1, singleton, collect, map, delay, toList } from "../fable_modules/fable-library.3.7.5/Seq.js";
import { Sigma__GetRecordTypes, Sigma__GetADTCases, Sigma__get_GlobalVariables } from "./Analysis.fs.js";
import { NameMangling_mangle, NameMangling_maskChar, NameMangling_IdentifierDescriptor_Create_Z48C5CCEF, NameMangling_nameEnv, NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B } from "./Backends.Common.fs.js";
import { capitalized, List_tryLookup, escapeString, isUpper, isDigit, isUnicode, isLower } from "./Utils.fs.js";
import { lexerule, monot__Prune, $007CTTuple$007C_$007C, symbol } from "./Grammar.fs.js";
import { UnboundNonterminal, UnboundLexer, UnboundVariable, UnsolvedTypeVariable } from "./Exceptions.fs.js";
import { printf, toText, join } from "../fable_modules/fable-library.3.7.5/String.js";
import { indent, align, empty as empty_2, bracket, Doc_op_RightShift_2AAA0F3C, seplist, vsep, parens, Doc_op_Addition_Z7CFFAC00, Doc_op_Multiply_Z7CFFAC00, word } from "../FableSedlex/CodeGen.fs.js";
import { contains as contains_1, sort, sortInPlaceBy, map as map_2 } from "../fable_modules/fable-library.3.7.5/Array.js";

export function codegen(analyzer, cg_options, langName, stmts) {
    const variable_renamer = defaultArg(cg_options.rename_var, (x) => x);
    const constructor_renamer = defaultArg(cg_options.rename_ctor, (x_1) => x_1);
    const field_renamer = defaultArg(cg_options.rename_field, (x_2) => x_2);
    const type_renamer = defaultArg(cg_options.rename_type, (x_3) => x_3);
    const start_rule_qualified_type = cg_options.start_rule_qualified_type;
    const rts_file_string = cg_options.request_resource(ocaml_rts_file);
    let importVarNames = empty();
    let importTypeNames = empty();
    const abandoned_names = ofArray(["and", "as", "assert", "asr", "begin", "class", "constraint", "do", "done", "downto", "else", "end", "exception", "external", "false", "for", "fun", "function", "functor", "if", "in", "include", "inherit", "initializer", "land", "lazy", "let", "lor", "lsl", "lsr", "lxor", "match", "method", "mod", "module", "mutable", "new", "nonrec", "object", "of", "open", "or", "private", "rec", "sig", "struct", "then", "to", "true", "try", "type", "val", "virtual", "when", "while", "with"], {
        Compare: comparePrimitives,
    });
    let symmap = empty_1();
    let toplevel_transformer = empty();
    let currentPos = analyzer.currentPos;
    let lexerMaps = empty();
    const global_scope = toList(delay(() => map((k) => [k[0], variable_renamer(k[0])], Sigma__get_GlobalVariables(analyzer.Sigma))));
    const ocamlVarIdentDescr = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF((i, c) => {
        const test = (isLower(c) ? true : isUnicode(c)) ? true : (c === "_");
        return (i === 0) ? test : (test ? true : isDigit(c));
    }, (i_1, c_1) => (isDigit(c_1) ? (`_X${i_1}_`) : (isUpper(c_1) ? c_1.toLowerCase() : (`_${c_1.charCodeAt(0)}_`)))), new NameMangling_nameEnv(ofList(map_1((tuple) => tuple[1], global_scope), {
        Compare: comparePrimitives,
    })));
    const sedlexIdentDescr = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF((i_2, c_2) => ((i_2 === 0) ? isUpper(c_2) : ((isUpper(c_2) ? true : (c_2 === "_")) ? true : isDigit(c_2))), (i_3, c_3) => (isLower(c_3) ? c_3.toUpperCase() : ((i_3 === 0) ? (NameMangling_maskChar(65, 90, c_3.charCodeAt(0)) + "_") : (("_" + NameMangling_maskChar(65, 90, c_3.charCodeAt(0))) + "_")))), new NameMangling_nameEnv(ofArray(["EOF"], {
        Compare: comparePrimitives,
    })));
    const menhirIdentDescr = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF((i_4, c_4) => ((i_4 === 0) ? isLower(c_4) : ((isLower(c_4) ? true : (c_4 === "_")) ? true : isDigit(c_4))), (_arg1, c_5) => (isUpper(c_5) ? c_5.toLowerCase() : (("_" + NameMangling_maskChar(97, 122, c_5.charCodeAt(0))) + "_"))), new NameMangling_nameEnv(ofArray(["start"], {
        Compare: comparePrimitives,
    })));
    const mangle = (idr, n) => NameMangling_mangle(abandoned_names, idr, n);
    const cg_symbol = (x_8) => {
        const matchValue = tryFind(x_8, symmap);
        if (matchValue == null) {
            let valid_py_ident;
            switch (x_8.tag) {
                case 0: {
                    const define = x_8.fields[0];
                    valid_py_ident = (x_8.fields[1] ? mangle(sedlexIdentDescr, ("\"" + define) + "\"") : mangle(sedlexIdentDescr, define));
                    break;
                }
                case 1: {
                    valid_py_ident = mangle(menhirIdentDescr, x_8.fields[0]);
                    break;
                }
                default: {
                    throw (new Error("macro not processed"));
                }
            }
            symmap = add(x_8, valid_py_ident, symmap);
            return valid_py_ident;
        }
        else {
            return matchValue;
        }
    };
    const name_of_named_term = (n_2) => cg_symbol(new symbol(0, n_2, false));
    const tryLookup = (key_mut, x_9_mut) => {
        tryLookup:
        while (true) {
            const key = key_mut, x_9 = x_9_mut;
            if (!isEmpty(x_9)) {
                if (equals(head(x_9)[0], key)) {
                    return some(head(x_9)[1]);
                }
                else if (!isEmpty(x_9)) {
                    key_mut = key;
                    x_9_mut = tail(x_9);
                    continue tryLookup;
                }
                else {
                    throw (new Error("Match failure"));
                }
            }
            else {
                return void 0;
            }
            break;
        }
    };
    const _cg_type = (t) => {
        if (t.tag === 4) {
            return "\u0027" + t.fields[0];
        }
        else if (t.tag === 0) {
            const exn = new UnsolvedTypeVariable();
            throw exn;
        }
        else if (t.tag === 3) {
            return (("(" + join(" * ", map_1((tupledArg) => _cg_type(tupledArg[1]), t.fields[0]))) + ") -\u003e ") + _cg_type(t.fields[1]);
        }
        else if (t.tag === 2) {
            if ($007CTTuple$007C_$007C(t.fields[0]) != null) {
                return ("(" + join(" * ", map_1(_cg_type, t.fields[1]))) + ")";
            }
            else if (t.tag === 2) {
                return (("(" + join(", ", map_1(_cg_type, t.fields[1]))) + ") ") + _cg_type(t.fields[0]);
            }
            else {
                throw (new Error("Match failure"));
            }
        }
        else {
            return type_renamer(t.fields[0]);
        }
    };
    const cg_type = (t_1) => _cg_type(monot__Prune(t_1));
    const cg_expr = (scope, curr_expr) => {
        const matchValue_1 = curr_expr.node;
        if (matchValue_1.tag === 6) {
            const matchValue_2 = tryLookup(matchValue_1.fields[0], scope);
            if (matchValue_2 != null) {
                return word(matchValue_2);
            }
            else {
                throw UnboundVariable(matchValue_1.fields[0]);
            }
        }
        else if (matchValue_1.tag === 11) {
            if (matchValue_1.fields[0]) {
                return word("true");
            }
            else {
                return word("false");
            }
        }
        else if (matchValue_1.tag === 3) {
            return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(cg_expr(scope, matchValue_1.fields[0]), word(":")), word(cg_type(curr_expr.t))), word(".")), word(matchValue_1.fields[1]));
        }
        else if (matchValue_1.tag === 8) {
            return word(toText(printf("%d"))(matchValue_1.fields[0]));
        }
        else if (matchValue_1.tag === 10) {
            return word(toText(printf("%f"))(matchValue_1.fields[0]));
        }
        else if (matchValue_1.tag === 9) {
            return word(escapeString(matchValue_1.fields[0]));
        }
        else if (matchValue_1.tag === 5) {
            const code = cg_expr(append(toList(delay(() => collect((matchValue_3) => {
                const arg = matchValue_3[0];
                return singleton([arg, mangle(ocamlVarIdentDescr, arg)]);
            }, matchValue_1.fields[0]))), scope), matchValue_1.fields[1]);
            const anns = map_1((tupledArg_1) => word((tupledArg_1[0] + ":") + cg_type(tupledArg_1[1])), matchValue_1.fields[0]);
            return parens(vsep(ofArray_1([Doc_op_Addition_Z7CFFAC00(word("fun"), Doc_op_Multiply_Z7CFFAC00(parens(seplist(word(", "), anns)), word("-\u003e"))), Doc_op_RightShift_2AAA0F3C(code, 4)])));
        }
        else if (matchValue_1.tag === 4) {
            const value$0027 = cg_expr(scope, matchValue_1.fields[1]);
            const m_name = mangle(ocamlVarIdentDescr, matchValue_1.fields[0]);
            const body = cg_expr(cons([matchValue_1.fields[0], m_name], scope), matchValue_1.fields[2]);
            const name_2 = Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(m_name), word(":")), word(cg_type(matchValue_1.fields[1].t)));
            return vsep(ofArray_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), name_2), word("=")), value$0027), word("in")), body]));
        }
        else if (matchValue_1.tag === 2) {
            return bracket(seplist(word(";"), map_1((elt) => cg_expr(scope, elt), matchValue_1.fields[0])));
        }
        else if (matchValue_1.tag === 7) {
            return word(`$${matchValue_1.fields[0]}`);
        }
        else if (matchValue_1.tag === 1) {
            return parens(seplist(word(", "), map_1((elt_1) => cg_expr(scope, elt_1), matchValue_1.fields[0])));
        }
        else {
            const f$0027 = cg_expr(scope, matchValue_1.fields[0]);
            const args$0027 = map_1((x_11) => cg_expr(scope, x_11), matchValue_1.fields[1]);
            return Doc_op_Multiply_Z7CFFAC00(f$0027, parens(seplist(word(", "), args$0027)));
        }
    };
    const mk_lexer = (def) => {
        const op_Dereference = mk_lexer;
        let pattern_matching_result, s_6, e_2, e_3, e_4, e_5, s_7, xs, l, r_1, xs_1, e_6;
        if (def.tag === 9) {
            if (def.fields[0].tag === 9) {
                pattern_matching_result = 1;
                e_2 = def.fields[0].fields[0];
            }
            else {
                pattern_matching_result = 1;
                e_2 = def.fields[0];
            }
        }
        else if (def.tag === 5) {
            pattern_matching_result = 2;
            e_3 = def.fields[0];
        }
        else if (def.tag === 0) {
            pattern_matching_result = 3;
        }
        else if (def.tag === 6) {
            pattern_matching_result = 4;
            e_4 = def.fields[0];
        }
        else if (def.tag === 7) {
            pattern_matching_result = 5;
            e_5 = def.fields[0];
        }
        else if (def.tag === 1) {
            pattern_matching_result = 6;
        }
        else if (def.tag === 11) {
            pattern_matching_result = 7;
            s_7 = def.fields[0];
        }
        else if (def.tag === 2) {
            pattern_matching_result = 8;
            xs = def.fields[0];
        }
        else if (def.tag === 10) {
            pattern_matching_result = 9;
            l = def.fields[0];
            r_1 = def.fields[1];
        }
        else if (def.tag === 4) {
            if (isEmpty(def.fields[0])) {
                pattern_matching_result = 10;
            }
            else {
                pattern_matching_result = 11;
                xs_1 = def.fields[0];
            }
        }
        else if (def.tag === 8) {
            pattern_matching_result = 12;
            e_6 = def.fields[0];
        }
        else {
            pattern_matching_result = 0;
            s_6 = def.fields[0];
        }
        switch (pattern_matching_result) {
            case 0: {
                return escapeString(s_6);
            }
            case 1: {
                return ("(" + op_Dereference(e_2)) + ")";
            }
            case 2: {
                return `Compl(${op_Dereference(e_3)})`;
            }
            case 3: {
                return "(\u00270\u0027 .. \u00279\u0027)";
            }
            case 4: {
                return `Plus(${op_Dereference(e_4)})`;
            }
            case 5: {
                return `Star(${op_Dereference(e_5)})`;
            }
            case 6: {
                return "any";
            }
            case 7: {
                const matchValue_5 = List_tryLookup(s_7, lexerMaps);
                if (matchValue_5 == null) {
                    const exn_1 = UnboundLexer(s_7);
                    throw exn_1;
                }
                else {
                    return "rule_" + name_of_named_term(s_7);
                }
            }
            case 8: {
                return join(", ", toArray(map_1(mk_lexer, xs)));
            }
            case 9: {
                return `(${l} .. ${r_1})`;
            }
            case 10: {
                throw (new Error("impossible: alternatives cannot be empty."));
            }
            case 11: {
                return join(" | ", toArray(map_1(mk_lexer, xs_1)));
            }
            case 12: {
                return `Opt(${op_Dereference(e_6)})`;
            }
        }
    };
    const mk_lexer_debug = (def_1) => {
        const op_Dereference_1 = mk_lexer_debug;
        if (def_1.tag === 9) {
            return op_Dereference_1(def_1.fields[0]);
        }
        else if (def_1.tag === 5) {
            return `pnot(${op_Dereference_1(def_1.fields[0])})`;
        }
        else if (def_1.tag === 0) {
            return "pnumber";
        }
        else if (def_1.tag === 6) {
            return `pplus(${op_Dereference_1(def_1.fields[0])})`;
        }
        else if (def_1.tag === 7) {
            return `pstar(${op_Dereference_1(def_1.fields[0])})`;
        }
        else if (def_1.tag === 1) {
            return "pany";
        }
        else if (def_1.tag === 11) {
            return def_1.fields[0];
        }
        else if (def_1.tag === 2) {
            const seq = join(", ", ofList_1(map_1(mk_lexer_debug, def_1.fields[0])));
            return `pseq([${seq}])`;
        }
        else if (def_1.tag === 10) {
            return `pinterval(${def_1.fields[0]}, ${def_1.fields[1]})`;
        }
        else if (def_1.tag === 4) {
            if (!isEmpty(def_1.fields[0])) {
                return fold((a_3, b_2) => (`por(${a_3}, ${b_2})`), op_Dereference_1(head(def_1.fields[0])), map_1(mk_lexer_debug, tail(def_1.fields[0])));
            }
            else {
                throw (new Error("impossible: alternatives cannot be empty."));
            }
        }
        else if (def_1.tag === 8) {
            return `popt${op_Dereference_1(def_1.fields[0])}`;
        }
        else {
            return `pstring(${escapeString(def_1.fields[0])})`;
        }
    };
    const file_grammar = vsep(ofArray_1(map_2((stmt) => {
        switch (stmt.tag) {
            case 2: {
                const decl_1 = stmt.fields[0];
                currentPos = decl_1.pos;
                lexerMaps = cons([decl_1.lhs, word(mk_lexer(decl_1.define))], lexerMaps);
                return empty_2;
            }
            case 6: {
                currentPos = stmt.fields[0].pos;
                return empty_2;
            }
            case 3: {
                importVarNames = cons(variable_renamer(stmt.fields[0].ident), importVarNames);
                return vsep(empty());
            }
            case 5: {
                importTypeNames = cons(type_renamer(stmt.fields[0].ident), importTypeNames);
                return vsep(empty());
            }
            case 4: {
                return vsep(empty());
            }
            case 0: {
                throw (new Error("macro not processed"));
            }
            default: {
                const decl = stmt.fields[0];
                currentPos = decl.pos;
                const ntname_1 = cg_symbol(new symbol(1, decl.lhs));
                const body_4 = align(vsep(mapIndexed((i_7, e_1) => Doc_op_Addition_Z7CFFAC00((i_7 === 0) ? word(":") : word("|"), e_1), toList(delay(() => collect((matchValue_4) => {
                    let prod;
                    currentPos = matchValue_4[0];
                    return singleton((prod = matchValue_4[1], Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(seplist(word(" "), map_1((arg_1) => word(cg_symbol(arg_1)), prod.symbols)), word("{")), Doc_op_RightShift_2AAA0F3C(vsep(ofArray_1([empty_2, Doc_op_RightShift_2AAA0F3C(cg_expr(global_scope, prod.action), 4), word("}")])), 12))));
                }, decl.define))))));
                return Doc_op_Addition_Z7CFFAC00(word(ntname_1), body_4);
            }
        }
    }, stmts)));
    const filename_lexer = toText(printf("%s_lexer"))(langName);
    const filename_parser = toText(printf("%s_parser"))(langName);
    const filename_constructors = toText(printf("%s_construct"))(langName);
    const filename_require = toText(printf("%s_require"))(langName);
    const var_tokenizer = mangle(ocamlVarIdentDescr, "tokenizer");
    const var_lexbuf = mangle(ocamlVarIdentDescr, "lexbuf");
    const file_constructors = [filename_constructors + ".ml", vsep(toList(delay(() => {
        let docCtorWrapFuncs = empty();
        return append_1(singleton(word(`open ${capitalized(filename_require)};;`)), delay(() => append_1(singleton(word(`open ${capitalized(filename_lexer)};;`)), delay(() => {
            const adtCases = Sigma__GetADTCases(analyzer.Sigma);
            return append_1(singleton(empty_2), delay(() => append_1(singleton(word("type ___used_t_head_90xasda")), delay(() => append_1(collect((matchValue_6) => {
                const typename$0027 = type_renamer(matchValue_6[0]);
                return append_1(singleton(word(`and ${typename$0027} = `)), delay(() => append_1(collect((matchValue_7) => {
                    const ctorName = matchValue_7[0];
                    const fields_1 = map_1((tupledArg_2) => [field_renamer(tupledArg_2[0]), cg_type(tupledArg_2[1])], matchValue_7[1]);
                    const ctorName$0027 = constructor_renamer(ctorName);
                    const ret_t = word(typename$0027);
                    docCtorWrapFuncs = cons([variable_renamer(ctorName), ctorName$0027, fields_1, ret_t], docCtorWrapFuncs);
                    if (isEmpty(fields_1)) {
                        return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(ctorName$0027)), word("of")), word("unit")));
                    }
                    else {
                        const ano_record_typ = seplist(word(";"), toList(delay(() => collect((matchValue_8) => singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(matchValue_8[0]), word(":")), word(matchValue_8[1]))), fields_1))));
                        return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(ctorName$0027)), word("of")), word("{")), ano_record_typ), word("}")));
                    }
                }, toArray_1(matchValue_6[1])), delay(() => singleton(empty_2)))));
            }, adtCases), delay(() => append_1(collect((matchValue_9) => {
                const typename_1 = matchValue_9[0];
                const shape = matchValue_9[1];
                const typename$0027_1 = type_renamer(typename_1);
                const varname = variable_renamer(typename_1);
                const ret_t_1 = isEmpty(shape.parameters) ? word(typename$0027_1) : Doc_op_Addition_Z7CFFAC00(parens(word(join(", ", map_1((s_10) => ("\u0027" + s_10), shape.parameters)))), word(typename$0027_1));
                const fields_2 = toList(delay(() => collect((matchValue_10) => singleton([field_renamer(matchValue_10[0]), cg_type(matchValue_10[1])]), shape.fields)));
                return isEmpty(fields_2) ? append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("and"), ret_t_1), word("=")), word("MK_" + typename$0027_1)), word("of unit"))), delay(() => {
                    docCtorWrapFuncs = cons([varname, "MK_" + typename$0027_1, fields_2, ret_t_1], docCtorWrapFuncs);
                    return empty_3();
                })) : append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("and"), ret_t_1), word("=")), word("{"))), delay(() => append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(toList(delay(() => collect((matchValue_11) => singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(matchValue_11[0]), word(":")), Doc_op_Multiply_Z7CFFAC00(word(matchValue_11[1]), word(";")))), fields_2)))), 4)), delay(() => append_1(singleton(word("}")), delay(() => {
                    docCtorWrapFuncs = cons([varname, "", fields_2, ret_t_1], docCtorWrapFuncs);
                    return empty_3();
                }))))));
            }, Sigma__GetRecordTypes(analyzer.Sigma)), delay(() => collect((matchValue_12) => {
                const function_name = matchValue_12[0];
                const fields_3 = matchValue_12[2];
                const ctor_name = matchValue_12[1];
                if (isEmpty(fields_3)) {
                    return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(function_name)), word("()")), word("=")), word(ctor_name)), word("()")));
                }
                else {
                    const args_5 = map_1((arg_2) => word(arg_2[0]), fields_3);
                    return singleton(vsep(ofArray_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(function_name)), parens(seplist(word(", "), args_5))), word(":")), matchValue_12[3]), word("=")), Doc_op_RightShift_2AAA0F3C(vsep(singleton_1(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(ctor_name), word("{")), seplist(word(";"), args_5)), word("}")))), 4)])));
                }
            }, docCtorWrapFuncs)))))))));
        }))));
    })))];
    let tokenNames = empty();
    const ReferencedNamedTokens = Array.from(analyzer.ReferencedNamedTokens);
    sortInPlaceBy((k_1) => analyzer.TokenFragments.findIndex((y_4) => (k_1 === y_4)), ReferencedNamedTokens, {
        Compare: comparePrimitives,
    });
    let lexical_rule_defs = empty();
    let tokenizer_cases = empty();
    const arr = sort(Array.from(analyzer.LiteralTokens), {
        Compare: comparePrimitives,
    });
    for (let idx_1 = 0; idx_1 <= (arr.length - 1); idx_1++) {
        const k_2 = arr[idx_1];
        const v_2 = word(mk_lexer(new lexerule(3, k_2)));
        const tokenName = cg_symbol(new symbol(0, k_2, true));
        const lexical_rule_name = "rule_" + tokenName;
        const lexical_rule_def = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(lexical_rule_name)), word("=")), bracket(Doc_op_Addition_Z7CFFAC00(word("%sedlex.regexp?"), v_2)));
        lexical_rule_defs = cons(lexical_rule_def, lexical_rule_defs);
        const tokenizer_case = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(lexical_rule_name)), word(`-> ${tokenName} (mktoken ${var_lexbuf})`));
        tokenizer_cases = cons(tokenizer_case, tokenizer_cases);
        tokenNames = cons(tokenName, tokenNames);
    }
    const enumerator = getEnumerator(lexerMaps);
    try {
        while (enumerator["System.Collections.IEnumerator.MoveNext"]()) {
            const forLoopVar = enumerator["System.Collections.Generic.IEnumerator`1.get_Current"]();
            const v_3 = forLoopVar[1];
            const k_3 = forLoopVar[0];
            if (contains(k_3, analyzer.IgnoreSet)) {
                const lexical_rule_name_1 = "rule_" + name_of_named_term(k_3);
                const lexical_rule_def_1 = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(lexical_rule_name_1)), word("=")), bracket(Doc_op_Addition_Z7CFFAC00(word("%sedlex.regexp?"), v_3)));
                lexical_rule_defs = cons(lexical_rule_def_1, lexical_rule_defs);
                const tokenizer_case_1 = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(lexical_rule_name_1)), word(`-> ${var_tokenizer} ${var_lexbuf}`));
                tokenizer_cases = cons(tokenizer_case_1, tokenizer_cases);
            }
            else {
                const tokenName_1 = name_of_named_term(k_3);
                const lexical_rule_name_2 = "rule_" + tokenName_1;
                const lexical_rule_def_2 = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(lexical_rule_name_2)), word("=")), bracket(Doc_op_Addition_Z7CFFAC00(word("%sedlex.regexp?"), v_3)));
                lexical_rule_defs = cons(lexical_rule_def_2, lexical_rule_defs);
                if (contains_1(k_3, ReferencedNamedTokens, {
                    Equals: (x_16, y_7) => (x_16 === y_7),
                    GetHashCode: stringHash,
                })) {
                    const tokenizer_case_2 = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(lexical_rule_name_2)), word(`-> ${tokenName_1} (mktoken ${var_lexbuf})`));
                    tokenizer_cases = cons(tokenizer_case_2, tokenizer_cases);
                    tokenNames = cons(tokenName_1, tokenNames);
                }
            }
        }
    }
    finally {
        disposeSafe(enumerator);
    }
    tokenizer_cases = ofArrayWithTail([word(`| _ -> _unknown_token ${var_lexbuf}`), Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word("eof -\u003e")), word("EOF"))], tokenizer_cases);
    const tokenNames_1 = reverse(tokenNames);
    const tokenizer_cases_1 = reverse(tokenizer_cases);
    const file_lexer = [filename_lexer + ".ml", vsep(ofArray_1([word(rts_file_string), empty_2, word("type token ="), vsep(toList(delay(() => append_1(map((tkn) => Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(tkn)), word("of")), word("tbnf_token")), tokenNames_1), delay(() => singleton(word("| EOF"))))))), empty_2, vsep(lexical_rule_defs), empty_2, vsep(ofArray_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let rec"), word(var_tokenizer)), word(var_lexbuf)), word("=")), align(indent(4, vsep(cons(word(`match%sedlex ${var_lexbuf} with`), tokenizer_cases_1))))]))]))];
    const matchValue_13 = tryFind("start", analyzer.Omega);
    if (matchValue_13 != null) {
        const start_t = matchValue_13;
        const start_name = cg_symbol(new symbol(1, "start"));
        const start_t_1 = cg_type(monot__Prune(start_t));
        return [file_constructors, [filename_parser + ".mly", vsep(toList(delay(() => append_1(singleton(word("%{")), delay(() => append_1(singleton(word(`open ${capitalized(filename_require)};;`)), delay(() => append_1(singleton(word(`open ${capitalized(filename_lexer)};;`)), delay(() => append_1(singleton(word(`open ${capitalized(filename_constructors)};;`)), delay(() => append_1(singleton(word("%}")), delay(() => append_1(map((tokenName_2) => word(`%token<tbnf_token> ${tokenName_2}`), tokenNames_1), delay(() => append_1(singleton(word("%token EOF")), delay(() => {
            let start_t_2;
            return append_1((start_rule_qualified_type != null) ? ((start_t_2 = start_rule_qualified_type, singleton(word(`%start <${start_t_2}> start`)))) : singleton(word(`%start <${start_t_1}> start`)), delay(() => append_1(singleton(word("%%")), delay(() => append_1(singleton(empty_2), delay(() => append_1(singleton(word(toText(printf("start : %s EOF { $1 }"))(start_name))), delay(() => singleton(file_grammar)))))))));
        })))))))))))))))))], file_lexer];
    }
    else {
        const exn_2 = UnboundNonterminal("start");
        throw exn_2;
    }
}

