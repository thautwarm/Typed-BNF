from __future__ import annotations
from array import array
from typing import (Any, Optional, Callable, TypeVar, Generic, Tuple)
from fable_modules.fable_library.list import (FSharpList, append, empty as empty_1, singleton, reverse)
from fable_modules.fable_library.map import (empty, try_find, count, add)
from fable_modules.fable_library.range import range_char
from fable_modules.fable_library.reflection import (TypeInfo, string_type, int32_type, class_type, record_type, bool_type, list_type)
from fable_modules.fable_library.seq import (to_array, delay, map, to_list, collect, singleton as singleton_1)
from fable_modules.fable_library.set import (contains, add as add_1)
from fable_modules.fable_library.string import (to_text, printf)
from fable_modules.fable_library.system_text import (StringBuilder__ctor, StringBuilder__Append_244C7CD6, StringBuilder__Append_4E60E31B, StringBuilder__Append_Z721C83C5)
from fable_modules.fable_library.types import (to_string, Record)
from fable_modules.fable_library.util import (ignore, compare_primitives)
from .FableSedlex.code_gen import (Doc, Doc_reflection)

b = TypeVar("b")

c = TypeVar("c")

a = TypeVar("a")

u = TypeVar("u")

t = TypeVar("t")

lower_chars = to_array(delay(lambda _unit=None: map(lambda a: a, range_char("a", "z"))))

upper_chars = to_array(delay(lambda _unit=None: map(lambda a: a, range_char("A", "Z"))))

sample_unicodes = array("i", [20320, 26159, 22612, 33778, 21527])

def IdHelper_uniqueIntToCapitalizedString(i: int) -> str:
    sb : Any = StringBuilder__ctor()
    I : int = i or 0
    while I > 0:
        ignore(StringBuilder__Append_244C7CD6(sb, upper_chars[I & 15]))
        I = (I >> 4) or 0
    return to_string(sb)


def expr_27() -> TypeInfo:
    return record_type("tbnf.Utils.IdHelper.idEnv", [], IdHelper_idEnv, lambda: [["usedNames", class_type("Microsoft.FSharp.Collections.FSharpMap`2", [string_type, int32_type])]])


class IdHelper_idEnv(Record):
    def __init__(self, used_names: Any=None) -> None:
        super().__init__()
        self.used_names = used_names
    

IdHelper_idEnv_reflection = expr_27

def IdHelper_newIdEnv() -> IdHelper_idEnv:
    class ObjectExpr28:
        @property
        def Compare(self) -> Any:
            return lambda x, y: compare_primitives(x, y)
        
    return IdHelper_idEnv(empty(ObjectExpr28()))


def IdHelper_getId(id_env: IdHelper_idEnv, s: str) -> int:
    match_value : Optional[int] = try_find(s, id_env.used_names)
    if match_value is None:
        i : int = count(id_env.used_names) or 0
        id_env.used_names = add(s, i, id_env.used_names)
        return i
    
    else: 
        return match_value
    


def expr_32() -> TypeInfo:
    return record_type("tbnf.Utils.NameMangling.nameEnv", [], NameMangling_nameEnv, lambda: [["usedNames", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [string_type])]])


class NameMangling_nameEnv(Record):
    def __init__(self, used_names: Any=None) -> None:
        super().__init__()
        self.used_names = used_names
    

NameMangling_nameEnv_reflection = expr_32

def expr_33() -> TypeInfo:
    return record_type("tbnf.Utils.NameMangling.IdentifierDescriptor", [], NameMangling_IdentifierDescriptor, lambda: [["support_no_prefix_digit", bool_type], ["support_unicode", bool_type], ["support_lower_ascii", bool_type], ["support_upper_ascii", bool_type], ["support_underscore", bool_type], ["support_digit", bool_type]])


class NameMangling_IdentifierDescriptor(Record):
    def __init__(self, support_no_prefix_digit: bool, support_unicode: bool, support_lower_ascii: bool, support_upper_ascii: bool, support_underscore: bool, support_digit: bool) -> None:
        super().__init__()
        self.support_no_prefix_digit = support_no_prefix_digit
        self.support_unicode = support_unicode
        self.support_lower_ascii = support_lower_ascii
        self.support_upper_ascii = support_upper_ascii
        self.support_underscore = support_underscore
        self.support_digit = support_digit
    

NameMangling_IdentifierDescriptor_reflection = expr_33

def NameMangling_IdentifierDescriptor__get_SupportNoPrefixDigits(this: NameMangling_IdentifierDescriptor) -> NameMangling_IdentifierDescriptor:
    return NameMangling_IdentifierDescriptor(True, this.support_unicode, this.support_lower_ascii, this.support_upper_ascii, this.support_underscore, this.support_digit)


