from __future__ import annotations
from typing import (List, Callable, Optional, Any, Tuple, Iterable, TypeVar)
from ..fable_modules.fable_library.array import (map as map_2, sort_in_place_by, find_index, sort, contains as contains_1)
from ..fable_modules.fable_library.list import (empty, FSharpList, map as map_1, is_empty, head, tail, append, of_array as of_array_1, cons, to_array, fold, map_indexed, singleton as singleton_1, of_array_with_tail, reverse)
from ..fable_modules.fable_library.map import (empty as empty_1, try_find, add, to_array as to_array_1)
from ..fable_modules.fable_library.option import (default_arg, some)
from ..fable_modules.fable_library.seq import (to_list, delay, map, collect, singleton, of_list as of_list_1, append as append_1, empty as empty_3)
from ..fable_modules.fable_library.set import (of_array, of_list, contains)
from ..fable_modules.fable_library.string import (to_text, interpolate, join, printf)
from ..fable_modules.fable_library.util import (compare_primitives, compare, equals, string_hash, get_enumerator)
from ..FableSedlex.code_gen import (Doc, word, Doc_op_Multiply_Z7CFFAC00, Doc_op_Addition_Z7CFFAC00, parens, vsep, seplist, Doc_op_RightShift_2AAA0F3C, bracket, empty as empty_2, align, indent)
from .analysis import (Analyzer, Sigma__get_GlobalVariables, Sigma__GetADTCases, Shape, Sigma__GetRecordTypes)
from .backends_common import (CodeGenOptions, NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B, NameMangling_nameEnv, NameMangling_IdentifierDescriptor_Create_Z48C5CCEF, NameMangling_IdentifierDescriptor, NameMangling_maskChar, NameMangling_mangle)
from .exceptions import (UnsolvedTypeVariable, UnboundVariable, UnboundLexer, UnboundNonterminal)
from .grammar import (definition, symbol, position, monot, _007CTTuple_007C__007C, monot__prune, expr, node, lexerule, production as production_1)
from .resource_keys import ocaml_rts_file
from .utils import (is_lower, is_unicode, is_digit, is_upper, escape_string, List_tryLookup, capitalized)

a_ = TypeVar("a_")

b_ = TypeVar("b_")

