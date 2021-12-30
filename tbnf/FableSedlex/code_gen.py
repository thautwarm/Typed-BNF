from __future__ import annotations
from array import array
from typing import (TypeVar, List, Any, Optional, Generic, Callable)
from fable_modules.fable_library.array import (take, append, concat as concat_1, last, head, skip)
from fable_modules.fable_library.list import (empty as empty_1, cons, FSharpList, is_empty, tail, head as head_1)
from fable_modules.fable_library.reflection import (TypeInfo, list_type, int32_type, string_type, union_type, class_type)
from fable_modules.fable_library.seq import (map, to_list)
from fable_modules.fable_library.string import replicate
from fable_modules.fable_library.system_text import (StringBuilder__ctor, StringBuilder__Append_Z721C83C5)
from fable_modules.fable_library.types import (Union, to_string)
from fable_modules.fable_library.util import (ignore, get_enumerator)

a_ = TypeVar("a_")

a_1 = TypeVar("a_1")

a = TypeVar("a")

def expr_27() -> TypeInfo:
    return union_type("Fable.CodeGen.Doc", [], Doc, lambda: [[["Item1", Doc_reflection()], ["Item2", Doc_reflection()]], [["Item", list_type(Doc_reflection())]], [["Item", Doc_reflection()]], [["Item1", int32_type], ["Item2", Doc_reflection()]], [["Item", string_type]]])


class Doc(Union):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Concat", "VSep", "Align", "Indent", "Word"]
    

Doc_reflection = expr_27

def Doc_op_Multiply_Z7CFFAC00(a: Doc, b: Doc) -> Doc:
    return Doc(0, a, b)


def Doc_op_Addition_Z7CFFAC00(a: Doc, b: Doc) -> Doc:
    return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(a, Doc(4, " ")), b)


def Doc_op_RightShift_2AAA0F3C(a: Doc, b: int) -> Doc:
    return Doc(3, b, a)


def expr_30() -> TypeInfo:
    return union_type("Fable.CodeGen.DocPrimitive", [], DocPrimitive, lambda: [[], [], [["Item", int32_type]], [["Item", string_type]]])


class DocPrimitive(Union):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["DP_PopIndent", "DP_PushCurrentIndent", "DP_PushIndent", "DP_Word"]
    

DocPrimitive_reflection = expr_30

def Array_drop(i: int, arr: List[a_]) -> List[a_]:
    return take(len(arr) - i, arr, None)


def compile_to_prims(doc: Doc) -> List[List[DocPrimitive]]:
    if doc.tag == 2:
        it : List[List[DocPrimitive]] = compile_to_prims(doc.fields[0])
        if len(it) == 0:
            return it
        
        else: 
            it[0] = append([DocPrimitive(1)], it[0], None)
            it[len(it) - 1] = append(it[len(it) - 1], [DocPrimitive(0)], None)
            return it
        
    
    elif doc.tag == 3:
        prefix : List[DocPrimitive] = [DocPrimitive(2, doc.fields[0])]
        it_1 : List[List[DocPrimitive]] = compile_to_prims(doc.fields[1])
        if len(it_1) == 0:
            return it_1
        
        else: 
            it_1[0] = append(prefix, it_1[0], None)
            it_1[len(it_1) - 1] = append(it_1[len(it_1) - 1], [DocPrimitive(0)], None)
            return it_1
        
    
    elif doc.tag == 1:
        return concat_1(map(lambda doc_2, doc=doc: compile_to_prims(doc_2), doc.fields[0]), None)
    
    elif doc.tag == 4:
        return [[DocPrimitive(3, doc.fields[0])]]
    
    else: 
        l_1 : List[List[DocPrimitive]] = compile_to_prims(doc.fields[0])
        r_1 : List[List[DocPrimitive]] = compile_to_prims(doc.fields[1])
        if len(l_1) == 0:
            return r_1
        
        elif len(r_1) == 0:
            return l_1
        
        else: 
            return concat_1([Array_drop(1, l_1), [append(last(l_1), head(r_1), None)], skip(1, r_1, None)], None)
        
    


def expr_33(gen0) -> TypeInfo:
    return class_type("Fable.CodeGen.Stack`1", [gen0], Stack_1)