def NameMangling_IdentifierDescriptor__get_SupportUnicode(this: NameMangling_IdentifierDescriptor) -> NameMangling_IdentifierDescriptor:
    return NameMangling_IdentifierDescriptor(this.support_no_prefix_digit, True, this.support_lower_ascii, this.support_upper_ascii, this.support_underscore, this.support_digit)


def NameMangling_IdentifierDescriptor__get_SupportLowerAscii(this: NameMangling_IdentifierDescriptor) -> NameMangling_IdentifierDescriptor:
    return NameMangling_IdentifierDescriptor(this.support_no_prefix_digit, this.support_unicode, True, this.support_upper_ascii, this.support_underscore, this.support_digit)


def NameMangling_IdentifierDescriptor__get_SupportUpperAscii(this: NameMangling_IdentifierDescriptor) -> NameMangling_IdentifierDescriptor:
    return NameMangling_IdentifierDescriptor(this.support_no_prefix_digit, this.support_unicode, this.support_lower_ascii, True, this.support_underscore, this.support_digit)


def NameMangling_IdentifierDescriptor__get_SupportUnderscore(this: NameMangling_IdentifierDescriptor) -> NameMangling_IdentifierDescriptor:
    return NameMangling_IdentifierDescriptor(this.support_no_prefix_digit, this.support_unicode, this.support_lower_ascii, this.support_upper_ascii, True, this.support_digit)


def NameMangling_IdentifierDescriptor__get_SupportDigit(this: NameMangling_IdentifierDescriptor) -> NameMangling_IdentifierDescriptor:
    return NameMangling_IdentifierDescriptor(this.support_no_prefix_digit, this.support_unicode, this.support_lower_ascii, this.support_upper_ascii, this.support_underscore, True)


def NameMangling_isDigit(c: str) -> bool:
    if "0" <= c:
        return c <= "9"
    
    else: 
        return False
    


def NameMangling_isUpper(c: str) -> bool:
    if "A" <= c:
        return c <= "Z"
    
    else: 
        return False
    


def NameMangling_isLower(c: str) -> bool:
    if "a" <= c:
        return c <= "z"
    
    else: 
        return False
    


def NameMangling_isUnicode(c: str) -> bool:
    if "一" <= c:
        return c <= "龥"
    
    else: 
        return False
    


NameMangling_emptyIdentifierDescriptor = NameMangling_IdentifierDescriptor(False, False, False, False, False, False)

def NameMangling_is_valid_character(idr: NameMangling_IdentifierDescriptor, c: str) -> bool:
    if True if (True if (True if (NameMangling_isDigit(c) if (not idr.support_digit) else (False)) else (NameMangling_isLower(c) if (not idr.support_lower_ascii) else (False))) else (NameMangling_isUpper(c) if (not idr.support_upper_ascii) else (False))) else (c == "_" if (not idr.support_underscore) else (False)):
        return True
    
    else: 
        return not (NameMangling_isUnicode(c) if (not idr.support_unicode) else (False))
    


def NameMangling_is_valid_identifier(idr: NameMangling_IdentifierDescriptor, s: str) -> bool:
    if s == "":
        return True
    
    elif NameMangling_isDigit(s[0]) if (idr.support_no_prefix_digit) else (False):
        return False
    
    else: 
        def loop(i_mut: int, idr=idr, s=s) -> bool:
            while True:
                (i,) = (i_mut,)
                if i >= len(s):
                    return True
                
                elif not NameMangling_is_valid_character(idr, s[i]):
                    return False
                
                else: 
                    i_mut = i + 1
                    continue
                
                break
        
        loop : Callable[[int], bool] = loop
        return loop(0)
    


def NameMangling_get_valid_string(idr: NameMangling_IdentifierDescriptor, i: int) -> str:
    if idr.support_underscore:
        c : str = lower_chars[i % len(lower_chars)] if (idr.support_lower_ascii) else (upper_chars[i % len(upper_chars)] if (idr.support_upper_ascii) else (chr(sample_unicodes[i % len(sample_unicodes)]) if (idr.support_unicode) else ("_")))
        return to_text(printf("_%c"))(c)
    
    elif idr.support_lower_ascii:
        return lower_chars[i % len(lower_chars)]
    
    elif idr.support_upper_ascii:
        return upper_chars[i % len(upper_chars)]
    
    elif idr.support_unicode:
        return chr(sample_unicodes[i % len(sample_unicodes)])
    
    else: 
        raise Exception("do not know how to generate valid identifier character")
    


def NameMangling_to_valid_identifier(idr: NameMangling_IdentifierDescriptor, s: str) -> str:
    if s == "":
        return s
    
    else: 
        sb : Any = StringBuilder__ctor()
        if NameMangling_isDigit(s[0]) if (idr.support_no_prefix_digit) else (False):
            ignore(StringBuilder__Append_4E60E31B(sb, lambda i, idr=idr, s=s: NameMangling_get_valid_string(idr, i)))
        
        else: 
            ignore(StringBuilder__Append_244C7CD6(sb, s[0]))
        
        for i_1 in range(1, (len(s) - 1) + 1, 1):
            c : str = s[i_1]
            if not NameMangling_is_valid_character(idr, c):
                ignore(StringBuilder__Append_Z721C83C5(sb, NameMangling_get_valid_string(idr, i_1)))
            
            else: 
                ignore(StringBuilder__Append_244C7CD6(sb, c))
            
        return to_string(sb)
    


