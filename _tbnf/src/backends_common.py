from __future__ import annotations
from abc import abstractmethod
from typing import (Callable, Optional, Any, TypeVar, Generic, Iterable, Tuple)
from ..fable_modules.fable_library.list import (FSharpList, append, empty as empty_1, singleton, reverse)
from ..fable_modules.fable_library.reflection import (TypeInfo, string_type, class_type, record_type, int32_type, char_type, bool_type, lambda_type, list_type)
from ..fable_modules.fable_library.seq import (to_list, delay, collect, singleton as singleton_1)
from ..fable_modules.fable_library.set import (empty, contains, add as add_2)
from ..fable_modules.fable_library.system_text import (StringBuilder__ctor, StringBuilder__Append_244C7CD6, StringBuilder__Append_Z721C83C5)
from ..fable_modules.fable_library.types import (Record, to_string)
from ..fable_modules.fable_library.util import (compare_primitives, ignore)
from ..FableSedlex.code_gen import (Doc, Doc_reflection)
from .utils import lower_chars

b = TypeVar("b")

c = TypeVar("c")

a = TypeVar("a")

t = TypeVar("t")

u = TypeVar("u")

class CodeGenOptions:
    @property
    @abstractmethod
    def rename_ctor(self) -> Optional[Callable[[str], str]]:
        ...
    
    @property
    @abstractmethod
    def rename_field(self) -> Optional[Callable[[str], str]]:
        ...
    
    @property
    @abstractmethod
    def rename_type(self) -> Optional[Callable[[str], str]]:
        ...
    
    @property
    @abstractmethod
    def rename_var(self) -> Optional[Callable[[str], str]]:
        ...
    
    @property
    @abstractmethod
    def start_rule_qualified_type(self) -> Optional[str]:
        ...
    
    @abstractmethod
    def request_resource(self, __arg0: str) -> str:
        ...
    

def expr_48() -> TypeInfo:
    return record_type("tbnf.Backends.Common.NameMangling.nameEnv", [], NameMangling_nameEnv, lambda: [["usedNames", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [string_type])]])


class NameMangling_nameEnv(Record):
    def __init__(self, used_names: Any=None) -> None:
        super().__init__()
        self.used_names = used_names
    

NameMangling_nameEnv_reflection = expr_48

def expr_49() -> TypeInfo:
    return record_type("tbnf.Backends.Common.NameMangling.IdentifierDescriptor", [], NameMangling_IdentifierDescriptor, lambda: [["isValidChar", lambda_type(int32_type, lambda_type(char_type, bool_type))], ["charToValid", lambda_type(int32_type, lambda_type(char_type, string_type))], ["nameEnv", NameMangling_nameEnv_reflection()]])


class NameMangling_IdentifierDescriptor(Record):
    def __init__(self, is_valid_char: Callable[[int, str], bool], char_to_valid: Callable[[int, str], str], name_env: NameMangling_nameEnv) -> None:
        super().__init__()
        self.is_valid_char = is_valid_char
        self.char_to_valid = char_to_valid
        self.name_env = name_env
    

NameMangling_IdentifierDescriptor_reflection = expr_49

def NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(is_valid_char: Callable[[int, str], bool], char_to_valid: Callable[[int, str], str]) -> NameMangling_IdentifierDescriptor:
    class ObjectExpr50:
        @property
        def Compare(self) -> Any:
            return lambda x, y: compare_primitives(x, y)
        
    return NameMangling_IdentifierDescriptor(is_valid_char, char_to_valid, NameMangling_nameEnv(empty(ObjectExpr50())))


def NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(this: NameMangling_IdentifierDescriptor, x: NameMangling_nameEnv) -> NameMangling_IdentifierDescriptor:
    return NameMangling_IdentifierDescriptor(this.is_valid_char, this.char_to_valid, x)


def NameMangling_maskChar(low: int, high: int, i: int) -> str:
    return chr(low + (i % ((high - low) + 1)))


def NameMangling_is_valid_identifier(idr: NameMangling_IdentifierDescriptor, s: str) -> bool:
    if s == "":
        return True
    
    else: 
        def loop(i_mut: int, idr: NameMangling_IdentifierDescriptor=idr, s: str=s) -> bool:
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
        def loop(i_mut: int, idr: NameMangling_IdentifierDescriptor=idr, s: str=s) -> None:
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


