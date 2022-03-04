from __future__ import annotations
from typing import (List, Callable, Any, Tuple, TypeVar)
from ..fable_modules.fable_library.array import (append, map as map_2)
from ..fable_modules.fable_library.list import (empty, FSharpList, map as map_1, is_empty, head, tail, append as append_1, singleton, to_array, fold, cons, of_array as of_array_1, map_indexed, length, reverse)
from ..fable_modules.fable_library.map import (empty as empty_1, try_find, add, to_array as to_array_1, FSharpMap__get_Item)
from ..fable_modules.fable_library.option import (default_arg, Option, some)
from ..fable_modules.fable_library.seq import (to_list, delay, map, of_list as of_list_1, append as append_2, singleton as singleton_1, collect, empty as empty_3, to_array as to_array_2)
from ..fable_modules.fable_library.set import (of_array, of_list, empty as empty_4, add as add_1, contains)
from ..fable_modules.fable_library.string import (to_text, interpolate, join, printf)
from ..fable_modules.fable_library.util import (compare_primitives, compare, IEnumerable, equals)
from ..FableSedlex.code_gen import (Doc, vsep, word, empty as empty_2, parens, seplist, Doc_op_Addition_Z7CFFAC00, Doc_op_Multiply_Z7CFFAC00, align, Doc_op_RightShift_2AAA0F3C, bracket)
from .analysis import (Analyzer, Sigma__get_GlobalVariables, Sigma__GetADTCases, Shape, Sigma__GetRecordTypes)
from .backends_common import (CodeGenOptions, NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B, NameMangling_nameEnv, NameMangling_IdentifierDescriptor_Create_Z48C5CCEF, NameMangling_IdentifierDescriptor, NameMangling_maskChar, NameMangling_mangle, DocBuilder_Builder__Run_ZD0BB270, DocBuilder_Builder__Delay_Z3A9C5A06, DocBuilder_Builder__Return_1505, DocBuilder_cg, DocBuilder_Builder__Bind_30A200B3, DocBuilder_block_1, DocBuilder_runCG, DocBuilder_Builder__Combine_Z5C764E00, DocBuilder_Builder__Yield_417FD60, DocBuilder_Builder__ReturnFrom_ZD0BB270, DocBuilder_Builder__For_2B96F4AF)
from .exceptions import (UnsolvedTypeVariable, UnboundLexer, UnboundVariable, UnboundNonterminal)
from .grammar import (definition, symbol, position, lexerule, monot, _007CTTuple_007C__007C, monot__prune, TConst_token, production as production_1, expr, node)
from .utils import (is_lower, is_upper, is_unicode, is_digit, escape_string_single_quoted, List_tryLookup, i_to_u4, escape_string)

__A = TypeVar("__A")

__B = TypeVar("__B")

CSharpKeywords : List[str] = ["__arglist", "__makeref", "__reftype", "__refvalue", "abstract", "as", "base", "bool", "break", "byte", "case", "catch", "char", "checked", "class", "const", "continue", "decimal", "default", "delegate", "do", "double", "else", "enum", "event", "explicit", "extern", "false", "finally", "fixed", "float", "for", "foreach", "goto", "if", "implicit", "in", "int", "interface", "internal", "is", "lock", "long", "namespace", "new", "null", "object", "operator", "out", "override", "params", "private", "protected", "public", "readonly", "ref", "return", "sbyte", "sealed", "short", "sizeof", "stackalloc", "static", "string", "struct", "switch", "this", "throw", "true", "try", "typeof", "uint", "ulong", "unchecked", "unsafe", "ushort", "using", "virtual", "volatile", "void", "while"]