def codegen(analyzer: Analyzer, cg_options: CodeGenOptions, lang_name: str, stmts: List[definition]) -> List[Tuple[str, Doc]]:
    variable_renamer : Callable[[str], str] = default_arg(cg_options.rename_var, lambda x, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: x)
    constructor_renamer : Callable[[str], str] = default_arg(cg_options.rename_ctor, lambda x_1, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: x_1)
    field_renamer : Callable[[str], str] = default_arg(cg_options.rename_field, lambda x_2, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: x_2)
    type_renamer : Callable[[str], str] = default_arg(cg_options.rename_type, lambda x_3, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: x_3)
    start_rule_qualified_type : Optional[str] = cg_options.start_rule_qualified_type
    rts_file_string : str = cg_options.request_resource(ocaml_rts_file)
    import_var_names : FSharpList[str] = empty()
    import_type_names : FSharpList[str] = empty()
    class ObjectExpr158:
        @property
        def Compare(self) -> Any:
            return lambda x_4, y: compare_primitives(x_4, y)
        
    abandoned_names : Any = of_array(["and", "as", "assert", "asr", "begin", "class", "constraint", "do", "done", "downto", "else", "end", "exception", "external", "false", "for", "fun", "function", "functor", "if", "in", "include", "inherit", "initializer", "land", "lazy", "let", "lor", "lsl", "lsr", "lxor", "match", "method", "mod", "module", "mutable", "new", "nonrec", "object", "of", "open", "or", "private", "rec", "sig", "struct", "then", "to", "true", "try", "type", "val", "virtual", "when", "while", "with"], ObjectExpr158())
    class ObjectExpr159:
        @property
        def Compare(self) -> Any:
            return lambda x_5, y_1: compare(x_5, y_1)
        
    symmap : Any = empty_1(ObjectExpr159())
    toplevel_transformer : FSharpList[Doc] = empty()
    current_pos : position = analyzer.current_pos
    lexer_maps : FSharpList[Tuple[str, Doc]] = empty()
    global_scope : FSharpList[Tuple[str, str]] = to_list(delay(lambda analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: map(lambda k: (k[0], variable_renamer(k[0])), Sigma__get_GlobalVariables(analyzer.Sigma))))
    class ObjectExpr160:
        @property
        def Compare(self) -> Any:
            return lambda x_6, y_2: compare_primitives(x_6, y_2)
        
    def arrow_161(i: int, c: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> bool:
        test : bool = True if (True if (is_lower(c)) else (is_unicode(c))) else (c == "_")
        return test if (i == 0) else (True if (test) else (is_digit(c)))
    
    ocaml_var_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_161, lambda i_1, c_1, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: to_text(interpolate("_X%P()_", [i_1])) if (is_digit(c_1)) else (c_1.lower() if (is_upper(c_1)) else (to_text(interpolate("_%P()_", [ord(c_1)]))))), NameMangling_nameEnv(of_list(map_1(lambda tuple, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: tuple[1], global_scope), ObjectExpr160())))
    class ObjectExpr162:
        @property
        def Compare(self) -> Any:
            return lambda x_7, y_3: compare_primitives(x_7, y_3)
        
    sedlex_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(lambda i_2, c_2, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: is_upper(c_2) if (i_2 == 0) else (True if (True if (is_upper(c_2)) else (c_2 == "_")) else (is_digit(c_2))), lambda i_3, c_3, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: c_3.upper() if (is_lower(c_3)) else (NameMangling_maskChar(ord("A"), ord("Z"), ord(c_3)) + "_" if (i_3 == 0) else (("_" + NameMangling_maskChar(ord("A"), ord("Z"), ord(c_3))) + "_"))), NameMangling_nameEnv(of_array(["EOF"], ObjectExpr162())))
    class ObjectExpr166:
        @property
        def Compare(self) -> Any:
            return lambda x_8, y_4: compare_primitives(x_8, y_4)
        
    menhir_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(lambda i_4, c_4, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: is_lower(c_4) if (i_4 == 0) else (True if (True if (is_lower(c_4)) else (c_4 == "_")) else (is_digit(c_4))), lambda _arg1, c_5, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: c_5.lower() if (is_upper(c_5)) else (("_" + NameMangling_maskChar(ord("a"), ord("z"), ord(c_5))) + "_")), NameMangling_nameEnv(of_array(["start"], ObjectExpr166())))
    mangle : Callable[[NameMangling_IdentifierDescriptor, str], str] = lambda idr, n, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: NameMangling_mangle(abandoned_names, idr, n)
    def cg_symbol(x_9: symbol, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        nonlocal symmap
        match_value : Optional[str] = try_find(x_9, symmap)
        if match_value is None:
            valid_py_ident = None
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
        
    
    name_of_named_term : Callable[[str], str] = lambda n_2, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: cg_symbol(symbol(0, n_2, False))
    def try_lookup(key_mut: a_, x_10_mut: FSharpList[Tuple[a_, b_]], analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Optional[b_]:
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
            return (("(" + join(" * ", map_1(lambda tupled_arg, t=t: _cg_type(tupled_arg[1]), t.fields[0]))) + ") -\u003e ") + _cg_type(t.fields[1])
        
        elif t.tag == 2:
            if _007CTTuple_007C__007C(t.fields[0]) is not None:
                return ("(" + join(" * ", map_1(_cg_type, t.fields[1]))) + ")"
            
            elif t.tag == 2:
                return (("(" + join(", ", map_1(_cg_type, t.fields[1]))) + ") ") + _cg_type(t.fields[0])
            
            else: 
                raise Exception("Match failure")
            
        
        else: 
            return type_renamer(t.fields[0])
        
    
    cg_type : Callable[[monot], str] = lambda t_1, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: _cg_type(monot__prune(t_1))
    def cg_expr(scope: FSharpList[Tuple[str, str]], curr_expr: expr, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Doc:
        match_value_1 : node = curr_expr.node
        if match_value_1.tag == 6:
            match_value_2 : Optional[str] = try_lookup(match_value_1.fields[0], scope)
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
            def arrow_173(scope: FSharpList[Tuple[str, str]]=scope, curr_expr: expr=curr_expr) -> Iterable[Tuple[str, str]]:
                def arrow_172(match_value_3: Tuple[str, monot]) -> Iterable[Tuple[str, str]]:
                    arg : str = match_value_3[0]
                    return singleton((arg, mangle(ocaml_var_ident_descr, arg)))
                
                return collect(arrow_172, match_value_1.fields[0])
            
            code : Doc = cg_expr(append(to_list(delay(arrow_173)), scope), match_value_1.fields[1])
            anns : FSharpList[Doc] = map_1(lambda tupled_arg_1, scope=scope, curr_expr=curr_expr: word((tupled_arg_1[0] + ":") + cg_type(tupled_arg_1[1])), match_value_1.fields[0])
            return parens(vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(word("fun"), Doc_op_Multiply_Z7CFFAC00(parens(seplist(word(", "), anns)), word("-\u003e"))), Doc_op_RightShift_2AAA0F3C(code, 4)])))
        
        elif match_value_1.tag == 4:
            value_0027 : Doc = cg_expr(scope, match_value_1.fields[1])
            m_name : str = mangle(ocaml_var_ident_descr, match_value_1.fields[0])
            body : Doc = cg_expr(cons((match_value_1.fields[0], m_name), scope), match_value_1.fields[2])
            name_2 : Doc = Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(m_name), word(":")), word(cg_type(curr_expr.t)))
            return vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), name_2), word("=")), value_0027), word("in")), body]))
        
        elif match_value_1.tag == 2:
            return bracket(seplist(word(";"), map_1(lambda elt, scope=scope, curr_expr=curr_expr: cg_expr(scope, elt), match_value_1.fields[0])))
        
        elif match_value_1.tag == 7:
            return word(to_text(interpolate("$%P()", [match_value_1.fields[0]])))
        
        elif match_value_1.tag == 1:
            return parens(seplist(word(", "), map_1(lambda elt_1, scope=scope, curr_expr=curr_expr: cg_expr(scope, elt_1), match_value_1.fields[0])))
        
        else: 
            f_0027 : Doc = cg_expr(scope, match_value_1.fields[0])
            args_0027 : FSharpList[Doc] = map_1(lambda x_12, scope=scope, curr_expr=curr_expr: cg_expr(scope, x_12), match_value_1.fields[1])
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
            match_value_5 : Optional[Doc] = List_tryLookup(s_7, lexer_maps)
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
                return fold(lambda a_3, b_2, def__1=def__1: to_text(interpolate("por(%P(), %P())", [a_3, b_2])), op_dereference_1(head(def__1.fields[0])), map_1(mk_lexer_debug, tail(def__1.fields[0])))
            
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
            def arrow_179(stmt: definition=stmt) -> Iterable[Doc]:
                def arrow_178(match_value_4: Tuple[position, production_1]) -> Iterable[Doc]:
                    nonlocal current_pos
                    current_pos = match_value_4[0]
                    def arrow_177(_unit=None) -> Doc:
                        prod : production_1 = match_value_4[1]
                        return Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(seplist(word(" "), map_1(lambda arg_1: word(cg_symbol(arg_1)), prod.symbols)), word("{")), Doc_op_RightShift_2AAA0F3C(vsep(of_array_1([empty_2, Doc_op_RightShift_2AAA0F3C(cg_expr(global_scope, prod.action), 4), word("}")])), 12))
                    
                    return singleton(arrow_177())
                
                return collect(arrow_178, decl["define"])
            
            body_4 : Doc = align(vsep(map_indexed(lambda i_7, e_1, stmt=stmt: Doc_op_Addition_Z7CFFAC00(word(":") if (i_7 == 0) else (word("|")), e_1), to_list(delay(arrow_179)))))
            return Doc_op_Addition_Z7CFFAC00(word(ntname_1), body_4)
        
    
    file_grammar : Doc = vsep(of_array_1(map_2(cg_stmt, stmts, None)))
    filename_lexer : str = to_text(printf("%s_lexer"))(lang_name)
    filename_parser : str = to_text(printf("%s_parser"))(lang_name)
    filename_constructors : str = to_text(printf("%s_construct"))(lang_name)
    filename_require : str = to_text(printf("%s_require"))(lang_name)
    var_tokenizer : str = mangle(ocaml_var_ident_descr, "tokenizer")
    var_lexbuf : str = mangle(ocaml_var_ident_descr, "lexbuf")
    def arrow_197(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Iterable[Doc]:
        doc_ctor_wrap_funcs : FSharpList[Tuple[str, str, FSharpList[Tuple[str, str]], Doc]] = empty()
        def arrow_196(_unit=None) -> Iterable[Doc]:
            def arrow_195(_unit=None) -> Iterable[Doc]:
                adt_cases : FSharpList[Tuple[str, Any]] = Sigma__GetADTCases(analyzer.Sigma)
                def arrow_194(_unit=None) -> Iterable[Doc]:
                    def arrow_193(_unit=None) -> Iterable[Doc]:
                        def arrow_184(match_value_6: Tuple[str, Any]) -> Iterable[Doc]:
                            typename_0027 : str = type_renamer(match_value_6[0])
                            def arrow_183(_unit=None) -> Iterable[Doc]:
                                def arrow_181(match_value_7: Tuple[str, FSharpList[Tuple[str, monot]]]) -> Iterable[Doc]:
                                    nonlocal doc_ctor_wrap_funcs
                                    ctor_name : str = match_value_7[0]
                                    fields_1 : FSharpList[Tuple[str, str]] = map_1(lambda tupled_arg_2: (field_renamer(tupled_arg_2[0]), cg_type(tupled_arg_2[1])), match_value_7[1])
                                    ctor_name_0027 : str = constructor_renamer(ctor_name)
                                    ret_t : Doc = word(typename_0027)
                                    doc_ctor_wrap_funcs = cons((variable_renamer(ctor_name), ctor_name_0027, fields_1, ret_t), doc_ctor_wrap_funcs)
                                    if is_empty(fields_1):
                                        return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(ctor_name_0027)), word("of")), word("unit")))
                                    
                                    else: 
                                        ano_record_typ : Doc = seplist(word(";"), to_list(delay(lambda _unit=None: collect(lambda match_value_8: singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(match_value_8[0]), word(":")), word(match_value_8[1]))), fields_1))))
                                        return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(ctor_name_0027)), word("of")), word("{")), ano_record_typ), word("}")))
                                    
                                
                                return append_1(collect(arrow_181, to_array_1(match_value_6[1])), delay(lambda _unit=None: singleton(empty_2)))
                            
                            return append_1(singleton(word(to_text(interpolate("and %P() = ", [typename_0027])))), delay(arrow_183))
                        
                        def arrow_192(_unit=None) -> Iterable[Doc]:
                            def arrow_189(match_value_9: Tuple[str, Shape]) -> Iterable[Doc]:
                                typename_1 : str = match_value_9[0]
                                shape : Shape = match_value_9[1]
                                typename_0027_1 : str = type_renamer(typename_1)
                                varname : str = variable_renamer(typename_1)
                                ret_t_1 : Doc = word(typename_0027_1) if (is_empty(shape.parameters)) else (Doc_op_Addition_Z7CFFAC00(parens(word(join(", ", map_1(lambda s_10: "\u0027" + s_10, shape.parameters)))), word(typename_0027_1)))
                                fields_2 : FSharpList[Tuple[str, str]] = to_list(delay(lambda _unit=None: collect(lambda match_value_10: singleton((field_renamer(match_value_10[0]), cg_type(match_value_10[1]))), shape.fields)))
                                def arrow_185(_unit=None) -> Iterable[Doc]:
                                    nonlocal doc_ctor_wrap_funcs
                                    doc_ctor_wrap_funcs = cons((varname, "MK_" + typename_0027_1, fields_2, ret_t_1), doc_ctor_wrap_funcs)
                                    return empty_3()
                                
                                def arrow_188(_unit=None) -> Iterable[Doc]:
                                    def arrow_187(_unit=None) -> Iterable[Doc]:
                                        def arrow_186(_unit=None) -> Iterable[Doc]:
                                            nonlocal doc_ctor_wrap_funcs
                                            doc_ctor_wrap_funcs = cons((varname, "", fields_2, ret_t_1), doc_ctor_wrap_funcs)
                                            return empty_3()
                                        
                                        return append_1(singleton(word("}")), delay(arrow_186))
                                    
                                    return append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(to_list(delay(lambda _unit=None: collect(lambda match_value_11: singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(match_value_11[0]), word(":")), Doc_op_Multiply_Z7CFFAC00(word(match_value_11[1]), word(";")))), fields_2)))), 4)), delay(arrow_187))
                                
                                return append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("and"), ret_t_1), word("=")), word("MK_" + typename_0027_1)), word("of unit"))), delay(arrow_185)) if (is_empty(fields_2)) else (append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("and"), ret_t_1), word("=")), word("{"))), delay(arrow_188)))
                            
                            def arrow_191(_unit=None) -> Iterable[Doc]:
                                def arrow_190(match_value_12: Tuple[str, str, FSharpList[Tuple[str, str]], Doc]) -> Iterable[Doc]:
                                    function_name : str = match_value_12[0]
                                    fields_3 : FSharpList[Tuple[str, str]] = match_value_12[2]
                                    ctor_name_1 : str = match_value_12[1]
                                    if is_empty(fields_3):
                                        return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(function_name)), word("()")), word("=")), word(ctor_name_1)), word("()")))
                                    
                                    else: 
                                        args_5 : FSharpList[Doc] = map_1(lambda arg_2: word(arg_2[0]), fields_3)
                                        return singleton(vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(function_name)), parens(seplist(word(", "), args_5))), word(":")), match_value_12[3]), word("=")), Doc_op_RightShift_2AAA0F3C(vsep(singleton_1(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(ctor_name_1), word("{")), seplist(word(";"), args_5)), word("}")))), 4)])))
                                    
                                
                                return collect(arrow_190, doc_ctor_wrap_funcs)
                            
                            return append_1(collect(arrow_189, Sigma__GetRecordTypes(analyzer.Sigma)), delay(arrow_191))
                        
                        return append_1(collect(arrow_184, adt_cases), delay(arrow_192))
                    
                    return append_1(singleton(word("type ___used_t_head_90xasda")), delay(arrow_193))
                
                return append_1(singleton(empty_2), delay(arrow_194))
            
            return append_1(singleton(word(to_text(interpolate("open %P();;", [capitalized(filename_lexer)])))), delay(arrow_195))
        
        return append_1(singleton(word(to_text(interpolate("open %P();;", [capitalized(filename_require)])))), delay(arrow_196))
    
    file_constructors : Tuple[str, Doc] = (filename_constructors + ".ml", vsep(to_list(delay(arrow_197))))
    token_names : FSharpList[str] = empty()
    ReferencedNamedTokens : List[str] = list(analyzer.ReferencedNamedTokens)
    class ObjectExpr198:
        @property
        def Compare(self) -> Any:
            return lambda x_15, y_6: compare_primitives(x_15, y_6)
        
    sort_in_place_by(lambda k_1, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: find_index(lambda y_5: k_1 == y_5, analyzer.TokenFragments), ReferencedNamedTokens, ObjectExpr198())
    lexical_rule_defs : FSharpList[Doc] = empty()
    tokenizer_cases : FSharpList[Doc] = empty()
    class ObjectExpr199:
        @property
        def Compare(self) -> Any:
            return lambda x_16, y_7: compare_primitives(x_16, y_7)
        
    arr : List[str] = sort(list(analyzer.LiteralTokens), ObjectExpr199())
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
                class ObjectExpr203:
                    @property
                    def Equals(self) -> Any:
                        return lambda x_17, y_8: x_17 == y_8
                    
                    @property
                    def GetHashCode(self) -> Any:
                        return lambda x_17: string_hash(x_17)
                    
                if contains_1(k_3, ReferencedNamedTokens, ObjectExpr203()):
                    tokenizer_case_2 : Doc = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(lexical_rule_name_2)), word(to_text(interpolate("-\u003e %P() (mktoken %P())", [token_name_1, var_lexbuf]))))
                    tokenizer_cases = cons(tokenizer_case_2, tokenizer_cases)
                    token_names = cons(token_name_1, token_names)
                
            
    tokenizer_cases = of_array_with_tail([word(to_text(interpolate("| _ -\u003e _unknown_token %P()", [var_lexbuf]))), Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word("eof -\u003e")), word("EOF"))], tokenizer_cases)
    token_names_1 : FSharpList[str] = reverse(token_names)
    tokenizer_cases_1 : FSharpList[Doc] = reverse(tokenizer_cases)
    file_lexer : Tuple[str, Doc] = (filename_lexer + ".ml", vsep(of_array_1([word(rts_file_string), empty_2, word("type token ="), vsep(to_list(delay(lambda analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: append_1(map(lambda tkn: Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("|"), word(tkn)), word("of")), word("tbnf_token")), token_names_1), delay(lambda _unit=None: singleton(word("| EOF"))))))), empty_2, vsep(lexical_rule_defs), empty_2, vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let rec"), word(var_tokenizer)), word(var_lexbuf)), word("=")), align(indent(4, vsep(cons(word(to_text(interpolate("match%%sedlex %P() with", [var_lexbuf]))), tokenizer_cases_1))))]))])))
    match_value_13 : Optional[monot] = try_find("start", analyzer.Omega)
    if match_value_13 is not None:
        start_t : monot = match_value_13
        start_name : str = cg_symbol(symbol(1, "start"))
        start_t_1 : str = cg_type(monot__prune(start_t))
        return [file_constructors, (filename_parser + ".mly", vsep(to_list(delay(lambda analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: append_1(singleton(word("%{")), delay(lambda _unit=None: append_1(singleton(word(to_text(interpolate("open %P();;", [capitalized(filename_require)])))), delay(lambda _unit=None: append_1(singleton(word(to_text(interpolate("open %P();;", [capitalized(filename_lexer)])))), delay(lambda _unit=None: append_1(singleton(word(to_text(interpolate("open %P();;", [capitalized(filename_constructors)])))), delay(lambda _unit=None: append_1(singleton(word("%}")), delay(lambda _unit=None: append_1(map(lambda token_name_2: word(to_text(interpolate("%%token\u003ctbnf_token\u003e %P()", [token_name_2]))), token_names_1), delay(lambda _unit=None: append_1(singleton(word("%token EOF")), delay(lambda _unit=None: append_1(singleton(word(to_text(interpolate("%%start \u003c%P()\u003e start", [start_rule_qualified_type])))) if (start_rule_qualified_type is not None) else (singleton(word(to_text(interpolate("%%start \u003c%P()\u003e start", [start_t_1]))))), delay(lambda _unit=None: append_1(singleton(word("%%")), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: append_1(singleton(word(to_text(printf("start : %s EOF { $1 }"))(start_name))), delay(lambda _unit=None: singleton(file_grammar))))))))))))))))))))))))))), file_lexer]
    
    else: 
        raise UnboundNonterminal("start")
    


