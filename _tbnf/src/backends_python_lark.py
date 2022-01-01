from __future__ import annotations
from typing import (List, Callable, Any, Tuple, Iterable, Optional)
from ..fable_modules.fable_library.array import (map as map_2, sort_in_place_by, find_index, sort)
from ..fable_modules.fable_library.list import (empty, FSharpList, map as map_1, of_array as of_array_1, append, cons, is_empty, tail, head, to_array, fold, map_indexed, of_array_with_tail, reverse, singleton as singleton_1)
from ..fable_modules.fable_library.map import (empty as empty_1, try_find, add, FSharpMap__get_Item)
from ..fable_modules.fable_library.seq import (to_list, delay, map, of_list as of_list_1, collect, append as append_1, singleton, empty as empty_3)
from ..fable_modules.fable_library.set import (of_array, of_list, union, contains)
from ..fable_modules.fable_library.string import (to_text, interpolate, printf, join)
from ..fable_modules.fable_library.util import (compare_primitives, compare)
from ..FableSedlex.code_gen import (Doc, vsep, Doc_op_Addition_Z7CFFAC00, word, Doc_op_Multiply_Z7CFFAC00, parens, seplist, Doc_op_RightShift_2AAA0F3C, bracket, empty as empty_2, align)
from ..FableSedlex.code_gen_python import codegen_python
from ..FableSedlex.sedlex import (Automata_node, pcompl, pinterval, pplus, pstar, pany, pseq, por, popt, pstring, keep_token, peof, build)
from .analysis import (Analyzer, Sigma__get_GlobalVariables)
from .backends_common import (CodeGenOptions, List_tryLookup)
from .exceptions import (UnboundVariable, UnboundLexer)
from .grammar import (definition as definition_1, symbol, position, expr as expr_1, node, monot, lexerule, production as production_1)
from .utils import (NameMangling_IdentifierDescriptor__WithNameEnv_Z4088684A, NameMangling_nameEnv, NameMangling_IdentifierDescriptor_Create_Z48C5CCEF, is_lower, is_unicode, is_upper, is_digit, NameMangling_IdentifierDescriptor, NameMangling_maskChar, NameMangling_mangle, DocBuilder_Builder__Run_72B9C953, DocBuilder_Builder__Delay_Z6CB7AF07, DocBuilder_Builder__Return_1505, DocBuilder_cg, DocBuilder_Builder__Bind_Z300482AD, DocBuilder_block_1, escape_string, DocBuilder_runCG, DocBuilder_Builder__Combine_Z44B4C520, DocBuilder_Builder__Yield_417FD60, DocBuilder_Builder__ReturnFrom_72B9C953, DocBuilder_Builder__For_4C40856C)