def expr_51(gen0: TypeInfo) -> TypeInfo:
    return record_type("tbnf.Backends.Common.DocBuilder.block`1", [gen0], DocBuilder_block_1, lambda: [["suite", list_type(Doc_reflection())], ["value", gen0]])


class DocBuilder_block_1(Record, Generic[b]):
    def __init__(self, suite: FSharpList[Doc], value: b) -> None:
        super().__init__()
        self.suite = suite
        self.value = value
    

DocBuilder_block_1_reflection = expr_51

def expr_52() -> TypeInfo:
    return class_type("tbnf.Backends.Common.DocBuilder.Builder", None, DocBuilder_Builder)


class DocBuilder_Builder:
    def __init__(self) -> None:
        pass
    

DocBuilder_Builder_reflection = expr_52

def DocBuilder_Builder__ctor() -> DocBuilder_Builder:
    return DocBuilder_Builder()


def DocBuilder_Builder__Bind_30A200B3(__: DocBuilder_Builder, m: DocBuilder_block_1[b], k: Callable[[b], DocBuilder_block_1[c]]) -> DocBuilder_block_1[c]:
    m_0027 : DocBuilder_block_1[c] = k(m.value)
    return DocBuilder_block_1(append(m_0027.suite, m.suite), m_0027.value)


def DocBuilder_Builder__Return_1505(__: DocBuilder_Builder, v: a=None) -> DocBuilder_block_1[a]:
    return DocBuilder_block_1(empty_1(), v)


def DocBuilder_Builder__Run_ZD0BB270(__: DocBuilder_Builder, m: DocBuilder_block_1[a]) -> DocBuilder_block_1[a]:
    return m


def DocBuilder_Builder__Combine_Z5C764E00(__: DocBuilder_Builder, m1: DocBuilder_block_1[Any], m2: DocBuilder_block_1[b]) -> DocBuilder_block_1[b]:
    return DocBuilder_block_1(append(m2.suite, m1.suite), m2.value)


def DocBuilder_Builder__Yield_417FD60(__: DocBuilder_Builder, a: Doc) -> DocBuilder_block_1[FSharpList[Any]]:
    return DocBuilder_block_1(singleton(a), empty_1())


def DocBuilder_Builder__YieldFrom_313FB1A2(__: DocBuilder_Builder, a: FSharpList[Doc]) -> DocBuilder_block_1[None]:
    return DocBuilder_block_1(reverse(a), None)


def DocBuilder_Builder__Zero(__: DocBuilder_Builder) -> DocBuilder_block_1[None]:
    return DocBuilder_block_1(empty_1(), None)


def DocBuilder_Builder__Delay_Z3A9C5A06(__: DocBuilder_Builder, x: Callable[[], DocBuilder_block_1[a]]) -> DocBuilder_block_1[a]:
    return x()


def DocBuilder_Builder__For_2B96F4AF(__: DocBuilder_Builder, m: Iterable[t], f: Callable[[t], DocBuilder_block_1[u]]) -> DocBuilder_block_1[FSharpList[u]]:
    suite : FSharpList[Doc] = empty_1()
    def arrow_54(__: DocBuilder_Builder=__, m: Iterable[t]=m, f: Callable[[t], DocBuilder_block_1[u]]=f) -> Iterable[Any]:
        def arrow_53(each: Any=None) -> Iterable[Any]:
            nonlocal suite
            m_0027 : DocBuilder_block_1[u] = f(each)
            suite = append(m_0027.suite, suite)
            return singleton_1(m_0027.value)
        
        return collect(arrow_53, m)
    
    value : FSharpList[u] = to_list(delay(arrow_54))
    return DocBuilder_block_1(suite, value)


def DocBuilder_Builder__ReturnFrom_ZD0BB270(__: DocBuilder_Builder, m: DocBuilder_block_1[a]) -> DocBuilder_block_1[a]:
    return m


def DocBuilder_runCG(m: DocBuilder_block_1[Any]) -> Tuple[b, FSharpList[Doc]]:
    return (m.value, reverse(m.suite))


DocBuilder_cg : DocBuilder_Builder = DocBuilder_Builder__ctor()

