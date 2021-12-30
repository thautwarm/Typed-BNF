from __future__ import annotations
from typing import (Callable, Any, Tuple, Optional, TypeVar, List)
from fable_modules.fable_library.array import (map as map_2, sort_in_place_by, find_index)
from fable_modules.fable_library.list import (empty, FSharpList, map as map_1, of_array as of_array_1, is_empty, head, tail, append, cons, to_array, fold, map_indexed, of_array_with_tail, singleton as singleton_1)
from fable_modules.fable_library.map import (empty as empty_1, try_find, add, FSharpMap__get_Item)
from fable_modules.fable_library.option import some
from fable_modules.fable_library.seq import (to_list, delay, map, collect, append as append_1, singleton, empty as empty_3)
from fable_modules.fable_library.set import (of_array, of_list, union, contains)
from fable_modules.fable_library.string import (to_text, printf, interpolate)
from fable_modules.fable_library.util import (compare_primitives, compare, equals, partial_apply)
from .analysis import (Sigma__get_GlobalVariables, Analyzer)
from .backends_common import (escape_string, CodeGenOptions)
from .exceptions import (UnboundVariable, UnboundLexer)
from .FableSedlex.code_gen import (Doc, vsep, Doc_op_Addition_Z7CFFAC00, word, Doc_op_Multiply_Z7CFFAC00, seplist, Doc_op_RightShift_2AAA0F3C, parens, bracket, empty as empty_2, align)
from .FableSedlex.code_gen_python import codegen_python
from .FableSedlex.sedlex import (Automata_node, pcompl, pinterval, pplus, pstar, pany, pseq, por, popt, keep_token, build)
from .grammar import (symbol, position, expr as expr_1, node, monot, lexerule, production as production_1, definition as definition_1)
from .utils import (NameMangling_IdentifierDescriptor__get_SupportUnicode, NameMangling_IdentifierDescriptor__get_SupportNoPrefixDigits, NameMangling_IdentifierDescriptor__get_SupportUnderscore, NameMangling_IdentifierDescriptor__get_SupportUpperAscii, NameMangling_IdentifierDescriptor__get_SupportLowerAscii, NameMangling_IdentifierDescriptor__get_SupportDigit, NameMangling_emptyIdentifierDescriptor, NameMangling_IdentifierDescriptor, IdHelper_newIdEnv, IdHelper_idEnv, NameMangling_nameEnv, NameMangling_mangle, DocBuilder_block_1, DocBuilder_Builder__Run_72B9C953, DocBuilder_Builder__Delay_Z6CB7AF07, DocBuilder_Builder__Return_1505, DocBuilder_cg, DocBuilder_Builder__Bind_Z300482AD, DocBuilder_runCG, DocBuilder_Builder__Combine_Z44B4C520, DocBuilder_Builder__Yield_417FD60, DocBuilder_Builder__ReturnFrom_72B9C953, DocBuilder_Builder__For_4C40856C)

a_ = TypeVar("a_")

b_ = TypeVar("b_")

