from __future__ import annotations
from typing import (TypeVar, Callable, Any)
from .util import (IEqualityComparer, structural_hash, equals, physical_hash, compare)

T = TypeVar("T")

def HashIdentity_FromFunctions(hash_1: Callable[[T], int], eq: Callable[[T, T], bool]) -> IEqualityComparer[Any]:
    class ObjectExpr1:
        def Equals(self, x: T, y: T=None, hash_1: Callable[[T], int]=hash_1, eq: Callable[[T, T], bool]=eq) -> bool:
            return eq(x, y)
        
        def GetHashCode(self, x_1: Any=None, hash_1: Callable[[T], int]=hash_1, eq: Callable[[T, T], bool]=eq) -> int:
            return hash_1(x_1)
        
    return ObjectExpr1()


def HashIdentity_Structural() -> IEqualityComparer[Any]:
    return HashIdentity_FromFunctions(lambda obj=None: structural_hash(obj), lambda e1, e2=None: equals(e1, e2))


def HashIdentity_Reference() -> IEqualityComparer[Any]:
    return HashIdentity_FromFunctions(lambda obj=None: physical_hash(obj), lambda e1, e2=None: e1 is e2)


def ComparisonIdentity_FromFunction(comparer: Callable[[T, T], int]) -> IComparer_1[T]:
    class ObjectExpr4:
        def Compare(self, x: T, y: T=None, comparer: Callable[[T, T], int]=comparer) -> int:
            return comparer(x, y)
        
    return ObjectExpr4()


def ComparisonIdentity_Structural() -> IComparer_1[Any]:
    return ComparisonIdentity_FromFunction(lambda e1, e2=None: compare(e1, e2))


