from __future__ import annotations
from typing import (List, Callable, Any, Tuple)
from ..fable_modules.fable_library.array import (map as map_2, sort_in_place_by, find_index, sort)
from ..fable_modules.fable_library.list import (empty, FSharpList, map as map_1, of_array as of_array_1, append, cons, is_empty, tail, head, to_array, fold, map_indexed, of_array_with_tail, length, singleton as singleton_1, reverse)
from ..fable_modules.fable_library.map import (empty as empty_1, try_find, add, to_array as to_array_1, FSharpMap__get_Item)
from ..fable_modules.fable_library.option import (default_arg, Option)
from ..fable_modules.fable_library.seq import (to_list, delay, map, of_list as of_list_1, collect, append as append_1, singleton, empty as empty_3)
from ..fable_modules.fable_library.set import (of_array, of_list, union, contains)
from ..fable_modules.fable_library.string import (to_text, interpolate, printf, join)
from ..fable_modules.fable_library.util import (compare_primitives, compare, IEnumerable)
from ..FableSedlex.code_gen import (Doc, vsep, Doc_op_Addition_Z7CFFAC00, word, Doc_op_Multiply_Z7CFFAC00, parens, seplist, Doc_op_RightShift_2AAA0F3C, bracket, empty as empty_2, align)
from ..FableSedlex.code_gen_python import codegen_python
from ..FableSedlex.sedlex import (Automata_node, pcompl, pinterval, pplus, pstar, pany, pseq, por, popt, pstring, keep_token, peof, build)
from .analysis import (Analyzer, Sigma__IsGlobalVariableConstructor_Z721C83C5, Sigma__get_GlobalVariables, Sigma__GetADTCases, Shape, Sigma__GetRecordTypes)
from .backends_common import (CodeGenOptions, NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B, NameMangling_nameEnv, NameMangling_IdentifierDescriptor_Create_Z48C5CCEF, NameMangling_IdentifierDescriptor, NameMangling_maskChar, NameMangling_mangle, DocBuilder_Builder__Run_ZD0BB270, DocBuilder_Builder__Delay_Z3A9C5A06, DocBuilder_Builder__Return_1505, DocBuilder_cg, DocBuilder_Builder__Bind_30A200B3, DocBuilder_block_1, DocBuilder_runCG, DocBuilder_Builder__Combine_Z5C764E00, DocBuilder_Builder__Yield_417FD60, DocBuilder_Builder__ReturnFrom_ZD0BB270, DocBuilder_Builder__For_2B96F4AF)
from .exceptions import (UnboundVariable, UnboundLexer, UnsolvedTypeVariable)
from .grammar import (definition as definition_1, symbol, position, expr as expr_1, node, monot, lexerule, _007CTTuple_007C__007C, monot__prune, production as production_1)
from .utils import (is_lower, is_unicode, is_upper, is_digit, List_tryLookup, escape_string)