def codegen(analyzer: Analyzer, _arg1: CodeGenOptions, stmts: List[definition_1]) -> List[Tuple[str, Doc]]:
    renamer : Callable[[str], str] = _arg1.variable_renamer
    lang_name : str = _arg1.lang
    PythonPackage_Sedlex : str = "_tbnf.FableSedlex"
    import_names : FSharpList[str] = empty()
    export_parser : str = "parser"
    export_grammar : str = "grammar"
    class ObjectExpr119:
        @property
        def Compare(self) -> Any:
            return lambda x, y: compare_primitives(x, y)
        
    export_names : Any = of_array([export_parser, export_grammar], ObjectExpr119())
    class ObjectExpr120:
        @property
        def Compare(self) -> Any:
            return lambda x_1, y_1: compare_primitives(x_1, y_1)
        
    abandoned_names : Any = of_array(["False", "None", "True", "and", "as", "assert", "async", "await", "break", "class", "continue", "def", "del", "elif", "else", "except", "finally", "for", "from", "global", "if", "import", "in", "is", "lambda", "nonlocal", "not", "or", "pass", "raise", "return", "try", "while", "with", "yield", "match", "case"], ObjectExpr120())
    class ObjectExpr121:
        @property
        def Compare(self) -> Any:
            return lambda x_2, y_2: compare(x_2, y_2)
        
    symmap : Any = empty_1(ObjectExpr121())
    toplevel_transformer : FSharpList[Doc] = empty()
    current_pos : position = analyzer.current_pos
    class ObjectExpr122:
        @property
        def Compare(self) -> Any:
            return lambda x_3, y_3: compare_primitives(x_3, y_3)
        
    lexer_maps : Any = empty_1(ObjectExpr122())
    lark_decls_for_named_terminals : FSharpList[str] = empty()
    global_scope : FSharpList[Tuple[str, str]] = to_list(delay(lambda analyzer=analyzer, _arg1=_arg1, stmts=stmts: map(lambda k: (k[0], renamer(k[0])), Sigma__get_GlobalVariables(analyzer.Sigma))))
    class ObjectExpr123:
        @property
        def Compare(self) -> Any:
            return lambda x_4, y_4: compare_primitives(x_4, y_4)
        
    def arrow_124(i: int, c: str, analyzer: Analyzer=analyzer, _arg1: CodeGenOptions=_arg1, stmts: List[definition_1]=stmts) -> bool:
        test : bool = True if (True if (True if (is_lower(c)) else (is_unicode(c))) else (is_upper(c))) else (c == "_")
        return test if (i == 0) else (True if (test) else (is_digit(c)))
    
    python_identifier_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z4088684A(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_124, lambda i_1, c_1, analyzer=analyzer, _arg1=_arg1, stmts=stmts: to_text(interpolate("_%P()_", [(i_1 * ord(c_1)) + 7])) if (is_digit(c_1)) else (to_text(interpolate("_%P()_", [ord(c_1)])))), NameMangling_nameEnv(of_list(map_1(lambda tuple, analyzer=analyzer, _arg1=_arg1, stmts=stmts: tuple[1], global_scope), ObjectExpr123())))
    class ObjectExpr125:
        @property
        def Compare(self) -> Any:
            return lambda x_5, y_5: compare_primitives(x_5, y_5)
        
    lark_lexer_identifier_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z4088684A(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(lambda i_2, c_2, analyzer=analyzer, _arg1=_arg1, stmts=stmts: is_upper(c_2) if (i_2 == 0) else (True if (True if (is_upper(c_2)) else (c_2 == "_")) else (is_digit(c_2))), lambda _arg1_1, c_3, analyzer=analyzer, _arg1=_arg1, stmts=stmts: c_3.upper() if (is_lower(c_3)) else (("_" + NameMangling_maskChar(ord("A"), ord("Z"), ord(c_3))) + "_")), NameMangling_nameEnv(of_array(["UNKNOWN"], ObjectExpr125())))
    class ObjectExpr127:
        @property
        def Compare(self) -> Any:
            return lambda x_6, y_6: compare_primitives(x_6, y_6)
        
    lark_parser_identifier_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z4088684A(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(lambda i_3, c_4, analyzer=analyzer, _arg1=_arg1, stmts=stmts: is_lower(c_4) if (i_3 == 0) else (True if (True if (is_lower(c_4)) else (c_4 == "_")) else (is_digit(c_4))), lambda _arg2, c_5, analyzer=analyzer, _arg1=_arg1, stmts=stmts: c_5.lower() if (is_upper(c_5)) else (("_" + NameMangling_maskChar(ord("a"), ord("z"), ord(c_5))) + "_")), NameMangling_nameEnv(of_array(["start"], ObjectExpr127())))
    mangle = None
    abandoned_names_1 : Any = union(abandoned_names, export_names)
    mangle = lambda idr, analyzer=analyzer, _arg1=_arg1, stmts=stmts: lambda n: NameMangling_mangle(abandoned_names_1, idr, n)
    def cg_symbol(x_7: symbol, analyzer: Analyzer=analyzer, _arg1: CodeGenOptions=_arg1, stmts: List[definition_1]=stmts) -> str:
        nonlocal symmap
        match_value : Optional[str] = try_find(x_7, symmap)
        if match_value is None:
            valid_py_ident = None
            if x_7.tag == 0:
                valid_py_ident = mangle(lark_lexer_identifier_descr)(("\"" + x_7.fields[0]) + "\"") if (x_7.fields[1]) else ("EOF" if (x_7.fields[0] == "EOF") else (mangle(lark_lexer_identifier_descr)(x_7.fields[0])))
            
            elif x_7.tag == 1:
                valid_py_ident = "start" if (x_7.fields[0] == "start") else (mangle(lark_parser_identifier_descr)(x_7.fields[0]))
            
            else: 
                raise Exception("macro not processed")
            
            symmap = add(x_7, valid_py_ident, symmap)
            return valid_py_ident
        
        else: 
            return match_value
        
    
    name_of_named_term : Callable[[str], str] = lambda n_2, analyzer=analyzer, _arg1=_arg1, stmts=stmts: cg_symbol(symbol(0, n_2, False))
    define_py_func : Callable[[Doc, FSharpList[Doc], Doc], Doc] = lambda fname, args, body, analyzer=analyzer, _arg1=_arg1, stmts=stmts: vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(word("def"), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(fname, parens(seplist(word(", "), args))), word(":"))), Doc_op_RightShift_2AAA0F3C(body, 4)]))
    TREE_NAME : str = "__tbnf_COMPONENTS"
    def cg_expr(action_name: str, scope: FSharpList[Tuple[str, str]], expr: expr_1, analyzer: Analyzer=analyzer, _arg1: CodeGenOptions=_arg1, stmts: List[definition_1]=stmts) -> DocBuilder_block_1[Doc]:
        def arrow_139(action_name: str=action_name, scope: FSharpList[Tuple[str, str]]=scope, expr: expr_1=expr) -> DocBuilder_block_1[Doc]:
            match_value_1 : node = expr.node
            if match_value_1.tag == 6:
                match_value_2 : Optional[str] = List_tryLookup(match_value_1.fields[0], scope)
                def arrow_135(_unit=None) -> Doc:
                    raise UnboundVariable(match_value_1.fields[0])
                
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(match_value_2)) if (match_value_2 is not None) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, arrow_135()))
            
            elif match_value_1.tag == 11:
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word("True")) if (match_value_1.fields[0]) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, word("False")))
            
            elif match_value_1.tag == 3:
                return DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, cg_expr(action_name, scope, match_value_1.fields[0]), lambda _arg6: DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(_arg6, word(".")), word(match_value_1.fields[1]))))
            
            elif match_value_1.tag == 8:
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(to_text(printf("%d"))(match_value_1.fields[0])))
            
            elif match_value_1.tag == 10:
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(to_text(printf("%f"))(match_value_1.fields[0])))
            
            elif match_value_1.tag == 9:
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(escape_string(match_value_1.fields[0])))
            
            elif match_value_1.tag == 5:
                args_3 : FSharpList[str] = map_1(lambda tuple_1: tuple_1[0], match_value_1.fields[0])
                pattern_input : Tuple[Doc, FSharpList[Doc]] = DocBuilder_runCG(cg_expr(action_name, append(to_list(delay(lambda _unit=None: map(lambda arg_1: (arg_1, mangle(python_identifier_descr)(arg_1)), args_3))), scope), match_value_1.fields[1]))
                func_name : str = mangle(python_identifier_descr)("lambda")
                return DocBuilder_Builder__Combine_Z44B4C520(DocBuilder_cg, DocBuilder_Builder__Yield_417FD60(DocBuilder_cg, define_py_func(word(func_name), map_1(lambda s_5: word(s_5), args_3), vsep(of_array_1([vsep(pattern_input[1]), Doc_op_Addition_Z7CFFAC00(word("return"), pattern_input[0])])))), DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__Return_1505(DocBuilder_cg, word(func_name))))
            
            else: 
                def arrow_136(_arg7: Doc) -> DocBuilder_block_1[Doc]:
                    m_name : str = mangle(python_identifier_descr)(match_value_1.fields[0])
                    return DocBuilder_Builder__Combine_Z44B4C520(DocBuilder_cg, DocBuilder_Builder__Yield_417FD60(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(m_name), word("=")), _arg7)), DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__ReturnFrom_72B9C953(DocBuilder_cg, cg_expr(action_name, cons((match_value_1.fields[0], m_name), scope), match_value_1.fields[2]))))
                
                def arrow_137(_unit=None) -> str:
                    arg20_1 : int = (match_value_1.fields[0] - 1) or 0
                    return to_text(printf("%s[%d]"))(TREE_NAME)(arg20_1)
                
                def arrow_138(_arg11: FSharpList[Doc]) -> DocBuilder_block_1[Doc]:
                    elts_0027_1 : FSharpList[Doc] = _arg11
                    return DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(Doc_op_Addition_Z7CFFAC00(head(elts_0027_1), word(",")))) if (is_empty(tail(elts_0027_1))) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(seplist(word(", "), elts_0027_1)))) if (not is_empty(elts_0027_1)) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(empty_2)))
                
                return DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, cg_expr(action_name, scope, match_value_1.fields[1]), arrow_136) if (match_value_1.tag == 4) else (DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, DocBuilder_Builder__Run_72B9C953(DocBuilder_cg, DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__For_4C40856C(DocBuilder_cg, match_value_1.fields[0], lambda _arg8: DocBuilder_Builder__ReturnFrom_72B9C953(DocBuilder_cg, cg_expr(action_name, scope, _arg8))))), lambda _arg9: DocBuilder_Builder__Return_1505(DocBuilder_cg, bracket(seplist(word(", "), _arg9)))) if (match_value_1.tag == 2) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, word(arrow_137())) if (match_value_1.tag == 7) else (DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, DocBuilder_Builder__Run_72B9C953(DocBuilder_cg, DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__For_4C40856C(DocBuilder_cg, match_value_1.fields[0], lambda _arg10: DocBuilder_Builder__ReturnFrom_72B9C953(DocBuilder_cg, cg_expr(action_name, scope, _arg10))))), arrow_138) if (match_value_1.tag == 1) else (DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, cg_expr(action_name, scope, match_value_1.fields[0]), lambda _arg3: DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, DocBuilder_Builder__Run_72B9C953(DocBuilder_cg, DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__For_4C40856C(DocBuilder_cg, match_value_1.fields[1], lambda _arg4: DocBuilder_Builder__ReturnFrom_72B9C953(DocBuilder_cg, cg_expr(action_name, scope, _arg4))))), lambda _arg5: DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Multiply_Z7CFFAC00(_arg3, parens(seplist(word(", "), _arg5))))))))))
            
        
        return DocBuilder_Builder__Run_72B9C953(DocBuilder_cg, DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, arrow_139))
    
    def mk_lexer(def_: lexerule, analyzer: Analyzer=analyzer, _arg1: CodeGenOptions=_arg1, stmts: List[definition_1]=stmts) -> Callable[[Automata_node], Automata_node]:
        op_dereference : Callable[[lexerule, Automata_node], Automata_node] = mk_lexer
        if def_.tag == 9:
            return op_dereference(def_.fields[0])
        
        elif def_.tag == 5:
            return pcompl(op_dereference(def_.fields[0]))
        
        elif def_.tag == 0:
            return pinterval(ord("0"), ord("9"))
        
        elif def_.tag == 6:
            return pplus(op_dereference(def_.fields[0]))
        
        elif def_.tag == 7:
            return pstar(op_dereference(def_.fields[0]))
        
        elif def_.tag == 1:
            return pany
        
        elif def_.tag == 11:
            match_value_4 : Optional[Callable[[Automata_node], Automata_node]] = try_find(def_.fields[0], lexer_maps)
            if match_value_4 is None:
                raise UnboundLexer(def_.fields[0])
            
            else: 
                return match_value_4
            
        
        elif def_.tag == 2:
            return pseq(to_array(map_1(mk_lexer, def_.fields[0])))
        
        elif def_.tag == 10:
            return pinterval(def_.fields[0], def_.fields[1])
        
        elif def_.tag == 4:
            if not is_empty(def_.fields[0]):
                return fold(lambda a_1, b, def_=def_: por(a_1, b), op_dereference(head(def_.fields[0])), map_1(mk_lexer, tail(def_.fields[0])))
            
            else: 
                raise Exception("impossible: alternatives cannot be empty.")
            
        
        elif def_.tag == 8:
            return popt(op_dereference(def_.fields[0]))
        
        else: 
            return pstring(def_.fields[0])
        
    
    def mk_lexer_debug(def__1: lexerule, analyzer: Analyzer=analyzer, _arg1: CodeGenOptions=_arg1, stmts: List[definition_1]=stmts) -> str:
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
                return fold(lambda a_2, b_1, def__1=def__1: to_text(interpolate("por(%P(), %P())", [a_2, b_1])), op_dereference_1(head(def__1.fields[0])), map_1(mk_lexer_debug, tail(def__1.fields[0])))
            
            else: 
                raise Exception("impossible: alternatives cannot be empty.")
            
        
        elif def__1.tag == 8:
            return to_text(interpolate("popt%P()", [op_dereference_1(def__1.fields[0])]))
        
        else: 
            return to_text(interpolate("pstring(%P())", [escape_string(def__1.fields[0])]))
        
    
    def cg_stmt(stmt: definition_1, analyzer: Analyzer=analyzer, _arg1: CodeGenOptions=_arg1, stmts: List[definition_1]=stmts) -> Doc:
        nonlocal current_pos, lexer_maps, lark_decls_for_named_terminals, import_names
        if stmt.tag == 2:
            decl_1 : dict = stmt.fields[0]
            current_pos = decl_1["pos"]
            lexer_maps = add(decl_1["lhs"], mk_lexer(decl_1["define"]), lexer_maps)
            if contains(decl_1["lhs"], analyzer.ReferencedNamedTokens):
                tname : str = name_of_named_term(decl_1["lhs"])
                lark_decls_for_named_terminals = cons(tname, lark_decls_for_named_terminals)
            
            return empty_2
        
        elif stmt.tag == 5:
            current_pos = stmt.fields[0]["pos"]
            return empty_2
        
        elif stmt.tag == 3:
            import_names = cons(renamer(stmt.fields[0]["ident"]), import_names)
            return empty_2
        
        elif stmt.tag == 4:
            return empty_2
        
        elif stmt.tag == 0:
            raise Exception("macro not processed")
        
        else: 
            decl : dict = stmt.fields[0]
            current_pos = decl["pos"]
            ntname_1 : str = cg_symbol(symbol(1, decl["lhs"]))
            idx_1 : int = 0
            def arrow_147(stmt: definition_1=stmt) -> Iterable[Doc]:
                def arrow_146(match_value_3: Tuple[position, production_1]) -> Iterable[Doc]:
                    nonlocal current_pos
                    production : production_1 = match_value_3[1]
                    current_pos = match_value_3[0]
                    action_name_2 = None
                    idx : int = idx_1 or 0
                    action_name_2 = to_text(printf("%s_%i"))(ntname_1)(idx)
                    def arrow_145(_unit=None) -> Iterable[Doc]:
                        nonlocal toplevel_transformer, idx_1
                        pattern_input_1 : Tuple[Doc, FSharpList[Doc]] = DocBuilder_runCG(cg_expr(action_name_2, global_scope, production.action))
                        a : Doc = define_py_func(word(action_name_2), of_array_1([word("self"), word(TREE_NAME)]), vsep(of_array_1([vsep(pattern_input_1[1]), Doc_op_Addition_Z7CFFAC00(word("return"), pattern_input_1[0])])))
                        toplevel_transformer = of_array_with_tail([a, empty_2], toplevel_transformer)
                        idx_1 = (idx_1 + 1) or 0
                        return empty_3()
                    
                    return append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(seplist(word(" "), map_1(lambda arg_2: word(cg_symbol(arg_2)), production.symbols)), word("-\u003e")), word(action_name_2))), delay(arrow_145))
                
                return collect(arrow_146, decl["define"])
            
            body_4 : Doc = align(vsep(map_indexed(lambda i_6, e_1, stmt=stmt: Doc_op_Addition_Z7CFFAC00(word(":") if (i_6 == 0) else (word("|")), e_1), to_list(delay(arrow_147)))))
            return Doc_op_Addition_Z7CFFAC00(word(ntname_1), body_4)
        
    
    file_grammar : Doc = vsep(of_array_1(map_2(cg_stmt, stmts, None)))
    filename_lexer : str = to_text(printf("%s_lexer"))(lang_name)
    filename_require : str = to_text(printf("%s_require"))(lang_name)
    filename_python : str = to_text(printf("%s_parser"))(lang_name)
    var_tokenmaps : str = mangle(python_identifier_descr)("tokenmaps")
    classvar_lark_lexer : str = mangle(python_identifier_descr)("Lexer")
    classvar_sedlex_lexer : str = mangle(python_identifier_descr)("Sedlex")
    classvar_lark_token : str = mangle(python_identifier_descr)("Token")
    var_iseof : str = mangle(python_identifier_descr)("is_eof")
    var_construct_token : str = mangle(python_identifier_descr)("construct_token")
    var_lexall : str = mangle(python_identifier_descr)("lexall")
    var_from_ustring : str = mangle(python_identifier_descr)("from_ustring")
    classvar_lark_transformer : str = mangle(python_identifier_descr)("Transformer")
    classvar_rbnftransformer : str = mangle(python_identifier_descr)("RBNFTransformer")
    classvar_lark_builder : str = mangle(python_identifier_descr)("Lark")
    lexer_info : FSharpList[Tuple[Callable[[Automata_node], Automata_node], keep_token]] = empty()
    token_names : FSharpList[str] = empty()
    idx_2 : int = 0
    token_id : int = 0
    ReferencedNamedTokens : List[str] = list(analyzer.ReferencedNamedTokens)
    class ObjectExpr149:
        @property
        def Compare(self) -> Any:
            return lambda x_14, y_8: compare_primitives(x_14, y_8)
        
    sort_in_place_by(lambda k_1, analyzer=analyzer, _arg1=_arg1, stmts=stmts: find_index(lambda y_7: k_1 == y_7, analyzer.TokenFragments), ReferencedNamedTokens, ObjectExpr149())
    for idx_3 in range(0, (len(ReferencedNamedTokens) - 1) + 1, 1):
        k_2 : str = ReferencedNamedTokens[idx_3]
        v_3 : Callable[[Automata_node], Automata_node] = FSharpMap__get_Item(lexer_maps, k_2)
        if contains(k_2, analyzer.IgnoreSet):
            lexer_info = cons((v_3, keep_token(0)), lexer_info)
        
        else: 
            lexer_info = cons((v_3, keep_token(1, token_id)), lexer_info)
            token_names = cons(name_of_named_term(k_2), token_names)
            token_id = (token_id + 1) or 0
        
        idx_2 = (idx_2 + 1) or 0
    class ObjectExpr151:
        @property
        def Compare(self) -> Any:
            return lambda x_15, y_9: compare_primitives(x_15, y_9)
        
    arr : List[str] = sort(list(analyzer.LiteralTokens), ObjectExpr151())
    for idx_4 in range(0, (len(arr) - 1) + 1, 1):
        k_3 : str = arr[idx_4]
        v_4 : Callable[[Automata_node], Automata_node] = pstring(k_3)
        lexer_info = cons((v_4, keep_token(1, token_id)), lexer_info)
        token_names = cons(cg_symbol(symbol(0, k_3, True)), token_names)
        token_id = (token_id + 1) or 0
        idx_2 = (idx_2 + 1) or 0
    lexer_info = cons((pany, keep_token(1, token_id)), lexer_info)
    token_names = cons("UNKNOWN", token_names)
    token_names_1 : FSharpList[str] = reverse(token_names)
    lexer_info_1 : List[Tuple[Callable[[Automata_node], Automata_node], keep_token]] = to_array(reverse(cons((peof, keep_token(1, -1)), lexer_info)))
    def arrow_162(analyzer: Analyzer=analyzer, _arg1: CodeGenOptions=_arg1, stmts: List[definition_1]=stmts) -> Iterable[Doc]:
        def arrow_161(_unit=None) -> Iterable[Doc]:
            def arrow_159(_unit=None) -> Iterable[Doc]:
                names : Doc = parens(seplist(word(","), map_1(lambda s_12: word(s_12), import_names)))
                def arrow_158(_unit=None) -> Iterable[Doc]:
                    def arrow_157(_unit=None) -> Iterable[Doc]:
                        def arrow_156(_unit=None) -> Iterable[Doc]:
                            def arrow_155(_unit=None) -> Iterable[Doc]:
                                def arrow_154(_unit=None) -> Iterable[Doc]:
                                    def arrow_153(_unit=None) -> Iterable[Doc]:
                                        def arrow_152(_unit=None) -> Iterable[Doc]:
                                            return empty_3()
                                        
                                        return append_1(singleton(word(to_text(interpolate("from %P().sedlex import from_ustring as %P()", [PythonPackage_Sedlex, var_from_ustring])))), delay(arrow_152))
                                    
                                    return append_1(singleton(word(to_text(interpolate("from lark import Lark as %P()", [classvar_lark_builder])))), delay(arrow_153))
                                
                                return append_1(singleton(word(to_text(interpolate("from lark import Transformer as %P()", [classvar_lark_transformer])))), delay(arrow_154))
                            
                            return append_1(singleton(word(to_text(interpolate("from lark import Token as %P()", [classvar_lark_token])))), delay(arrow_155))
                        
                        return append_1(singleton(word(to_text(interpolate("from lark.lexer import Lexer as %P()", [classvar_lark_lexer])))), delay(arrow_156))
                    
                    return append_1(singleton(word(to_text(interpolate("from .%P() import lexall as %P()", [filename_lexer, var_lexall])))), delay(arrow_157))
                
                return append_1(singleton(Doc_op_Addition_Z7CFFAC00(word(to_text(interpolate("from .%P() import", [filename_require]))), names)), delay(arrow_158))
            
            return append_1(arrow_159() if (not is_empty(import_names)) else (empty_3()), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(var_tokenmaps), word("=")), bracket(seplist(word(", "), map_1(lambda arg_3: word(escape_string(arg_3)), token_names_1))))), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: append_1(singleton(define_py_func(word(var_construct_token), of_array_1([word("token_id"), word("lexeme"), word("line"), word("col"), word("span"), word("offset"), word("file")]), vsep(of_array_1([word(to_text(interpolate("if token_id == -1: return %P()(\"EOF\", \"\")", [classvar_lark_token]))), word(to_text(interpolate("return %P()(%P()[token_id], lexeme, offset, line, col, None, None, span + offset)", [classvar_lark_token, var_tokenmaps])))])))), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: append_1(singleton(define_py_func(word(var_iseof), singleton_1(word("token")), word("return token.type == \"EOF\""))), delay(lambda _unit=None: append_1(singleton(word(to_text(interpolate("class %P()(%P()):", [classvar_sedlex_lexer, classvar_lark_lexer])))), delay(lambda _unit=None: append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(of_array_1([define_py_func(word("__init__"), of_array_1([word("self"), word("lex_conf")]), word("pass")), define_py_func(word("lex"), of_array_1([word("self"), word("raw_string")]), vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("lexbuf"), word("=")), word(to_text(interpolate("%P()(raw_string)", [var_from_ustring])))), word(to_text(interpolate("return %P()(lexbuf, %P(), %P())", [var_lexall, var_construct_token, var_iseof])))])))])), 4)), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: append_1(singleton(word(to_text(interpolate("class %P()(%P()):", [classvar_rbnftransformer, classvar_lark_transformer])))), delay(lambda _unit=None: append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(toplevel_transformer), 4)), delay(lambda _unit=None: append_1(singleton(Doc_op_RightShift_2AAA0F3C(word("pass"), 4)), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: append_1(singleton(word(to_text(interpolate("with (__import__(\u0027pathlib\u0027).Path(__file__).parent /\u0027%P().lark\u0027).open(encoding=\u0027utf8\u0027) as __0123fx9:", [lang_name])))), delay(lambda _unit=None: append_1(singleton(Doc_op_RightShift_2AAA0F3C(Doc_op_Addition_Z7CFFAC00(word(export_grammar), word("= __0123fx9.read()")), 4)), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(export_parser), word("=")), Doc_op_Multiply_Z7CFFAC00(word(classvar_lark_builder), parens(seplist(word(", "), of_array_1([word(export_grammar), word("start=\u0027start\u0027"), word("parser=\u0027lalr\u0027"), word(to_text(interpolate("lexer=%P()", [classvar_sedlex_lexer]))), word(to_text(interpolate("transformer=%P()()", [classvar_rbnftransformer]))), word("keep_all_tokens=True")]))))))))))))))))))))))))))))))))))))))))
        
        return append_1(singleton(word("from __future__ import annotations")), delay(arrow_161))
    
    return [(lang_name + ".lark", vsep(of_array_1([file_grammar, Doc_op_Addition_Z7CFFAC00(word("%declare"), seplist(word(" "), map_1(lambda s_11, analyzer=analyzer, _arg1=_arg1, stmts=stmts: word(s_11), token_names_1)))]))), (filename_lexer + ".py", codegen_python(PythonPackage_Sedlex, build(lexer_info_1, "the last branch must be a catch-all error case!"))), (filename_python + ".py", vsep(to_list(delay(arrow_162))))]