class Stack_1(Generic[a_1]):
    def __init__(self, init: Optional[Any]=None) -> None:
        self._content = to_list(init) if (init is not None) else (empty_1())
    

Stack_1_reflection = expr_33

def Stack_1__ctor_Z5E7FEA67(init: Optional[Any]=None) -> Stack_1[a]:
    return Stack_1(init)


def Stack_1__Push_2B595(__: Stack_1[a], a: a=None) -> None:
    __._content = cons(a, __._content)


def Stack_1__Pop(__: Stack_1[a]) -> a:
    match_value : FSharpList[a] = __._content
    if not is_empty(match_value):
        __._content = tail(match_value)
        return head_1(match_value)
    
    else: 
        raise Exception("negative stacksize")
    


def Stack_1__get_Last(__: Stack_1[a]) -> a:
    match_value : FSharpList[a] = __._content
    if not is_empty(match_value):
        return head_1(match_value)
    
    else: 
        raise Exception("negative stacksize")
    


def render(setences: List[List[DocPrimitive]], write: Callable[[str], None]) -> None:
    levels : Stack_1[int] = Stack_1__ctor_Z5E7FEA67(array("i", [0]))
    if len(setences) == 0:
        pass
    
    else: 
        for idx in range(0, (len(setences) - 1) + 1, 1):
            words : List[DocPrimitive] = setences[idx]
            col : int = 0
            initialized : bool = False
            for idx_1 in range(0, (len(words) - 1) + 1, 1):
                word_1 : DocPrimitive = words[idx_1]
                if word_1.tag == 1:
                    Stack_1__Push_2B595(levels, col)
                
                elif word_1.tag == 0:
                    ignore(Stack_1__Pop(levels))
                
                elif word_1.tag == 2:
                    Stack_1__Push_2B595(levels, Stack_1__get_Last(levels) + word_1.fields[0])
                
                else: 
                    s : str = word_1.fields[0]
                    if not initialized:
                        col = (Stack_1__get_Last(levels) + col) or 0
                        write(replicate(col, " "))
                        initialized = True
                    
                    write(s)
                    col = (col + len(s)) or 0
                
            write("\n")
    


def pretty(s: Any=None) -> Doc:
    def arrow_34(s=s) -> str:
        copy_of_struct : a_ = s
        return to_string(copy_of_struct)
    
    return Doc(4, arrow_34())


def word(s: str) -> Doc:
    return Doc(4, s)


def vsep(lines: FSharpList[Doc]) -> Doc:
    return Doc(1, lines)


def align(seg: Doc) -> Doc:
    return Doc(2, seg)


def indent(i: int, x: Doc) -> Doc:
    return Doc(3, i, x)


def concat(a: Doc, b: Doc) -> Doc:
    return Doc(0, a, b)


empty = word("")

def parens(seg: Doc) -> Doc:
    return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word("("), seg), word(")"))


def bracket(seg: Doc) -> Doc:
    return Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(word("["), seg), word("]"))


def listof(lst: FSharpList[Doc]) -> Doc:
    if not is_empty(lst):
        res : Doc = head_1(lst)
        with get_enumerator(tail(lst)) as enumerator:
            while enumerator.System_Collections_IEnumerator_MoveNext():
                each : Doc = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
                res = Doc_op_Multiply_Z7CFFAC00(res, each)
        return res
    
    else: 
        return empty
    


def seplist(sep: Doc, lst: FSharpList[Doc]) -> Doc:
    if not is_empty(lst):
        res : Doc = head_1(lst)
        with get_enumerator(tail(lst)) as enumerator:
            while enumerator.System_Collections_IEnumerator_MoveNext():
                each : Doc = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
                res = Doc_op_Multiply_Z7CFFAC00(Doc_op_Multiply_Z7CFFAC00(res, sep), each)
        return res
    
    else: 
        return empty
    


def show_doc(doc: Doc) -> str:
    sb : Any = StringBuilder__ctor()
    def arrow_35(x: str, doc=doc) -> None:
        ignore(StringBuilder__Append_Z721C83C5(sb, x))
    
    render(compile_to_prims(doc), arrow_35)
    return to_string(sb)


def gen_doc(doc: Doc, write: Callable[[str], None]) -> None:
    render(compile_to_prims(doc), write)