def codegen(analyzer: Analyzer, cg_options: CodeGenOptions, lang_name: str, stmts: List[definition_1]) -> List[Tuple[str, Doc]]:
    def arrow_227(x: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        return x
    
    rename_var : Callable[[str], str] = default_arg(cg_options.rename_var, arrow_227)
    def arrow_228(x_1: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        return x_1
    
    rename_ctor : Callable[[str], str] = default_arg(cg_options.rename_ctor, arrow_228)
    def arrow_229(x_2: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        return x_2
    
    rename_field : Callable[[str], str] = default_arg(cg_options.rename_field, arrow_229)
    def arrow_230(x_3: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        return x_3
    
    rename_type : Callable[[str], str] = default_arg(cg_options.rename_type, arrow_230)
    PythonPackage_Sedlex : str = "_tbnf.FableSedlex"
    import_names : FSharpList[str] = empty()
    export_parser : str = "parser"
    export_grammar : str = "grammar"
    class ObjectExpr232:
        @property
        def Compare(self) -> Any:
            def arrow_231(x_4: str, y: str) -> int:
                return compare_primitives(x_4, y)
            
            return arrow_231
        
    export_names : Any = of_array([export_parser, export_grammar], ObjectExpr232())
    export_tokenmaps : str = "tokenmaps"
    export_tokenreprs : str = "tokenreprs"
    class ObjectExpr234:
        @property
        def Compare(self) -> Any:
            def arrow_233(x_5: str, y_1: str) -> int:
                return compare_primitives(x_5, y_1)
            
            return arrow_233
        
    abandoned_names : Any = of_array([export_tokenmaps, export_tokenreprs, "False", "None", "True", "and", "as", "assert", "async", "await", "break", "class", "continue", "def", "del", "elif", "else", "except", "finally", "for", "from", "global", "if", "import", "in", "is", "lambda", "nonlocal", "not", "or", "pass", "raise", "return", "try", "while", "with", "yield", "match", "case"], ObjectExpr234())
    class ObjectExpr236:
        @property
        def Compare(self) -> Any:
            def arrow_235(x_6: symbol, y_2: symbol) -> int:
                return compare(x_6, y_2)
            
            return arrow_235
        
    symmap : Any = empty_1(ObjectExpr236())
    toplevel_transformer : FSharpList[Doc] = empty()
    current_pos : position = analyzer.current_pos
    class ObjectExpr238:
        @property
        def Compare(self) -> Any:
            def arrow_237(x_7: str, y_3: str) -> int:
                return compare_primitives(x_7, y_3)
            
            return arrow_237
        
    lexer_maps : Any = empty_1(ObjectExpr238())
    lark_decls_for_named_terminals : FSharpList[str] = empty()
    def arrow_240(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> IEnumerable[Tuple[str, str]]:
        def arrow_239(k: Any) -> Tuple[str, str]:
            return (k[0], rename_ctor(k[0])) if (Sigma__IsGlobalVariableConstructor_Z721C83C5(analyzer.Sigma, k[0])) else ((k[0], rename_var(k[0])))
        
        return map(arrow_239, Sigma__get_GlobalVariables(analyzer.Sigma))
    
    global_scope : FSharpList[Tuple[str, str]] = to_list(delay(arrow_240))
    def arrow_241(tuple: Tuple[str, str], analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        return tuple[1]
    
    class ObjectExpr243:
        @property
        def Compare(self) -> Any:
            def arrow_242(x_8: str, y_4: str) -> int:
                return compare_primitives(x_8, y_4)
            
            return arrow_242
        
    def arrow_244(i: int, c: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> bool:
        test : bool = True if (True if (True if (is_lower(c)) else (is_unicode(c))) else (is_upper(c))) else (c == "_")
        return test if (i == 0) else (True if (test) else (is_digit(c)))
    
    def arrow_245(i_1: int, c_1: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        return to_text(interpolate("_%P()_", [(i_1 * ord(c_1)) + 7])) if (is_digit(c_1)) else (to_text(interpolate("_%P()_", [ord(c_1)])))
    
    python_identifier_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_244, arrow_245), NameMangling_nameEnv(of_list(map_1(arrow_241, global_scope), ObjectExpr243())))
    class ObjectExpr247:
        @property
        def Compare(self) -> Any:
            def arrow_246(x_9: str, y_5: str) -> int:
                return compare_primitives(x_9, y_5)
            
            return arrow_246
        
    def arrow_248(i_2: int, c_2: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> bool:
        return is_upper(c_2) if (i_2 == 0) else (True if (True if (is_upper(c_2)) else (c_2 == "_")) else (is_digit(c_2)))
    
    def arrow_249(_arg1: int, c_3: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        return c_3.upper() if (is_lower(c_3)) else (("_" + NameMangling_maskChar(ord("A"), ord("Z"), ord(c_3))) + "_")
    
    lark_lexer_identifier_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_248, arrow_249), NameMangling_nameEnv(of_array(["UNKNOWN"], ObjectExpr247())))
    class ObjectExpr251:
        @property
        def Compare(self) -> Any:
            def arrow_250(x_10: str, y_6: str) -> int:
                return compare_primitives(x_10, y_6)
            
            return arrow_250
        
    def arrow_252(i_3: int, c_4: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> bool:
        return is_lower(c_4) if (i_3 == 0) else (True if (True if (is_lower(c_4)) else (c_4 == "_")) else (is_digit(c_4)))
    
    def arrow_253(_arg2: int, c_5: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        return c_5.lower() if (is_upper(c_5)) else (("_" + NameMangling_maskChar(ord("a"), ord("z"), ord(c_5))) + "_")
    
    lark_parser_identifier_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_252, arrow_253), NameMangling_nameEnv(of_array(["start"], ObjectExpr251())))
    mangle : Callable[[NameMangling_IdentifierDescriptor, str], str]
    abandoned_names_1 : Any = union(abandoned_names, export_names)
    def arrow_255(idr: NameMangling_IdentifierDescriptor, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> Callable[[str], str]:
        def arrow_254(n: str) -> str:
            return NameMangling_mangle(abandoned_names_1, idr, n)
        
        return arrow_254
    
    mangle = arrow_255
    def cg_symbol(x_11: symbol, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        nonlocal symmap
        match_value : Option[str] = try_find(x_11, symmap)
        if match_value is None:
            valid_py_ident : str
            if x_11.tag == 0:
                valid_py_ident = mangle(lark_lexer_identifier_descr)(("\"" + x_11.fields[0]) + "\"") if (x_11.fields[1]) else ("EOF" if (x_11.fields[0] == "EOF") else (mangle(lark_lexer_identifier_descr)(x_11.fields[0])))
            
            elif x_11.tag == 1:
                valid_py_ident = "start" if (x_11.fields[0] == "start") else (mangle(lark_parser_identifier_descr)(x_11.fields[0]))
            
            else: 
                raise Exception("macro not processed")
            
            symmap = add(x_11, valid_py_ident, symmap)
            return valid_py_ident
        
        else: 
            return match_value
        
    
    def name_of_named_term(n_2: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        return cg_symbol(symbol(0, n_2, False))
    
    def define_py_func(fname: Doc, args: FSharpList[Doc], body: Doc, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> Doc:
        return vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(word("def"), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(fname, parens(seplist(word(", "), args))), word(":"))), Doc_op_RightShift_2AAA0F3C(body, 4)]))
    
    TREE_NAME : str = "__tbnf_COMPONENTS"
    def cg_expr(action_name: str, scope: FSharpList[Tuple[str, str]], expr: expr_1, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> DocBuilder_block_1[Doc]:
        def arrow_276(action_name: str=action_name, scope: FSharpList[Tuple[str, str]]=scope, expr: expr_1=expr) -> DocBuilder_block_1[Doc]:
            match_value_1 : node = expr.node
            if match_value_1.tag == 6:
                match_value_2 : Option[str] = List_tryLookup(match_value_1.fields[0], scope)
                def arrow_256(_unit: Any=None) -> Doc:
                    raise UnboundVariable(match_value_1.fields[0])
                
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(match_value_2)) if (match_value_2 is not None) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, arrow_256()))
            
            elif match_value_1.tag == 11:
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word("True")) if (match_value_1.fields[0]) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, word("False")))
            
            elif match_value_1.tag == 3:
                def arrow_257(_arg5: Doc) -> DocBuilder_block_1[Doc]:
                    return DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(_arg5, word(".")), word(rename_field(match_value_1.fields[1]))))
                
                return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(action_name, scope, match_value_1.fields[0]), arrow_257)
            
            elif match_value_1.tag == 8:
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(to_text(printf("%d"))(match_value_1.fields[0])))
            
            elif match_value_1.tag == 10:
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(to_text(printf("%f"))(match_value_1.fields[0])))
            
            elif match_value_1.tag == 9:
                return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(escape_string(match_value_1.fields[0])))
            
            elif match_value_1.tag == 5:
                def arrow_258(tuple_1: Tuple[str, monot]) -> str:
                    return tuple_1[0]
                
                args_3 : FSharpList[str] = map_1(arrow_258, match_value_1.fields[0])
                def arrow_260(_unit: Any=None) -> IEnumerable[Tuple[str, str]]:
                    def arrow_259(arg_1: str) -> Tuple[str, str]:
                        return (arg_1, mangle(python_identifier_descr)(arg_1))
                    
                    return map(arrow_259, args_3)
                
                pattern_input : Tuple[Doc, FSharpList[Doc]] = DocBuilder_runCG(cg_expr(action_name, append(to_list(delay(arrow_260)), scope), match_value_1.fields[1]))
                func_name : str = mangle(python_identifier_descr)("lambda")
                def arrow_261(s_5: str) -> Doc:
                    return word(s_5)
                
                def arrow_262(_unit: Any=None) -> DocBuilder_block_1[Doc]:
                    return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(func_name))
                
                return DocBuilder_Builder__Combine_Z5C764E00(DocBuilder_cg, DocBuilder_Builder__Yield_417FD60(DocBuilder_cg, define_py_func(word(func_name), map_1(arrow_261, args_3), vsep(of_array_1([vsep(pattern_input[1]), Doc_op_Addition_Z7CFFAC00(word("return"), pattern_input[0])])))), DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_262))
            
            else: 
                def arrow_264(_arg6: Doc) -> DocBuilder_block_1[Doc]:
                    m_name : str = mangle(python_identifier_descr)(match_value_1.fields[0])
                    def arrow_263(_unit: Any=None) -> DocBuilder_block_1[Doc]:
                        return DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(action_name, cons((match_value_1.fields[0], m_name), scope), match_value_1.fields[2]))
                    
                    return DocBuilder_Builder__Combine_Z5C764E00(DocBuilder_cg, DocBuilder_Builder__Yield_417FD60(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(m_name), word("=")), _arg6)), DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_263))
                
                def arrow_266(_unit: Any=None) -> DocBuilder_block_1[FSharpList[Doc]]:
                    def arrow_265(_arg7: expr_1) -> DocBuilder_block_1[Doc]:
                        return DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(action_name, scope, _arg7))
                    
                    return DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, match_value_1.fields[0], arrow_265)
                
                def arrow_267(_arg8: FSharpList[Doc]) -> DocBuilder_block_1[Doc]:
                    return DocBuilder_Builder__Return_1505(DocBuilder_cg, bracket(seplist(word(", "), _arg8)))
                
                def arrow_268(_unit: Any=None) -> str:
                    arg20_1 : int = (match_value_1.fields[0] - 1) or 0
                    return to_text(printf("%s[%d]"))(TREE_NAME)(arg20_1)
                
                def arrow_270(_unit: Any=None) -> DocBuilder_block_1[FSharpList[Doc]]:
                    def arrow_269(_arg9: expr_1) -> DocBuilder_block_1[Doc]:
                        return DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(action_name, scope, _arg9))
                    
                    return DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, match_value_1.fields[0], arrow_269)
                
                def arrow_271(_arg10: FSharpList[Doc]) -> DocBuilder_block_1[Doc]:
                    elts_0027_1 : FSharpList[Doc] = _arg10
                    return DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(Doc_op_Addition_Z7CFFAC00(head(elts_0027_1), word(",")))) if (is_empty(tail(elts_0027_1))) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(seplist(word(", "), elts_0027_1)))) if (not is_empty(elts_0027_1)) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, parens(empty_2)))
                
                def arrow_275(_arg2_1: Doc) -> DocBuilder_block_1[Doc]:
                    def arrow_273(_unit: Any=None) -> DocBuilder_block_1[FSharpList[Doc]]:
                        def arrow_272(_arg3: expr_1) -> DocBuilder_block_1[Doc]:
                            return DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(action_name, scope, _arg3))
                        
                        return DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, match_value_1.fields[1], arrow_272)
                    
                    def arrow_274(_arg4: FSharpList[Doc]) -> DocBuilder_block_1[Doc]:
                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Multiply_Z7CFFAC00(_arg2_1, parens(seplist(word(", "), _arg4))))
                    
                    return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_273)), arrow_274)
                
                return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(action_name, scope, match_value_1.fields[1]), arrow_264) if (match_value_1.tag == 4) else (DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_266)), arrow_267) if (match_value_1.tag == 2) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, word(arrow_268())) if (match_value_1.tag == 7) else (DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_270)), arrow_271) if (match_value_1.tag == 1) else (DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(action_name, scope, match_value_1.fields[0]), arrow_275)))))
            
        
        return DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_276))
    
    def mk_lexer(def_: lexerule, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> Callable[[Automata_node], Automata_node]:
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
            match_value_4 : Option[Callable[[Automata_node], Automata_node]] = try_find(def_.fields[0], lexer_maps)
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
                def arrow_277(a_1: Callable[[Automata_node], Automata_node], b: Callable[[Automata_node], Automata_node], def_: lexerule=def_) -> Callable[[Automata_node], Automata_node]:
                    return por(a_1, b)
                
                return fold(arrow_277, op_dereference(head(def_.fields[0])), map_1(mk_lexer, tail(def_.fields[0])))
            
            else: 
                raise Exception("impossible: alternatives cannot be empty.")
            
        
        elif def_.tag == 8:
            return popt(op_dereference(def_.fields[0]))
        
        else: 
            return pstring(def_.fields[0])
        
    
    def mk_lexer_debug(def__1: lexerule, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
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
                def arrow_278(a_2: str, b_1: str, def__1: lexerule=def__1) -> str:
                    return to_text(interpolate("por(%P(), %P())", [a_2, b_1]))
                
                return fold(arrow_278, op_dereference_1(head(def__1.fields[0])), map_1(mk_lexer_debug, tail(def__1.fields[0])))
            
            else: 
                raise Exception("impossible: alternatives cannot be empty.")
            
        
        elif def__1.tag == 8:
            return to_text(interpolate("popt%P()", [op_dereference_1(def__1.fields[0])]))
        
        else: 
            return to_text(interpolate("pstring(%P())", [escape_string(def__1.fields[0])]))
        
    
    filename_lexer : str = to_text(printf("%s_lexer"))(lang_name)
    filename_require : str = to_text(printf("%s_require"))(lang_name)
    filename_python : str = to_text(printf("%s_parser"))(lang_name)
    filename_constructors : str = to_text(printf("%s_construct"))(lang_name)
    var_tokenmaps : str = export_tokenmaps
    classvar_lark_lexer : str = mangle(python_identifier_descr)("Lexer")
    classvar_sedlex_lexer : str = mangle(python_identifier_descr)("Sedlex")
    classvar_lark_token : str = rename_type("token")
    var_iseof : str = mangle(python_identifier_descr)("is_eof")
    var_construct_token : str = mangle(python_identifier_descr)("construct_token")
    var_lexall : str = mangle(python_identifier_descr)("lexall")
    var_from_ustring : str = mangle(python_identifier_descr)("from_ustring")
    classvar_lark_transformer : str = mangle(python_identifier_descr)("Transformer")
    classvar_rbnftransformer : str = mangle(python_identifier_descr)("RBNFTransformer")
    classvar_lark_builder : str = mangle(python_identifier_descr)("Lark")
    modulevar_dataclass : str = mangle(python_identifier_descr)("dataclasses")
    modulevar_typing : str = mangle(python_identifier_descr)("typing")
    def _cg_type(t: monot, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        (pattern_matching_result, n_4, args_4, r_2) = (None, None, None, None)
        if t.tag == 4:
            pattern_matching_result = 1
        
        elif t.tag == 0:
            pattern_matching_result = 2
        
        elif t.tag == 3:
            pattern_matching_result = 3
            args_4 = t.fields[0]
            r_2 = t.fields[1]
        
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
            n_4 = t.fields[0]
        
        if pattern_matching_result == 0:
            return rename_type(n_4)
        
        elif pattern_matching_result == 1:
            return "object"
        
        elif pattern_matching_result == 2:
            raise UnsolvedTypeVariable()
        
        elif pattern_matching_result == 3:
            r_3 : str = _cg_type(r_2)
            def mapping_1(tupled_arg: Tuple[str, monot], t: monot=t) -> str:
                return _cg_type(tupled_arg[1])
            
            return to_text(interpolate("%P().Callable[[%P()], %P()]", [modulevar_typing, join(", ", map_1(mapping_1, args_4)), r_3]))
        
        elif pattern_matching_result == 4:
            raise Exception("0-element tuple type detected")
        
        elif pattern_matching_result == 5:
            (pattern_matching_result_1, args_6) = (None, None)
            if t.tag == 2:
                if _007CTTuple_007C__007C(t.fields[0]) is not None:
                    pattern_matching_result_1 = 0
                    args_6 = t.fields[1]
                
                else: 
                    pattern_matching_result_1 = 1
                
            
            else: 
                pattern_matching_result_1 = 1
            
            if pattern_matching_result_1 == 0:
                it_1 : str = join(", ", map_1(_cg_type, args_6))
                return (to_text(interpolate("%P().Tuple[", [modulevar_typing])) + it_1) + "]"
            
            elif pattern_matching_result_1 == 1:
                if t.tag == 2:
                    it_2 : str = join(", ", map_1(_cg_type, t.fields[1]))
                    return ((_cg_type(t.fields[0]) + "[") + it_2) + "]"
                
                else: 
                    raise Exception("Match failure")
                
            
        
    
    def cg_type(t_1: monot, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> str:
        return _cg_type(monot__prune(t_1))
    
    def cg_stmt(stmt: definition_1, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> Doc:
        nonlocal current_pos, lexer_maps, lark_decls_for_named_terminals, import_names
        if stmt.tag == 2:
            decl_1 : dict[str, Any] = stmt.fields[0]
            current_pos = decl_1["pos"]
            lexer_maps = add(decl_1["lhs"], mk_lexer(decl_1["define"]), lexer_maps)
            if contains(decl_1["lhs"], analyzer.ReferencedNamedTokens):
                tname : str = name_of_named_term(decl_1["lhs"])
                lark_decls_for_named_terminals = cons(tname, lark_decls_for_named_terminals)
            
            return empty_2
        
        elif stmt.tag == 6:
            current_pos = stmt.fields[0]["pos"]
            return empty_2
        
        elif stmt.tag == 3:
            import_names = cons(rename_var(stmt.fields[0]["ident"]), import_names)
            return empty_2
        
        elif stmt.tag == 4:
            return empty_2
        
        elif stmt.tag == 5:
            decl_5 : dict[str, Any] = stmt.fields[0]
            if decl_5["external"]:
                import_names = cons(rename_type(decl_5["ident"]), import_names)
            
            return empty_2
        
        elif stmt.tag == 0:
            raise Exception("macro not processed")
        
        else: 
            decl : dict[str, Any] = stmt.fields[0]
            current_pos = decl["pos"]
            ntname_1 : str = cg_symbol(symbol(1, decl["lhs"]))
            idx_1 : int = 0
            def mapping(i_6: int, e_1: Doc, stmt: definition_1=stmt) -> Doc:
                return Doc_op_Addition_Z7CFFAC00(word(":") if (i_6 == 0) else (word("|")), e_1)
            
            def arrow_282(stmt: definition_1=stmt) -> IEnumerable[Doc]:
                def arrow_281(match_value_3: Tuple[position, production_1]) -> IEnumerable[Doc]:
                    nonlocal current_pos
                    production : production_1 = match_value_3[1]
                    current_pos = match_value_3[0]
                    action_name_2 : str
                    idx : int = idx_1 or 0
                    action_name_2 = to_text(printf("%s_%i"))(ntname_1)(idx)
                    def arrow_279(arg_2: symbol) -> Doc:
                        return word(cg_symbol(arg_2))
                    
                    def arrow_280(_unit: Any=None) -> IEnumerable[Doc]:
                        nonlocal toplevel_transformer, idx_1
                        pattern_input_1 : Tuple[Doc, FSharpList[Doc]] = DocBuilder_runCG(cg_expr(action_name_2, global_scope, production.action))
                        a : Doc = define_py_func(word(action_name_2), of_array_1([word("self"), word(TREE_NAME)]), vsep(of_array_1([vsep(pattern_input_1[1]), Doc_op_Addition_Z7CFFAC00(word("return"), pattern_input_1[0])])))
                        toplevel_transformer = of_array_with_tail([a, empty_2], toplevel_transformer)
                        idx_1 = (idx_1 + 1) or 0
                        return empty_3()
                    
                    return append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(seplist(word(" "), map_1(arrow_279, production.symbols)), word("-\u003e")), word(action_name_2))), delay(arrow_280))
                
                return collect(arrow_281, decl["define"])
            
            body_4 : Doc = align(vsep(map_indexed(mapping, to_list(delay(arrow_282)))))
            return Doc_op_Addition_Z7CFFAC00(word(ntname_1), body_4)
        
    
    file_grammar : Doc = vsep(of_array_1(map_2(cg_stmt, stmts, None)))
    def arrow_283(s_11: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> Doc:
        return word(s_11)
    
    import_items : Doc = parens(seplist(word(","), map_1(arrow_283, import_names)))
    def arrow_314(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> IEnumerable[Doc]:
        def arrow_313(_unit: Any=None) -> IEnumerable[Doc]:
            def arrow_312(_unit: Any=None) -> IEnumerable[Doc]:
                def arrow_311(_unit: Any=None) -> IEnumerable[Doc]:
                    def arrow_310(_unit: Any=None) -> IEnumerable[Doc]:
                        adt_cases : FSharpList[Tuple[str, Any]] = Sigma__GetADTCases(analyzer.Sigma)
                        def arrow_309(_unit: Any=None) -> IEnumerable[Doc]:
                            def arrow_308(_unit: Any=None) -> IEnumerable[Doc]:
                                def arrow_298(match_value_5: Tuple[str, Any]) -> IEnumerable[Doc]:
                                    typename_0027 : str = rename_type(match_value_5[0])
                                    doc_ctor_names : FSharpList[Doc] = empty()
                                    def arrow_290(match_value_6: Tuple[str, FSharpList[Tuple[str, monot]]]) -> IEnumerable[Doc]:
                                        nonlocal doc_ctor_names
                                        fields : FSharpList[Tuple[str, monot]] = match_value_6[1]
                                        ctor_name_1 : str = rename_ctor(match_value_6[0])
                                        doc_ctor_names = cons(word(ctor_name_1), doc_ctor_names)
                                        def arrow_289(_unit: Any=None) -> IEnumerable[Doc]:
                                            def arrow_284(_unit: Any=None) -> IEnumerable[Doc]:
                                                return singleton(Doc_op_RightShift_2AAA0F3C(word("pass"), 4))
                                            
                                            def arrow_287(_unit: Any=None) -> IEnumerable[Doc]:
                                                def arrow_286(_unit: Any=None) -> IEnumerable[Doc]:
                                                    def arrow_285(match_value_7: Tuple[str, monot]) -> IEnumerable[Doc]:
                                                        return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(rename_field(match_value_7[0])), word(":")), word(cg_type(match_value_7[1]))))
                                                    
                                                    return collect(arrow_285, fields)
                                                
                                                return singleton(Doc_op_RightShift_2AAA0F3C(vsep(to_list(delay(arrow_286))), 4))
                                            
                                            def arrow_288(_unit: Any=None) -> IEnumerable[Doc]:
                                                return singleton(empty_2)
                                            
                                            return append_1(append_1(singleton(word(to_text(interpolate("class %P():", [ctor_name_1])))), delay(arrow_284)) if (length(fields) == 0) else (append_1(singleton(word(to_text(interpolate("class %P():", [ctor_name_1])))), delay(arrow_287))), delay(arrow_288))
                                        
                                        return append_1(singleton(word(to_text(interpolate("@%P().dataclass", [modulevar_dataclass])))), delay(arrow_289))
                                    
                                    def arrow_297(_unit: Any=None) -> IEnumerable[Doc]:
                                        def arrow_296(_unit: Any=None) -> IEnumerable[Doc]:
                                            def arrow_292(_unit: Any=None) -> IEnumerable[Doc]:
                                                def arrow_291(_unit: Any=None) -> IEnumerable[Doc]:
                                                    t_3 : Doc = head(doc_ctor_names)
                                                    return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(typename_0027), word("=")), t_3))
                                                
                                                return arrow_291() if (is_empty(tail(doc_ctor_names))) else (singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(typename_0027), word("=")), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(to_text(interpolate("%P().Union[", [modulevar_typing]))), seplist(word(","), doc_ctor_names)), word("]"))))) if (not is_empty(doc_ctor_names)) else (singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(typename_0027), word("=")), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(to_text(interpolate("%P().Union[", [modulevar_typing]))), seplist(word(","), doc_ctor_names)), word("]")))))
                                            
                                            def arrow_295(_unit: Any=None) -> IEnumerable[Doc]:
                                                def arrow_294(_unit: Any=None) -> IEnumerable[Doc]:
                                                    def arrow_293(_unit: Any=None) -> IEnumerable[Doc]:
                                                        return singleton(empty_2)
                                                    
                                                    return append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(singleton_1(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(typename_0027), word("=")), parens(seplist(word(","), doc_ctor_names))))), 4)), delay(arrow_293))
                                                
                                                return append_1(singleton(word("else:")), delay(arrow_294))
                                            
                                            return append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(to_list(delay(arrow_292))), 4)), delay(arrow_295))
                                        
                                        return append_1(singleton(word(to_text(interpolate("if %P().TYPE_CHECKING:", [modulevar_typing])))), delay(arrow_296))
                                    
                                    return append_1(collect(arrow_290, to_array_1(match_value_5[1])), delay(arrow_297))
                                
                                def arrow_307(_unit: Any=None) -> IEnumerable[Doc]:
                                    def arrow_306(match_value_8: Tuple[str, Shape]) -> IEnumerable[Doc]:
                                        typename_1 : str = match_value_8[0]
                                        shape : Shape = match_value_8[1]
                                        typename_0027_1 : str = rename_type(typename_1)
                                        varname : str = rename_var(typename_1)
                                        def arrow_305(_unit: Any=None) -> IEnumerable[Doc]:
                                            def arrow_304(_unit: Any=None) -> IEnumerable[Doc]:
                                                def arrow_300(_unit: Any=None) -> IEnumerable[Doc]:
                                                    def arrow_299(match_value_9: Tuple[str, monot]) -> IEnumerable[Doc]:
                                                        field_1 : str = rename_field(match_value_9[0])
                                                        t_4 : str = cg_type(match_value_9[1])
                                                        return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(field_1), word(":")), word(t_4)))
                                                    
                                                    return collect(arrow_299, shape.fields)
                                                
                                                def arrow_303(_unit: Any=None) -> IEnumerable[Doc]:
                                                    def arrow_302(_unit: Any=None) -> IEnumerable[Doc]:
                                                        def arrow_301(_unit: Any=None) -> IEnumerable[Doc]:
                                                            return singleton(empty_2)
                                                        
                                                        return append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(varname), word("=")), word(typename_0027_1))), delay(arrow_301))
                                                    
                                                    return append_1(singleton(empty_2), delay(arrow_302))
                                                
                                                return append_1(singleton(Doc_op_RightShift_2AAA0F3C(word("pass"), 4)) if (is_empty(shape.fields)) else (singleton(Doc_op_RightShift_2AAA0F3C(vsep(to_list(delay(arrow_300))), 4))), delay(arrow_303))
                                            
                                            return append_1(singleton(word(to_text(interpolate("class %P():", [typename_0027_1])))), delay(arrow_304))
                                        
                                        return append_1(singleton(word(to_text(interpolate("@%P().dataclass", [modulevar_dataclass])))), delay(arrow_305))
                                    
                                    return collect(arrow_306, Sigma__GetRecordTypes(analyzer.Sigma))
                                
                                return append_1(collect(arrow_298, adt_cases), delay(arrow_307))
                            
                            return append_1(singleton(empty_2), delay(arrow_308))
                        
                        return append_1(singleton(Doc_op_Addition_Z7CFFAC00(word(to_text(interpolate("from .%P() import", [filename_require]))), import_items)) if (not is_empty(import_names)) else (empty_3()), delay(arrow_309))
                    
                    return append_1(singleton(word(to_text(interpolate("import typing as %P()", [modulevar_typing])))), delay(arrow_310))
                
                return append_1(singleton(word(to_text(interpolate("import dataclasses as %P()", [modulevar_dataclass])))), delay(arrow_311))
            
            return append_1(singleton(word(to_text(interpolate("from lark import Token as %P()", [classvar_lark_token])))), delay(arrow_312))
        
        return append_1(singleton(word("from __future__ import annotations as __01asda1ha")), delay(arrow_313))
    
    file_constructors : Tuple[str, Doc] = (filename_constructors + ".py", vsep(to_list(delay(arrow_314))))
    lexer_info : FSharpList[Tuple[Callable[[Automata_node], Automata_node], keep_token]] = empty()
    token_names : FSharpList[str] = empty()
    token_reprs : FSharpList[str] = empty()
    idx_2 : int = 0
    token_id : int = 0
    ReferencedNamedTokens : List[str] = list(analyzer.ReferencedNamedTokens)
    def arrow_316(k_2: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> int:
        def arrow_315(y_7: str) -> bool:
            return k_2 == y_7
        
        return find_index(arrow_315, analyzer.TokenFragments)
    
    class ObjectExpr318:
        @property
        def Compare(self) -> Any:
            def arrow_317(x_18: int, y_8: int) -> int:
                return compare_primitives(x_18, y_8)
            
            return arrow_317
        
    sort_in_place_by(arrow_316, ReferencedNamedTokens, ObjectExpr318())
    class ObjectExpr320:
        @property
        def Compare(self) -> Any:
            def arrow_319(x_19: str, y_9: str) -> int:
                return compare_primitives(x_19, y_9)
            
            return arrow_319
        
    arr : List[str] = sort(list(analyzer.LiteralTokens), ObjectExpr320())
    for idx_3 in range(0, (len(arr) - 1) + 1, 1):
        k_3 : str = arr[idx_3]
        v_4 : Callable[[Automata_node], Automata_node] = pstring(k_3)
        lexer_info = cons((v_4, keep_token(1, token_id)), lexer_info)
        token_names = cons(cg_symbol(symbol(0, k_3, True)), token_names)
        token_reprs = cons(escape_string(k_3), token_reprs)
        token_id = (token_id + 1) or 0
        idx_2 = (idx_2 + 1) or 0
    for idx_4 in range(0, (len(ReferencedNamedTokens) - 1) + 1, 1):
        k_4 : str = ReferencedNamedTokens[idx_4]
        v_5 : Callable[[Automata_node], Automata_node] = FSharpMap__get_Item(lexer_maps, k_4)
        if contains(k_4, analyzer.IgnoreSet):
            lexer_info = cons((v_5, keep_token(0)), lexer_info)
        
        else: 
            lexer_info = cons((v_5, keep_token(1, token_id)), lexer_info)
            token_names = cons(name_of_named_term(k_4), token_names)
            token_reprs = cons(k_4, token_reprs)
            token_id = (token_id + 1) or 0
        
        idx_2 = (idx_2 + 1) or 0
    lexer_info = cons((pany, keep_token(1, token_id)), lexer_info)
    token_names = cons("UNKNOWN", token_names)
    token_reprs = cons("UNKNOWN", token_reprs)
    token_names_1 : FSharpList[str] = reverse(token_names)
    token_reprs_1 : FSharpList[str] = reverse(token_reprs)
    lexer_info_1 : List[Tuple[Callable[[Automata_node], Automata_node], keep_token]] = to_array(reverse(cons((peof, keep_token(1, -1)), lexer_info)))
    def arrow_321(s_12: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> Doc:
        return word(s_12)
    
    def arrow_348(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition_1]=stmts) -> IEnumerable[Doc]:
        def arrow_347(_unit: Any=None) -> IEnumerable[Doc]:
            def arrow_346(_unit: Any=None) -> IEnumerable[Doc]:
                def arrow_345(_unit: Any=None) -> IEnumerable[Doc]:
                    def arrow_344(_unit: Any=None) -> IEnumerable[Doc]:
                        def arrow_343(_unit: Any=None) -> IEnumerable[Doc]:
                            def arrow_342(_unit: Any=None) -> IEnumerable[Doc]:
                                def arrow_341(_unit: Any=None) -> IEnumerable[Doc]:
                                    def arrow_340(_unit: Any=None) -> IEnumerable[Doc]:
                                        def arrow_322(arg_3: str) -> Doc:
                                            return word(escape_string(arg_3))
                                        
                                        def arrow_339(_unit: Any=None) -> IEnumerable[Doc]:
                                            def arrow_323(arg_4: str) -> Doc:
                                                return word(escape_string(arg_4))
                                            
                                            def arrow_338(_unit: Any=None) -> IEnumerable[Doc]:
                                                def arrow_337(_unit: Any=None) -> IEnumerable[Doc]:
                                                    def arrow_336(_unit: Any=None) -> IEnumerable[Doc]:
                                                        def arrow_335(_unit: Any=None) -> IEnumerable[Doc]:
                                                            def arrow_334(_unit: Any=None) -> IEnumerable[Doc]:
                                                                def arrow_333(_unit: Any=None) -> IEnumerable[Doc]:
                                                                    def arrow_332(_unit: Any=None) -> IEnumerable[Doc]:
                                                                        def arrow_331(_unit: Any=None) -> IEnumerable[Doc]:
                                                                            def arrow_330(_unit: Any=None) -> IEnumerable[Doc]:
                                                                                def arrow_329(_unit: Any=None) -> IEnumerable[Doc]:
                                                                                    def arrow_328(_unit: Any=None) -> IEnumerable[Doc]:
                                                                                        def arrow_327(_unit: Any=None) -> IEnumerable[Doc]:
                                                                                            def arrow_326(_unit: Any=None) -> IEnumerable[Doc]:
                                                                                                def arrow_325(_unit: Any=None) -> IEnumerable[Doc]:
                                                                                                    def arrow_324(_unit: Any=None) -> IEnumerable[Doc]:
                                                                                                        return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(export_parser), word("=")), Doc_op_Multiply_Z7CFFAC00(word(classvar_lark_builder), parens(seplist(word(", "), of_array_1([word(export_grammar), word("start=\u0027start\u0027"), word("parser=\u0027lalr\u0027"), word(to_text(interpolate("lexer=%P()", [classvar_sedlex_lexer]))), word(to_text(interpolate("transformer=%P()()", [classvar_rbnftransformer]))), word("keep_all_tokens=True")]))))))
                                                                                                    
                                                                                                    return append_1(singleton(empty_2), delay(arrow_324))
                                                                                                
                                                                                                return append_1(singleton(Doc_op_RightShift_2AAA0F3C(Doc_op_Addition_Z7CFFAC00(word(export_grammar), word("= __0123fx9.read()")), 4)), delay(arrow_325))
                                                                                            
                                                                                            return append_1(singleton(word(to_text(interpolate("with (__import__(\u0027pathlib\u0027).Path(__file__).parent /\u0027%P().lark\u0027).open(encoding=\u0027utf8\u0027) as __0123fx9:", [lang_name])))), delay(arrow_326))
                                                                                        
                                                                                        return append_1(singleton(empty_2), delay(arrow_327))
                                                                                    
                                                                                    return append_1(singleton(Doc_op_RightShift_2AAA0F3C(word("pass"), 4)), delay(arrow_328))
                                                                                
                                                                                return append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(toplevel_transformer), 4)), delay(arrow_329))
                                                                            
                                                                            return append_1(singleton(word(to_text(interpolate("class %P()(%P()):", [classvar_rbnftransformer, classvar_lark_transformer])))), delay(arrow_330))
                                                                        
                                                                        return append_1(singleton(empty_2), delay(arrow_331))
                                                                    
                                                                    return append_1(singleton(Doc_op_RightShift_2AAA0F3C(vsep(of_array_1([define_py_func(word("__init__"), of_array_1([word("self"), word("lex_conf")]), word("pass")), define_py_func(word("lex"), of_array_1([word("self"), word("raw_string")]), vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("lexbuf"), word("=")), word(to_text(interpolate("%P()(raw_string)", [var_from_ustring])))), word(to_text(interpolate("return %P()(lexbuf, %P(), %P())", [var_lexall, var_construct_token, var_iseof])))])))])), 4)), delay(arrow_332))
                                                                
                                                                return append_1(singleton(word(to_text(interpolate("class %P()(%P()):", [classvar_sedlex_lexer, classvar_lark_lexer])))), delay(arrow_333))
                                                            
                                                            return append_1(singleton(define_py_func(word(var_iseof), singleton_1(word("token")), word("return token.type == \"EOF\""))), delay(arrow_334))
                                                        
                                                        return append_1(singleton(empty_2), delay(arrow_335))
                                                    
                                                    return append_1(singleton(define_py_func(word(var_construct_token), of_array_1([word("token_id"), word("lexeme"), word("line"), word("col"), word("span"), word("offset"), word("file")]), vsep(of_array_1([word(to_text(interpolate("if token_id == -1: return %P()(\"EOF\", \"\")", [classvar_lark_token]))), word(to_text(interpolate("return %P()(%P()[token_id], lexeme, offset, line, col, None, None, span + offset)", [classvar_lark_token, var_tokenmaps])))])))), delay(arrow_336))
                                                
                                                return append_1(singleton(empty_2), delay(arrow_337))
                                            
                                            return append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(export_tokenreprs), word("=")), bracket(seplist(word(", "), map_1(arrow_323, token_reprs_1))))), delay(arrow_338))
                                        
                                        return append_1(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(var_tokenmaps), word("=")), bracket(seplist(word(", "), map_1(arrow_322, token_names_1))))), delay(arrow_339))
                                    
                                    return append_1(singleton(word(to_text(interpolate("from %P().sedlex import from_ustring as %P()", [PythonPackage_Sedlex, var_from_ustring])))), delay(arrow_340))
                                
                                return append_1(singleton(word(to_text(interpolate("from lark import Lark as %P()", [classvar_lark_builder])))), delay(arrow_341))
                            
                            return append_1(singleton(word(to_text(interpolate("from lark import Transformer as %P()", [classvar_lark_transformer])))), delay(arrow_342))
                        
                        return append_1(singleton(word(to_text(interpolate("from lark.lexer import Lexer as %P()", [classvar_lark_lexer])))), delay(arrow_343))
                    
                    return append_1(singleton(word(to_text(interpolate("from .%P() import *", [filename_constructors])))), delay(arrow_344))
                
                return append_1(singleton(word(to_text(interpolate("from .%P() import lexall as %P()", [filename_lexer, var_lexall])))), delay(arrow_345))
            
            return append_1(singleton(Doc_op_Addition_Z7CFFAC00(word(to_text(interpolate("from .%P() import", [filename_require]))), import_items)) if (not is_empty(import_names)) else (empty_3()), delay(arrow_346))
        
        return append_1(singleton(word("from __future__ import annotations")), delay(arrow_347))
    
    return [file_constructors, (lang_name + ".lark", vsep(of_array_1([file_grammar, Doc_op_Addition_Z7CFFAC00(word("%declare"), seplist(word(" "), map_1(arrow_321, token_names_1)))]))), (filename_lexer + ".py", codegen_python(PythonPackage_Sedlex, build(lexer_info_1, "the last branch must be a catch-all error case!"))), (filename_python + ".py", vsep(to_list(delay(arrow_348))))]


