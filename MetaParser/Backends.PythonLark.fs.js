import { defaultArg } from "../fable_modules/fable-library.3.7.5/Option.js";
import { reverse, singleton as singleton_1, length, ofArrayWithTail, mapIndexed, fold, toArray, head, tail, isEmpty, cons, append, ofArray as ofArray_1, map as map_1, empty } from "../fable_modules/fable-library.3.7.5/List.js";
import { contains, union, ofList, ofArray } from "../fable_modules/fable-library.3.7.5/Set.js";
import { comparePrimitives } from "../fable_modules/fable-library.3.7.5/Util.js";
import { FSharpMap__get_Item, toArray as toArray_1, add, tryFind, empty as empty_1 } from "../fable_modules/fable-library.3.7.5/Map.js";
import { empty as empty_3, singleton, append as append_1, collect, ofList as ofList_1, map, delay, toList } from "../fable_modules/fable-library.3.7.5/Seq.js";
import { Sigma__GetRecordTypes, Sigma__GetADTCases, Sigma__get_GlobalVariables, Sigma__IsGlobalVariableConstructor_Z721C83C5 } from "./Analysis.fs.js";
import { DocBuilder_Builder__For_2B96F4AF, DocBuilder_Builder__ReturnFrom_ZD0BB270, DocBuilder_Builder__Yield_417FD60, DocBuilder_Builder__Combine_Z5C764E00, DocBuilder_runCG, DocBuilder_Builder__Bind_30A200B3, DocBuilder_cg, DocBuilder_Builder__Return_1505, DocBuilder_Builder__Delay_Z3A9C5A06, DocBuilder_Builder__Run_ZD0BB270, NameMangling_mangle, NameMangling_maskChar, NameMangling_IdentifierDescriptor_Create_Z48C5CCEF, NameMangling_nameEnv, NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B } from "./Backends.Common.fs.js";
import { escapeString, List_tryLookup, isDigit, isUpper, isUnicode, isLower } from "./Utils.fs.js";
import { monot__Prune, $007CTTuple$007C_$007C, symbol } from "./Grammar.fs.js";
import { align, empty as empty_2, bracket, Doc_op_RightShift_2AAA0F3C, seplist, parens, Doc_op_Multiply_Z7CFFAC00, word, Doc_op_Addition_Z7CFFAC00, vsep } from "../FableSedlex/CodeGen.fs.js";
import { UnsolvedTypeVariable, UnboundLexer, UnboundVariable } from "./Exceptions.fs.js";
import { join, printf, toText } from "../fable_modules/fable-library.3.7.5/String.js";
import { build, peof, keep_token, pstring, popt, por, pseq, pany, pstar, pplus, pinterval, pcompl } from "../FableSedlex/Sedlex.fs.js";
import { sort, sortInPlaceBy, map as map_2 } from "../fable_modules/fable-library.3.7.5/Array.js";
import { codegen_python } from "../FableSedlex/CodeGen.Python.fs.js";

