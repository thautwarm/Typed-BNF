from array import array
from typing import (Any, List, MutableSequence, Tuple, TypeVar, Callable)
from ..fable_modules.fable_library.list import (FSharpList, is_empty, head, tail, cons, singleton)
from ..fable_modules.fable_library.option import (some, Option)
from ..fable_modules.fable_library.range import range_char
from ..fable_modules.fable_library.seq import (to_array, delay, map)
from ..fable_modules.fable_library.string import (replace, to_text, printf)
from ..fable_modules.fable_library.system_text import (StringBuilder__ctor_Z721C83C5, StringBuilder__Append_Z721C83C5, StringBuilder__Append_244C7CD6)
from ..fable_modules.fable_library.types import to_string
from ..fable_modules.fable_library.util import (IEnumerable, ignore, equals)

__A = TypeVar("__A")

__B = TypeVar("__B")

def arrow_15(_unit: Any=None) -> IEnumerable[str]:
    def arrow_14(a: str) -> str:
        return a
    
    return map(arrow_14, range_char("a", "z"))


lower_chars : List[str] = to_array(delay(arrow_15))

def arrow_17(_unit: Any=None) -> IEnumerable[str]:
    def arrow_16(a: str) -> str:
        return a
    
    return map(arrow_16, range_char("A", "Z"))


upper_chars : List[str] = to_array(delay(arrow_17))

sample_unicodes : MutableSequence[int] = array("i", [20320, 26159, 22612, 33778, 21527])

lower_range : Tuple[str, str] = ("a", "z")

upper_range : Tuple[str, str] = ("A", "Z")

unicode_range : Tuple[str, str] = ("一", "龥")

digit_range : Tuple[str, str] = ("0", "9")

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
        def arrow_18(s: str=s) -> Any:
            match_value : str = s[i]
            return StringBuilder__Append_Z721C83C5(sb, "\\t") if (match_value == "\t") else (StringBuilder__Append_Z721C83C5(sb, "\\n") if (match_value == "\n") else (StringBuilder__Append_Z721C83C5(sb, "\\r") if (match_value == "\r") else (StringBuilder__Append_Z721C83C5(sb, "\\\"") if (match_value == "\"") else (StringBuilder__Append_Z721C83C5(sb, "\\\\") if (match_value == "\\") else (StringBuilder__Append_244C7CD6(sb, match_value))))))
        
        ignore(arrow_18())
    ignore(StringBuilder__Append_Z721C83C5(sb, "\""))
    return to_string(sb)


def i_to_u4(i: int) -> str:
    return "\\u" + replace(to_text(printf("%4X"))(i), " ", "0")


def _escapeStringSingleQuoted(s: str) -> str:
    sb : Any = StringBuilder__ctor_Z721C83C5("\u0027")
    for i in range(0, (len(s) - 1) + 1, 1):
        def arrow_19(s: str=s) -> Any:
            match_value : str = s[i]
            return StringBuilder__Append_Z721C83C5(sb, "\\t") if (match_value == "\t") else (StringBuilder__Append_Z721C83C5(sb, "\\n") if (match_value == "\n") else (StringBuilder__Append_Z721C83C5(sb, "\\r") if (match_value == "\r") else (StringBuilder__Append_Z721C83C5(sb, "\\\u0027") if (match_value == "\u0027") else (StringBuilder__Append_Z721C83C5(sb, "\\\\") if (match_value == "\\") else (StringBuilder__Append_244C7CD6(sb, match_value))))))
        
        ignore(arrow_19())
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
    


def List_tryLookup(key_mut: __A, x_mut: FSharpList[Tuple[__A, __B]]) -> Option[__B]:
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


def List_lookup(key_mut: __A, x_mut: FSharpList[Tuple[__A, __B]]) -> __B:
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


def List_replaceWith(key: __A, func: Callable[[Option[__B]], __B], xs: FSharpList[Tuple[__A, __B]]) -> FSharpList[Tuple[__A, __B]]:
    if not is_empty(xs):
        if equals(head(xs)[0], key):
            return cons((head(xs)[0], func(some(head(xs)[1]))), tail(xs))
        
        elif not is_empty(xs):
            return cons(head(xs), List_replaceWith(key, func, tail(xs)))
        
        else: 
            raise Exception("Match failure")
        
    
    else: 
        return singleton((key, func(None)))
    