def codegen(analyzer: Analyzer, _arg1: CodeGenOptions, stmts: List[definition_1]) -> List[Tuple[str, Doc]]:
    renamer : Callable[[str], str] = _arg1.renamer
    lang_name : str = _arg1.lang
    python_identifier_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__get_SupportUnicode(NameMangling_IdentifierDescriptor__get_SupportNoPrefixDigits(NameMangling_IdentifierDescriptor__get_SupportUnderscore(NameMangling_IdentifierDescriptor__get_SupportUpperAscii(NameMangling_IdentifierDescriptor__get_SupportLowerAscii(NameMangling_IdentifierDescriptor__get_SupportDigit(NameMangling_emptyIdentifierDescriptor))))))
    lark_lexer_identifier_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__get_SupportDigit(NameMangling_IdentifierDescriptor__get_SupportNoPrefixDigits(NameMangling_IdentifierDescriptor__get_SupportUpperAscii(NameMangling_IdentifierDescriptor__get_SupportUnderscore(NameMangling_emptyIdentifierDescriptor))))
    lark_parser_identifier_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__get_SupportDigit(NameMangling_IdentifierDescriptor__get_SupportNoPrefixDigits(NameMangling_IdentifierDescriptor__get_SupportLowerAscii(NameMangling_IdentifierDescriptor__get_SupportUnderscore(NameMangling_emptyIdentifierDescriptor))))
    import_names : FSharpList[str] = empty()
    export_parser : str = "parser"
    export_grammar : str = "grammar"
    class ObjectExpr95:
        @property
        def Compare(self) -> Any:
            return lambda x, y: compare_primitives(x, y)
        
    export_names : Any = of_array([export_parser, export_grammar], ObjectExpr95())
    class ObjectExpr96:
        @property
        def Compare(self) -> Any:
            return lambda x_1, y_1: compare_primitives(x_1, y_1)
        
    abandoned_names : Any = of_array(["False", "None", "True", "and", "as", "assert", "async", "await", "break", "class", "continue", "def", "del", "elif", "else", "except", "finally", "for", "from", "global", "if", "import", "in", "is", "lambda", "nonlocal", "not", "or", "pass", "raise", "return", "try", "while", "with", "yield", "match", "case"], ObjectExpr96())
    class ObjectExpr97:
        @property
        def Compare(self) -> Any:
            return lambda x_2, y_2: compare(x_2, y_2)
        
    symmap : Any = empty_1(ObjectExpr97())
    id_env : IdHelper_idEnv = IdHelper_newIdEnv()
    toplevel_transformer : FSharpList[Doc] = empty()
    current_pos : position = analyzer.current_pos
    class ObjectExpr98:
        @property
        def Compare(self) -> Any:
            return lambda x_3, y_3: compare_primitives(x_3, y_3)
        
    lexer_maps : Any = empty_1(ObjectExpr98())
    lark_decls_for_named_terminals : FSharpList[str] = empty()
    global_scope : FSharpList[Tuple[str, str]] = to_list(delay(lambda analyzer=analyzer, _arg1=_arg1, stmts=stmts: map(lambda k: (k[0], renamer(k[0])), Sigma__get_GlobalVariables(analyzer.Sigma))))
    class ObjectExpr99:
        @property
        def Compare(self) -> Any:
            return lambda x_4, y_4: compare_primitives(x_4, y_4)
        
    name_env : NameMangling_nameEnv = NameMangling_nameEnv(of_list(map_1(lambda tuple, analyzer=analyzer, _arg1=_arg1, stmts=stmts: tuple[1], global_scope), ObjectExpr99()))
    mangle = None
    abandoned_names_1 : Any = union(abandoned_names, export_names)
    mangle = lambda idr, analyzer=analyzer, _arg1=_arg1, stmts=stmts: lambda n: NameMangling_mangle(abandoned_names_1, name_env, idr, n)
    def cg_symbol(x_5: symbol, analyzer=analyzer, _arg1=_arg1, stmts=stmts) -> str:
        nonlocal symmap
        match_value : Optional[str] = try_find(x_5, symmap)
        if match_value is None:
            valid_py_ident = None
            if x_5.tag == 0:
                def_ : dict = x_5.fields[0]
                valid_py_ident = mangle(lark_lexer_identifier_descr)(("\"" + def_["define"]) + "\"") if (def_["is_literal"]) else (mangle(lark_lexer_identifier_descr)(def_["define"]))
            
            elif x_5.tag == 1:
                valid_py_ident = mangle(lark_parser_identifier_descr)(x_5.fields[0])
            
            else: 
                raise Exception("macro not processed")
            
            symmap = add(x_5, valid_py_ident, symmap)
            return valid_py_ident
        
        else: 
            return match_value
        
    
    name_of_named_term : Callable[[str], str] = lambda n_2, analyzer=analyzer, _arg1=_arg1, stmts=stmts: cg_symbol(symbol(0, {
        "define": n_2,
        "is_literal": False
    }))
    define_py_func : Callable[[Doc, FSharpList[Doc], Doc], Doc] = lambda fname, args, body, analyzer=analyzer, _arg1=_arg1, stmts=stmts: vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(word("def"), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(fname, seplist(word(", "), args)), word(":"))), Doc_op_RightShift_2AAA0F3C(body, 4)]))
    def try_lookup(key_mut: a_, x_6_mut: FSharpList[Tuple[a_, b_]], analyzer=analyzer, _arg1=_arg1, stmts=stmts) -> Optional[b_]:
        while True:
            (key, x_6) = (key_mut, x_6_mut)
            if not is_empty(x_6):
                if equals(head(x_6)[0], key):
                    return some(head(x_6)[1])
                
                elif not is_empty(x_6):
                    key_mut = key
                    x_6_mut = tail(x_6)
                    continue
                
                else: 
                    raise Exception("Match failure")
                
            
            else: 
                return None
            
            break
    
    TREE_NAME : str = "__tbnf_COMPONENTS"
    def cg_expr(action_name: str, scope: FSharpList[Tuple[str, str]], expr: expr_1, analyzer=analyzer, _arg1=_arg1, stmts=stmts) -> DocBuilder_block_1[Doc]:
        op_dereference : Callable[[expr_1], DocBuilder_block_1[Doc]] = partial_apply(1, cg_expr, [action_name, scope])
        def arrow_104(action_name=action_name, scope=scope, expr=expr) -> DocBuilder_block_1[Doc]:
            match_value_1 : node = expr.node
            if match_value_1.tag == 6:
                match_value_2 : Optional[str] = try_lookup(match_value_1.fields[0], scope)
                def arrow_100(_unit=None) -> Doc:
                    raise UnboundVariable(match_value_1.fields[0])
                
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(match_value_2)) if (match_value_2 is not None) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, arrow_100()))
            
            elif match_value_1.tag == 11:
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word("True")) if (match_value_1.fields[0]) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, word("False")))
            
            elif match_value_1.tag == 3:
                return DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, op_dereference(match_value_1.fields[0]), lambda _arg6: DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(_arg6, word(".")), word(match_value_1.fields[1]))))
            
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
                return DocBuilder_Builder__Combine_Z44B4C520(DocBuilder_cg, DocBuilder_Builder__Yield_417FD60(DocBuilder_cg, vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(word("def"), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(func_name), parens(seplist(word(","), map_1(lambda s_6: word(s_6), args_3)))), word(":"))), Doc_op_RightShift_2AAA0F3C(vsep(of_array_1([vsep(pattern_input[1]), Doc_op_Addition_Z7CFFAC00(word("return"), pattern_input[0])])), 4)]))), DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__Return_1505(DocBuilder_cg, word(func_name))))
            
            else: 
                def arrow_101(_arg7: Doc) -> DocBuilder_block_1[Doc]:
                    m_name : str = mangle(python_identifier_descr)(match_value_1.fields[0])
                    return DocBuilder_Builder__Combine_Z44B4C520(DocBuilder_cg, DocBuilder_Builder__Yield_417FD60(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(m_name), word("=")), _arg7)), DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__ReturnFrom_72B9C953(DocBuilder_cg, cg_expr(action_name, cons((match_value_1.fields[0], m_name), scope), match_value_1.fields[2]))))
                
                def arrow_102(_unit=None) -> str:
                    arg20_1 : int = (match_value_1.fields[0] - 1) or 0
                    return to_text(printf("%s[%d]"))(TREE_NAME)(arg20_1)
                
                def arrow_103(_arg11: FSharpList[Doc]) -> DocBuilder_block_1[Doc]:
                    elts_0027_1 : FSharpList[Doc] = _arg11
                    return DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(Doc_op_Addition_Z7CFFAC00(seplist(word(","), elts_0027_1), word(",")))) if (is_empty(tail(elts_0027_1))) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(seplist(word(","), elts_0027_1)))) if (not is_empty(elts_0027_1)) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(empty_2)))
                
                return DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, op_dereference(match_value_1.fields[1]), arrow_101) if (match_value_1.tag == 4) else (DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, DocBuilder_Builder__Run_72B9C953(DocBuilder_cg, DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__For_4C40856C(DocBuilder_cg, match_value_1.fields[0], lambda _arg8: DocBuilder_Builder__ReturnFrom_72B9C953(DocBuilder_cg, op_dereference(_arg8))))), lambda _arg9: DocBuilder_Builder__Return_1505(DocBuilder_cg, bracket(seplist(word(","), _arg9)))) if (match_value_1.tag == 2) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, word(arrow_102())) if (match_value_1.tag == 7) else (DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, DocBuilder_Builder__Run_72B9C953(DocBuilder_cg, DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__For_4C40856C(DocBuilder_cg, match_value_1.fields[0], lambda _arg10: DocBuilder_Builder__ReturnFrom_72B9C953(DocBuilder_cg, op_dereference(_arg10))))), arrow_103) if (match_value_1.tag == 1) else (DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, op_dereference(match_value_1.fields[0]), lambda _arg3: DocBuilder_Builder__Bind_Z300482AD(DocBuilder_cg, DocBuilder_Builder__Run_72B9C953(DocBuilder_cg, DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__For_4C40856C(DocBuilder_cg, match_value_1.fields[1], lambda _arg4: DocBuilder_Builder__ReturnFrom_72B9C953(DocBuilder_cg, op_dereference(_arg4))))), lambda _arg5: DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Multiply_Z7CFFAC00(_arg3, parens(seplist(word(", "), _arg5))))))))))
            
        
        return DocBuilder_Builder__Run_72B9C953(DocBuilder_cg, DocBuilder_Builder__Delay_Z6CB7AF07(DocBuilder_cg, arrow_104))
    
    def mk_lexer(def__1: lexerule, analyzer=analyzer, _arg1=_arg1, stmts=stmts) -> Callable[[Automata_node], Automata_node]:
        op_dereference_1 : Callable[[lexerule, Automata_node], Automata_node] = mk_lexer
        if def__1.tag == 4:
            return pcompl(op_dereference_1(def__1.fields[0]))
        
        elif def__1.tag == 0:
            return pinterval(ord("0"), ord("9"))
        
        elif def__1.tag == 5:
            return pplus(op_dereference_1(def__1.fields[0]))
        
        elif def__1.tag == 6:
            return pstar(op_dereference_1(def__1.fields[0]))
        
        elif def__1.tag == 1:
            return pany
        
        elif def__1.tag == 10:
            match_value_4 : Optional[Callable[[Automata_node], Automata_node]] = try_find(def__1.fields[0], lexer_maps)
            if match_value_4 is None:
                raise UnboundLexer(def__1.fields[0])
            
            else: 
                return match_value_4
            
        
        elif def__1.tag == 2:
            return pseq(to_array(map_1(mk_lexer, def__1.fields[0])))
        
        elif def__1.tag == 9:
            return pinterval(def__1.fields[0], def__1.fields[1])
        
        elif def__1.tag == 3:
            if not is_empty(def__1.fields[0]):
                return fold(lambda a_1, b, def__1=def__1: por(a_1, b), op_dereference_1(head(def__1.fields[0])), map_1(mk_lexer, tail(def__1.fields[0])))
            
            else: 
                raise Exception("impossible: alternatives cannot be empty.")
            
        
        elif def__1.tag == 7:
            return popt(op_dereference_1(def__1.fields[0]))
        
        else: 
            return op_dereference_1(def__1.fields[0])
        
    
    def cg_stmt(stmt: definition_1, analyzer=analyzer, _arg1=_arg1, stmts=stmts) -> Doc:
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
            def arrow_107(stmt=stmt) -> Any:
                def arrow_106(match_value_3: Tuple[position, production_1]) -> Any:
                    nonlocal current_pos
                    production : production_1 = match_value_3[1]
                    current_pos = match_value_3[0]
                    action_name_2 = None
                    idx : int = idx_1 or 0
                    action_name_2 = to_text(printf("%s_%i"))(ntname_1)(idx)
                    def arrow_105(_unit=None) -> Any:
                        nonlocal toplevel_transformer, idx_1
                        pattern_input_1 : Tuple[Doc, FSharpList[Doc]] = DocBuilder_runCG(cg_expr(action_name_2, global_scope, production.action))
                        a : Doc = define_py_func(word(action_name_2), of_array_1([word("self"), word(TREE_NAME)]), vsep(of_array_1([vsep(pattern_input_1[1]), Doc_op_Addition_Z7CFFAC00(word("return"), pattern_input_1[0])])))
                        toplevel_transformer = of_array_with_tail([a, empty_2], toplevel_transformer)
                        idx_1 = (idx_1 + 1) or 0
                        return empty_3()
                    
                    return append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(seplist(word(" "), map_1(lambda arg_2: word(cg_symbol(arg_2)), production.symbols)), word("-\u003e")), word(action_name_2))), delay(arrow_105))
                
                return collect(arrow_106, decl["define"])
            
            body_4 : Doc = align(vsep(map_indexed(lambda i_2, e_1, stmt=stmt: Doc_op_Addition_Z7CFFAC00(word(":") if (i_2 == 0) else (word("|")), e_1), to_list(delay(arrow_107)))))
            return Doc_op_Addition_Z7CFFAC00(word(ntname_1), body_4)
        
    
    file_grammar_1 : Tuple[str, Doc] = (lang_name + ".lark", vsep(of_array_1(map_2(cg_stmt, stmts, None))))
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
    classvar_lark_transformer : str = mangle(python_identifier_descr)("Transformer")
    classvar_rbnftransformer : str = mangle(python_identifier_descr)("RBNFTransformer")
    classvar_lark_builder : str = mangle(python_identifier_descr)("Lark")
    lexer_info : FSharpList[Tuple[int, str, Callable[[Automata_node], Automata_node], keep_token]] = empty()
    token_names : FSharpList[str] = empty()
    idx_2 : int = 0
    token_id : int = 0
    ReferencedNamedTokens : List[str] = list(analyzer.ReferencedNamedTokens)
    class ObjectExpr108:
        @property
        def Compare(self) -> Any:
            return lambda x_7, y_6: compare_primitives(x_7, y_6)
        
    sort_in_place_by(lambda k_1, analyzer=analyzer, _arg1=_arg1, stmts=stmts: find_index(lambda y_5: k_1 == y_5, analyzer.TokenFragments), ReferencedNamedTokens, ObjectExpr108())
    for idx_3 in range(0, (len(ReferencedNamedTokens) - 1) + 1, 1):
        k_2 : str = ReferencedNamedTokens[idx_3]
        v_3 : Callable[[Automata_node], Automata_node] = FSharpMap__get_Item(lexer_maps, k_2)
        if contains(k_2, analyzer.IgnoreSet):
            lexer_info = cons((idx_2, k_2, v_3, keep_token(0)), lexer_info)
        
        else: 
            lexer_info = cons((idx_2, k_2, v_3, keep_token(1, token_id)), lexer_info)
            token_names = cons(k_2, token_names)
            token_id = (token_id + 1) or 0
        
        idx_2 = (idx_2 + 1) or 0
    lexer_info_1 : List[Tuple[int, str, Callable[[Automata_node], Automata_node], keep_token]] = to_array(lexer_info)
    token_names_1 : FSharpList[Doc] = map_1(lambda arg_4, analyzer=analyzer, _arg1=_arg1, stmts=stmts: word(escape_string(name_of_named_term(arg_4))), token_names)
    def arrow_117(analyzer=analyzer, _arg1=_arg1, stmts=stmts) -> Any:
        def arrow_116(_unit=None) -> Any:
            def arrow_115(_unit=None) -> Any:
                names : Doc = parens(seplist(word(","), map_1(lambda s_11: word(s_11), import_names)))
                def arrow_114(_unit=None) -> Any:
                    def arrow_113(_unit=None) -> Any:
                        def arrow_112(_unit=None) -> Any:
                            def arrow_111(_unit=None) -> Any:
                                def arrow_110(_unit=None) -> Any:
                                    def arrow_109(_unit=None) -> Any:
                                        return empty_3()
                                    
                                    return append_1(singleton(word(to_text(interpolate("from lark import Lark as %P()", [classvar_lark_builder])))), delay(arrow_109))
                                
                                return append_1(singleton(word(to_text(interpolate("from lark import Transformer as %P()", [classvar_lark_transformer])))), delay(arrow_110))
                            
                            return append_1(singleton(word(to_text(interpolate("from lark import Token as %P()", [classvar_lark_token])))), delay(arrow_111))
                        
                        return append_1(singleton(word(to_text(interpolate("from lark.lexer import Lexer as %P()", [classvar_lark_lexer])))), delay(arrow_112))
                    
                    return append_1(singleton(word(to_text(interpolate("from .%P() import lexall as %P()", [filename_lexer, var_lexall])))), delay(arrow_113))
                
                return append_1(singleton(Doc_op_Addition_Z7CFFAC00(word(to_text(interpolate("from .%P() import", [filename_require]))), names)), delay(arrow_114))
            
            return append_1(arrow_115() if (is_empty(import_names)) else (empty_3()), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(var_tokenmaps), word("=")), bracket(seplist(word(", "), token_names_1)))), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: append_1(singleton(define_py_func(word(var_construct_token), of_array_1([word("token_id"), word("lexeme"), word("line"), word("col"), word("span"), word("offset"), word("file")]), vsep(of_array_1([word(to_text(interpolate("if token_id == -1: return %P()(\"\u003cEOF\u003e\", \"\")", [classvar_lark_token]))), word(to_text(interpolate("return %P()(%P()[token_id], lexeme, offset, line, col, None, None, span + offset)", [classvar_lark_token, var_tokenmaps])))])))), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: append_1(singleton(define_py_func(word(var_iseof), singleton_1(word("token")), word("return token.type == \"\u003cEOF\u003e\""))), delay(lambda _unit=None: append_1(singleton(word(to_text(interpolate("class %P()(%P()):", [classvar_sedlex_lexer, classvar_lark_lexer])))), delay(lambda _unit=None: append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(singleton_1(Doc_op_RightShift_2AAA0F3C(define_py_func(word("lex"), of_array_1([word("self"), word("raw_string")]), word(to_text(interpolate("return %P()(raw_string, %P(), %P())", [var_lexall, var_construct_token, var_iseof])))), 4))), 4)), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: append_1(singleton(word(to_text(interpolate("class %P()(%P()):", [classvar_rbnftransformer, classvar_lark_transformer])))), delay(lambda _unit=None: append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(toplevel_transformer), 4)), delay(lambda _unit=None: append_1(singleton(Doc_op_RightShift_2AAA0F3C(word("pass"), 4)), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: append_1(singleton(word("with __import__(\u0027pathlib\u0027).Path(__file__).parent.open(encoding=\u0027utf8\u0027) as __0123fx9:")), delay(lambda _unit=None: append_1(singleton(Doc_op_Addition_Z7CFFAC00(word(export_grammar), word("= __0123fx9.read()"))), delay(lambda _unit=None: append_1(singleton(empty_2), delay(lambda _unit=None: singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(export_parser), word("=")), Doc_op_Multiply_Z7CFFAC00(word(classvar_lark_builder), parens(seplist(word(", "), of_array_1([word(export_grammar), word("start = \u0027start\u0027"), word("parser = \u0027lalr\u0027"), word(to_text(interpolate("lexer = %P()", [classvar_sedlex_lexer]))), word(to_text(interpolate("transformer=%P()()", [classvar_rbnftransformer])))]))))))))))))))))))))))))))))))))))))))))
        
        return append_1(singleton(word("from __future__ import annotations")), delay(arrow_116))
    
    return [file_grammar_1, (filename_lexer, codegen_python(build(map_2(lambda tupled_arg, analyzer=analyzer, _arg1=_arg1, stmts=stmts: (tupled_arg[2], tupled_arg[3]), lexer_info_1, None), "the last branch must be a catch-all error case!"))), (filename_python, vsep(to_list(delay(arrow_117))))]


