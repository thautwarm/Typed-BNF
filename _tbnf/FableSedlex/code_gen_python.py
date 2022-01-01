from __future__ import annotations
from typing import (Any, Callable, MutableSequence, Optional, List, Tuple)
from ..fable_modules.fable_library.array import (compare_with, map as map_2)
from ..fable_modules.fable_library.list import (empty as empty_1, FSharpList, of_array_with_tail, of_seq, of_array, cons, reverse, map as map_1, singleton, append)
from ..fable_modules.fable_library.map import (empty, try_find, add)
from ..fable_modules.fable_library.seq import map
from ..fable_modules.fable_library.string import (to_text, printf, replace, interpolate)
from ..fable_modules.fable_library.util import (compare, compare_primitives, int32_to_string, get_enumerator, ignore)
from .code_gen import (Doc, empty as empty_2, Doc_op_Addition_Z7CFFAC00, word, seplist, bracket, Doc_op_Multiply_Z7CFFAC00, pretty, vsep, Doc_op_RightShift_2AAA0F3C, parens)
from .sedlex import (compiled_unit, Automata_decision_tree, lang as lang_3, keep_token)

def codegen_python(import_head: str, cu: compiled_unit) -> Doc:
    class ObjectExpr59:
        @property
        def Compare(self) -> Any:
            return lambda x, y: compare(x, y)
        
    decision_funcs : Any = empty(ObjectExpr59())
    tbl_cnt : int = 0
    dt_cnt : int = 0
    rnd_cnt : int = 0
    def new_rnd_name(import_head: str=import_head, cu: compiled_unit=cu) -> str:
        nonlocal rnd_cnt
        rnd_cnt = (rnd_cnt + 1) or 0
        arg10_2 : int = rnd_cnt or 0
        return to_text(printf("_sedlex_rnd_%d"))(arg10_2)
    
    class ObjectExpr60:
        @property
        def Compare(self) -> Any:
            return lambda x_1, y_1: compare_with(lambda x_2, y_2: compare_primitives(x_2, y_2), x_1, y_1)
        
    tables : Any = empty(ObjectExpr60())
    toplevels : FSharpList[Doc] = empty_1()
    later_toplevels : FSharpList[Doc] = empty_1()
    def push_toplevel(doc: Doc, import_head: str=import_head, cu: compiled_unit=cu) -> None:
        nonlocal toplevels
        toplevels = of_array_with_tail([doc, empty_2], toplevels)
    
    def push_later_toplevel(doc_1: Doc, import_head: str=import_head, cu: compiled_unit=cu) -> None:
        nonlocal later_toplevels
        later_toplevels = of_array_with_tail([doc_1, empty_2], later_toplevels)
    
    st_func_name : Callable[[int], str] = lambda i, import_head=import_head, cu=cu: to_text(printf("_sedlex_st_%d"))(i)
    def _cg_decision_func(tree: Automata_decision_tree, import_head: str=import_head, cu: compiled_unit=cu) -> Doc:
        nonlocal tbl_cnt, tables
        if tree.tag == 2:
            return Doc_op_Addition_Z7CFFAC00(word("return"), word(int32_to_string(tree.fields[0])))
        
        elif tree.tag == 1:
            tname = None
            table : MutableSequence[int] = tree.fields[1]
            match_value : Optional[str] = try_find(table, tables)
            if match_value is None:
                table_doc = None
                lst : FSharpList[Doc] = of_seq(map(lambda arg, tree=tree: word(int32_to_string(arg)), table))
                table_doc = seplist(word(", "), lst)
                n_1 = None
                tbl_cnt = (tbl_cnt + 1) or 0
                arg10 : int = tbl_cnt or 0
                n_1 = to_text(printf("_sedlex_DT_table_%d"))(arg10)
                push_later_toplevel(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(n_1), word("=")), bracket(table_doc)))
                tables = add(table, n_1, tables)
                tname = n_1
            
            else: 
                tname = match_value
            
            return Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("return"), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(tname), word("[")), word("c"))), word("-")), Doc_op_Multiply_Z7CFFAC00(pretty(tree.fields[0]), word("]"))), word("-")), pretty(1))
        
        else: 
            yes_f : Doc = _cg_decision_func(tree.fields[1])
            no_f : Doc = _cg_decision_func(tree.fields[2])
            return vsep(of_array([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("if"), word("c")), word("\u003c=")), Doc_op_Multiply_Z7CFFAC00(word(int32_to_string(tree.fields[0])), word(":"))), Doc_op_RightShift_2AAA0F3C(yes_f, 4), word("else:"), Doc_op_RightShift_2AAA0F3C(no_f, 4)]))
        
    
    def cg_decision_func(tree_1: Automata_decision_tree, import_head: str=import_head, cu: compiled_unit=cu) -> str:
        nonlocal dt_cnt, decision_funcs
        match_value_1 : Optional[str] = try_find(tree_1, decision_funcs)
        if match_value_1 is None:
            dtname = None
            dt_cnt = (dt_cnt + 1) or 0
            arg10_1 : int = dt_cnt or 0
            dtname = to_text(printf("_sedlex_decide_%d"))(arg10_1)
            push_toplevel(vsep(of_array([Doc_op_Addition_Z7CFFAC00(word("def"), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(dtname), parens(word("c: int"))), word(":"))), Doc_op_RightShift_2AAA0F3C(_cg_decision_func(tree_1), 4)])))
            decision_funcs = add(tree_1, dtname, decision_funcs)
            return dtname
        
        else: 
            return match_value_1
        
    
    def _cg_state_func(lang: lang_3, import_head: str=import_head, cu: compiled_unit=cu) -> Doc:
        if lang.tag == 3:
            return Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("result"), word("=")), Doc_op_Multiply_Z7CFFAC00(word(st_func_name(lang.fields[0])), parens(word("lexerbuf"))))
        
        elif lang.tag == 4:
            return Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("result"), word("=")), pretty(lang.fields[0]))
        
        elif lang.tag == 2:
            return vsep(of_array([word(to_text(printf("mark(lexerbuf, %d)"))(lang.fields[0])), _cg_state_func(lang.fields[1])]))
        
        elif lang.tag == 0:
            cases : List[lang_3] = lang.fields[1]
            names : FSharpList[str] = empty_1()
            for idx in range(0, (len(cases) - 1) + 1, 1):
                body : Doc = _cg_state_func(cases[idx])
                name_1 : str = new_rnd_name()
                push_toplevel(vsep(of_array([Doc_op_Addition_Z7CFFAC00(word("def"), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(name_1), parens(word("lexerbuf: lexbuf"))), word(":"))), Doc_op_RightShift_2AAA0F3C(vsep(of_array([word("result = -1"), body, word("return result")])), 4)])))
                names = cons(name_1, names)
            names_1 : FSharpList[str] = reverse(names)
            func_table : str = new_rnd_name()
            def arrow_61(lang: lang_3=lang) -> Doc:
                lst_1 : FSharpList[Doc] = map_1(lambda s_2: word(s_2), names_1)
                return seplist(word(", "), lst_1)
            
            push_later_toplevel(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(func_table), word("=")), bracket(arrow_61())))
            default_body : Doc = _cg_state_func(lang.fields[2])
            test : Doc = Doc_op_Multiply_Z7CFFAC00(word(cg_decision_func(lang.fields[0])), parens(word("public_next_int(lexerbuf)")))
            return vsep(of_array([Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("state_id"), word("=")), test), Doc_op_Addition_Z7CFFAC00(word("if"), Doc_op_Multiply_Z7CFFAC00(word(to_text(printf("state_id \u003e= 0"))), word(":"))), Doc_op_RightShift_2AAA0F3C(vsep(singleton(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("result"), word("=")), Doc_op_Multiply_Z7CFFAC00(word(to_text(printf("%s[state_id]"))(func_table)), parens(word("lexerbuf")))))), 4), word("else:"), Doc_op_RightShift_2AAA0F3C(default_body, 4)]))
        
        else: 
            return word("result = backtrack(lexerbuf)")
        
    
    with get_enumerator(cu.states) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            kv : Any = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
            push_toplevel(vsep(of_array([Doc_op_Addition_Z7CFFAC00(word("def"), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(st_func_name(kv[0])), parens(word("lexerbuf: lexbuf"))), word(":"))), Doc_op_RightShift_2AAA0F3C(vsep(of_array([word("result = -1"), _cg_state_func(kv[1]), word("return result")])), 4)])))
    with get_enumerator(cu.referenced_decision_trees) as enumerator_1:
        while enumerator_1.System_Collections_IEnumerator_MoveNext():
            ignore(cg_decision_func(enumerator_1.System_Collections_Generic_IEnumerator_00601_get_Current()))
    middle_toplevels = None
    pattern_input : Tuple[List[keep_token], str] = cu.lex_code
    error_msg_1 : str = ("\"" + replace(pattern_input[1], "\"", "\\\"")) + "\""
    initial_state_fun : str = st_func_name(0)
    token_ids : FSharpList[Doc] = of_array(map_2(lambda _arg1, import_head=import_head, cu=cu: pretty(_arg1.fields[0]) if (_arg1.tag == 1) else (word("None")), pattern_input[0], None))
    construct_table : Doc = Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("["), seplist(word(", "), token_ids)), word("]")), word(" # token_ids"))
    table_name : str = new_rnd_name()
    push_toplevel(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word(table_name), word("=")), construct_table))
    middle_toplevels = vsep(of_array([empty_2, word("@dataclasses.dataclass"), word("class Token:"), Doc_op_RightShift_2AAA0F3C(vsep(of_array([word("token_id: int"), word("lexeme : str"), word("line: int"), word("col: int"), word("span: int"), word("offset: int"), word("file: str")])), 4), empty_2, word("_Token = typing.TypeVar(\"_Token\")"), empty_2, word("class TokenConstructor(typing_extensions.Protocol[_Token]):"), Doc_op_RightShift_2AAA0F3C(vsep(singleton(word("def __call__(self, token_id: int, lexeme: str, line: int, col: int, span: int, offset: int, file: str) -\u003e _Token: ..."))), 4), empty_2, Doc_op_Addition_Z7CFFAC00(word("def"), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word("lex"), parens(Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("lexerbuf: lexbuf"), word(", ")), word("construct_token: TokenConstructor[_Token]=Token")))), word(":"))), Doc_op_RightShift_2AAA0F3C(vsep(of_array([word("start(lexerbuf)"), Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("case_id"), word("=")), Doc_op_Multiply_Z7CFFAC00(word(initial_state_fun), parens(word("lexerbuf")))), Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("if case_id \u003c 0:"), word("raise")), Doc_op_Multiply_Z7CFFAC00(word("Exception"), parens(word(error_msg_1)))), Doc_op_Addition_Z7CFFAC00(Doc_op_Addition_Z7CFFAC00(word("token_id"), word("=")), Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word(table_name), word("[")), word("case_id")), word("]"))), word("if token_id is not None:"), Doc_op_RightShift_2AAA0F3C(vsep(singleton(Doc_op_Addition_Z7CFFAC00(word("return"), Doc_op_Multiply_Z7CFFAC00(word("construct_token"), parens(seplist(word(", "), of_array([word("token_id"), word("lexeme(lexerbuf)"), word("lexerbuf.start_line"), word("lexerbuf.pos - lexerbuf.curr_bol"), word("lexerbuf.pos - lexerbuf.start_pos"), word("lexerbuf.start_pos"), word("lexerbuf.filename")]))))))), 4), word("return None")])), 4), word("def lexall(buf: lexbuf, construct: TokenConstructor[_Token], is_eof: Callable[[_Token], bool]):"), Doc_op_RightShift_2AAA0F3C(vsep(of_array([word("while True:"), Doc_op_RightShift_2AAA0F3C(vsep(of_array([word("token = lex(buf, construct)"), word("if token is None: continue"), word("if is_eof(token): break"), word("yield token")])), 4)])), 4)]))
    return vsep(append(singleton(vsep(of_array([word(to_text(interpolate("from %P().sedlex import *", [import_head]))), word("import typing"), word("import typing_extensions"), word("import dataclasses")]))), append(toplevels, append(singleton(middle_toplevels), later_toplevels))))


