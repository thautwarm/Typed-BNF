from __future__ import annotations
from typing import (Any, Optional, TypeVar, Callable)
from .fsharp_collections import (ComparisonIdentity_Structural, HashIdentity_Structural)
from .system_text import (StringBuilder__Append_Z721C83C5, StringBuilder)
from .util import (equals, structural_hash, dispose, ignore)

a_ = TypeVar("a_")

b_ = TypeVar("b_")

class ObjectExpr2:
    def System_Collections_IEqualityComparer_Equals541DA560(self, x: Any, y: Any) -> bool:
        return equals(x, y)
    
    def System_Collections_IEqualityComparer_GetHashCode4E60E31B(self, x_1: Any) -> int:
        return structural_hash(x_1)
    

LanguagePrimitives_GenericEqualityComparer = ObjectExpr2()

class ObjectExpr3:
    def System_Collections_IEqualityComparer_Equals541DA560(self, x: Any, y: Any) -> bool:
        return equals(x, y)
    
    def System_Collections_IEqualityComparer_GetHashCode4E60E31B(self, x_1: Any) -> int:
        return structural_hash(x_1)
    

LanguagePrimitives_GenericEqualityERComparer = ObjectExpr3()

def LanguagePrimitives_FastGenericComparer() -> Any:
    return ComparisonIdentity_Structural()


def LanguagePrimitives_FastGenericComparerFromTable() -> Any:
    return ComparisonIdentity_Structural()


def LanguagePrimitives_FastGenericEqualityComparer() -> Any:
    return HashIdentity_Structural()


def LanguagePrimitives_FastGenericEqualityComparerFromTable() -> Any:
    return HashIdentity_Structural()


def Operators_Failure(message: str) -> Exception:
    return Exception(message)


def Operators_FailurePattern(exn: Exception) -> Optional[str]:
    return str(exn)


def Operators_NullArg(x: str) -> Any:
    raise Exception(x)


def Operators_Using(resource: Any, action: Callable[[Any], a_]) -> a_:
    try: 
        return action(resource)
    
    finally: 
        if equals(resource, None):
            pass
        
        else: 
            dispose(resource)
        
    


def Operators_Lock(_lockObj: Any, action: Callable[[], b_]) -> b_:
    return action()


def ExtraTopLevelOperators_LazyPattern(input: Any) -> a_:
    return input.Value


def PrintfModule_PrintFormatToStringBuilderThen(continuation: Callable[[], a_], builder: StringBuilder, format: Any) -> b_:
    def append(s: str, continuation=continuation, builder=builder, format=format) -> Any:
        ignore(StringBuilder__Append_Z721C83C5(builder, s))
        return continuation()
    
    return format.cont(append)


def PrintfModule_PrintFormatToStringBuilder(builder: StringBuilder, format: Any) -> a_:
    def arrow_6(builder=builder, format=format) -> None:
        ignore()
    
    return PrintfModule_PrintFormatToStringBuilderThen(arrow_6, builder, format)