export function codegen(analyzer, cg_options, langName, stmts) {
    const rename_var = defaultArg(cg_options.rename_var, (x) => x);
    const rename_ctor = defaultArg(cg_options.rename_ctor, (x_1) => x_1);
    const rename_field = defaultArg(cg_options.rename_field, (x_2) => x_2);
    const rename_type = defaultArg(cg_options.rename_type, (x_3) => x_3);
    const PythonPackage_Sedlex = "_tbnf.FableSedlex";
    let importNames = empty();
    const export_Parser = "parser";
    const export_Grammar = "grammar";
    const export_names = ofArray([export_Parser, export_Grammar], {
        Compare: comparePrimitives,
    });
    const export_tokenmaps = "tokenmaps";
    const export_tokenreprs = "tokenreprs";
    const abandoned_names = ofArray([export_tokenmaps, export_tokenreprs, "False", "None", "True", "and", "as", "assert", "async", "await", "break", "class", "continue", "def", "del", "elif", "else", "except", "finally", "for", "from", "global", "if", "import", "in", "is", "lambda", "nonlocal", "not", "or", "pass", "raise", "return", "try", "while", "with", "yield", "match", "case"], {
        Compare: comparePrimitives,
    });
    let symmap = empty_1();
    let toplevel_transformer = empty();
    let currentPos = analyzer.currentPos;
    let lexerMaps = empty_1();
    let larkDeclsForNamedTerminals = empty();
    const global_scope = toList(delay(() => map((k) => (Sigma__IsGlobalVariableConstructor_Z721C83C5(analyzer.Sigma, k[0]) ? [k[0], rename_ctor(k[0])] : [k[0], rename_var(k[0])]), Sigma__get_GlobalVariables(analyzer.Sigma))));
    const pythonIdentifierDescr = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF((i, c) => {
        const test = ((isLower(c) ? true : isUnicode(c)) ? true : isUpper(c)) ? true : (c === "_");
        return (i === 0) ? test : (test ? true : isDigit(c));
    }, (i_1, c_1) => (isDigit(c_1) ? (`_${((i_1 * c_1.charCodeAt(0)) + 7)}_`) : (`_${c_1.charCodeAt(0)}_`))), new NameMangling_nameEnv(ofList(map_1((tuple) => tuple[1], global_scope), {
        Compare: comparePrimitives,
    })));
    const larkLexerIdentifierDescr = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF((i_2, c_2) => ((i_2 === 0) ? isUpper(c_2) : ((isUpper(c_2) ? true : (c_2 === "_")) ? true : isDigit(c_2))), (_arg1, c_3) => (isLower(c_3) ? c_3.toUpperCase() : (("_" + NameMangling_maskChar(65, 90, c_3.charCodeAt(0))) + "_"))), new NameMangling_nameEnv(ofArray(["UNKNOWN"], {
        Compare: comparePrimitives,
    })));
    const larkParserIdentifierDescr = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF((i_3, c_4) => ((i_3 === 0) ? isLower(c_4) : ((isLower(c_4) ? true : (c_4 === "_")) ? true : isDigit(c_4))), (_arg2, c_5) => (isUpper(c_5) ? c_5.toLowerCase() : (("_" + NameMangling_maskChar(97, 122, c_5.charCodeAt(0))) + "_"))), new NameMangling_nameEnv(ofArray(["start"], {
        Compare: comparePrimitives,
    })));
    let mangle;
    const abandoned_names_1 = union(abandoned_names, export_names);
    mangle = ((idr) => ((n) => NameMangling_mangle(abandoned_names_1, idr, n)));
    const cg_symbol = (x_9) => {
        const matchValue = tryFind(x_9, symmap);
        if (matchValue == null) {
            let valid_py_ident;
            if (x_9.tag === 0) {
                valid_py_ident = (x_9.fields[1] ? mangle(larkLexerIdentifierDescr)(("\"" + x_9.fields[0]) + "\"") : ((x_9.fields[0] === "EOF") ? "EOF" : mangle(larkLexerIdentifierDescr)(x_9.fields[0])));
            }
            else if (x_9.tag === 1) {
                valid_py_ident = ((x_9.fields[0] === "start") ? "start" : mangle(larkParserIdentifierDescr)(x_9.fields[0]));
            }
            else {
                throw (new Error("macro not processed"));
            }
            symmap = add(x_9, valid_py_ident, symmap);
            return valid_py_ident;
        }
        else {
            return matchValue;
        }
    };
    const name_of_named_term = (n_2) => cg_symbol(new symbol(0, n_2, false));
    const definePyFunc = (fname, args, body) => vsep(ofArray_1([Doc_op_Addition_Z7CFFAC00(word("def"), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(fname, parens(seplist(word(", "), args))), word(":"))), Doc_op_RightShift_2AAA0F3C(body, 4)]));
    const TREE_NAME = "__tbnf_COMPONENTS";
    const cg_expr = (actionName, scope, expr) => DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, () => {
        let arg20_1;
        const matchValue_1 = expr.node;
        if (matchValue_1.tag === 6) {
            const matchValue_2 = List_tryLookup(matchValue_1.fields[0], scope);
            return (matchValue_2 != null) ? DocBuilder_Builder__Return_1505(DocBuilder_cg, word(matchValue_2)) : DocBuilder_Builder__Return_1505(DocBuilder_cg, (() => {
                throw UnboundVariable(matchValue_1.fields[0]);
            })());
        }
        else if (matchValue_1.tag === 11) {
            return matchValue_1.fields[0] ? DocBuilder_Builder__Return_1505(DocBuilder_cg, word("True")) : DocBuilder_Builder__Return_1505(DocBuilder_cg, word("False"));
        }
        else if (matchValue_1.tag === 3) {
            return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(actionName, scope, matchValue_1.fields[0]), (_arg5) => DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(_arg5, word(".")), word(rename_field(matchValue_1.fields[1])))));
        }
        else if (matchValue_1.tag === 8) {
            return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(toText(printf("%d"))(matchValue_1.fields[0])));
        }
        else if (matchValue_1.tag === 10) {
            return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(toText(printf("%f"))(matchValue_1.fields[0])));
        }
        else if (matchValue_1.tag === 9) {
            return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(escapeString(matchValue_1.fields[0])));
        }
        else if (matchValue_1.tag === 5) {
            const args_3 = map_1((tuple_1) => tuple_1[0], matchValue_1.fields[0]);
            const patternInput = DocBuilder_runCG(cg_expr(actionName, append(toList(delay(() => map((arg_1) => [arg_1, mangle(pythonIdentifierDescr)(arg_1)], args_3))), scope), matchValue_1.fields[1]));
            const func_name = mangle(pythonIdentifierDescr)("lambda");
            return DocBuilder_Builder__Combine_Z5C764E00(DocBuilder_cg, DocBuilder_Builder__Yield_417FD60(DocBuilder_cg, definePyFunc(word(func_name), map_1(word, args_3), vsep(ofArray_1([vsep(patternInput[1]), Doc_op_Addition_Z7CFFAC00(word("return"), patternInput[0])])))), DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, () => DocBuilder_Builder__Return_1505(DocBuilder_cg, word(func_name))));
        }
        else {
            return (matchValue_1.tag === 4) ? DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(actionName, scope, matchValue_1.fields[1]), (_arg6) => {
                const m_name = mangle(pythonIdentifierDescr)(matchValue_1.fields[0]);
                return DocBuilder_Builder__Combine_Z5C764E00(DocBuilder_cg, DocBuilder_Builder__Yield_417FD60(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(m_name), word("=")), _arg6)), DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, () => DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(actionName, cons([matchValue_1.fields[0], m_name], scope), matchValue_1.fields[2]))));
            }) : ((matchValue_1.tag === 2) ? DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, () => DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, matchValue_1.fields[0], (_arg7) => DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(actionName, scope, _arg7))))), (_arg8) => DocBuilder_Builder__Return_1505(DocBuilder_cg, bracket(seplist(word(", "), _arg8)))) : ((matchValue_1.tag === 7) ? DocBuilder_Builder__Return_1505(DocBuilder_cg, word((arg20_1 = ((matchValue_1.fields[0] - 1) | 0), toText(printf("%s[%d]"))(TREE_NAME)(arg20_1)))) : ((matchValue_1.tag === 1) ? DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, () => DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, matchValue_1.fields[0], (_arg9) => DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(actionName, scope, _arg9))))), (_arg10) => {
                const elts$0027_1 = _arg10;
                return (!isEmpty(elts$0027_1)) ? (isEmpty(tail(elts$0027_1)) ? DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(Doc_op_Addition_Z7CFFAC00(head(elts$0027_1), word(",")))) : DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(seplist(word(", "), elts$0027_1)))) : DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(empty_2));
            }) : DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(actionName, scope, matchValue_1.fields[0]), (_arg2_1) => DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, () => DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, matchValue_1.fields[1], (_arg3) => DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(actionName, scope, _arg3))))), (_arg4) => DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Multiply_Z7CFFAC00(_arg2_1, parens(seplist(word(", "), _arg4)))))))));
        }
    }));
    const mk_lexer = (def) => {
        const op_Dereference = mk_lexer;
        if (def.tag === 9) {
            return op_Dereference(def.fields[0]);
        }
        else if (def.tag === 5) {
            return pcompl(op_Dereference(def.fields[0]));
        }
        else if (def.tag === 0) {
            return pinterval(48, 57);
        }
        else if (def.tag === 6) {
            return pplus(op_Dereference(def.fields[0]));
        }
        else if (def.tag === 7) {
            return pstar(op_Dereference(def.fields[0]));
        }
        else if (def.tag === 1) {
            return pany;
        }
        else if (def.tag === 11) {
            const matchValue_4 = tryFind(def.fields[0], lexerMaps);
            if (matchValue_4 == null) {
                const exn = UnboundLexer(def.fields[0]);
                throw exn;
            }
            else {
                return matchValue_4;
            }
        }
        else if (def.tag === 2) {
            return pseq(toArray(map_1(mk_lexer, def.fields[0])));
        }
        else if (def.tag === 10) {
            return pinterval(def.fields[0], def.fields[1]);
        }
        else if (def.tag === 4) {
            if (!isEmpty(def.fields[0])) {
                return fold(por, op_Dereference(head(def.fields[0])), map_1(mk_lexer, tail(def.fields[0])));
            }
            else {
                throw (new Error("impossible: alternatives cannot be empty."));
            }
        }
        else if (def.tag === 8) {
            return popt(op_Dereference(def.fields[0]));
        }
        else {
            return pstring(def.fields[0]);
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
                return fold((a_2, b_1) => (`por(${a_2}, ${b_1})`), op_Dereference_1(head(def_1.fields[0])), map_1(mk_lexer_debug, tail(def_1.fields[0])));
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
    const filename_lexer = toText(printf("%s_lexer"))(langName);
    const filename_require = toText(printf("%s_require"))(langName);
    const filename_python = toText(printf("%s_parser"))(langName);
    const filename_constructors = toText(printf("%s_construct"))(langName);
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
    const _cg_type = (t) => {
        let pattern_matching_result, n_4, args_4, r_2;
        if (t.tag === 4) {
            pattern_matching_result = 1;
        }
        else if (t.tag === 0) {
            pattern_matching_result = 2;
        }
        else if (t.tag === 3) {
            pattern_matching_result = 3;
            args_4 = t.fields[0];
            r_2 = t.fields[1];
        }
        else if (t.tag === 2) {
            if ($007CTTuple$007C_$007C(t.fields[0]) != null) {
                if (isEmpty(t.fields[1])) {
                    pattern_matching_result = 4;
                }
                else {
                    pattern_matching_result = 5;
                }
            }
            else {
                pattern_matching_result = 5;
            }
        }
        else {
            pattern_matching_result = 0;
            n_4 = t.fields[0];
        }
        switch (pattern_matching_result) {
            case 0: {
                return rename_type(n_4);
            }
            case 1: {
                return "object";
            }
            case 2: {
                const exn_1 = new UnsolvedTypeVariable();
                throw exn_1;
            }
            case 3: {
                const r_3 = _cg_type(r_2);
                const it = join(", ", map_1((tupledArg) => _cg_type(tupledArg[1]), args_4));
                return `${modulevar_typing}.Callable[[${it}], ${r_3}]`;
            }
            case 4: {
                throw (new Error("0-element tuple type detected"));
            }
            case 5: {
                let pattern_matching_result_1, args_6;
                if (t.tag === 2) {
                    if ($007CTTuple$007C_$007C(t.fields[0]) != null) {
                        pattern_matching_result_1 = 0;
                        args_6 = t.fields[1];
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
                        const it_1 = join(", ", map_1(_cg_type, args_6));
                        return ((`${modulevar_typing}.Tuple[`) + it_1) + "]";
                    }
                    case 1: {
                        if (t.tag === 2) {
                            const it_2 = join(", ", map_1(_cg_type, t.fields[1]));
                            return ((_cg_type(t.fields[0]) + "[") + it_2) + "]";
                        }
                        else {
                            throw (new Error("Match failure"));
                        }
                    }
                }
            }
        }
    };
    const cg_type = (t_1) => _cg_type(monot__Prune(t_1));
    const file_grammar = vsep(ofArray_1(map_2((stmt) => {
        switch (stmt.tag) {
            case 2: {
                const decl_1 = stmt.fields[0];
                currentPos = decl_1.pos;
                lexerMaps = add(decl_1.lhs, mk_lexer(decl_1.define), lexerMaps);
                if (contains(decl_1.lhs, analyzer.ReferencedNamedTokens)) {
                    const tname = name_of_named_term(decl_1.lhs);
                    larkDeclsForNamedTerminals = cons(tname, larkDeclsForNamedTerminals);
                }
                return empty_2;
            }
            case 6: {
                currentPos = stmt.fields[0].pos;
                return empty_2;
            }
            case 3: {
                importNames = cons(rename_var(stmt.fields[0].ident), importNames);
                return empty_2;
            }
            case 4: {
                return empty_2;
            }
            case 5: {
                const decl_5 = stmt.fields[0];
                if (decl_5.external) {
                    importNames = cons(rename_type(decl_5.ident), importNames);
                }
                return empty_2;
            }
            case 0: {
                throw (new Error("macro not processed"));
            }
            default: {
                const decl = stmt.fields[0];
                currentPos = decl.pos;
                const ntname_1 = cg_symbol(new symbol(1, decl.lhs));
                let idx_1 = 0;
                const body_4 = align(vsep(mapIndexed((i_6, e_1) => Doc_op_Addition_Z7CFFAC00((i_6 === 0) ? word(":") : word("|"), e_1), toList(delay(() => collect((matchValue_3) => {
                    const production = matchValue_3[1];
                    currentPos = matchValue_3[0];
                    let actionName_2;
                    const idx = idx_1 | 0;
                    actionName_2 = toText(printf("%s_%i"))(ntname_1)(idx);
                    return append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(seplist(word(" "), map_1((arg_2) => word(cg_symbol(arg_2)), production.symbols)), word("-\u003e")), word(actionName_2))), delay(() => {
                        const patternInput_1 = DocBuilder_runCG(cg_expr(actionName_2, global_scope, production.action));
                        const a = definePyFunc(word(actionName_2), ofArray_1([word("self"), word(TREE_NAME)]), vsep(ofArray_1([vsep(patternInput_1[1]), Doc_op_Addition_Z7CFFAC00(word("return"), patternInput_1[0])])));
                        toplevel_transformer = ofArrayWithTail([a, empty_2], toplevel_transformer);
                        idx_1 = ((idx_1 + 1) | 0);
                        return empty_3();
                    }));
                }, decl.define))))));
                return Doc_op_Addition_Z7CFFAC00(word(ntname_1), body_4);
            }
        }
    }, stmts)));
    const import_items = parens(seplist(word(","), map_1(word, importNames)));
    const file_constructors = [filename_constructors + ".py", vsep(toList(delay(() => append_1(singleton(word("from __future__ import annotations as __01asda1ha")), delay(() => append_1(singleton(word(`from lark import Token as ${classvar_LarkToken}`)), delay(() => append_1(singleton(word(`import dataclasses as ${modulevar_dataclass}`)), delay(() => append_1(singleton(word(`import typing as ${modulevar_typing}`)), delay(() => {
        const adtCases = Sigma__GetADTCases(analyzer.Sigma);
        return append_1((!isEmpty(importNames)) ? singleton(Doc_op_Addition_Z7CFFAC00(word(`from .${filename_require} import`), import_items)) : empty_3(), delay(() => append_1(singleton(empty_2), delay(() => append_1(collect((matchValue_5) => {
            const typename$0027 = rename_type(matchValue_5[0]);
            let docCtorNames = empty();
            return append_1(collect((matchValue_6) => {
                const fields = matchValue_6[1];
                const ctorName_1 = rename_ctor(matchValue_6[0]);
                docCtorNames = cons(word(ctorName_1), docCtorNames);
                return append_1(singleton(word(`@${modulevar_dataclass}.dataclass`)), delay(() => append_1((length(fields) === 0) ? append_1(singleton(word(`class ${ctorName_1}:`)), delay(() => singleton(Doc_op_RightShift_2AAA0F3C(word("pass"), 4)))) : append_1(singleton(word(`class ${ctorName_1}:`)), delay(() => singleton(Doc_op_RightShift_2AAA0F3C(vsep(toList(delay(() => collect((matchValue_7) => singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(rename_field(matchValue_7[0])), word(":")), word(cg_type(matchValue_7[1])))), fields)))), 4)))), delay(() => singleton(empty_2)))));
            }, toArray_1(matchValue_5[1])), delay(() => append_1(singleton(word(`if ${modulevar_typing}.TYPE_CHECKING:`)), delay(() => append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(toList(delay(() => {
                let t_3;
                return (!isEmpty(docCtorNames)) ? (isEmpty(tail(docCtorNames)) ? ((t_3 = head(docCtorNames), singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(typename$0027), word("=")), t_3)))) : singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(typename$0027), word("=")), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(`${modulevar_typing}.Union[`), seplist(word(","), docCtorNames)), word("]"))))) : singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(typename$0027), word("=")), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(`${modulevar_typing}.Union[`), seplist(word(","), docCtorNames)), word("]"))));
            }))), 4)), delay(() => append_1(singleton(word("else:")), delay(() => append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(singleton_1(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(typename$0027), word("=")), parens(seplist(word(","), docCtorNames))))), 4)), delay(() => singleton(empty_2)))))))))));
        }, adtCases), delay(() => collect((matchValue_8) => {
            const typename_1 = matchValue_8[0];
            const shape = matchValue_8[1];
            const typename$0027_1 = rename_type(typename_1);
            const varname = rename_var(typename_1);
            return append_1(singleton(word(`@${modulevar_dataclass}.dataclass`)), delay(() => append_1(singleton(word(`class ${typename$0027_1}:`)), delay(() => append_1(isEmpty(shape.fields) ? singleton(Doc_op_RightShift_2AAA0F3C(word("pass"), 4)) : singleton(Doc_op_RightShift_2AAA0F3C(vsep(toList(delay(() => collect((matchValue_9) => {
                const field_1 = rename_field(matchValue_9[0]);
                const t_4 = cg_type(matchValue_9[1]);
                return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(field_1), word(":")), word(t_4)));
            }, shape.fields)))), 4)), delay(() => append_1(singleton(empty_2), delay(() => append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(varname), word("=")), word(typename$0027_1))), delay(() => singleton(empty_2)))))))))));
        }, Sigma__GetRecordTypes(analyzer.Sigma))))))));
    })))))))))))];
    let lexerInfo = empty();
    let tokenNames = empty();
    let tokenReprs = empty();
    let idx_2 = 0;
    let token_id = 0;
    const ReferencedNamedTokens = Array.from(analyzer.ReferencedNamedTokens);
    sortInPlaceBy((k_2) => analyzer.TokenFragments.findIndex((y_5) => (k_2 === y_5)), ReferencedNamedTokens, {
        Compare: comparePrimitives,
    });
    const arr = sort(Array.from(analyzer.LiteralTokens), {
        Compare: comparePrimitives,
    });
    for (let idx_3 = 0; idx_3 <= (arr.length - 1); idx_3++) {
        const k_3 = arr[idx_3];
        const v_4 = pstring(k_3);
        lexerInfo = cons([v_4, new keep_token(1, token_id)], lexerInfo);
        tokenNames = cons(cg_symbol(new symbol(0, k_3, true)), tokenNames);
        tokenReprs = cons(escapeString(k_3), tokenReprs);
        token_id = ((token_id + 1) | 0);
        idx_2 = ((idx_2 + 1) | 0);
    }
    for (let idx_4 = 0; idx_4 <= (ReferencedNamedTokens.length - 1); idx_4++) {
        const k_4 = ReferencedNamedTokens[idx_4];
        const v_5 = FSharpMap__get_Item(lexerMaps, k_4);
        if (contains(k_4, analyzer.IgnoreSet)) {
            lexerInfo = cons([v_5, new keep_token(0)], lexerInfo);
        }
        else {
            lexerInfo = cons([v_5, new keep_token(1, token_id)], lexerInfo);
            tokenNames = cons(name_of_named_term(k_4), tokenNames);
            tokenReprs = cons(k_4, tokenReprs);
            token_id = ((token_id + 1) | 0);
        }
        idx_2 = ((idx_2 + 1) | 0);
    }
    lexerInfo = cons([pany, new keep_token(1, token_id)], lexerInfo);
    tokenNames = cons("UNKNOWN", tokenNames);
    tokenReprs = cons("UNKNOWN", tokenReprs);
    const tokenNames_1 = reverse(tokenNames);
    const tokenReprs_1 = reverse(tokenReprs);
    const lexerInfo_1 = toArray(reverse(cons([peof, new keep_token(1, -1)], lexerInfo)));
    return [file_constructors, [langName + ".lark", vsep(ofArray_1([file_grammar, Doc_op_Addition_Z7CFFAC00(word("%declare"), seplist(word(" "), map_1(word, tokenNames_1)))]))], [filename_lexer + ".py", codegen_python(PythonPackage_Sedlex, build(lexerInfo_1, "the last branch must be a catch-all error case!"))], [filename_python + ".py", vsep(toList(delay(() => append_1(singleton(word("from __future__ import annotations")), delay(() => append_1((!isEmpty(importNames)) ? singleton(Doc_op_Addition_Z7CFFAC00(word(`from .${filename_require} import`), import_items)) : empty_3(), delay(() => append_1(singleton(word(`from .${filename_lexer} import lexall as ${var_lexall}`)), delay(() => append_1(singleton(word(`from .${filename_constructors} import *`)), delay(() => append_1(singleton(word(`from lark.lexer import Lexer as ${classvar_LarkLexer}`)), delay(() => append_1(singleton(word(`from lark import Transformer as ${classvar_LarkTransformer}`)), delay(() => append_1(singleton(word(`from lark import Lark as ${classvar_LarkBuilder}`)), delay(() => append_1(singleton(word(`from ${PythonPackage_Sedlex}.sedlex import from_ustring as ${var_from_ustring}`)), delay(() => append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(var_tokenmaps), word("=")), bracket(seplist(word(", "), map_1((arg_3) => word(escapeString(arg_3)), tokenNames_1))))), delay(() => append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(export_tokenreprs), word("=")), bracket(seplist(word(", "), map_1((arg_4) => word(escapeString(arg_4)), tokenReprs_1))))), delay(() => append_1(singleton(empty_2), delay(() => append_1(singleton(definePyFunc(word(var_construct_token), ofArray_1([word("token_id"), word("lexeme"), word("line"), word("col"), word("span"), word("offset"), word("file")]), vsep(ofArray_1([word(`if token_id == -1: return ${classvar_LarkToken}("EOF", "")`), word(`return ${classvar_LarkToken}(${var_tokenmaps}[token_id], lexeme, offset, line, col, None, None, span + offset)`)])))), delay(() => append_1(singleton(empty_2), delay(() => append_1(singleton(definePyFunc(word(var_iseof), singleton_1(word("token")), word("return token.type == \"EOF\""))), delay(() => append_1(singleton(word(`class ${classvar_SedlexLexer}(${classvar_LarkLexer}):`)), delay(() => append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(ofArray_1([definePyFunc(word("__init__"), ofArray_1([word("self"), word("lex_conf")]), word("pass")), definePyFunc(word("lex"), ofArray_1([word("self"), word("raw_string")]), vsep(ofArray_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("lexbuf"), word("=")), word(`${var_from_ustring}(raw_string)`)), word(`return ${var_lexall}(lexbuf, ${var_construct_token}, ${var_iseof})`)])))])), 4)), delay(() => append_1(singleton(empty_2), delay(() => append_1(singleton(word(`class ${classvar_RBNFTransformer}(${classvar_LarkTransformer}):`)), delay(() => append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(toplevel_transformer), 4)), delay(() => append_1(singleton(Doc_op_RightShift_2AAA0F3C(word("pass"), 4)), delay(() => append_1(singleton(empty_2), delay(() => append_1(singleton(word(`with (__import__('pathlib').Path(__file__).parent /'${langName}.lark').open(encoding='utf8') as __0123fx9:`)), delay(() => append_1(singleton(Doc_op_RightShift_2AAA0F3C(Doc_op_Addition_Z7CFFAC00(word(export_Grammar), word("= __0123fx9.read()")), 4)), delay(() => append_1(singleton(empty_2), delay(() => singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(export_Parser), word("=")), Doc_op_Multiply_Z7CFFAC00(word(classvar_LarkBuilder), parens(seplist(word(", "), ofArray_1([word(export_Grammar), word("start=\u0027start\u0027"), word("parser=\u0027lalr\u0027"), word(`lexer=${classvar_SedlexLexer}`), word(`transformer=${classvar_RBNFTransformer}()`), word("keep_all_tokens=True")])))))))))))))))))))))))))))))))))))))))))))))))))))))))))]];
}

