from typing import (TypeVar, Any, Callable)
from .util import (structural_hash, equals, physical_hash, compare)

T = TypeVar("T")

def HashIdentity_FromFunctions(hash_1: Callable[[T], int], eq: Callable[[T, T], bool]) -> Any:
    class ObjectExpr2:
        def Equals(self, x: T, y: T=None, hash_1=hash_1, eq=eq) -> bool:
            return eq(x, y)
        
        def GetHashCode(self, x_1: Any=None, hash_1=hash_1, eq=eq) -> int:
            return hash_1(x_1)
        
    return ObjectExpr2()


def HashIdentity_Structural() -> Any:
    return HashIdentity_FromFunctions(lambda obj=None: structural_hash(obj), lambda e1, e2=None: equals(e1, e2))


def HashIdentity_Reference() -> Any:
    return HashIdentity_FromFunctions(lambda obj=None: physical_hash(obj), lambda e1, e2=None: e1 is e2)


def ComparisonIdentity_FromFunction(comparer: Callable[[T, T], int]) -> Any:
    class ObjectExpr4:
        def Compare(self, x: T, y: T=None, comparer=comparer) -> int:
            return comparer(x, y)
        
    return ObjectExpr4()


def ComparisonIdentity_Structural() -> Any:
    return ComparisonIdentity_FromFunction(lambda e1, e2=None: compare(e1, e2))


