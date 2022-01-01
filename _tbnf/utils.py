from __future__ import annotations
from array import array
from typing import (Any, Callable, TypeVar, Generic, Tuple)
from fable_modules.fable_library.list import (FSharpList, append, empty as empty_1, singleton, reverse)
from fable_modules.fable_library.range import range_char
from fable_modules.fable_library.reflection import (TypeInfo, string_type, class_type, record_type, int32_type, char_type, bool_type, lambda_type, list_type)
from fable_modules.fable_library.seq import (to_array, delay, map, to_list, collect, singleton as singleton_1)
from fable_modules.fable_library.set import (empty, contains, add as add_2)
from fable_modules.fable_library.string import (replace, to_text, printf)
from fable_modules.fable_library.system_text import (StringBuilder__ctor_Z721C83C5, StringBuilder__Append_Z721C83C5, StringBuilder__Append_244C7CD6, StringBuilder__ctor)
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

lower_range = ("a", "z")

upper_range = ("A", "Z")

unicode_range = ("一", "龥")

digit_range = ("0", "9")

def is_digit(c: str) -> bool:
    if "0" <= c:
        return c <= "9"
    
    else: 
        return False
    


def is_upper(c: str) -> bool:
    if "A" <= c:
        return c <= "Z"
    
    else: 
        return False
    


def is_lower(c: str) -> bool:
    if "a" <= c:
        return c <= "z"
    
    else: 
        return False
    


def is_unicode(c: str) -> bool:
    if "一" <= c:
        return c <= "龥"
    
    else: 
        return False
    


def _escapeString(s: str) -> str:
    sb : Any = StringBuilder__ctor_Z721C83C5("\"")
    for i in range(0, (len(s) - 1) + 1, 1):
        def arrow_38(s=s) -> Any:
            match_value : str = s[i]
            return StringBuilder__Append_Z721C83C5(sb, "\\t") if (match_value == "\t") else (StringBuilder__Append_Z721C83C5(sb, "\\n") if (match_value == "\n") else (StringBuilder__Append_Z721C83C5(sb, "\\r") if (match_value == "\r") else (StringBuilder__Append_Z721C83C5(sb, "\\\"") if (match_value == "\"") else (StringBuilder__Append_Z721C83C5(sb, "\\\\") if (match_value == "\\") else (StringBuilder__Append_244C7CD6(sb, match_value))))))
        
        ignore(arrow_38())
    ignore(StringBuilder__Append_Z721C83C5(sb, "\""))
    return to_string(sb)


def i_to_u4(i: int) -> str:
    return "\\u" + replace(to_text(printf("%4X"))(i), " ", "0")


def _escapeStringSingleQuoted(s: str) -> str:
    sb : Any = StringBuilder__ctor_Z721C83C5("\u0027")
    for i in range(0, (len(s) - 1) + 1, 1):
        def arrow_39(s=s) -> Any:
            match_value : str = s[i]
            return StringBuilder__Append_Z721C83C5(sb, "\\t") if (match_value == "\t") else (StringBuilder__Append_Z721C83C5(sb, "\\n") if (match_value == "\n") else (StringBuilder__Append_Z721C83C5(sb, "\\r") if (match_value == "\r") else (StringBuilder__Append_Z721C83C5(sb, "\\\u0027") if (match_value == "\u0027") else (StringBuilder__Append_Z721C83C5(sb, "\\\\") if (match_value == "\\") else (StringBuilder__Append_244C7CD6(sb, match_value))))))
        
        ignore(arrow_39())
    ignore(StringBuilder__Append_Z721C83C5(sb, "\u0027"))
    return to_string(sb)


def escape_string_single_quoted(s: str) -> str:
    return _escapeStringSingleQuoted(s)


def escape_string(s: str) -> str:
    return _escapeString(s)


def capitalized(s: str) -> str:
    if s == "":
        return s
    
    else: 
        return s[0].upper() + s[1:(len(s) - 1) + 1]
    


def expr_41() -> TypeInfo:
    return record_type("tbnf.Utils.NameMangling.nameEnv", [], NameMangling_nameEnv, lambda: [["usedNames", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [string_type])]])


class NameMangling_nameEnv(Record):
    def __init__(self, used_names: Any=None) -> None:
        super().__init__()
        self.used_names = used_names
    

NameMangling_nameEnv_reflection = expr_41

def expr_42() -> TypeInfo:
    return record_type("tbnf.Utils.NameMangling.IdentifierDescriptor", [], NameMangling_IdentifierDescriptor, lambda: [["isValidChar", lambda_type(int32_type, lambda_type(char_type, bool_type))], ["charToValid", lambda_type(int32_type, lambda_type(char_type, string_type))], ["nameEnv", NameMangling_nameEnv_reflection()]])


class NameMangling_IdentifierDescriptor(Record):
    def __init__(self, is_valid_char: Callable[[int, str], bool], char_to_valid: Callable[[int, str], str], name_env: NameMangling_nameEnv) -> None:
        super().__init__()
        self.is_valid_char = is_valid_char
        self.char_to_valid = char_to_valid
        self.name_env = name_env
    

