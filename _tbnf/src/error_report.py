from __future__ import annotations
from typing import (Any, List, Generic, TypeVar, Callable)
from ..fable_modules.fable_library.reflection import (TypeInfo, union_type)
from ..fable_modules.fable_library.string import (to_text, interpolate)
from ..fable_modules.fable_library.types import Union
from .exceptions import (ErrorTrace, IllFormedType, TypeUnexpected)
from .grammar import (expr, monot__prune)
from .inspect import inspect_mono_type

_A = TypeVar("_A")

_B = TypeVar("_B")

def expr_349(gen0: TypeInfo, gen1: TypeInfo) -> TypeInfo:
    return union_type("tbnf.ErrorReport.result`2", [gen0, gen1], result_2, lambda: [[["Item", gen0]], [["Item", gen1]]])


class result_2(Union, Generic[_A, _B]):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["Ok", "Err"]
    

result_2_reflection = expr_349

def show_expr(e: expr) -> str:
    raise Exception("")


def filter_error(error_trace: ErrorTrace, action: Callable[[], _A]) -> result_2[_A, str]:
    try: 
        return result_2(0, action())
    
    except Exception as match_value:
        if isinstance(match_value, IllFormedType):
            return result_2(1, to_text(interpolate("recursive types are invalid: %P() ~ %P()", [inspect_mono_type(monot__prune(match_value.Data0)), inspect_mono_type(monot__prune(match_value.Data1))])))
        
        elif isinstance(match_value, TypeUnexpected):
            return result_2(1, to_text(interpolate("expected %P() ~ %P()", [inspect_mono_type(monot__prune(match_value.got)), inspect_mono_type(monot__prune(match_value.expected))])))
        
        else: 
            raise match_value
        
    


