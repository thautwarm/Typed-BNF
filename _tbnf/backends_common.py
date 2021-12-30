from typing import (Callable, TypeVar, Tuple, Any, List)
from fable_modules.fable_library.reflection import (TypeInfo, string_type, lambda_type, record_type)
from fable_modules.fable_library.string import replace
from fable_modules.fable_library.types import Record
from fable_modules.fable_library.util import equals

a_ = TypeVar("a_")

b_ = TypeVar("b_")

def expr_30() -> TypeInfo:
    return record_type("tbnf.Backends.Common.CodeGenOptions", [], CodeGenOptions, lambda: [["renamer", lambda_type(string_type, string_type)], ["lang", string_type]])


class CodeGenOptions(Record):
    def __init__(self, renamer: Callable[[str], str], lang: str) -> None:
        super().__init__()
        self.renamer = renamer
        self.lang = lang
    

CodeGenOptions_reflection = expr_30

def find_fst_with_snd(xs: List[Tuple[a_, b_]], k: b_=None) -> a_:
    def loop(i_mut: int, xs=xs, k=k) -> Any:
        while True:
            (i,) = (i_mut,)
            if i < len(xs):
                pattern_input : Tuple[a_, b_] = xs[i]
                if equals(pattern_input[1], k):
                    return pattern_input[0]
                
                else: 
                    i_mut = i + 1
                    continue
                
            
            else: 
                raise Exception("not found")
            
            break
    
    return loop(0)


def find_snd_with_fst(xs: List[Tuple[a_, b_]], k: a_=None) -> b_:
    def loop(i_mut: int, xs=xs, k=k) -> Any:
        while True:
            (i,) = (i_mut,)
            if i < len(xs):
                pattern_input : Tuple[a_, b_] = xs[i]
                if equals(pattern_input[0], k):
                    return pattern_input[1]
                
                else: 
                    i_mut = i + 1
                    continue
                
            
            else: 
                raise Exception("not found")
            
            break
    
    return loop(0)


def escape_string(s: str) -> str:
    return ("\"" + replace(replace(replace(s, "\"", "\\\""), "\n", "\\n"), "\r", "\\r")) + "\""


