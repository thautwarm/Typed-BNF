from __future__ import annotations
from typing import (List, Callable, Any, Tuple, TypeVar)
from ..fable_modules.fable_library.array import (map as map_2, sort_in_place_by, find_index, sort, contains as contains_1)
from ..fable_modules.fable_library.list import (empty, FSharpList, map as map_1, is_empty, head, tail, append, of_array as of_array_1, cons, to_array, fold, map_indexed, singleton as singleton_1, of_array_with_tail, reverse)
from ..fable_modules.fable_library.map import (empty as empty_1, try_find, add, to_array as to_array_1)
from ..fable_modules.fable_library.option import (default_arg, Option, some)
from ..fable_modules.fable_library.seq import (to_list, delay, map, collect, singleton, of_list as of_list_1, append as append_1, empty as empty_3)
from ..fable_modules.fable_library.set import (of_array, of_list, contains)
from ..fable_modules.fable_library.string import (to_text, interpolate, join, printf)
from ..fable_modules.fable_library.util import (compare_primitives, compare, IEnumerable, equals, string_hash, get_enumerator)
from ..FableSedlex.code_gen import (Doc, word, Doc_op_Multiply_Z7CFFAC00, Doc_op_Addition_Z7CFFAC00, parens, vsep, seplist, Doc_op_RightShift_2AAA0F3C, bracket, empty as empty_2, align, indent)
from .analysis import (Analyzer, Sigma__get_GlobalVariables, Sigma__GetADTCases, Shape, Sigma__GetRecordTypes)
from .backends_common import (CodeGenOptions, NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B, NameMangling_nameEnv, NameMangling_IdentifierDescriptor_Create_Z48C5CCEF, NameMangling_IdentifierDescriptor, NameMangling_maskChar, NameMangling_mangle)
from .exceptions import (UnsolvedTypeVariable, UnboundVariable, UnboundLexer, UnboundNonterminal)
from .grammar import (definition, symbol, position, monot, _007CTTuple_007C__007C, monot__prune, expr, node, lexerule, production as production_1)
from .resource_keys import ocaml_rts_file
from .utils import (is_lower, is_unicode, is_digit, is_upper, escape_string, List_tryLookup, capitalized)

__A = TypeVar("__A")

__B = TypeVar("__B")

