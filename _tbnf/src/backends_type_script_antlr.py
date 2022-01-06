from __future__ import annotations
from typing import (List, Callable, Any, Tuple, Iterable, Optional, TypeVar)
from ..fable_modules.fable_library.array import (append, map as map_2)
from ..fable_modules.fable_library.list import (empty, FSharpList, map as map_1, is_empty, head, tail, to_array, fold, of_array as of_array_1, cons, map_indexed, length, append as append_2, reverse)
from ..fable_modules.fable_library.map import (empty as empty_1, try_find, add, FSharpMap__get_Item)
from ..fable_modules.fable_library.option import (default_arg, some)
from ..fable_modules.fable_library.seq import (to_list, delay, map, of_list as of_list_1, collect, append as append_1, singleton, to_array as to_array_1, empty as empty_4)
from ..fable_modules.fable_library.set import (of_array, of_list, empty as empty_3, add as add_1, contains)
from ..fable_modules.fable_library.string import (to_text, interpolate, join, printf)
from ..fable_modules.fable_library.util import (compare_primitives, compare, equals)
from ..FableSedlex.code_gen import (Doc, Doc_op_Multiply_Z7CFFAC00, word, parens, vsep, empty as empty_2, align, Doc_op_Addition_Z7CFFAC00, seplist, Doc_op_RightShift_2AAA0F3C, bracket)
from .analysis import (Analyzer, Sigma__get_GlobalVariables, Sigma__GetADTCases, Sigma__GetRecordTypes)
from .backends_common import (CodeGenOptions, NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B, NameMangling_nameEnv, NameMangling_IdentifierDescriptor_Create_Z48C5CCEF, NameMangling_IdentifierDescriptor, NameMangling_maskChar, NameMangling_mangle, DocBuilder_Builder__Run_ZD0BB270, DocBuilder_Builder__Delay_Z3A9C5A06, DocBuilder_Builder__Return_1505, DocBuilder_cg, DocBuilder_Builder__Bind_30A200B3, DocBuilder_block_1, DocBuilder_runCG, DocBuilder_Builder__Combine_Z5C764E00, DocBuilder_Builder__Yield_417FD60, DocBuilder_Builder__ReturnFrom_ZD0BB270, DocBuilder_Builder__For_2B96F4AF)
from .exceptions import (UnsolvedTypeVariable, UnboundLexer, UnboundVariable, UnboundNonterminal)
from .grammar import (definition, symbol, position, lexerule, monot, _007CTTuple_007C__007C, monot__prune, TConst_token, production as production_1, expr, node)
from .utils import (is_lower, is_upper, is_unicode, is_digit, escape_string_single_quoted, List_tryLookup, i_to_u4, escape_string)

a_ = TypeVar("a_")

b_ = TypeVar("b_")

CSharpKeywords : List[str] = ["__arglist", "__makeref", "__reftype", "__refvalue", "abstract", "as", "base", "bool", "break", "byte", "case", "catch", "char", "checked", "class", "const", "continue", "decimal", "default", "delegate", "do", "double", "else", "enum", "event", "explicit", "extern", "false", "finally", "fixed", "float", "for", "foreach", "goto", "if", "implicit", "in", "int", "interface", "internal", "is", "lock", "long", "namespace", "new", "null", "object", "operator", "out", "override", "params", "private", "protected", "public", "readonly", "ref", "return", "sbyte", "sealed", "short", "sizeof", "stackalloc", "static", "string", "struct", "switch", "this", "throw", "true", "try", "typeof", "uint", "ulong", "unchecked", "unsafe", "ushort", "using", "virtual", "volatile", "void", "while"]

def angled(x: Doc) -> Doc:
    return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word("\u003c"), x), word("\u003e"))