def codegen(analyzer: Analyzer, cg_options: CodeGenOptions, lang_name: str, stmts: List[definition]) -> List[Tuple[str, Doc]]:
    def arrow_438(x: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return x
    
    var_renamer : Callable[[str], str] = default_arg(cg_options.rename_var, arrow_438)
    def arrow_439(x_1: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return x_1
    
    rename_ctor : Callable[[str], str] = default_arg(cg_options.rename_ctor, arrow_439)
    def arrow_440(x_2: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return x_2
    
    rename_var : Callable[[str], str] = default_arg(cg_options.rename_var, arrow_440)
    def arrow_441(x_3: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return x_3
    
    rename_field : Callable[[str], str] = default_arg(cg_options.rename_field, arrow_441)
    def arrow_442(x_4: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return x_4
    
    type_renamer : Callable[[str], str] = default_arg(cg_options.rename_type, arrow_442)
    def type_parameter_mangling(x_5: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return "_GEN_" + x_5
    
    import_var_names : FSharpList[str] = empty()
    import_type_names : FSharpList[str] = empty()
    class ObjectExpr444:
        @property
        def Compare(self) -> Any:
            def arrow_443(x_6: str, y: str) -> int:
                return compare_primitives(x_6, y)
            
            return arrow_443
        
    abandoned_names : Any = of_array(append(["result"], CSharpKeywords, None), ObjectExpr444())
    class ObjectExpr446:
        @property
        def Compare(self) -> Any:
            def arrow_445(x_7: symbol, y_1: symbol) -> int:
                return compare(x_7, y_1)
            
            return arrow_445
        
    symmap : Any = empty_1(ObjectExpr446())
    toplevel_transformer : FSharpList[Doc] = empty()
    current_pos : position = analyzer.current_pos
    lexer_maps : FSharpList[Tuple[str, lexerule]] = empty()
    def arrow_448(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> IEnumerable[Tuple[str, str]]:
        def arrow_447(k: Any) -> Tuple[str, str]:
            return (k[0], var_renamer(k[0]))
        
        return map(arrow_447, Sigma__get_GlobalVariables(analyzer.Sigma))
    
    global_scope : FSharpList[Tuple[str, str]] = to_list(delay(arrow_448))
    def arrow_449(tuple: Tuple[str, str], analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return tuple[1]
    
    class ObjectExpr451:
        @property
        def Compare(self) -> Any:
            def arrow_450(x_8: str, y_2: str) -> int:
                return compare_primitives(x_8, y_2)
            
            return arrow_450
        
    def arrow_452(i: int, c: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> bool:
        test : bool = True if (True if (True if (is_lower(c)) else (is_upper(c))) else (is_unicode(c))) else (c == "_")
        return test if (i == 0) else (True if (test) else (is_digit(c)))
    
    def arrow_453(i_1: int, c_1: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return to_text(interpolate("_X%P()_", [i_1])) if (is_digit(c_1)) else (to_text(interpolate("_%P()_", [ord(c_1)])))
    
    csharp_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_452, arrow_453), NameMangling_nameEnv(of_list(map_1(arrow_449, global_scope), ObjectExpr451())))
    class ObjectExpr455:
        @property
        def Compare(self) -> Any:
            def arrow_454(x_9: str, y_3: str) -> int:
                return compare_primitives(x_9, y_3)
            
            return arrow_454
        
    def arrow_456(i_2: int, c_2: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> bool:
        return is_upper(c_2) if (i_2 == 0) else (True if (True if (is_upper(c_2)) else (c_2 == "_")) else (is_digit(c_2)))
    
    def arrow_457(i_3: int, c_3: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return c_3.upper() if (is_lower(c_3)) else (NameMangling_maskChar(ord("A"), ord("Z"), ord(c_3)) + "_" if (i_3 == 0) else (("_" + NameMangling_maskChar(ord("A"), ord("Z"), ord(c_3))) + "_"))
    
    antlr_lexer_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_456, arrow_457), NameMangling_nameEnv(of_array(["EOF"], ObjectExpr455())))
    class ObjectExpr459:
        @property
        def Compare(self) -> Any:
            def arrow_458(x_10: str, y_4: str) -> int:
                return compare_primitives(x_10, y_4)
            
            return arrow_458
        
    def arrow_460(i_4: int, c_4: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> bool:
        return is_lower(c_4) if (i_4 == 0) else (True if (True if (is_lower(c_4)) else (c_4 == "_")) else (is_digit(c_4)))
    
    def arrow_461(_arg1: int, c_5: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return c_5.lower() if (is_upper(c_5)) else (("_" + NameMangling_maskChar(ord("a"), ord("z"), ord(c_5))) + "_")
    
    antlr_grammar_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_460, arrow_461), NameMangling_nameEnv(of_array(["start"], ObjectExpr459())))
    def mangle(idr: NameMangling_IdentifierDescriptor, n: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return NameMangling_mangle(abandoned_names, idr, n)
    
    def cg_symbol(x_11: symbol, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        nonlocal symmap
        match_value : Option[str] = try_find(x_11, symmap)
        if match_value is None:
            valid_py_ident : str
            if x_11.tag == 0:
                define : str = x_11.fields[0]
                valid_py_ident = escape_string_single_quoted(define) if (x_11.fields[1]) else (mangle(antlr_lexer_ident_descr, define))
            
            elif x_11.tag == 1:
                valid_py_ident = mangle(antlr_grammar_ident_descr, x_11.fields[0])
            
            else: 
                raise Exception("macro not processed")
            
            symmap = add(x_11, valid_py_ident, symmap)
            return valid_py_ident
        
        else: 
            return match_value
        
    
    def name_of_named_term(n_2: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return cg_symbol(symbol(0, n_2, False))
    
    def try_lookup(key_mut: __A, x_12_mut: FSharpList[Tuple[__A, __B]], analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Option[__B]:
        while True:
            (key, x_12) = (key_mut, x_12_mut)
            if not is_empty(x_12):
                if equals(head(x_12)[0], key):
                    return some(head(x_12)[1])
                
                elif not is_empty(x_12):
                    key_mut = key
                    x_12_mut = tail(x_12)
                    continue
                
                else: 
                    raise Exception("Match failure")
                
            
            else: 
                return None
            
            break
    
    def _cg_type(t: monot, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        (pattern_matching_result, n_3, a, args, r) = (None, None, None, None, None)
        if t.tag == 4:
            pattern_matching_result = 1
            a = t.fields[0]
        
        elif t.tag == 0:
            pattern_matching_result = 2
        
        elif t.tag == 3:
            pattern_matching_result = 3
            args = t.fields[0]
            r = t.fields[1]
        
        elif t.tag == 2:
            if _007CTTuple_007C__007C(t.fields[0]) is not None:
                if is_empty(t.fields[1]):
                    pattern_matching_result = 4
                
                else: 
                    pattern_matching_result = 5
                
            
            else: 
                pattern_matching_result = 5
            
        
        else: 
            pattern_matching_result = 0
            n_3 = t.fields[0]
        
        if pattern_matching_result == 0:
            return type_renamer(n_3)
        
        elif pattern_matching_result == 1:
            return type_parameter_mangling(a)
        
        elif pattern_matching_result == 2:
            raise UnsolvedTypeVariable()
        
        elif pattern_matching_result == 3:
            def mapping(tupled_arg: Tuple[str, monot], t: monot=t) -> str:
                return _cg_type(tupled_arg[1])
            
            return ("System.Func\u003c" + join(", ", append_1(map_1(mapping, args), singleton(_cg_type(r))))) + "\u003e"
        
        elif pattern_matching_result == 4:
            raise Exception("0-element tuple type detected")
        
        elif pattern_matching_result == 5:
            (pattern_matching_result_1, args_2) = (None, None)
            if t.tag == 2:
                if _007CTTuple_007C__007C(t.fields[0]) is not None:
                    pattern_matching_result_1 = 0
                    args_2 = t.fields[1]
                
                else: 
                    pattern_matching_result_1 = 1
                
            
            else: 
                pattern_matching_result_1 = 1
            
            if pattern_matching_result_1 == 0:
                return ("(" + join(", ", map_1(_cg_type, args_2))) + ")"
            
            elif pattern_matching_result_1 == 1:
                if t.tag == 2:
                    it_2 : str = join(", ", map_1(_cg_type, t.fields[1]))
                    return ((_cg_type(t.fields[0]) + "\u003c") + it_2) + "\u003e"
                
                else: 
                    raise Exception("Match failure")
                
            
        
    
    def cg_type(t_1: monot, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return _cg_type(monot__prune(t_1))
    
    def slot_name(action_name: str, i_5: int, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return to_text(interpolate("%P()__%P()", [action_name, i_5]))
    
    result_name : str = "result"
    def mk_lexer(def_: lexerule, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        if def_.tag == 9:
            return ("(" + mk_lexer(def_.fields[0])) + ")"
        
        elif def_.tag == 5:
            return to_text(interpolate("~%P()", [mk_lexer(def_.fields[0])]))
        
        elif def_.tag == 0:
            return "[0-9]"
        
        elif def_.tag == 6:
            return to_text(interpolate("%P()+", [mk_lexer(def_.fields[0])]))
        
        elif def_.tag == 7:
            return to_text(interpolate("%P()*", [mk_lexer(def_.fields[0])]))
        
        elif def_.tag == 1:
            return "."
        
        elif def_.tag == 11:
            match_value_5 : Option[lexerule] = List_tryLookup(def_.fields[0], lexer_maps)
            if match_value_5 is None:
                raise UnboundLexer(def_.fields[0])
            
            else: 
                return name_of_named_term(def_.fields[0])
            
        
        elif def_.tag == 2:
            return join(" ", to_array(map_1(mk_lexer, def_.fields[0])))
        
        elif def_.tag == 10:
            return to_text(interpolate("[%P()-%P()]", [i_to_u4(def_.fields[0]), i_to_u4(def_.fields[1])]))
        
        elif def_.tag == 4:
            if is_empty(def_.fields[0]):
                raise Exception("impossible: alternatives cannot be empty.")
            
            else: 
                return join(" | ", to_array(map_1(mk_lexer, def_.fields[0])))
            
        
        elif def_.tag == 8:
            return to_text(interpolate("%P()?", [mk_lexer(def_.fields[0])]))
        
        else: 
            return escape_string_single_quoted(def_.fields[0])
        
    
    def mk_lexer_debug(def__6: lexerule, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        op_dereference : Callable[[lexerule], str] = mk_lexer_debug
        if def__6.tag == 9:
            return op_dereference(def__6.fields[0])
        
        elif def__6.tag == 5:
            return to_text(interpolate("pnot(%P())", [op_dereference(def__6.fields[0])]))
        
        elif def__6.tag == 0:
            return "pnumber"
        
        elif def__6.tag == 6:
            return to_text(interpolate("pplus(%P())", [op_dereference(def__6.fields[0])]))
        
        elif def__6.tag == 7:
            return to_text(interpolate("pstar(%P())", [op_dereference(def__6.fields[0])]))
        
        elif def__6.tag == 1:
            return "pany"
        
        elif def__6.tag == 11:
            return def__6.fields[0]
        
        elif def__6.tag == 2:
            return to_text(interpolate("pseq([%P()])", [join(", ", of_list_1(map_1(mk_lexer_debug, def__6.fields[0])))]))
        
        elif def__6.tag == 10:
            return to_text(interpolate("pinterval(%P(), %P())", [def__6.fields[0], def__6.fields[1]]))
        
        elif def__6.tag == 4:
            if not is_empty(def__6.fields[0]):
                def arrow_462(a_2: str, b_2: str, def__6: lexerule=def__6) -> str:
                    return to_text(interpolate("por(%P(), %P())", [a_2, b_2]))
                
                return fold(arrow_462, op_dereference(head(def__6.fields[0])), map_1(mk_lexer_debug, tail(def__6.fields[0])))
            
            else: 
                raise Exception("impossible: alternatives cannot be empty.")
            
        
        elif def__6.tag == 8:
            return to_text(interpolate("popt%P()", [op_dereference(def__6.fields[0])]))
        
        else: 
            return to_text(interpolate("pstring(%P())", [escape_string(def__6.fields[0])]))
        
    
    def simplify_lexerule(x_20: lexerule, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> lexerule:
        if (((x_20.tag == 1) or (x_20.tag == 10)) or (x_20.tag == 11)) or (x_20.tag == 3):
            return x_20
        
        elif x_20.tag == 9:
            return _must_be_atom_rule(x_20.fields[0])
        
        elif x_20.tag == 5:
            return lexerule(5, _must_be_atom_rule(x_20.fields[0]))
        
        elif x_20.tag == 8:
            return lexerule(8, _must_be_atom_rule(x_20.fields[0]))
        
        elif x_20.tag == 6:
            return lexerule(6, _must_be_atom_rule(x_20.fields[0]))
        
        elif x_20.tag == 7:
            return lexerule(7, _must_be_atom_rule(x_20.fields[0]))
        
        elif x_20.tag == 4:
            return lexerule(4, map_1(_must_be_atom_rule, x_20.fields[0]))
        
        elif x_20.tag == 2:
            return lexerule(2, map_1(_must_be_atom_rule, x_20.fields[0]))
        
        else: 
            return x_20
        
    
    def _must_be_atom_rule(x_25_mut: lexerule, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> lexerule:
        while True:
            (x_25,) = (x_25_mut,)
            if (((x_25.tag == 1) or (x_25.tag == 10)) or (x_25.tag == 11)) or (x_25.tag == 3):
                return x_25
            
            elif x_25.tag == 5:
                return lexerule(5, _must_be_atom_rule(x_25.fields[0]))
            
            elif x_25.tag == 8:
                return lexerule(8, _must_be_atom_rule(x_25.fields[0]))
            
            elif x_25.tag == 6:
                return lexerule(6, _must_be_atom_rule(x_25.fields[0]))
            
            elif x_25.tag == 7:
                return lexerule(7, _must_be_atom_rule(x_25.fields[0]))
            
            elif x_25.tag == 4:
                return lexerule(9, lexerule(4, map_1(_must_be_atom_rule, x_25.fields[0])))
            
            elif x_25.tag == 2:
                return lexerule(9, lexerule(2, map_1(_must_be_atom_rule, x_25.fields[0])))
            
            elif x_25.tag == 9:
                x_25_mut = x_25.fields[0]
                continue
            
            else: 
                return x_25
            
            break
    
    doc_ctor_wrap_funcs : FSharpList[Tuple[str, str, str, FSharpList[Tuple[Doc, Doc]], Doc]] = empty()
    def arrow_484(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> IEnumerable[Doc]:
        def arrow_483(_unit: Any=None) -> IEnumerable[Doc]:
            def arrow_482(_unit: Any=None) -> IEnumerable[Doc]:
                def arrow_481(_unit: Any=None) -> IEnumerable[Doc]:
                    adt_cases : FSharpList[Tuple[str, Any]] = Sigma__GetADTCases(analyzer.Sigma)
                    def arrow_480(_unit: Any=None) -> IEnumerable[Doc]:
                        def arrow_479(_unit: Any=None) -> IEnumerable[Doc]:
                            def arrow_470(match_value_6: Tuple[str, Any]) -> IEnumerable[Doc]:
                                typename_0027 : str = type_renamer(match_value_6[0])
                                def arrow_469(_unit: Any=None) -> IEnumerable[Doc]:
                                    def arrow_467(match_value_7: Tuple[str, FSharpList[Tuple[str, monot]]]) -> IEnumerable[Doc]:
                                        ctor_name : str = match_value_7[0]
                                        def arrow_463(tupled_arg_2: Tuple[str, monot]) -> Tuple[Doc, Doc]:
                                            return (word(rename_field(tupled_arg_2[0])), word(cg_type(tupled_arg_2[1])))
                                        
                                        fields_1 : FSharpList[Tuple[Doc, Doc]] = map_1(arrow_463, match_value_7[1])
                                        ctor_name_0027 : str = rename_ctor(ctor_name)
                                        def arrow_465(_unit: Any=None) -> IEnumerable[Doc]:
                                            def arrow_464(match_value_8: Tuple[Doc, Doc]) -> IEnumerable[Doc]:
                                                return singleton_1(Doc_op_Addition_Z7CFFAC00(match_value_8[1], match_value_8[0]))
                                            
                                            return collect(arrow_464, fields_1)
                                        
                                        func_params : Doc = parens(seplist(word(","), to_list(delay(arrow_465))))
                                        def arrow_466(_unit: Any=None) -> IEnumerable[Doc]:
                                            nonlocal doc_ctor_wrap_funcs
                                            ret_t : Doc = word(typename_0027)
                                            doc_ctor_wrap_funcs = cons(("", rename_ctor(ctor_name), ctor_name_0027, fields_1, ret_t), doc_ctor_wrap_funcs)
                                            return empty_3()
                                        
                                        return append_2(singleton_1(Doc_op_Addition_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(to_text(interpolate("public partial record %P()", [ctor_name_0027]))), func_params), word(to_text(interpolate(": %P();", [typename_0027]))))), delay(arrow_466))
                                    
                                    def arrow_468(_unit: Any=None) -> IEnumerable[Doc]:
                                        return singleton_1(empty_2)
                                    
                                    return append_2(collect(arrow_467, to_array_1(match_value_6[1])), delay(arrow_468))
                                
                                return append_2(singleton_1(word(to_text(interpolate("public partial interface %P() {  }", [typename_0027])))), delay(arrow_469))
                            
                            def arrow_478(_unit: Any=None) -> IEnumerable[Doc]:
                                def arrow_476(match_value_9: Tuple[str, Shape]) -> IEnumerable[Doc]:
                                    typename_1 : str = match_value_9[0]
                                    shape : Shape = match_value_9[1]
                                    typename_0027_1 : str = type_renamer(typename_1)
                                    varname : str = rename_var(typename_1)
                                    pattern_input_2 : Tuple[str, Doc]
                                    if is_empty(shape.parameters):
                                        pattern_input_2 = ("", word(typename_0027_1))
                                    
                                    else: 
                                        def mapping_7(s_10: str) -> str:
                                            return type_parameter_mangling(s_10)
                                        
                                        tparams_1 : str = ("\u003c" + join(", ", map_1(mapping_7, shape.parameters))) + "\u003e"
                                        pattern_input_2 = (tparams_1, word(to_text(interpolate("%P()\u003c%P()\u003e", [typename_0027_1, tparams_1]))))
                                    
                                    tparams_2 : str = pattern_input_2[0]
                                    def arrow_472(_unit: Any=None) -> IEnumerable[Tuple[Doc, Doc]]:
                                        def arrow_471(match_value_10: Tuple[str, monot]) -> IEnumerable[Tuple[Doc, Doc]]:
                                            return singleton_1((word(rename_field(match_value_10[0])), word(cg_type(match_value_10[1]))))
                                        
                                        return collect(arrow_471, shape.fields)
                                    
                                    fields_2 : FSharpList[Tuple[Doc, Doc]] = to_list(delay(arrow_472))
                                    def arrow_474(_unit: Any=None) -> IEnumerable[Doc]:
                                        def arrow_473(match_value_11: Tuple[Doc, Doc]) -> IEnumerable[Doc]:
                                            return singleton_1(Doc_op_Addition_Z7CFFAC00(match_value_11[1], match_value_11[0]))
                                        
                                        return collect(arrow_473, fields_2)
                                    
                                    func_params_1 : Doc = parens(seplist(word(","), to_list(delay(arrow_474))))
                                    def arrow_475(_unit: Any=None) -> IEnumerable[Doc]:
                                        nonlocal doc_ctor_wrap_funcs
                                        doc_ctor_wrap_funcs = cons((tparams_2, varname, typename_0027_1, fields_2, pattern_input_2[1]), doc_ctor_wrap_funcs)
                                        return empty_3()
                                    
                                    return append_2(singleton_1(Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(to_text(interpolate("public partial record %P()", [typename_0027_1]))), word(tparams_2)), func_params_1), word(";"))), delay(arrow_475))
                                
                                def arrow_477(_unit: Any=None) -> IEnumerable[Doc]:
                                    return singleton_1(word("}"))
                                
                                return append_2(collect(arrow_476, Sigma__GetRecordTypes(analyzer.Sigma)), delay(arrow_477))
                            
                            return append_2(collect(arrow_470, adt_cases), delay(arrow_478))
                        
                        return append_2(singleton_1(word(to_text(interpolate("namespace %P(){", [lang_name])))), delay(arrow_479))
                    
                    return append_2(singleton_1(empty_2), delay(arrow_480))
                
                return append_2(singleton_1(word("using System;")), delay(arrow_481))
            
            return append_2(singleton_1(word("using System.Collections.Generic;")), delay(arrow_482))
        
        return append_2(singleton_1(word("using Antlr4.Runtime;")), delay(arrow_483))
    
    file_constructors : Tuple[str, Doc] = (to_text(interpolate("%P().Constructor.", [lang_name])) + ".cs", vsep(to_list(delay(arrow_484))))
    def parens_if_lor(x_31: lexerule, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Doc:
        if True if (x_31.tag == 4) else (False):
            return parens(word(mk_lexer(x_31)))
        
        else: 
            return word(mk_lexer(x_31))
        
    
    match_value_12 : Option[monot] = try_find("start", analyzer.Omega)
    if match_value_12 is not None:
        start_t : monot = match_value_12
        def cg_stmt(stmt: definition, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Doc:
            nonlocal current_pos, lexer_maps, import_var_names, import_type_names
            if stmt.tag == 2:
                decl_1 : dict[str, Any] = stmt.fields[0]
                current_pos = decl_1["pos"]
                lexer_maps = cons((decl_1["lhs"], decl_1["define"]), lexer_maps)
                return empty_2
            
            elif stmt.tag == 6:
                current_pos = stmt.fields[0]["pos"]
                return vsep(empty())
            
            elif stmt.tag == 4:
                current_pos = stmt.fields[0]["pos"]
                return vsep(empty())
            
            elif stmt.tag == 3:
                import_var_names = cons(var_renamer(stmt.fields[0]["ident"]), import_var_names)
                return vsep(empty())
            
            elif stmt.tag == 5:
                import_type_names = cons(type_renamer(stmt.fields[0]["ident"]), import_type_names)
                return vsep(empty())
            
            elif stmt.tag == 0:
                raise Exception("macro not processed")
            
            else: 
                decl : dict[str, Any] = stmt.fields[0]
                current_pos = decl["pos"]
                lhs : str = decl["lhs"]
                ntname_1 : str = cg_symbol(symbol(1, lhs))
                t_3 : monot
                _arg1_1 : symbol = symbol(1, lhs)
                if _arg1_1.tag == 0:
                    t_3 = TConst_token
                
                elif _arg1_1.tag == 1:
                    t_3 = FSharpMap__get_Item(analyzer.Omega, _arg1_1.fields[0])
                
                else: 
                    raise Exception("macro not processed")
                
                idx_1 : int = 0
                def mapping_6(i_10: int, e_1: Doc, stmt: definition=stmt) -> Doc:
                    return Doc_op_Addition_Z7CFFAC00(word(":") if (i_10 == 0) else (word("|")), e_1)
                
                def arrow_539(stmt: definition=stmt) -> IEnumerable[Doc]:
                    def arrow_538(match_value_4: Tuple[position, production_1]) -> IEnumerable[Doc]:
                        nonlocal current_pos
                        action_name_3 : str
                        idx : int = idx_1 or 0
                        action_name_3 = to_text(printf("%s_%i"))(ntname_1)(idx)
                        current_pos = match_value_4[0]
                        def arrow_536(_unit: Any=None) -> Doc:
                            prod : production_1 = match_value_4[1]
                            action_name_2 : str = action_name_3
                            pattern_input_1 : Tuple[Any, Tuple[Doc, FSharpList[Doc]]]
                            curr_expr : expr = prod.action
                            def arrow_486(_unit: Any=None) -> IEnumerable[bool]:
                                def arrow_485(sym: symbol) -> bool:
                                    return True if (sym.tag == 0) else (False)
                                
                                return map(arrow_485, prod.symbols)
                            
                            is_terminal : List[bool] = to_array_2(delay(arrow_486))
                            class ObjectExpr488:
                                @property
                                def Compare(self) -> Any:
                                    def arrow_487(x_13: int, y_5: int) -> int:
                                        return compare_primitives(x_13, y_5)
                                    
                                    return arrow_487
                                
                            used_slots : Any = empty_4(ObjectExpr488())
                            def cg_expr(scope_1: FSharpList[Tuple[str, str]], curr_expr_1: expr) -> DocBuilder_block_1[Doc]:
                                def arrow_534(scope_1: FSharpList[Tuple[str, str]]=scope_1, curr_expr_1: expr=curr_expr_1) -> DocBuilder_block_1[Doc]:
                                    nonlocal used_slots
                                    match_value_1 : node = curr_expr_1.node
                                    if match_value_1.tag == 6:
                                        match_value_2 : Option[str] = try_lookup(match_value_1.fields[0], scope_1)
                                        if match_value_2 is not None:
                                            v_1 : str = match_value_2
                                            def arrow_489(_unit: Any=None) -> Doc:
                                                type_args : Doc
                                                def mapping_4(arg_1: monot) -> Doc:
                                                    return word(cg_type(arg_1))
                                                
                                                def mapping_3(t_2: monot) -> monot:
                                                    return monot__prune(t_2)
                                                
                                                lst : FSharpList[Doc] = map_1(mapping_4, map_1(mapping_3, match_value_1.fields[1].contents))
                                                type_args = seplist(word(", "), lst)
                                                return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(v_1), word("\u003c")), type_args), word("\u003e"))
                                            
                                            return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(v_1) if (length(match_value_1.fields[1].contents) == 0) else (arrow_489()))
                                        
                                        else: 
                                            def arrow_490(_unit: Any=None) -> Doc:
                                                raise UnboundVariable(match_value_1.fields[0])
                                            
                                            return DocBuilder_Builder__Return_1505(DocBuilder_cg, arrow_490())
                                        
                                    
                                    elif match_value_1.tag == 11:
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, word("true")) if (match_value_1.fields[0]) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, word("false")))
                                    
                                    elif match_value_1.tag == 3:
                                        def arrow_491(_arg6: Doc) -> DocBuilder_block_1[Doc]:
                                            return DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(_arg6, word(".")), word(match_value_1.fields[1])))
                                        
                                        return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(scope_1, match_value_1.fields[0]), arrow_491)
                                    
                                    elif match_value_1.tag == 8:
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(to_text(printf("%d"))(match_value_1.fields[0])))
                                    
                                    elif match_value_1.tag == 10:
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(to_text(printf("%f"))(match_value_1.fields[0])))
                                    
                                    elif match_value_1.tag == 9:
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(escape_string(match_value_1.fields[0])))
                                    
                                    elif match_value_1.tag == 5:
                                        def arrow_493(_unit: Any=None) -> IEnumerable[Tuple[str, str]]:
                                            def arrow_492(match_value_3: Tuple[str, monot]) -> IEnumerable[Tuple[str, str]]:
                                                arg_2 : str = match_value_3[0]
                                                return singleton_1((arg_2, mangle(csharp_ident_descr, arg_2)))
                                            
                                            return collect(arrow_492, match_value_1.fields[0])
                                        
                                        pattern_input : Tuple[Doc, FSharpList[Doc]] = DocBuilder_runCG(cg_expr(append_1(to_list(delay(arrow_493)), scope_1), match_value_1.fields[1]))
                                        def arrow_495(_unit: Any=None) -> Doc:
                                            body : Doc = vsep(of_array_1([vsep(pattern_input[1]), Doc_op_Addition_Z7CFFAC00(word("return"), Doc_op_Multiply_Z7CFFAC00(pattern_input[0], word(";")))]))
                                            def arrow_494(tupled_arg_1: Tuple[str, monot]) -> Doc:
                                                return word((cg_type(tupled_arg_1[1]) + " ") + tupled_arg_1[0])
                                            
                                            anns : FSharpList[Doc] = map_1(arrow_494, match_value_1.fields[0])
                                            return parens(vsep(of_array_1([Doc_op_Multiply_Z7CFFAC00(parens(seplist(word(", "), anns)), word("=\u003e")), Doc_op_RightShift_2AAA0F3C(body, 4)])))
                                        
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, arrow_495())
                                    
                                    elif match_value_1.tag == 4:
                                        def arrow_497(_arg7: Doc) -> DocBuilder_block_1[Doc]:
                                            m_name : str = mangle(csharp_ident_descr, match_value_1.fields[0])
                                            def arrow_496(_unit: Any=None) -> DocBuilder_block_1[Doc]:
                                                return DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(cons((match_value_1.fields[0], m_name), scope_1), match_value_1.fields[2]))
                                            
                                            return DocBuilder_Builder__Combine_Z5C764E00(DocBuilder_cg, DocBuilder_Builder__Yield_417FD60(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(cg_type(match_value_1.fields[1].t)), word(m_name)), word("=")), Doc_op_Multiply_Z7CFFAC00(_arg7, word(";")))), DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_496))
                                        
                                        return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(scope_1, match_value_1.fields[1]), arrow_497)
                                    
                                    elif match_value_1.tag == 2:
                                        def arrow_510(_unit: Any=None) -> DocBuilder_block_1[FSharpList[Doc]]:
                                            def arrow_508(_arg8: expr) -> DocBuilder_block_1[Doc]:
                                                return DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(scope_1, _arg8))
                                            
                                            return DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, match_value_1.fields[0], arrow_508)
                                        
                                        def arrow_516(_arg9: FSharpList[Doc]) -> DocBuilder_block_1[Doc]:
                                            return DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("new"), word(cg_type(curr_expr_1.t))), word("{")), seplist(word(","), _arg9)), word("}")))
                                        
                                        return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_510)), arrow_516)
                                    
                                    elif match_value_1.tag == 7:
                                        n_5 : str = slot_name(action_name_2, match_value_1.fields[0])
                                        used_slots = add_1(match_value_1.fields[0], used_slots)
                                        v_2 : Doc = word(to_text(interpolate("_localctx.%P()", [n_5])))
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, v_2 if (is_terminal[match_value_1.fields[0] - 1]) else (Doc_op_Multiply_Z7CFFAC00(v_2, word(".result"))))
                                    
                                    else: 
                                        def arrow_526(_unit: Any=None) -> DocBuilder_block_1[FSharpList[Doc]]:
                                            def arrow_525(_arg10: expr) -> DocBuilder_block_1[Doc]:
                                                return DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(scope_1, _arg10))
                                            
                                            return DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, match_value_1.fields[0], arrow_525)
                                        
                                        def arrow_527(_arg11: FSharpList[Doc]) -> DocBuilder_block_1[Doc]:
                                            return DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(seplist(word(", "), _arg11)))
                                        
                                        def arrow_533(_arg2_1: Doc) -> DocBuilder_block_1[Doc]:
                                            def arrow_530(_unit: Any=None) -> DocBuilder_block_1[FSharpList[Doc]]:
                                                def arrow_529(_arg3: expr) -> DocBuilder_block_1[Doc]:
                                                    arg : expr = _arg3
                                                    def arrow_528(_arg4: Doc) -> DocBuilder_block_1[Doc]:
                                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(parens(word(cg_type(arg.t))), _arg4))
                                                    
                                                    return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(scope_1, arg), arrow_528)
                                                
                                                return DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, match_value_1.fields[1], arrow_529)
                                            
                                            def arrow_531(_arg5: FSharpList[Doc]) -> DocBuilder_block_1[Doc]:
                                                return DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(word(to_text(interpolate("(%P())", [cg_type(curr_expr_1.t)]))), Doc_op_Multiply_Z7CFFAC00(_arg2_1, parens(seplist(word(", "), _arg5)))))
                                            
                                            return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_530)), arrow_531)
                                        
                                        return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_526)), arrow_527) if (match_value_1.tag == 1) else (DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(scope_1, match_value_1.fields[0]), arrow_533))
                                    
                                
                                return DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_534))
                            
                            snd : Tuple[Doc, FSharpList[Doc]] = DocBuilder_runCG(cg_expr(global_scope, curr_expr))
                            pattern_input_1 = (used_slots, snd)
                            def arrow_535(_unit: Any=None) -> Doc:
                                def mapping_5(i_8: int, s_5: symbol) -> Doc:
                                    i_9 : int = (i_8 + 1) or 0
                                    sym_1 : Doc = word(cg_symbol(s_5))
                                    if contains(i_9, pattern_input_1[0]):
                                        return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(slot_name(action_name_2, i_9)), word("=")), sym_1)
                                    
                                    else: 
                                        return sym_1
                                    
                                
                                lst_1 : FSharpList[Doc] = map_indexed(mapping_5, prod.symbols)
                                return seplist(word(" "), lst_1)
                            
                            return Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(arrow_535(), word("{")), Doc_op_RightShift_2AAA0F3C(vsep(of_array_1([empty_2, Doc_op_RightShift_2AAA0F3C(vsep(of_array_1([vsep(pattern_input_1[1][1]), Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("$" + result_name), word("=")), Doc_op_Multiply_Z7CFFAC00(pattern_input_1[1][0], word(";")))])), 4), word("}")])), 12))
                        
                        def arrow_537(_unit: Any=None) -> IEnumerable[Doc]:
                            nonlocal idx_1
                            idx_1 = (idx_1 + 1) or 0
                            return empty_3()
                        
                        return append_2(singleton_1(arrow_536()), delay(arrow_537))
                    
                    return collect(arrow_538, decl["define"])
                
                body_3 : Doc = align(vsep(map_indexed(mapping_6, to_list(delay(arrow_539)))))
                return vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(ntname_1), word("returns")), bracket(Doc_op_Addition_Z7CFFAC00(word(cg_type(t_3)), word(result_name)))), Doc_op_RightShift_2AAA0F3C(body_3, 4), word(";")]))
            
        
        file_grammar : Doc = vsep(of_array_1(map_2(cg_stmt, stmts, None)))
        def arrow_545(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> IEnumerable[Doc]:
            def arrow_544(match_value_13: Tuple[str, lexerule]) -> IEnumerable[Doc]:
                k_1 : str = match_value_13[0]
                v_4 : lexerule = simplify_lexerule(match_value_13[1])
                n_6 : str = name_of_named_term(k_1)
                return singleton_1(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(n_6), word(":")), parens_if_lor(v_4)), word("-\u003e channel(HIDDEN);"))) if (contains(k_1, analyzer.IgnoreSet)) else (singleton_1(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(n_6), word(":")), word(mk_lexer(v_4))), word(";"))) if (contains(k_1, analyzer.ReferencedNamedTokens)) else (singleton_1(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("fragment"), word(n_6)), word(":")), parens_if_lor(v_4)), word(";")))))
            
            return collect(arrow_544, reverse(lexer_maps))
        
        lexer_defs : FSharpList[Doc] = to_list(delay(arrow_545))
        start_mangled : str = cg_symbol(symbol(1, "start"))
        def arrow_568(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> IEnumerable[Doc]:
            def arrow_567(_unit: Any=None) -> IEnumerable[Doc]:
                def arrow_566(_unit: Any=None) -> IEnumerable[Doc]:
                    def arrow_565(_unit: Any=None) -> IEnumerable[Doc]:
                        def arrow_557(match_value_14: Tuple[str, str, str, FSharpList[Tuple[Doc, Doc]], Doc]) -> IEnumerable[Doc]:
                            ret_t_2 : Doc = match_value_14[4]
                            fields_3 : FSharpList[Tuple[Doc, Doc]] = match_value_14[3]
                            def arrow_547(tupled_arg_3: Tuple[Doc, Doc]) -> Doc:
                                return Doc_op_Addition_Z7CFFAC00(tupled_arg_3[1], tupled_arg_3[0])
                            
                            func_params_2 : Doc = parens(seplist(word(","), map_1(arrow_547, fields_3)))
                            def arrow_549(tupled_arg_4: Tuple[Doc, Doc]) -> Doc:
                                return tupled_arg_4[0]
                            
                            args_10 : Doc = parens(seplist(word(","), map_1(arrow_549, fields_3)))
                            def arrow_556(_unit: Any=None) -> IEnumerable[Doc]:
                                def arrow_555(_unit: Any=None) -> IEnumerable[Doc]:
                                    def arrow_554(_unit: Any=None) -> IEnumerable[Doc]:
                                        def arrow_551(_unit: Any=None) -> IEnumerable[Doc]:
                                            return singleton_1(word("}"))
                                        
                                        return append_2(singleton_1(Doc_op_RightShift_2AAA0F3C(vsep(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("return"), parens(ret_t_2)), word("new")), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(match_value_14[2]), args_10), word(";"))))), 4)), delay(arrow_551))
                                    
                                    return append_2(singleton_1(word("{")), delay(arrow_554))
                                
                                return append_2(singleton_1(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("public static"), ret_t_2), word(match_value_14[1])), Doc_op_Multiply_Z7CFFAC00(word(match_value_14[0]), func_params_2))), delay(arrow_555))
                            
                            return singleton_1(vsep(to_list(delay(arrow_556))))
                        
                        def arrow_564(_unit: Any=None) -> IEnumerable[Doc]:
                            def arrow_562(_unit: Any=None) -> IEnumerable[Doc]:
                                def arrow_559(_unit: Any=None) -> str:
                                    arg10_3 : str = cg_type(start_t)
                                    return to_text(printf("start returns [%s result]: v=%s EOF { $result = _localctx.v.result; };"))(arg10_3)(start_mangled)
                                
                                def arrow_561(_unit: Any=None) -> IEnumerable[Doc]:
                                    def arrow_560(_unit: Any=None) -> IEnumerable[Doc]:
                                        return lexer_defs
                                    
                                    return append_2(singleton_1(file_grammar), delay(arrow_560))
                                
                                return append_2(singleton_1(word(arrow_559())), delay(arrow_561))
                            
                            return append_2(singleton_1(word("}")), delay(arrow_562))
                        
                        return append_2(collect(arrow_557, doc_ctor_wrap_funcs), delay(arrow_564))
                    
                    return append_2(singleton_1(word("@members {")), delay(arrow_565))
                
                return append_2(singleton_1(word("options { language = CSharp; }")), delay(arrow_566))
            
            return append_2(singleton_1(word(to_text(interpolate("grammar %P();", [lang_name])))), delay(arrow_567))
        
        return [(lang_name + ".g4", vsep(to_list(delay(arrow_568)))), file_constructors]
    
    else: 
        raise UnboundNonterminal("start")
    