def codegen(analyzer: Analyzer, cg_options: CodeGenOptions, lang_name: str, stmts: List[definition]) -> List[Tuple[str, Doc]]:
    def arrow_354(x: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return x
    
    variable_renamer : Callable[[str], str] = default_arg(cg_options.rename_var, arrow_354)
    def arrow_355(x_1: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return x_1
    
    constructor_renamer : Callable[[str], str] = default_arg(cg_options.rename_ctor, arrow_355)
    def arrow_356(x_2: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return x_2
    
    field_renamer : Callable[[str], str] = default_arg(cg_options.rename_field, arrow_356)
    def arrow_357(x_3: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return x_3
    
    type_renamer : Callable[[str], str] = default_arg(cg_options.rename_type, arrow_357)
    start_rule_qualified_type : Option[str] = cg_options.start_rule_qualified_type
    rts_file_string : str = cg_options.request_resource(ocaml_rts_file)
    import_var_names : FSharpList[str] = empty()
    import_type_names : FSharpList[str] = empty()
    class ObjectExpr359:
        @property
        def Compare(self) -> Any:
            def arrow_358(x_4: str, y: str) -> int:
                return compare_primitives(x_4, y)
            
            return arrow_358
        
    abandoned_names : Any = of_array(["and", "as", "assert", "asr", "begin", "class", "constraint", "do", "done", "downto", "else", "end", "exception", "external", "false", "for", "fun", "function", "functor", "if", "in", "include", "inherit", "initializer", "land", "lazy", "let", "lor", "lsl", "lsr", "lxor", "match", "method", "mod", "module", "mutable", "new", "nonrec", "object", "of", "open", "or", "private", "rec", "sig", "struct", "then", "to", "true", "try", "type", "val", "virtual", "when", "while", "with"], ObjectExpr359())
    class ObjectExpr361:
        @property
        def Compare(self) -> Any:
            def arrow_360(x_5: symbol, y_1: symbol) -> int:
                return compare(x_5, y_1)
            
            return arrow_360
        
    symmap : Any = empty_1(ObjectExpr361())
    toplevel_transformer : FSharpList[Doc] = empty()
    current_pos : position = analyzer.current_pos
    lexer_maps : FSharpList[Tuple[str, Doc]] = empty()
    def arrow_363(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> IEnumerable[Tuple[str, str]]:
        def arrow_362(k: Any) -> Tuple[str, str]:
            return (k[0], variable_renamer(k[0]))
        
        return map(arrow_362, Sigma__get_GlobalVariables(analyzer.Sigma))
    
    global_scope : FSharpList[Tuple[str, str]] = to_list(delay(arrow_363))
    def arrow_364(tuple: Tuple[str, str], analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return tuple[1]
    
    class ObjectExpr366:
        @property
        def Compare(self) -> Any:
            def arrow_365(x_6: str, y_2: str) -> int:
                return compare_primitives(x_6, y_2)
            
            return arrow_365
        
    def arrow_367(i: int, c: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> bool:
        test : bool = True if (True if (is_lower(c)) else (is_unicode(c))) else (c == "_")
        return test if (i == 0) else (True if (test) else (is_digit(c)))
    
    def arrow_368(i_1: int, c_1: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return to_text(interpolate("_X%P()_", [i_1])) if (is_digit(c_1)) else (c_1.lower() if (is_upper(c_1)) else (to_text(interpolate("_%P()_", [ord(c_1)]))))
    
    ocaml_var_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_367, arrow_368), NameMangling_nameEnv(of_list(map_1(arrow_364, global_scope), ObjectExpr366())))
    class ObjectExpr370:
        @property
        def Compare(self) -> Any:
            def arrow_369(x_7: str, y_3: str) -> int:
                return compare_primitives(x_7, y_3)
            
            return arrow_369
        
    def arrow_371(i_2: int, c_2: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> bool:
        return is_upper(c_2) if (i_2 == 0) else (True if (True if (is_upper(c_2)) else (c_2 == "_")) else (is_digit(c_2)))
    
    def arrow_372(i_3: int, c_3: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return c_3.upper() if (is_lower(c_3)) else (NameMangling_maskChar(ord("A"), ord("Z"), ord(c_3)) + "_" if (i_3 == 0) else (("_" + NameMangling_maskChar(ord("A"), ord("Z"), ord(c_3))) + "_"))
    
    sedlex_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_371, arrow_372), NameMangling_nameEnv(of_array(["EOF"], ObjectExpr370())))
    class ObjectExpr374:
        @property
        def Compare(self) -> Any:
            def arrow_373(x_8: str, y_4: str) -> int:
                return compare_primitives(x_8, y_4)
            
            return arrow_373
        
    def arrow_375(i_4: int, c_4: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> bool:
        return is_lower(c_4) if (i_4 == 0) else (True if (True if (is_lower(c_4)) else (c_4 == "_")) else (is_digit(c_4)))
    
    def arrow_376(_arg1: int, c_5: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return c_5.lower() if (is_upper(c_5)) else (("_" + NameMangling_maskChar(ord("a"), ord("z"), ord(c_5))) + "_")
    
    menhir_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_375, arrow_376), NameMangling_nameEnv(of_array(["start"], ObjectExpr374())))
    def mangle(idr: NameMangling_IdentifierDescriptor, n: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return NameMangling_mangle(abandoned_names, idr, n)
    
    def cg_symbol(x_9: symbol, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        nonlocal symmap
        match_value : Option[str] = try_find(x_9, symmap)
        if match_value is None:
            valid_py_ident : str
            if x_9.tag == 0:
                define : str = x_9.fields[0]
                valid_py_ident = mangle(sedlex_ident_descr, ("\"" + define) + "\"") if (x_9.fields[1]) else (mangle(sedlex_ident_descr, define))
            
            elif x_9.tag == 1:
                valid_py_ident = mangle(menhir_ident_descr, x_9.fields[0])
            
            else: 
                raise Exception("macro not processed")
            
            symmap = add(x_9, valid_py_ident, symmap)
            return valid_py_ident
        
        else: 
            return match_value
        
    
    def name_of_named_term(n_2: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return cg_symbol(symbol(0, n_2, False))
    
    def try_lookup(key_mut: __A, x_10_mut: FSharpList[Tuple[__A, __B]], analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Option[__B]:
        while True:
            (key, x_10) = (key_mut, x_10_mut)
            if not is_empty(x_10):
                if equals(head(x_10)[0], key):
                    return some(head(x_10)[1])
                
                elif not is_empty(x_10):
                    key_mut = key
                    x_10_mut = tail(x_10)
                    continue
                
                else: 
                    raise Exception("Match failure")
                
            
            else: 
                return None
            
            break
    
    def _cg_type(t: monot, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        if t.tag == 4:
            return "\u0027" + t.fields[0]
        
        elif t.tag == 0:
            raise UnsolvedTypeVariable()
        
        elif t.tag == 3:
            def mapping(tupled_arg: Tuple[str, monot], t: monot=t) -> str:
                return _cg_type(tupled_arg[1])
            
            return (("(" + join(" * ", map_1(mapping, t.fields[0]))) + ") -\u003e ") + _cg_type(t.fields[1])
        
        elif t.tag == 2:
            if _007CTTuple_007C__007C(t.fields[0]) is not None:
                return ("(" + join(" * ", map_1(_cg_type, t.fields[1]))) + ")"
            
            elif t.tag == 2:
                return (("(" + join(", ", map_1(_cg_type, t.fields[1]))) + ") ") + _cg_type(t.fields[0])
            
            else: 
                raise Exception("Match failure")
            
        
        else: 
            return type_renamer(t.fields[0])
        
    
    def cg_type(t_1: monot, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        return _cg_type(monot__prune(t_1))
    
    def cg_expr(scope: FSharpList[Tuple[str, str]], curr_expr: expr, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Doc:
        match_value_1 : node = curr_expr.node
        if match_value_1.tag == 6:
            match_value_2 : Option[str] = try_lookup(match_value_1.fields[0], scope)
            if match_value_2 is not None:
                return word(match_value_2)
            
            else: 
                raise UnboundVariable(match_value_1.fields[0])
            
        
        elif match_value_1.tag == 11:
            if match_value_1.fields[0]:
                return word("true")
            
            else: 
                return word("false")
            
        
        elif match_value_1.tag == 3:
            return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(cg_expr(scope, match_value_1.fields[0]), word(":")), word(cg_type(curr_expr.t))), word(".")), word(match_value_1.fields[1]))
        
        elif match_value_1.tag == 8:
            return word(to_text(printf("%d"))(match_value_1.fields[0]))
        
        elif match_value_1.tag == 10:
            return word(to_text(printf("%f"))(match_value_1.fields[0]))
        
        elif match_value_1.tag == 9:
            return word(escape_string(match_value_1.fields[0]))
        
        elif match_value_1.tag == 5:
            def arrow_378(scope: FSharpList[Tuple[str, str]]=scope, curr_expr: expr=curr_expr) -> IEnumerable[Tuple[str, str]]:
                def arrow_377(match_value_3: Tuple[str, monot]) -> IEnumerable[Tuple[str, str]]:
                    arg : str = match_value_3[0]
                    return singleton((arg, mangle(ocaml_var_ident_descr, arg)))
                
                return collect(arrow_377, match_value_1.fields[0])
            
            code : Doc = cg_expr(append(to_list(delay(arrow_378)), scope), match_value_1.fields[1])
            def arrow_379(tupled_arg_1: Tuple[str, monot], scope: FSharpList[Tuple[str, str]]=scope, curr_expr: expr=curr_expr) -> Doc:
                return word((tupled_arg_1[0] + ":") + cg_type(tupled_arg_1[1]))
            
            anns : FSharpList[Doc] = map_1(arrow_379, match_value_1.fields[0])
            return parens(vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(word("fun"), Doc_op_Multiply_Z7CFFAC00(parens(seplist(word(", "), anns)), word("-\u003e"))), Doc_op_RightShift_2AAA0F3C(code, 4)])))
        
        elif match_value_1.tag == 4:
            value_0027 : Doc = cg_expr(scope, match_value_1.fields[1])
            m_name : str = mangle(ocaml_var_ident_descr, match_value_1.fields[0])
            body : Doc = cg_expr(cons((match_value_1.fields[0], m_name), scope), match_value_1.fields[2])
            name_2 : Doc = Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(m_name), word(":")), word(cg_type(match_value_1.fields[1].t)))
            return vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), name_2), word("=")), value_0027), word("in")), body]))
        
        elif match_value_1.tag == 2:
            def arrow_380(elt: expr, scope: FSharpList[Tuple[str, str]]=scope, curr_expr: expr=curr_expr) -> Doc:
                return cg_expr(scope, elt)
            
            return bracket(seplist(word(";"), map_1(arrow_380, match_value_1.fields[0])))
        
        elif match_value_1.tag == 7:
            return word(to_text(interpolate("$%P()", [match_value_1.fields[0]])))
        
        elif match_value_1.tag == 1:
            def arrow_381(elt_1: expr, scope: FSharpList[Tuple[str, str]]=scope, curr_expr: expr=curr_expr) -> Doc:
                return cg_expr(scope, elt_1)
            
            return parens(seplist(word(", "), map_1(arrow_381, match_value_1.fields[0])))
        
        else: 
            f_0027 : Doc = cg_expr(scope, match_value_1.fields[0])
            def arrow_382(x_12: expr, scope: FSharpList[Tuple[str, str]]=scope, curr_expr: expr=curr_expr) -> Doc:
                return cg_expr(scope, x_12)
            
            args_0027 : FSharpList[Doc] = map_1(arrow_382, match_value_1.fields[1])
            return Doc_op_Multiply_Z7CFFAC00(f_0027, parens(seplist(word(", "), args_0027)))
        
    
    def mk_lexer(def_: lexerule, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        op_dereference : Callable[[lexerule], str] = mk_lexer
        (pattern_matching_result, s_6, e_2, e_3, e_4, e_5, s_7, xs, l, r_1, xs_1, e_6) = (None, None, None, None, None, None, None, None, None, None, None, None)
        if def_.tag == 9:
            if def_.fields[0].tag == 9:
                pattern_matching_result = 1
                e_2 = def_.fields[0].fields[0]
            
            else: 
                pattern_matching_result = 1
                e_2 = def_.fields[0]
            
        
        elif def_.tag == 5:
            pattern_matching_result = 2
            e_3 = def_.fields[0]
        
        elif def_.tag == 0:
            pattern_matching_result = 3
        
        elif def_.tag == 6:
            pattern_matching_result = 4
            e_4 = def_.fields[0]
        
        elif def_.tag == 7:
            pattern_matching_result = 5
            e_5 = def_.fields[0]
        
        elif def_.tag == 1:
            pattern_matching_result = 6
        
        elif def_.tag == 11:
            pattern_matching_result = 7
            s_7 = def_.fields[0]
        
        elif def_.tag == 2:
            pattern_matching_result = 8
            xs = def_.fields[0]
        
        elif def_.tag == 10:
            pattern_matching_result = 9
            l = def_.fields[0]
            r_1 = def_.fields[1]
        
        elif def_.tag == 4:
            if is_empty(def_.fields[0]):
                pattern_matching_result = 10
            
            else: 
                pattern_matching_result = 11
                xs_1 = def_.fields[0]
            
        
        elif def_.tag == 8:
            pattern_matching_result = 12
            e_6 = def_.fields[0]
        
        else: 
            pattern_matching_result = 0
            s_6 = def_.fields[0]
        
        if pattern_matching_result == 0:
            return escape_string(s_6)
        
        elif pattern_matching_result == 1:
            return ("(" + op_dereference(e_2)) + ")"
        
        elif pattern_matching_result == 2:
            return to_text(interpolate("Compl(%P())", [op_dereference(e_3)]))
        
        elif pattern_matching_result == 3:
            return "(\u00270\u0027 .. \u00279\u0027)"
        
        elif pattern_matching_result == 4:
            return to_text(interpolate("Plus(%P())", [op_dereference(e_4)]))
        
        elif pattern_matching_result == 5:
            return to_text(interpolate("Star(%P())", [op_dereference(e_5)]))
        
        elif pattern_matching_result == 6:
            return "any"
        
        elif pattern_matching_result == 7:
            match_value_5 : Option[Doc] = List_tryLookup(s_7, lexer_maps)
            if match_value_5 is None:
                raise UnboundLexer(s_7)
            
            else: 
                return "rule_" + name_of_named_term(s_7)
            
        
        elif pattern_matching_result == 8:
            return join(", ", to_array(map_1(mk_lexer, xs)))
        
        elif pattern_matching_result == 9:
            return to_text(interpolate("(%P() .. %P())", [l, r_1]))
        
        elif pattern_matching_result == 10:
            raise Exception("impossible: alternatives cannot be empty.")
        
        elif pattern_matching_result == 11:
            return join(" | ", to_array(map_1(mk_lexer, xs_1)))
        
        elif pattern_matching_result == 12:
            return to_text(interpolate("Opt(%P())", [op_dereference(e_6)]))
        
    
    def mk_lexer_debug(def__1: lexerule, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        op_dereference_1 : Callable[[lexerule], str] = mk_lexer_debug
        if def__1.tag == 9:
            return op_dereference_1(def__1.fields[0])
        
        elif def__1.tag == 5:
            return to_text(interpolate("pnot(%P())", [op_dereference_1(def__1.fields[0])]))
        
        elif def__1.tag == 0:
            return "pnumber"
        
        elif def__1.tag == 6:
            return to_text(interpolate("pplus(%P())", [op_dereference_1(def__1.fields[0])]))
        
        elif def__1.tag == 7:
            return to_text(interpolate("pstar(%P())", [op_dereference_1(def__1.fields[0])]))
        
        elif def__1.tag == 1:
            return "pany"
        
        elif def__1.tag == 11:
            return def__1.fields[0]
        
        elif def__1.tag == 2:
            return to_text(interpolate("pseq([%P()])", [join(", ", of_list_1(map_1(mk_lexer_debug, def__1.fields[0])))]))
        
        elif def__1.tag == 10:
            return to_text(interpolate("pinterval(%P(), %P())", [def__1.fields[0], def__1.fields[1]]))
        
        elif def__1.tag == 4:
            if not is_empty(def__1.fields[0]):
                def arrow_383(a_3: str, b_2: str, def__1: lexerule=def__1) -> str:
                    return to_text(interpolate("por(%P(), %P())", [a_3, b_2]))
                
                return fold(arrow_383, op_dereference_1(head(def__1.fields[0])), map_1(mk_lexer_debug, tail(def__1.fields[0])))
            
            else: 
                raise Exception("impossible: alternatives cannot be empty.")
            
        
        elif def__1.tag == 8:
            return to_text(interpolate("popt%P()", [op_dereference_1(def__1.fields[0])]))
        
        else: 
            return to_text(interpolate("pstring(%P())", [escape_string(def__1.fields[0])]))
        
    
    def cg_stmt(stmt: definition, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Doc:
        nonlocal current_pos, lexer_maps, import_var_names, import_type_names
        if stmt.tag == 2:
            decl_1 : dict[str, Any] = stmt.fields[0]
            current_pos = decl_1["pos"]
            lexer_maps = cons((decl_1["lhs"], word(mk_lexer(decl_1["define"]))), lexer_maps)
            return empty_2
        
        elif stmt.tag == 6:
            current_pos = stmt.fields[0]["pos"]
            return empty_2
        
        elif stmt.tag == 3:
            import_var_names = cons(variable_renamer(stmt.fields[0]["ident"]), import_var_names)
            return vsep(empty())
        
        elif stmt.tag == 5:
            import_type_names = cons(type_renamer(stmt.fields[0]["ident"]), import_type_names)
            return vsep(empty())
        
        elif stmt.tag == 4:
            return vsep(empty())
        
        elif stmt.tag == 0:
            raise Exception("macro not processed")
        
        else: 
            decl : dict[str, Any] = stmt.fields[0]
            current_pos = decl["pos"]
            ntname_1 : str = cg_symbol(symbol(1, decl["lhs"]))
            def mapping_3(i_7: int, e_1: Doc, stmt: definition=stmt) -> Doc:
                return Doc_op_Addition_Z7CFFAC00(word(":") if (i_7 == 0) else (word("|")), e_1)
            
            def arrow_387(stmt: definition=stmt) -> IEnumerable[Doc]:
                def arrow_386(match_value_4: Tuple[position, production_1]) -> IEnumerable[Doc]:
                    nonlocal current_pos
                    current_pos = match_value_4[0]
                    def arrow_385(_unit: Any=None) -> Doc:
                        prod : production_1 = match_value_4[1]
                        def arrow_384(arg_1: symbol) -> Doc:
                            return word(cg_symbol(arg_1))
                        
                        return Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(seplist(word(" "), map_1(arrow_384, prod.symbols)), word("{")), Doc_op_RightShift_2AAA0F3C(vsep(of_array_1([empty_2, Doc_op_RightShift_2AAA0F3C(cg_expr(global_scope, prod.action), 4), word("}")])), 12))
                    
                    return singleton(arrow_385())
                
                return collect(arrow_386, decl["define"])
            
            body_4 : Doc = align(vsep(map_indexed(mapping_3, to_list(delay(arrow_387)))))
            return Doc_op_Addition_Z7CFFAC00(word(ntname_1), body_4)
        
    
    file_grammar : Doc = vsep(of_array_1(map_2(cg_stmt, stmts, None)))
    filename_lexer : str = to_text(printf("%s_lexer"))(lang_name)
    filename_parser : str = to_text(printf("%s_parser"))(lang_name)
    filename_constructors : str = to_text(printf("%s_construct"))(lang_name)
    filename_require : str = to_text(printf("%s_require"))(lang_name)
    var_tokenizer : str = mangle(ocaml_var_ident_descr, "tokenizer")
    var_lexbuf : str = mangle(ocaml_var_ident_descr, "lexbuf")
    def arrow_412(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> IEnumerable[Doc]:
        doc_ctor_wrap_funcs : FSharpList[Tuple[str, str, FSharpList[Tuple[str, str]], Doc]] = empty()
        def arrow_411(_unit: Any=None) -> IEnumerable[Doc]:
            def arrow_410(_unit: Any=None) -> IEnumerable[Doc]:
                adt_cases : FSharpList[Tuple[str, Any]] = Sigma__GetADTCases(analyzer.Sigma)
                def arrow_409(_unit: Any=None) -> IEnumerable[Doc]:
                    def arrow_408(_unit: Any=None) -> IEnumerable[Doc]:
                        def arrow_394(match_value_6: Tuple[str, Any]) -> IEnumerable[Doc]:
                            typename_0027 : str = type_renamer(match_value_6[0])
                            def arrow_393(_unit: Any=None) -> IEnumerable[Doc]:
                                def arrow_391(match_value_7: Tuple[str, FSharpList[Tuple[str, monot]]]) -> IEnumerable[Doc]:
                                    nonlocal doc_ctor_wrap_funcs
                                    ctor_name : str = match_value_7[0]
                                    def arrow_388(tupled_arg_2: Tuple[str, monot]) -> Tuple[str, str]:
                                        return (field_renamer(tupled_arg_2[0]), cg_type(tupled_arg_2[1]))
                                    
                                    fields_1 : FSharpList[Tuple[str, str]] = map_1(arrow_388, match_value_7[1])
                                    ctor_name_0027 : str = constructor_renamer(ctor_name)
                                    ret_t : Doc = word(typename_0027)
                                    doc_ctor_wrap_funcs = cons((variable_renamer(ctor_name), ctor_name_0027, fields_1, ret_t), doc_ctor_wrap_funcs)
                                    if is_empty(fields_1):
                                        return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(ctor_name_0027)), word("of")), word("unit")))
                                    
                                    else: 
                                        def arrow_390(_unit: Any=None) -> IEnumerable[Doc]:
                                            def arrow_389(match_value_8: Tuple[str, str]) -> IEnumerable[Doc]:
                                                return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(match_value_8[0]), word(":")), word(match_value_8[1])))
                                            
                                            return collect(arrow_389, fields_1)
                                        
                                        ano_record_typ : Doc = seplist(word(";"), to_list(delay(arrow_390)))
                                        return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(ctor_name_0027)), word("of")), word("{")), ano_record_typ), word("}")))
                                    
                                
                                def arrow_392(_unit: Any=None) -> IEnumerable[Doc]:
                                    return singleton(empty_2)
                                
                                return append_1(collect(arrow_391, to_array_1(match_value_6[1])), delay(arrow_392))
                            
                            return append_1(singleton(word(to_text(interpolate("and %P() = ", [typename_0027])))), delay(arrow_393))
                        
                        def arrow_407(_unit: Any=None) -> IEnumerable[Doc]:
                            def arrow_403(match_value_9: Tuple[str, Shape]) -> IEnumerable[Doc]:
                                typename_1 : str = match_value_9[0]
                                shape : Shape = match_value_9[1]
                                typename_0027_1 : str = type_renamer(typename_1)
                                varname : str = variable_renamer(typename_1)
                                def mapping_4(s_10: str) -> str:
                                    return "\u0027" + s_10
                                
                                ret_t_1 : Doc = word(typename_0027_1) if (is_empty(shape.parameters)) else (Doc_op_Addition_Z7CFFAC00(parens(word(join(", ", map_1(mapping_4, shape.parameters)))), word(typename_0027_1)))
                                def arrow_396(_unit: Any=None) -> IEnumerable[Tuple[str, str]]:
                                    def arrow_395(match_value_10: Tuple[str, monot]) -> IEnumerable[Tuple[str, str]]:
                                        return singleton((field_renamer(match_value_10[0]), cg_type(match_value_10[1])))
                                    
                                    return collect(arrow_395, shape.fields)
                                
                                fields_2 : FSharpList[Tuple[str, str]] = to_list(delay(arrow_396))
                                def arrow_397(_unit: Any=None) -> IEnumerable[Doc]:
                                    nonlocal doc_ctor_wrap_funcs
                                    doc_ctor_wrap_funcs = cons((varname, "MK_" + typename_0027_1, fields_2, ret_t_1), doc_ctor_wrap_funcs)
                                    return empty_3()
                                
                                def arrow_402(_unit: Any=None) -> IEnumerable[Doc]:
                                    def arrow_399(_unit: Any=None) -> IEnumerable[Doc]:
                                        def arrow_398(match_value_11: Tuple[str, str]) -> IEnumerable[Doc]:
                                            return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(match_value_11[0]), word(":")), Doc_op_Multiply_Z7CFFAC00(word(match_value_11[1]), word(";"))))
                                        
                                        return collect(arrow_398, fields_2)
                                    
                                    def arrow_401(_unit: Any=None) -> IEnumerable[Doc]:
                                        def arrow_400(_unit: Any=None) -> IEnumerable[Doc]:
                                            nonlocal doc_ctor_wrap_funcs
                                            doc_ctor_wrap_funcs = cons((varname, "", fields_2, ret_t_1), doc_ctor_wrap_funcs)
                                            return empty_3()
                                        
                                        return append_1(singleton(word("}")), delay(arrow_400))
                                    
                                    return append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(to_list(delay(arrow_399))), 4)), delay(arrow_401))
                                
                                return append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("and"), ret_t_1), word("=")), word("MK_" + typename_0027_1)), word("of unit"))), delay(arrow_397)) if (is_empty(fields_2)) else (append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("and"), ret_t_1), word("=")), word("{"))), delay(arrow_402)))
                            
                            def arrow_406(_unit: Any=None) -> IEnumerable[Doc]:
                                def arrow_405(match_value_12: Tuple[str, str, FSharpList[Tuple[str, str]], Doc]) -> IEnumerable[Doc]:
                                    function_name : str = match_value_12[0]
                                    fields_3 : FSharpList[Tuple[str, str]] = match_value_12[2]
                                    ctor_name_1 : str = match_value_12[1]
                                    if is_empty(fields_3):
                                        return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(function_name)), word("()")), word("=")), word(ctor_name_1)), word("()")))
                                    
                                    else: 
                                        def arrow_404(arg_2: Tuple[str, str]) -> Doc:
                                            return word(arg_2[0])
                                        
                                        args_5 : FSharpList[Doc] = map_1(arrow_404, fields_3)
                                        return singleton(vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(function_name)), parens(seplist(word(", "), args_5))), word(":")), match_value_12[3]), word("=")), Doc_op_RightShift_2AAA0F3C(vsep(singleton_1(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(ctor_name_1), word("{")), seplist(word(";"), args_5)), word("}")))), 4)])))
                                    
                                
                                return collect(arrow_405, doc_ctor_wrap_funcs)
                            
                            return append_1(collect(arrow_403, Sigma__GetRecordTypes(analyzer.Sigma)), delay(arrow_406))
                        
                        return append_1(collect(arrow_394, adt_cases), delay(arrow_407))
                    
                    return append_1(singleton(word("type ___used_t_head_90xasda")), delay(arrow_408))
                
                return append_1(singleton(empty_2), delay(arrow_409))
            
            return append_1(singleton(word(to_text(interpolate("open %P();;", [capitalized(filename_lexer)])))), delay(arrow_410))
        
        return append_1(singleton(word(to_text(interpolate("open %P();;", [capitalized(filename_require)])))), delay(arrow_411))
    
    file_constructors : Tuple[str, Doc] = (filename_constructors + ".ml", vsep(to_list(delay(arrow_412))))
    token_names : FSharpList[str] = empty()
    ReferencedNamedTokens : List[str] = list(analyzer.ReferencedNamedTokens)
    def arrow_414(k_1: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> int:
        def arrow_413(y_5: str) -> bool:
            return k_1 == y_5
        
        return find_index(arrow_413, analyzer.TokenFragments)
    
    class ObjectExpr416:
        @property
        def Compare(self) -> Any:
            def arrow_415(x_15: int, y_6: int) -> int:
                return compare_primitives(x_15, y_6)
            
            return arrow_415
        
    sort_in_place_by(arrow_414, ReferencedNamedTokens, ObjectExpr416())
    lexical_rule_defs : FSharpList[Doc] = empty()
    tokenizer_cases : FSharpList[Doc] = empty()
    class ObjectExpr418:
        @property
        def Compare(self) -> Any:
            def arrow_417(x_16: str, y_7: str) -> int:
                return compare_primitives(x_16, y_7)
            
            return arrow_417
        
    arr : List[str] = sort(list(analyzer.LiteralTokens), ObjectExpr418())
    for idx_1 in range(0, (len(arr) - 1) + 1, 1):
        k_2 : str = arr[idx_1]
        v_2 : Doc = word(mk_lexer(lexerule(3, k_2)))
        token_name : str = cg_symbol(symbol(0, k_2, True))
        lexical_rule_name : str = "rule_" + token_name
        lexical_rule_def : Doc = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(lexical_rule_name)), word("=")), bracket(Doc_op_Addition_Z7CFFAC00(word("%sedlex.regexp?"), v_2)))
        lexical_rule_defs = cons(lexical_rule_def, lexical_rule_defs)
        tokenizer_case : Doc = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(lexical_rule_name)), word(to_text(interpolate("-\u003e %P() (mktoken %P())", [token_name, var_lexbuf]))))
        tokenizer_cases = cons(tokenizer_case, tokenizer_cases)
        token_names = cons(token_name, token_names)
    with get_enumerator(lexer_maps) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            for_loop_var : Tuple[str, Doc] = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
            v_3 : Doc = for_loop_var[1]
            k_3 : str = for_loop_var[0]
            if contains(k_3, analyzer.IgnoreSet):
                lexical_rule_name_1 : str = "rule_" + name_of_named_term(k_3)
                lexical_rule_def_1 : Doc = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(lexical_rule_name_1)), word("=")), bracket(Doc_op_Addition_Z7CFFAC00(word("%sedlex.regexp?"), v_3)))
                lexical_rule_defs = cons(lexical_rule_def_1, lexical_rule_defs)
                tokenizer_case_1 : Doc = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(lexical_rule_name_1)), word(to_text(interpolate("-\u003e %P() %P()", [var_tokenizer, var_lexbuf]))))
                tokenizer_cases = cons(tokenizer_case_1, tokenizer_cases)
            
            else: 
                token_name_1 : str = name_of_named_term(k_3)
                lexical_rule_name_2 : str = "rule_" + token_name_1
                lexical_rule_def_2 : Doc = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(lexical_rule_name_2)), word("=")), bracket(Doc_op_Addition_Z7CFFAC00(word("%sedlex.regexp?"), v_3)))
                lexical_rule_defs = cons(lexical_rule_def_2, lexical_rule_defs)
                class ObjectExpr421:
                    @property
                    def Equals(self) -> Any:
                        def arrow_419(x_17: str, y_8: str) -> bool:
                            return x_17 == y_8
                        
                        return arrow_419
                    
                    @property
                    def GetHashCode(self) -> Any:
                        def arrow_420(x_17: str) -> int:
                            return string_hash(x_17)
                        
                        return arrow_420
                    
                if contains_1(k_3, ReferencedNamedTokens, ObjectExpr421()):
                    tokenizer_case_2 : Doc = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(lexical_rule_name_2)), word(to_text(interpolate("-\u003e %P() (mktoken %P())", [token_name_1, var_lexbuf]))))
                    tokenizer_cases = cons(tokenizer_case_2, tokenizer_cases)
                    token_names = cons(token_name_1, token_names)
                
            
    tokenizer_cases = of_array_with_tail([word(to_text(interpolate("| _ -\u003e _unknown_token %P()", [var_lexbuf]))), Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word("eof -\u003e")), word("EOF"))], tokenizer_cases)
    token_names_1 : FSharpList[str] = reverse(token_names)
    tokenizer_cases_1 : FSharpList[Doc] = reverse(tokenizer_cases)
    def arrow_424(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> IEnumerable[Doc]:
        def arrow_422(tkn: str) -> Doc:
            return Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(tkn)), word("of")), word("tbnf_token"))
        
        def arrow_423(_unit: Any=None) -> IEnumerable[Doc]:
            return singleton(word("| EOF"))
        
        return append_1(map(arrow_422, token_names_1), delay(arrow_423))
    
    file_lexer : Tuple[str, Doc] = (filename_lexer + ".ml", vsep(of_array_1([word(rts_file_string), empty_2, word("type token ="), vsep(to_list(delay(arrow_424))), empty_2, vsep(lexical_rule_defs), empty_2, vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let rec"), word(var_tokenizer)), word(var_lexbuf)), word("=")), align(indent(4, vsep(cons(word(to_text(interpolate("match%%sedlex %P() with", [var_lexbuf]))), tokenizer_cases_1))))]))])))
    match_value_13 : Option[monot] = try_find("start", analyzer.Omega)
    if match_value_13 is not None:
        start_t : monot = match_value_13
        start_name : str = cg_symbol(symbol(1, "start"))
        start_t_1 : str = cg_type(monot__prune(start_t))
        def arrow_437(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> IEnumerable[Doc]:
            def arrow_436(_unit: Any=None) -> IEnumerable[Doc]:
                def arrow_435(_unit: Any=None) -> IEnumerable[Doc]:
                    def arrow_434(_unit: Any=None) -> IEnumerable[Doc]:
                        def arrow_433(_unit: Any=None) -> IEnumerable[Doc]:
                            def arrow_432(_unit: Any=None) -> IEnumerable[Doc]:
                                def arrow_425(token_name_2: str) -> Doc:
                                    return word(to_text(interpolate("%%token\u003ctbnf_token\u003e %P()", [token_name_2])))
                                
                                def arrow_431(_unit: Any=None) -> IEnumerable[Doc]:
                                    def arrow_430(_unit: Any=None) -> IEnumerable[Doc]:
                                        def arrow_429(_unit: Any=None) -> IEnumerable[Doc]:
                                            def arrow_428(_unit: Any=None) -> IEnumerable[Doc]:
                                                def arrow_427(_unit: Any=None) -> IEnumerable[Doc]:
                                                    def arrow_426(_unit: Any=None) -> IEnumerable[Doc]:
                                                        return singleton(file_grammar)
                                                    
                                                    return append_1(singleton(word(to_text(printf("start : %s EOF { $1 }"))(start_name))), delay(arrow_426))
                                                
                                                return append_1(singleton(empty_2), delay(arrow_427))
                                            
                                            return append_1(singleton(word("%%")), delay(arrow_428))
                                        
                                        return append_1(singleton(word(to_text(interpolate("%%start \u003c%P()\u003e start", [start_rule_qualified_type])))) if (start_rule_qualified_type is not None) else (singleton(word(to_text(interpolate("%%start \u003c%P()\u003e start", [start_t_1]))))), delay(arrow_429))
                                    
                                    return append_1(singleton(word("%token EOF")), delay(arrow_430))
                                
                                return append_1(map(arrow_425, token_names_1), delay(arrow_431))
                            
                            return append_1(singleton(word("%}")), delay(arrow_432))
                        
                        return append_1(singleton(word(to_text(interpolate("open %P();;", [capitalized(filename_constructors)])))), delay(arrow_433))
                    
                    return append_1(singleton(word(to_text(interpolate("open %P();;", [capitalized(filename_lexer)])))), delay(arrow_434))
                
                return append_1(singleton(word(to_text(interpolate("open %P();;", [capitalized(filename_require)])))), delay(arrow_435))
            
            return append_1(singleton(word("%{")), delay(arrow_436))
        
        return [file_constructors, (filename_parser + ".mly", vsep(to_list(delay(arrow_437)))), file_lexer]
    
    else: 
        raise UnboundNonterminal("start")
    


