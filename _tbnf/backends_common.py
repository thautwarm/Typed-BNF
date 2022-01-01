from typing import (Callable, TypeVar, Tuple, Optional)
from fable_modules.fable_library.list import (is_empty, head, tail, FSharpList)
from fable_modules.fable_library.option import some
from fable_modules.fable_library.reflection import (TypeInfo, string_type, lambda_type, record_type)
from fable_modules.fable_library.types import Record
from fable_modules.fable_library.util import equals

a_ = TypeVar("a_")

b_ = TypeVar("b_")

def expr_37() -> TypeInfo:
    return record_type("tbnf.Backends.Common.CodeGenOptions", [], CodeGenOptions, lambda: [["variable_renamer", lambda_type(string_type, string_type)], ["type_renamer", lambda_type(string_type, string_type)], ["lang", string_type]])


class CodeGenOptions(Record):
    def __init__(self, variable_renamer: Callable[[str], str], type_renamer: Callable[[str], str], lang: str) -> None:
        super().__init__()
        self.variable_renamer = variable_renamer
        self.type_renamer = type_renamer
        self.lang = lang
    

CodeGenOptions_reflection = expr_37

def List_tryLookup(key_mut: a_, x_mut: FSharpList[Tuple[a_, b_]]) -> Optional[b_]:
    while True:
        (key, x) = (key_mut, x_mut)
        if not is_empty(x):
            if equals(head(x)[0], key):
                return some(head(x)[1])
            
            elif not is_empty(x):
                key_mut = key
                x_mut = tail(x)
                continue
            
            else: 
                raise Exception("Match failure")
            
        
        else: 
            return None
        
        break


def List_lookup(key_mut: a_, x_mut: FSharpList[Tuple[a_, b_]]) -> b_:
    while True:
        (key, x) = (key_mut, x_mut)
        if not is_empty(x):
            if equals(head(x)[0], key):
                return head(x)[1]
            
            elif not is_empty(x):
                key_mut = key
                x_mut = tail(x)
                continue
            
            else: 
                raise Exception("Match failure")
            
        
        else: 
            raise Exception("key not found")
        
        break