def codegen(analyzer: Analyzer, cg_options: CodeGenOptions, lang_name: str, stmts: List[definition]) -> List[Tuple[str, Doc]]:
    var_renamer : Callable[[str], str] = default_arg(cg_options.rename_var, lambda x, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: x)
    rename_ctor : Callable[[str], str] = default_arg(cg_options.rename_ctor, lambda x_1, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: x_1)
    rename_var : Callable[[str], str] = default_arg(cg_options.rename_var, lambda x_2, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: x_2)
    rename_field : Callable[[str], str] = default_arg(cg_options.rename_field, lambda x_3, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: x_3)
    type_renamer : Callable[[str], str] = default_arg(cg_options.rename_type, lambda x_4, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: x_4)
    import_var_names : FSharpList[str] = empty()
    import_type_names : FSharpList[str] = empty()
    class ObjectExpr113:
        @property
        def Compare(self) -> Any:
            return lambda x_6, y: compare_primitives(x_6, y)
        
    abandoned_names : Any = of_array(append(["result"], CSharpKeywords, None), ObjectExpr113())
    class ObjectExpr114:
        @property
        def Compare(self) -> Any:
            return lambda x_7, y_1: compare(x_7, y_1)
        
    symmap : Any = empty_1(ObjectExpr114())
    toplevel_transformer : FSharpList[Doc] = empty()
    current_pos : position = analyzer.current_pos
    lexer_maps : FSharpList[Tuple[str, lexerule]] = empty()
    global_scope : FSharpList[Tuple[str, str]] = to_list(delay(lambda analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: map(lambda k: (k[0], var_renamer(k[0])), Sigma__get_GlobalVariables(analyzer.Sigma))))
    class ObjectExpr115:
        @property
        def Compare(self) -> Any:
            return lambda x_8, y_2: compare_primitives(x_8, y_2)
        
    def arrow_116(i: int, c: str, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> bool:
        test : bool = True if (True if (True if (is_lower(c)) else (is_upper(c))) else (is_unicode(c))) else (c == "_")
        return test if (i == 0) else (True if (test) else (is_digit(c)))
    
    csharp_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(arrow_116, lambda i_1, c_1, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: to_text(interpolate("_X%P()_", [i_1])) if (is_digit(c_1)) else (to_text(interpolate("_%P()_", [ord(c_1)])))), NameMangling_nameEnv(of_list(map_1(lambda tuple, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: tuple[1], global_scope), ObjectExpr115())))
    class ObjectExpr117:
        @property
        def Compare(self) -> Any:
            return lambda x_9, y_3: compare_primitives(x_9, y_3)
        
    antlr_lexer_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(lambda i_2, c_2, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: is_upper(c_2) if (i_2 == 0) else (True if (True if (is_upper(c_2)) else (c_2 == "_")) else (is_digit(c_2))), lambda i_3, c_3, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: c_3.upper() if (is_lower(c_3)) else (NameMangling_maskChar(ord("A"), ord("Z"), ord(c_3)) + "_" if (i_3 == 0) else (("_" + NameMangling_maskChar(ord("A"), ord("Z"), ord(c_3))) + "_"))), NameMangling_nameEnv(of_array(["EOF"], ObjectExpr117())))
    class ObjectExpr118:
        @property
        def Compare(self) -> Any:
            return lambda x_10, y_4: compare_primitives(x_10, y_4)
        
    antlr_grammar_ident_descr : NameMangling_IdentifierDescriptor = NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(lambda i_4, c_4, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: is_lower(c_4) if (i_4 == 0) else (True if (True if (is_lower(c_4)) else (c_4 == "_")) else (is_digit(c_4))), lambda _arg1, c_5, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: c_5.lower() if (is_upper(c_5)) else (("_" + NameMangling_maskChar(ord("a"), ord("z"), ord(c_5))) + "_")), NameMangling_nameEnv(of_array(["start"], ObjectExpr118())))
    mangle : Callable[[NameMangling_IdentifierDescriptor, str], str] = lambda idr, n, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: NameMangling_mangle(abandoned_names, idr, n)
    def cg_symbol(x_11: symbol, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> str:
        nonlocal symmap
        match_value : Optional[str] = try_find(x_11, symmap)
        if match_value is None:
            valid_py_ident = None
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
        
    
    name_of_named_term : Callable[[str], str] = lambda n_2, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: cg_symbol(symbol(0, n_2, False))
    def try_lookup(key_mut: a_, x_12_mut: FSharpList[Tuple[a_, b_]], analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Optional[b_]:
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
            return "_GEN_" + a
        
        elif pattern_matching_result == 2:
            raise UnsolvedTypeVariable()
        
        elif pattern_matching_result == 3:
            return (join(", ", map_1(lambda tupled_arg, t=t: (tupled_arg[0] + ":") + _cg_type(tupled_arg[1]), args)) + " =\u003e ") + _cg_type(r)
        
        elif pattern_matching_result == 4:
            raise Exception("[]")
        
        elif pattern_matching_result == 5:
            (pattern_matching_result_1, args_1) = (None, None)
            if t.tag == 2:
                if _007CTTuple_007C__007C(t.fields[0]) is not None:
                    pattern_matching_result_1 = 0
                    args_1 = t.fields[1]
                
                else: 
                    pattern_matching_result_1 = 1
                
            
            else: 
                pattern_matching_result_1 = 1
            
            if pattern_matching_result_1 == 0:
                return ("[" + join(", ", map_1(_cg_type, args_1))) + "]"
            
            elif pattern_matching_result_1 == 1:
                if t.tag == 2:
                    it_2 : str = join(", ", map_1(_cg_type, t.fields[1]))
                    return ((_cg_type(t.fields[0]) + "\u003c") + it_2) + "\u003e"
                
                else: 
                    raise Exception("Match failure")
                
            
        
    
    cg_type : Callable[[monot], str] = lambda t_1, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: _cg_type(monot__prune(t_1))
    slot_name : Callable[[str, int], str] = lambda action_name, i_5, analyzer=analyzer, cg_options=cg_options, lang_name=lang_name, stmts=stmts: to_text(interpolate("%P()__%P()", [action_name, i_5]))
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
            match_value_5 : Optional[lexerule] = List_tryLookup(def_.fields[0], lexer_maps)
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
                return fold(lambda a_2, b_2, def__6=def__6: to_text(interpolate("por(%P(), %P())", [a_2, b_2])), op_dereference(head(def__6.fields[0])), map_1(mk_lexer_debug, tail(def__6.fields[0])))
            
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
    
    doc_ctor_wrap_funcs : FSharpList[Any] = empty()
    if not is_empty(Sigma__GetADTCases(analyzer.Sigma)):
        raise Exception("typescript backend does not support defining ADTs yet.")
    
    if not is_empty(Sigma__GetRecordTypes(analyzer.Sigma)):
        raise Exception("typescript backend does not support defining records yet.")
    
    def parens_if_lor(x_31: lexerule, analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Doc:
        if True if (x_31.tag == 4) else (False):
            return parens(word(mk_lexer(x_31)))
        
        else: 
            return word(mk_lexer(x_31))
        
    
    match_value_6 : Optional[monot] = try_find("start", analyzer.Omega)
    if match_value_6 is not None:
        start_t : monot = match_value_6
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
                decl_5 : dict[str, Any] = stmt.fields[0]
                if decl_5["external"]:
                    import_type_names = cons(type_renamer(decl_5["ident"]), import_type_names)
                
                return vsep(empty())
            
            elif stmt.tag == 0:
                raise Exception("macro not processed")
            
            else: 
                decl : dict[str, Any] = stmt.fields[0]
                current_pos = decl["pos"]
                lhs : str = decl["lhs"]
                ntname_1 : str = cg_symbol(symbol(1, lhs))
                t_3 = None
                _arg1_1 : symbol = symbol(1, lhs)
                if _arg1_1.tag == 0:
                    t_3 = TConst_token
                
                elif _arg1_1.tag == 1:
                    t_3 = FSharpMap__get_Item(analyzer.Omega, _arg1_1.fields[0])
                
                else: 
                    raise Exception("macro not processed")
                
                idx_1 : int = 0
                def arrow_135(stmt: definition=stmt) -> Iterable[Doc]:
                    def arrow_133(match_value_4: Tuple[position, production_1]) -> Iterable[Doc]:
                        nonlocal current_pos
                        action_name_3 = None
                        idx : int = idx_1 or 0
                        action_name_3 = to_text(printf("%s_%i"))(ntname_1)(idx)
                        current_pos = match_value_4[0]
                        def arrow_131(_unit=None) -> Doc:
                            prod : production_1 = match_value_4[1]
                            action_name_2 : str = action_name_3
                            pattern_input_1 = None
                            curr_expr : expr = prod.action
                            is_terminal : List[bool] = to_array_1(delay(lambda _unit=None: map(lambda sym: True if (sym.tag == 0) else (False), prod.symbols)))
                            class ObjectExpr119:
                                @property
                                def Compare(self) -> Any:
                                    return lambda x_13, y_5: compare_primitives(x_13, y_5)
                                
                            used_slots : Any = empty_3(ObjectExpr119())
                            def cg_expr(scope_1: FSharpList[Tuple[str, str]], curr_expr_1: expr) -> DocBuilder_block_1[Doc]:
                                def arrow_129(scope_1: FSharpList[Tuple[str, str]]=scope_1, curr_expr_1: expr=curr_expr_1) -> DocBuilder_block_1[Doc]:
                                    nonlocal used_slots
                                    match_value_1 : node = curr_expr_1.node
                                    if match_value_1.tag == 6:
                                        match_value_2 : Optional[str] = try_lookup(match_value_1.fields[0], scope_1)
                                        if match_value_2 is not None:
                                            v_1 : str = match_value_2
                                            def arrow_120(_unit=None) -> Doc:
                                                type_args = None
                                                lst : FSharpList[Doc] = map_1(lambda arg_1: word(cg_type(arg_1)), map_1(lambda t_2: monot__prune(t_2), match_value_1.fields[1].contents))
                                                type_args = seplist(word(", "), lst)
                                                return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(v_1), word("\u003c")), type_args), word("\u003e"))
                                            
                                            return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(v_1) if (length(match_value_1.fields[1].contents) == 0) else (arrow_120()))
                                        
                                        else: 
                                            def arrow_121(_unit=None) -> Doc:
                                                raise UnboundVariable(match_value_1.fields[0])
                                            
                                            return DocBuilder_Builder__Return_1505(DocBuilder_cg, arrow_121())
                                        
                                    
                                    elif match_value_1.tag == 11:
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, word("true")) if (match_value_1.fields[0]) else (DocBuilder_Builder__Return_1505(DocBuilder_cg, word("false")))
                                    
                                    elif match_value_1.tag == 3:
                                        return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(scope_1, match_value_1.fields[0]), lambda _arg6: DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(_arg6, word(".")), word(match_value_1.fields[1]))))
                                    
                                    elif match_value_1.tag == 8:
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(to_text(printf("%d"))(match_value_1.fields[0])))
                                    
                                    elif match_value_1.tag == 10:
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(to_text(printf("%f"))(match_value_1.fields[0])))
                                    
                                    elif match_value_1.tag == 9:
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, word(escape_string(match_value_1.fields[0])))
                                    
                                    elif match_value_1.tag == 5:
                                        def arrow_123(_unit=None) -> Iterable[Tuple[str, str]]:
                                            def arrow_122(match_value_3: Tuple[str, monot]) -> Iterable[Tuple[str, str]]:
                                                arg_2 : str = match_value_3[0]
                                                return singleton((arg_2, mangle(csharp_ident_descr, arg_2)))
                                            
                                            return collect(arrow_122, match_value_1.fields[0])
                                        
                                        pattern_input : Tuple[Doc, FSharpList[Doc]] = DocBuilder_runCG(cg_expr(append_2(to_list(delay(arrow_123)), scope_1), match_value_1.fields[1]))
                                        def arrow_124(_unit=None) -> Doc:
                                            body : Doc = vsep(of_array_1([vsep(pattern_input[1]), Doc_op_Addition_Z7CFFAC00(word("return"), Doc_op_Multiply_Z7CFFAC00(pattern_input[0], word(";")))]))
                                            anns : FSharpList[Doc] = map_1(lambda tupled_arg_1: word((cg_type(tupled_arg_1[1]) + " ") + tupled_arg_1[0]), match_value_1.fields[0])
                                            return parens(vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(word("function"), Doc_op_Multiply_Z7CFFAC00(parens(seplist(word(", "), anns)), word("{"))), Doc_op_RightShift_2AAA0F3C(body, 4), word("}")])))
                                        
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, arrow_124())
                                    
                                    elif match_value_1.tag == 4:
                                        def arrow_125(_arg7: Doc) -> DocBuilder_block_1[Doc]:
                                            m_name : str = mangle(csharp_ident_descr, match_value_1.fields[0])
                                            return DocBuilder_Builder__Combine_Z5C764E00(DocBuilder_cg, DocBuilder_Builder__Yield_417FD60(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("let"), word(m_name)), word(":")), word(cg_type(match_value_1.fields[1].t))), word("=")), Doc_op_Multiply_Z7CFFAC00(_arg7, word(";")))), DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(cons((match_value_1.fields[0], m_name), scope_1), match_value_1.fields[2]))))
                                        
                                        return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(scope_1, match_value_1.fields[1]), arrow_125)
                                    
                                    elif match_value_1.tag == 2:
                                        return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, match_value_1.fields[0], lambda _arg8: DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(scope_1, _arg8))))), lambda _arg9: DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word("\u003c{cg_type curr_expr.t}\u003e"), word("[")), seplist(word(","), _arg9)), word("]"))))
                                    
                                    elif match_value_1.tag == 7:
                                        n_5 : str = slot_name(action_name_2, match_value_1.fields[0])
                                        used_slots = add_1(match_value_1.fields[0], used_slots)
                                        v_2 : Doc = word(to_text(interpolate("_localctx._%P()", [n_5])))
                                        return DocBuilder_Builder__Return_1505(DocBuilder_cg, v_2 if (is_terminal[match_value_1.fields[0] - 1]) else (Doc_op_Multiply_Z7CFFAC00(v_2, word(".result"))))
                                    
                                    else: 
                                        def arrow_128(_arg2: Doc) -> DocBuilder_block_1[Doc]:
                                            def arrow_127(_unit=None) -> DocBuilder_block_1[FSharpList[Doc]]:
                                                def arrow_126(_arg3: expr) -> DocBuilder_block_1[Doc]:
                                                    arg : expr = _arg3
                                                    return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(scope_1, arg), lambda _arg4: DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(angled(word(cg_type(arg.t))), _arg4)))
                                                
                                                return DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, match_value_1.fields[1], arrow_126)
                                            
                                            return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_127)), lambda _arg5: DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Addition_Z7CFFAC00(word(to_text(interpolate("\u003c%P()\u003e", [cg_type(curr_expr_1.t)]))), Doc_op_Multiply_Z7CFFAC00(_arg2, parens(seplist(word(", "), _arg5))))))
                                        
                                        return DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, lambda _unit=None: DocBuilder_Builder__For_2B96F4AF(DocBuilder_cg, match_value_1.fields[0], lambda _arg10: DocBuilder_Builder__ReturnFrom_ZD0BB270(DocBuilder_cg, cg_expr(scope_1, _arg10))))), lambda _arg11: DocBuilder_Builder__Return_1505(DocBuilder_cg, Doc_op_Multiply_Z7CFFAC00(word(to_text(interpolate("\u003c%P()\u003e", [cg_type(curr_expr_1.t)]))), bracket(seplist(word(", "), _arg11))))) if (match_value_1.tag == 1) else (DocBuilder_Builder__Bind_30A200B3(DocBuilder_cg, cg_expr(scope_1, match_value_1.fields[0]), arrow_128))
                                    
                                
                                return DocBuilder_Builder__Run_ZD0BB270(DocBuilder_cg, DocBuilder_Builder__Delay_Z3A9C5A06(DocBuilder_cg, arrow_129))
                            
                            snd : Tuple[Doc, FSharpList[Doc]] = DocBuilder_runCG(cg_expr(global_scope, curr_expr))
                            pattern_input_1 = (used_slots, snd)
                            def arrow_130(_unit=None) -> Doc:
                                def mapping_5(i_8: int, s_6: symbol) -> Doc:
                                    i_9 : int = (i_8 + 1) or 0
                                    sym_1 : Doc = word(cg_symbol(s_6))
                                    if contains(i_9, pattern_input_1[0]):
                                        return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(slot_name(action_name_2, i_9)), word("=")), sym_1)
                                    
                                    else: 
                                        return sym_1
                                    
                                
                                lst_1 : FSharpList[Doc] = map_indexed(mapping_5, prod.symbols)
                                return seplist(word(" "), lst_1)
                            
                            return Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(arrow_130(), word("{")), Doc_op_RightShift_2AAA0F3C(vsep(of_array_1([empty_2, Doc_op_RightShift_2AAA0F3C(vsep(of_array_1([vsep(pattern_input_1[1][1]), Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("$" + result_name), word("=")), Doc_op_Multiply_Z7CFFAC00(pattern_input_1[1][0], word(";")))])), 4), word("}")])), 12))
                        
                        def arrow_132(_unit=None) -> Iterable[Doc]:
                            nonlocal idx_1
                            idx_1 = (idx_1 + 1) or 0
                            return empty_4()
                        
                        return append_1(singleton(arrow_131()), delay(arrow_132))
                    
                    return collect(arrow_133, decl["define"])
                
                body_3 : Doc = align(vsep(map_indexed(lambda i_10, e_1, stmt=stmt: Doc_op_Addition_Z7CFFAC00(word(":") if (i_10 == 0) else (word("|")), e_1), to_list(delay(arrow_135)))))
                return vsep(of_array_1([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(ntname_1), word("returns")), bracket(Doc_op_Addition_Z7CFFAC00(word(cg_type(t_3)), word(result_name)))), Doc_op_RightShift_2AAA0F3C(body_3, 4), word(";")]))
            
        
        file_grammar : Doc = vsep(of_array_1(map_2(cg_stmt, stmts, None)))
        def arrow_142(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Iterable[Doc]:
            def arrow_141(match_value_7: Tuple[str, lexerule]) -> Iterable[Doc]:
                k_1 : str = match_value_7[0]
                v_4 : lexerule = simplify_lexerule(match_value_7[1])
                n_6 : str = name_of_named_term(k_1)
                return singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(n_6), word(":")), parens_if_lor(v_4)), word("-\u003e channel(HIDDEN);"))) if (contains(k_1, analyzer.IgnoreSet)) else (singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(n_6), word(":")), word(mk_lexer(v_4))), word(";"))) if (contains(k_1, analyzer.ReferencedNamedTokens)) else (singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("fragment"), word(n_6)), word(":")), parens_if_lor(v_4)), word(";")))))
            
            return collect(arrow_141, reverse(lexer_maps))
        
        lexer_defs : FSharpList[Doc] = to_list(delay(arrow_142))
        start_mangled : str = cg_symbol(symbol(1, "start"))
        import_names : FSharpList[str] = append_2(import_type_names, import_var_names)
        def arrow_148(analyzer: Analyzer=analyzer, cg_options: CodeGenOptions=cg_options, lang_name: str=lang_name, stmts: List[definition]=stmts) -> Iterable[Doc]:
            def arrow_147(_unit=None) -> Iterable[Doc]:
                def arrow_146(_unit=None) -> Iterable[Doc]:
                    def arrow_145(_unit=None) -> Iterable[Doc]:
                        def arrow_144(_unit=None) -> Iterable[Doc]:
                            def arrow_143(_unit=None) -> str:
                                arg10_3 : str = cg_type(start_t)
                                return to_text(printf("start returns [result: %s]: v=%s EOF { $result = _localctx._v.result; };"))(arg10_3)(start_mangled)
                            
                            return append_1(singleton(word(arrow_143())), delay(lambda _unit=None: append_1(singleton(file_grammar), delay(lambda _unit=None: lexer_defs))))
                        
                        return append_1(singleton(word("}")), delay(arrow_144))
                    
                    return append_1(singleton(word(to_text(interpolate("import { %P() } from %P()", [join(", ", import_names), escape_string(to_text(interpolate("./%P()_require", [lang_name])))])))) if (not is_empty(import_names)) else (empty_4()), delay(arrow_145))
                
                return append_1(singleton(word("@header {")), delay(arrow_146))
            
            return append_1(singleton(word(to_text(interpolate("grammar %P();", [lang_name])))), delay(arrow_147))
        
        return [(lang_name + ".g4", vsep(to_list(delay(arrow_148))))]
    
    else: 
        raise UnboundNonterminal("start")
    


