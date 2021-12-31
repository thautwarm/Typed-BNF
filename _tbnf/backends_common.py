from typing import Callable
from fable_modules.fable_library.reflection import (TypeInfo, string_type, lambda_type, record_type)
from fable_modules.fable_library.types import Record

def expr_41() -> TypeInfo:
    return record_type("tbnf.Backends.Common.CodeGenOptions", [], CodeGenOptions, lambda: [["renamer", lambda_type(string_type, string_type)], ["lang", string_type]])


class CodeGenOptions(Record):
    def __init__(self, renamer: Callable[[str], str], lang: str) -> None:
        super().__init__()
        self.renamer = renamer
        self.lang = lang
    

CodeGenOptions_reflection = expr_41