NameMangling_IdentifierDescriptor_reflection = expr_42

def NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(is_valid_char: Callable[[int, str], bool], char_to_valid: Callable[[int, str], str]) -> NameMangling_IdentifierDescriptor:
    class ObjectExpr43:
        @property
        def Compare(self) -> Any:
            return lambda x, y: compare_primitives(x, y)
        
    return NameMangling_IdentifierDescriptor(is_valid_char, char_to_valid, NameMangling_nameEnv(empty(ObjectExpr43())))


def NameMangling_IdentifierDescriptor__WithNameEnv_Z4088684A(this: NameMangling_IdentifierDescriptor, x: NameMangling_nameEnv) -> NameMangling_IdentifierDescriptor:
    return NameMangling_IdentifierDescriptor(this.is_valid_char, this.char_to_valid, x)


def NameMangling_maskChar(low: int, high: int, i: int) -> str:
    return chr(low + (i % ((high - low) + 1)))


def NameMangling_is_valid_identifier(idr: NameMangling_IdentifierDescriptor, s: str) -> bool:
    if s == "":
        return True
    
    else: 
        def loop(i_mut: int, idr=idr, s=s) -> bool:
            while True:
                (i,) = (i_mut,)
                if i >= len(s):
                    return True
                
                elif idr.is_valid_char(i, s[i]):
                    i_mut = i + 1
                    continue
                
                else: 
                    return False
                
                break
        
        loop : Callable[[int], bool] = loop
        return loop(0)
    


def NameMangling_to_valid_identifier(idr: NameMangling_IdentifierDescriptor, s: str) -> str:
    if s == "":
        raise Exception("empty identifier")
    
    else: 
        sb : Any = StringBuilder__ctor()
        def loop(i_mut: int, idr=idr, s=s) -> None:
            while True:
                (i,) = (i_mut,)
                if i >= len(s):
                    pass
                
                else: 
                    if idr.is_valid_char(i, s[i]):
                        ignore(StringBuilder__Append_244C7CD6(sb, s[i]))
                    
                    else: 
                        ignore(StringBuilder__Append_Z721C83C5(sb, idr.char_to_valid(i, s[i])))
                    
                    i_mut = i + 1
                    continue
                
                break
        
        loop : Callable[[int], None] = loop
        loop(0)
        return to_string(sb)
    


def NameMangling_mangle(abandoned_names: Any, idr: NameMangling_IdentifierDescriptor, n: str) -> str:
    s : str = n if (NameMangling_is_valid_identifier(idr, n)) else (NameMangling_to_valid_identifier(idr, n))
    while contains(s, abandoned_names):
        add : str = "_" + idr.char_to_valid(len(s) + 1, lower_chars[len(s) % len(lower_chars)]) if (idr.is_valid_char(len(s), "_")) else (idr.char_to_valid(len(s), lower_chars[len(s) % len(lower_chars)]))
        s = s + add
    name_env : NameMangling_nameEnv = idr.name_env
    while contains(s, name_env.used_names):
        add_1 : str = "_" + idr.char_to_valid(len(s) + 1, lower_chars[len(s) % len(lower_chars)]) if (idr.is_valid_char(len(s), "_")) else (idr.char_to_valid(len(s), lower_chars[len(s) % len(lower_chars)]))
        s = s + add_1
    name_env.used_names = add_2(s, name_env.used_names)
    return s


def expr_46(gen0) -> TypeInfo:
    return record_type("tbnf.Utils.DocBuilder.block`1", [gen0], DocBuilder_block_1, lambda: [["suite", list_type(Doc_reflection())], ["value", gen0]])


class DocBuilder_block_1(Record, Generic[b]):
    def __init__(self, suite: FSharpList[Doc], value: b) -> None:
        super().__init__()
        self.suite = suite
        self.value = value
    

DocBuilder_block_1_reflection = expr_46

def expr_47() -> TypeInfo:
    return class_type("tbnf.Utils.DocBuilder.Builder", None, DocBuilder_Builder)


class DocBuilder_Builder:
    def __init__(self) -> None:
        pass
    

DocBuilder_Builder_reflection = expr_47

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
    def arrow_50(__=__, m=m, f=f) -> Any:
        def arrow_49(each: Any=None) -> Any:
            nonlocal suite
            m_0027 : DocBuilder_block_1[u] = f(each)
            suite = append(m_0027.suite, suite)
            return singleton_1(m_0027.value)
        
        return collect(arrow_49, m)
    
    value : FSharpList[u] = to_list(delay(arrow_50))
    return DocBuilder_block_1(suite, value)


def DocBuilder_Builder__ReturnFrom_72B9C953(__: DocBuilder_Builder, m: DocBuilder_block_1[a]) -> DocBuilder_block_1[a]:
    return m


def DocBuilder_runCG(m: DocBuilder_block_1[Any]) -> Tuple[b, FSharpList[Doc]]:
    return (m.value, reverse(m.suite))


DocBuilder_cg = DocBuilder_Builder__ctor()