def NameMangling_mangle(abandoned_names: Any, name_env: NameMangling_nameEnv, idr: NameMangling_IdentifierDescriptor, n: str) -> str:
    s : str = n if (NameMangling_is_valid_identifier(idr, n)) else (NameMangling_to_valid_identifier(idr, n))
    while contains(s, abandoned_names):
        s = s + NameMangling_get_valid_string(idr, len(s))
    while contains(s, name_env.used_names):
        s = s + NameMangling_get_valid_string(idr, len(s))
    name_env.used_names = add_1(s, name_env.used_names)
    return s


def expr_36(gen0) -> TypeInfo:
    return record_type("tbnf.Utils.DocBuilder.block`1", [gen0], DocBuilder_block_1, lambda: [["suite", list_type(Doc_reflection())], ["value", gen0]])


class DocBuilder_block_1(Record, Generic[b]):
    def __init__(self, suite: FSharpList[Doc], value: b) -> None:
        super().__init__()
        self.suite = suite
        self.value = value
    

DocBuilder_block_1_reflection = expr_36

def expr_37() -> TypeInfo:
    return class_type("tbnf.Utils.DocBuilder.Builder", None, DocBuilder_Builder)


class DocBuilder_Builder:
    def __init__(self) -> None:
        pass
    

DocBuilder_Builder_reflection = expr_37

def DocBuilder_Builder__ctor() -> DocBuilder_Builder:
    return DocBuilder_Builder()


def DocBuilder_Builder__Bind_Z300482AD(__: DocBuilder_Builder, m: DocBuilder_block_1[b], k: Callable[[b], DocBuilder_block_1[c]]) -> DocBuilder_block_1[c]:
    m_0027 : DocBuilder_block_1[c] = k(m.value)
    return DocBuilder_block_1(append(m_0027.suite, m.suite), m_0027.value)


def DocBuilder_Builder__Return_1505(__: DocBuilder_Builder, v: a=None) -> DocBuilder_block_1[a]:
    return DocBuilder_block_1(empty_1(), v)


def DocBuilder_Builder__Run_72B9C953(__: DocBuilder_Builder, m: DocBuilder_block_1[a]) -> DocBuilder_block_1[a]:
    return m


def DocBuilder_Builder__Combine_Z44B4C520(__: DocBuilder_Builder, m1: DocBuilder_block_1[Any], m2: DocBuilder_block_1[b]) -> DocBuilder_block_1[b]:
    return DocBuilder_block_1(append(m2.suite, m1.suite), m2.value)


def DocBuilder_Builder__Yield_417FD60(__: DocBuilder_Builder, a: Doc) -> DocBuilder_block_1[FSharpList[Any]]:
    return DocBuilder_block_1(singleton(a), empty_1())


def DocBuilder_Builder__YieldFrom_313FB1A2(__: DocBuilder_Builder, a: FSharpList[Doc]) -> DocBuilder_block_1[None]:
    return DocBuilder_block_1(reverse(a), None)


def DocBuilder_Builder__Zero(__: DocBuilder_Builder) -> DocBuilder_block_1[None]:
    return DocBuilder_block_1(empty_1(), None)


def DocBuilder_Builder__Delay_Z6CB7AF07(__: DocBuilder_Builder, x: Callable[[], DocBuilder_block_1[a]]) -> DocBuilder_block_1[a]:
    return x()


def DocBuilder_Builder__For_4C40856C(__: DocBuilder_Builder, m: Any, f: Callable[[t], DocBuilder_block_1[u]]) -> DocBuilder_block_1[FSharpList[u]]:
    suite : FSharpList[Doc] = empty_1()
    def arrow_41(__=__, m=m, f=f) -> Any:
        def arrow_40(each: Any=None) -> Any:
            nonlocal suite
            m_0027 : DocBuilder_block_1[u] = f(each)
            suite = append(m_0027.suite, suite)
            return singleton_1(m_0027.value)
        
        return collect(arrow_40, m)
    
    value : FSharpList[u] = to_list(delay(arrow_41))
    return DocBuilder_block_1(suite, value)


def DocBuilder_Builder__ReturnFrom_72B9C953(__: DocBuilder_Builder, m: DocBuilder_block_1[a]) -> DocBuilder_block_1[a]:
    return m


def DocBuilder_runCG(m: DocBuilder_block_1[Any]) -> Tuple[b, FSharpList[Doc]]:
    return (m.value, reverse(m.suite))


DocBuilder_cg = DocBuilder_Builder__ctor()

