from __future__ import annotations
from typing import (Any, Generic, TypeVar, Optional, Tuple, Callable, List)
from .array import fill
from .list import (cons, FSharpList, empty as empty_1, fold as fold_1, is_empty as is_empty_1, tail, head, of_array_with_tail, singleton)
from .option import (value as value_1, some)
from .reflection import (TypeInfo, class_type, option_type, list_type, bool_type, record_type)
from .seq import (unfold, map as map_1, compare_with, iterate as iterate_1, pick as pick_1, try_pick as try_pick_1)
from .string import (join, format)
from .types import Record
from .util import (is_array_like, get_enumerator, IDisposable, equals, to_iterator, compare, ignore, structural_hash)

Key = TypeVar("Key")

Value = TypeVar("Value")

Key_1 = TypeVar("Key_1")

Value_1 = TypeVar("Value_1")

a_ = TypeVar("a_")

b_ = TypeVar("b_")

c_ = TypeVar("c_")

Result = TypeVar("Result")

Key_2 = TypeVar("Key_2")

Value_2 = TypeVar("Value_2")

Key_3 = TypeVar("Key_3")

Value_3 = TypeVar("Value_3")

z = TypeVar("z")

b = TypeVar("b")

State = TypeVar("State")

T = TypeVar("T")

K = TypeVar("K")

V = TypeVar("V")

def expr_125(gen0, gen1) -> TypeInfo:
    return class_type("Map.MapTreeLeaf`2", [gen0, gen1], MapTreeLeaf_2)


class MapTreeLeaf_2(Generic[Key, Value]):
    def __init__(self, k: Any, v: Any=None) -> None:
        self.k = k
        self.v = v
    

MapTreeLeaf_2_reflection = expr_125

def MapTreeLeaf_2__ctor_5BDDA1(k: Any, v: Any=None) -> MapTreeLeaf_2[Key, Value]:
    return MapTreeLeaf_2(k, v)


def MapTreeLeaf_2__get_Key(_: MapTreeLeaf_2[Key, Any]) -> Key:
    return _.k


def MapTreeLeaf_2__get_Value(_: MapTreeLeaf_2[Any, Value]) -> Value:
    return _.v


def expr_126(gen0, gen1) -> TypeInfo:
    return class_type("Map.MapTreeNode`2", [gen0, gen1], MapTreeNode_2, MapTreeLeaf_2_reflection(gen0, gen1))


class MapTreeNode_2(MapTreeLeaf_2, Generic[Key_1, Value_1]):
    def __init__(self, k: Key, v: Value, left: Optional[MapTreeLeaf_2[Key, Value]], right: Optional[MapTreeLeaf_2[Key, Value]], h: int) -> None:
        super().__init__(k, v)
        self.left = left
        self.right = right
        self.h = h or 0
    

MapTreeNode_2_reflection = expr_126

def MapTreeNode_2__ctor_Z39DE9543(k: Key, v: Value, left: Optional[MapTreeLeaf_2[Key, Value]], right: Optional[MapTreeLeaf_2[Key, Value]], h: int) -> MapTreeNode_2[Key, Value]:
    return MapTreeNode_2(k, v, left, right, h)


def MapTreeNode_2__get_Left(_: MapTreeNode_2[Key, Value]) -> Optional[MapTreeLeaf_2[Key, Value]]:
    return _.left


def MapTreeNode_2__get_Right(_: MapTreeNode_2[Key, Value]) -> Optional[MapTreeLeaf_2[Key, Value]]:
    return _.right


def MapTreeNode_2__get_Height(_: MapTreeNode_2[Any, Any]) -> int:
    return _.h


def MapTreeModule_empty() -> Optional[MapTreeLeaf_2[Key, Value]]:
    return None


def MapTreeModule_sizeAux(acc_mut: int, m_mut: Optional[MapTreeLeaf_2[Key, Value]]) -> int:
    while True:
        (acc, m) = (acc_mut, m_mut)
        if m is not None:
            m2 : MapTreeLeaf_2[Key, Value] = m
            if isinstance(m2, MapTreeNode_2):
                acc_mut = MapTreeModule_sizeAux(acc + 1, MapTreeNode_2__get_Left(m2))
                m_mut = MapTreeNode_2__get_Right(m2)
                continue
            
            else: 
                return acc + 1
            
        
        else: 
            return acc
        
        break


def MapTreeModule_size(x: Optional[MapTreeLeaf_2[a_, b_]]=None) -> int:
    return MapTreeModule_sizeAux(0, x)


def MapTreeModule_mk(l: Optional[MapTreeLeaf_2[Key, Value]], k: Key, v: Value, r: Optional[MapTreeLeaf_2[Key, Value]]=None) -> Optional[MapTreeLeaf_2[Key, Value]]:
    hl = None
    m : Optional[MapTreeLeaf_2[Key, Value]] = l
    def arrow_127(l=l, k=k, v=v, r=r) -> int:
        m2 : MapTreeLeaf_2[Key, Value] = m
        return MapTreeNode_2__get_Height(m2) if (isinstance(m2, MapTreeNode_2)) else (1)
    
    hl = arrow_127() if (m is not None) else (0)
    hr = None
    m_1 : Optional[MapTreeLeaf_2[Key, Value]] = r
    def arrow_128(l=l, k=k, v=v, r=r) -> int:
        m2_1 : MapTreeLeaf_2[Key, Value] = m_1
        return MapTreeNode_2__get_Height(m2_1) if (isinstance(m2_1, MapTreeNode_2)) else (1)
    
    hr = arrow_128() if (m_1 is not None) else (0)
    m_2 : int = (hr if (hl < hr) else (hl)) or 0
    if m_2 == 0:
        return MapTreeLeaf_2__ctor_5BDDA1(k, v)
    
    else: 
        return MapTreeNode_2__ctor_Z39DE9543(k, v, l, r, m_2 + 1)
    


def MapTreeModule_rebalance(t1: Optional[MapTreeLeaf_2[Key, Value]], k: Key, v: Value, t2: Optional[MapTreeLeaf_2[Key, Value]]=None) -> Optional[MapTreeLeaf_2[Key, Value]]:
    t1h = None
    m : Optional[MapTreeLeaf_2[Key, Value]] = t1
    def arrow_130(t1=t1, k=k, v=v, t2=t2) -> int:
        m2 : MapTreeLeaf_2[Key, Value] = m
        return MapTreeNode_2__get_Height(m2) if (isinstance(m2, MapTreeNode_2)) else (1)
    
    t1h = arrow_130() if (m is not None) else (0)
    t2h = None
    m_1 : Optional[MapTreeLeaf_2[Key, Value]] = t2
    def arrow_131(t1=t1, k=k, v=v, t2=t2) -> int:
        m2_1 : MapTreeLeaf_2[Key, Value] = m_1
        return MapTreeNode_2__get_Height(m2_1) if (isinstance(m2_1, MapTreeNode_2)) else (1)
    
    t2h = arrow_131() if (m_1 is not None) else (0)
    if t2h > (t1h + 2):
        match_value : MapTreeLeaf_2[Key, Value] = value_1(t2)
        if isinstance(match_value, MapTreeNode_2):
            def arrow_133(t1=t1, k=k, v=v, t2=t2) -> int:
                m_2 : Optional[MapTreeLeaf_2[Key, Value]] = MapTreeNode_2__get_Left(match_value)
                def arrow_132(_unit=None) -> int:
                    m2_2 : MapTreeLeaf_2[Key, Value] = m_2
                    return MapTreeNode_2__get_Height(m2_2) if (isinstance(m2_2, MapTreeNode_2)) else (1)
                
                return arrow_132() if (m_2 is not None) else (0)
            
            if arrow_133() > (t1h + 1):
                match_value_1 : MapTreeLeaf_2[Key, Value] = value_1(MapTreeNode_2__get_Left(match_value))
                if isinstance(match_value_1, MapTreeNode_2):
                    return MapTreeModule_mk(MapTreeModule_mk(t1, k, v, MapTreeNode_2__get_Left(match_value_1)), MapTreeLeaf_2__get_Key(match_value_1), MapTreeLeaf_2__get_Value(match_value_1), MapTreeModule_mk(MapTreeNode_2__get_Right(match_value_1), MapTreeLeaf_2__get_Key(match_value), MapTreeLeaf_2__get_Value(match_value), MapTreeNode_2__get_Right(match_value)))
                
                else: 
                    raise Exception("internal error: Map.rebalance")
                
            
            else: 
                return MapTreeModule_mk(MapTreeModule_mk(t1, k, v, MapTreeNode_2__get_Left(match_value)), MapTreeLeaf_2__get_Key(match_value), MapTreeLeaf_2__get_Value(match_value), MapTreeNode_2__get_Right(match_value))
            
        
        else: 
            raise Exception("internal error: Map.rebalance")
        
    
    elif t1h > (t2h + 2):
        match_value_2 : MapTreeLeaf_2[Key, Value] = value_1(t1)
        if isinstance(match_value_2, MapTreeNode_2):
            def arrow_139(t1=t1, k=k, v=v, t2=t2) -> int:
                m_3 : Optional[MapTreeLeaf_2[Key, Value]] = MapTreeNode_2__get_Right(match_value_2)
                def arrow_138(_unit=None) -> int:
                    m2_3 : MapTreeLeaf_2[Key, Value] = m_3
                    return MapTreeNode_2__get_Height(m2_3) if (isinstance(m2_3, MapTreeNode_2)) else (1)
                
                return arrow_138() if (m_3 is not None) else (0)
            
            if arrow_139() > (t2h + 1):
                match_value_3 : MapTreeLeaf_2[Key, Value] = value_1(MapTreeNode_2__get_Right(match_value_2))
                if isinstance(match_value_3, MapTreeNode_2):
                    return MapTreeModule_mk(MapTreeModule_mk(MapTreeNode_2__get_Left(match_value_2), MapTreeLeaf_2__get_Key(match_value_2), MapTreeLeaf_2__get_Value(match_value_2), MapTreeNode_2__get_Left(match_value_3)), MapTreeLeaf_2__get_Key(match_value_3), MapTreeLeaf_2__get_Value(match_value_3), MapTreeModule_mk(MapTreeNode_2__get_Right(match_value_3), k, v, t2))
                
                else: 
                    raise Exception("internal error: Map.rebalance")
                
            
            else: 
                return MapTreeModule_mk(MapTreeNode_2__get_Left(match_value_2), MapTreeLeaf_2__get_Key(match_value_2), MapTreeLeaf_2__get_Value(match_value_2), MapTreeModule_mk(MapTreeNode_2__get_Right(match_value_2), k, v, t2))
            
        
        else: 
            raise Exception("internal error: Map.rebalance")
        
    
    else: 
        return MapTreeModule_mk(t1, k, v, t2)
    


def MapTreeModule_add(comparer: Any, k: Key, v: Value, m: Optional[MapTreeLeaf_2[Key, Value]]=None) -> Optional[MapTreeLeaf_2[Key, Value]]:
    if m is not None:
        m2 : MapTreeLeaf_2[Key, Value] = m
        c : int = comparer.Compare(k, MapTreeLeaf_2__get_Key(m2)) or 0
        if isinstance(m2, MapTreeNode_2):
            if c < 0:
                return MapTreeModule_rebalance(MapTreeModule_add(comparer, k, v, MapTreeNode_2__get_Left(m2)), MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), MapTreeNode_2__get_Right(m2))
            
            elif c == 0:
                return MapTreeNode_2__ctor_Z39DE9543(k, v, MapTreeNode_2__get_Left(m2), MapTreeNode_2__get_Right(m2), MapTreeNode_2__get_Height(m2))
            
            else: 
                return MapTreeModule_rebalance(MapTreeNode_2__get_Left(m2), MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), MapTreeModule_add(comparer, k, v, MapTreeNode_2__get_Right(m2)))
            
        
        elif c < 0:
            return MapTreeNode_2__ctor_Z39DE9543(k, v, MapTreeModule_empty(), m, 2)
        
        elif c == 0:
            return MapTreeLeaf_2__ctor_5BDDA1(k, v)
        
        else: 
            return MapTreeNode_2__ctor_Z39DE9543(k, v, m, MapTreeModule_empty(), 2)
        
    
    else: 
        return MapTreeLeaf_2__ctor_5BDDA1(k, v)
    


def MapTreeModule_tryFind(comparer_mut: Any, k_mut: Key, m_mut: Optional[MapTreeLeaf_2[Key, Value]]) -> Optional[Value]:
    while True:
        (comparer, k, m) = (comparer_mut, k_mut, m_mut)
        if m is not None:
            m2 : MapTreeLeaf_2[Key, Value] = m
            c : int = comparer.Compare(k, MapTreeLeaf_2__get_Key(m2)) or 0
            if c == 0:
                return some(MapTreeLeaf_2__get_Value(m2))
            
            elif isinstance(m2, MapTreeNode_2):
                comparer_mut = comparer
                k_mut = k
                m_mut = MapTreeNode_2__get_Left(m2) if (c < 0) else (MapTreeNode_2__get_Right(m2))
                continue
            
            else: 
                return None
            
        
        else: 
            return None
        
        break


def MapTreeModule_find(comparer: Any, k: Key, m: Optional[MapTreeLeaf_2[Key, Value]]=None) -> Value:
    match_value : Optional[Value] = MapTreeModule_tryFind(comparer, k, m)
    if match_value is None:
        raise Exception()
    
    else: 
        return value_1(match_value)
    


def MapTreeModule_partition1(comparer: Any, f: Any, k: Key, v: a_, acc1: Optional[MapTreeLeaf_2[Key, a_]]=None, acc2: Optional[MapTreeLeaf_2[Key, a_]]=None) -> Tuple[Optional[MapTreeLeaf_2[Key, a_]], Optional[MapTreeLeaf_2[Key, a_]]]:
    if f(k, v):
        return (MapTreeModule_add(comparer, k, v, acc1), acc2)
    
    else: 
        return (acc1, MapTreeModule_add(comparer, k, v, acc2))
    


def MapTreeModule_partitionAux(comparer_mut: Any, f_mut: Any, m_mut: Optional[MapTreeLeaf_2[Key, Value]], acc_0_mut: Optional[MapTreeLeaf_2[Key, Value]], acc_1_mut: Optional[MapTreeLeaf_2[Key, Value]]) -> Tuple[Optional[MapTreeLeaf_2[Key, Value]], Optional[MapTreeLeaf_2[Key, Value]]]:
    while True:
        (comparer, f, m, acc_0, acc_1) = (comparer_mut, f_mut, m_mut, acc_0_mut, acc_1_mut)
        acc : Tuple[Optional[MapTreeLeaf_2[Key, Value]], Optional[MapTreeLeaf_2[Key, Value]]] = (acc_0, acc_1)
        if m is not None:
            m2 : MapTreeLeaf_2[Key, Value] = m
            if isinstance(m2, MapTreeNode_2):
                acc_2 : Tuple[Optional[MapTreeLeaf_2[Key, Value]], Optional[MapTreeLeaf_2[Key, Value]]] = MapTreeModule_partitionAux(comparer, f, MapTreeNode_2__get_Right(m2), acc[0], acc[1])
                acc_3 : Tuple[Optional[MapTreeLeaf_2[Key, Value]], Optional[MapTreeLeaf_2[Key, Value]]] = MapTreeModule_partition1(comparer, f, MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), acc_2[0], acc_2[1])
                comparer_mut = comparer
                f_mut = f
                m_mut = MapTreeNode_2__get_Left(m2)
                acc_0_mut = acc_3[0]
                acc_1_mut = acc_3[1]
                continue
            
            else: 
                return MapTreeModule_partition1(comparer, f, MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), acc[0], acc[1])
            
        
        else: 
            return acc
        
        break


def MapTreeModule_partition(comparer: Any, f: Callable[[Key, a_], bool], m: Optional[MapTreeLeaf_2[Key, a_]]=None) -> Tuple[Optional[MapTreeLeaf_2[Key, a_]], Optional[MapTreeLeaf_2[Key, a_]]]:
    return MapTreeModule_partitionAux(comparer, f, m, MapTreeModule_empty(), MapTreeModule_empty())


def MapTreeModule_filter1(comparer: Any, f: Any, k: Key, v: a_, acc: Optional[MapTreeLeaf_2[Key, a_]]=None) -> Optional[MapTreeLeaf_2[Key, a_]]:
    if f(k, v):
        return MapTreeModule_add(comparer, k, v, acc)
    
    else: 
        return acc
    


def MapTreeModule_filterAux(comparer_mut: Any, f_mut: Any, m_mut: Optional[MapTreeLeaf_2[Key, Value]], acc_mut: Optional[MapTreeLeaf_2[Key, Value]]) -> Optional[MapTreeLeaf_2[Key, Value]]:
    while True:
        (comparer, f, m, acc) = (comparer_mut, f_mut, m_mut, acc_mut)
        if m is not None:
            m2 : MapTreeLeaf_2[Key, Value] = m
            if isinstance(m2, MapTreeNode_2):
                acc_1 : Optional[MapTreeLeaf_2[Key, Value]] = MapTreeModule_filterAux(comparer, f, MapTreeNode_2__get_Left(m2), acc)
                acc_2 : Optional[MapTreeLeaf_2[Key, Value]] = MapTreeModule_filter1(comparer, f, MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), acc_1)
                comparer_mut = comparer
                f_mut = f
                m_mut = MapTreeNode_2__get_Right(m2)
                acc_mut = acc_2
                continue
            
            else: 
                return MapTreeModule_filter1(comparer, f, MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), acc)
            
        
        else: 
            return acc
        
        break


def MapTreeModule_filter(comparer: Any, f: Callable[[Key, a_], bool], m: Optional[MapTreeLeaf_2[Key, a_]]=None) -> Optional[MapTreeLeaf_2[Key, a_]]:
    return MapTreeModule_filterAux(comparer, f, m, MapTreeModule_empty())


def MapTreeModule_spliceOutSuccessor(m: Optional[MapTreeLeaf_2[Key, Value]]=None) -> Tuple[Key, Value, Optional[MapTreeLeaf_2[Key, Value]]]:
    if m is not None:
        m2 : MapTreeLeaf_2[Key, Value] = m
        if isinstance(m2, MapTreeNode_2):
            if MapTreeNode_2__get_Left(m2) is None:
                return (MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), MapTreeNode_2__get_Right(m2))
            
            else: 
                pattern_input : Tuple[Key, Value, Optional[MapTreeLeaf_2[Key, Value]]] = MapTreeModule_spliceOutSuccessor(MapTreeNode_2__get_Left(m2))
                return (pattern_input[0], pattern_input[1], MapTreeModule_mk(pattern_input[2], MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), MapTreeNode_2__get_Right(m2)))
            
        
        else: 
            return (MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), MapTreeModule_empty())
        
    
    else: 
        raise Exception("internal error: Map.spliceOutSuccessor")
    


def MapTreeModule_remove(comparer: Any, k: Key, m: Optional[MapTreeLeaf_2[Key, Value]]=None) -> Optional[MapTreeLeaf_2[Key, Value]]:
    if m is not None:
        m2 : MapTreeLeaf_2[Key, Value] = m
        c : int = comparer.Compare(k, MapTreeLeaf_2__get_Key(m2)) or 0
        if isinstance(m2, MapTreeNode_2):
            if c < 0:
                return MapTreeModule_rebalance(MapTreeModule_remove(comparer, k, MapTreeNode_2__get_Left(m2)), MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), MapTreeNode_2__get_Right(m2))
            
            elif c == 0:
                if MapTreeNode_2__get_Left(m2) is None:
                    return MapTreeNode_2__get_Right(m2)
                
                elif MapTreeNode_2__get_Right(m2) is None:
                    return MapTreeNode_2__get_Left(m2)
                
                else: 
                    pattern_input : Tuple[Key, Value, Optional[MapTreeLeaf_2[Key, Value]]] = MapTreeModule_spliceOutSuccessor(MapTreeNode_2__get_Right(m2))
                    return MapTreeModule_mk(MapTreeNode_2__get_Left(m2), pattern_input[0], pattern_input[1], pattern_input[2])
                
            
            else: 
                return MapTreeModule_rebalance(MapTreeNode_2__get_Left(m2), MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), MapTreeModule_remove(comparer, k, MapTreeNode_2__get_Right(m2)))
            
        
        elif c == 0:
            return MapTreeModule_empty()
        
        else: 
            return m
        
    
    else: 
        return MapTreeModule_empty()
    


def MapTreeModule_change(comparer: Any, k: Key, u: Callable[[Optional[Value]], Optional[Value]], m: Optional[MapTreeLeaf_2[Key, Value]]=None) -> Optional[MapTreeLeaf_2[Key, Value]]:
    if m is not None:
        m2 : MapTreeLeaf_2[Key, Value] = m
        if isinstance(m2, MapTreeNode_2):
            c : int = comparer.Compare(k, MapTreeLeaf_2__get_Key(m2)) or 0
            if c < 0:
                return MapTreeModule_rebalance(MapTreeModule_change(comparer, k, u, MapTreeNode_2__get_Left(m2)), MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), MapTreeNode_2__get_Right(m2))
            
            elif c == 0:
                match_value_1 : Optional[Value] = u(some(MapTreeLeaf_2__get_Value(m2)))
                if match_value_1 is not None:
                    return MapTreeNode_2__ctor_Z39DE9543(k, value_1(match_value_1), MapTreeNode_2__get_Left(m2), MapTreeNode_2__get_Right(m2), MapTreeNode_2__get_Height(m2))
                
                elif MapTreeNode_2__get_Left(m2) is None:
                    return MapTreeNode_2__get_Right(m2)
                
                elif MapTreeNode_2__get_Right(m2) is None:
                    return MapTreeNode_2__get_Left(m2)
                
                else: 
                    pattern_input : Tuple[Key, Value, Optional[MapTreeLeaf_2[Key, Value]]] = MapTreeModule_spliceOutSuccessor(MapTreeNode_2__get_Right(m2))
                    return MapTreeModule_mk(MapTreeNode_2__get_Left(m2), pattern_input[0], pattern_input[1], pattern_input[2])
                
            
            else: 
                return MapTreeModule_rebalance(MapTreeNode_2__get_Left(m2), MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), MapTreeModule_change(comparer, k, u, MapTreeNode_2__get_Right(m2)))
            
        
        else: 
            c_1 : int = comparer.Compare(k, MapTreeLeaf_2__get_Key(m2)) or 0
            if c_1 < 0:
                match_value_2 : Optional[Value] = u(None)
                if match_value_2 is not None:
                    return MapTreeNode_2__ctor_Z39DE9543(k, value_1(match_value_2), MapTreeModule_empty(), m, 2)
                
                else: 
                    return m
                
            
            elif c_1 == 0:
                match_value_3 : Optional[Value] = u(some(MapTreeLeaf_2__get_Value(m2)))
                if match_value_3 is not None:
                    return MapTreeLeaf_2__ctor_5BDDA1(k, value_1(match_value_3))
                
                else: 
                    return MapTreeModule_empty()
                
            
            else: 
                match_value_4 : Optional[Value] = u(None)
                if match_value_4 is not None:
                    return MapTreeNode_2__ctor_Z39DE9543(k, value_1(match_value_4), m, MapTreeModule_empty(), 2)
                
                else: 
                    return m
                
            
        
    
    else: 
        match_value : Optional[Value] = u(None)
        if match_value is not None:
            return MapTreeLeaf_2__ctor_5BDDA1(k, value_1(match_value))
        
        else: 
            return m
        
    


def MapTreeModule_mem(comparer_mut: Any, k_mut: Key, m_mut: Optional[MapTreeLeaf_2[Key, Value]]) -> bool:
    while True:
        (comparer, k, m) = (comparer_mut, k_mut, m_mut)
        if m is not None:
            m2 : MapTreeLeaf_2[Key, Value] = m
            c : int = comparer.Compare(k, MapTreeLeaf_2__get_Key(m2)) or 0
            if isinstance(m2, MapTreeNode_2):
                if c < 0:
                    comparer_mut = comparer
                    k_mut = k
                    m_mut = MapTreeNode_2__get_Left(m2)
                    continue
                
                elif c == 0:
                    return True
                
                else: 
                    comparer_mut = comparer
                    k_mut = k
                    m_mut = MapTreeNode_2__get_Right(m2)
                    continue
                
            
            else: 
                return c == 0
            
        
        else: 
            return False
        
        break


def MapTreeModule_iterOpt(f_mut: Any, m_mut: Optional[MapTreeLeaf_2[Key, Value]]) -> None:
    while True:
        (f, m) = (f_mut, m_mut)
        if m is not None:
            m2 : MapTreeLeaf_2[Key, Value] = m
            if isinstance(m2, MapTreeNode_2):
                MapTreeModule_iterOpt(f, MapTreeNode_2__get_Left(m2))
                f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2))
                f_mut = f
                m_mut = MapTreeNode_2__get_Right(m2)
                continue
            
            else: 
                f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2))
            
        
        break


def MapTreeModule_iter(f: Callable[[a_, b_], None], m: Optional[MapTreeLeaf_2[a_, b_]]=None) -> None:
    MapTreeModule_iterOpt(f, m)


def MapTreeModule_tryPickOpt(f_mut: Any, m_mut: Optional[MapTreeLeaf_2[Key, Value]]) -> Optional[a_]:
    while True:
        (f, m) = (f_mut, m_mut)
        if m is not None:
            m2 : MapTreeLeaf_2[Key, Value] = m
            if isinstance(m2, MapTreeNode_2):
                match_value : Optional[a_] = MapTreeModule_tryPickOpt(f, MapTreeNode_2__get_Left(m2))
                if match_value is None:
                    match_value_1 : Optional[a_] = f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2))
                    if match_value_1 is None:
                        f_mut = f
                        m_mut = MapTreeNode_2__get_Right(m2)
                        continue
                    
                    else: 
                        return match_value_1
                    
                
                else: 
                    return match_value
                
            
            else: 
                return f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2))
            
        
        else: 
            return None
        
        break


def MapTreeModule_tryPick(f: Callable[[a_, b_], Optional[c_]], m: Optional[MapTreeLeaf_2[a_, b_]]=None) -> Optional[c_]:
    return MapTreeModule_tryPickOpt(f, m)


def MapTreeModule_existsOpt(f_mut: Any, m_mut: Optional[MapTreeLeaf_2[Key, Value]]) -> bool:
    while True:
        (f, m) = (f_mut, m_mut)
        if m is not None:
            m2 : MapTreeLeaf_2[Key, Value] = m
            if isinstance(m2, MapTreeNode_2):
                if True if (MapTreeModule_existsOpt(f, MapTreeNode_2__get_Left(m2))) else (f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2))):
                    return True
                
                else: 
                    f_mut = f
                    m_mut = MapTreeNode_2__get_Right(m2)
                    continue
                
            
            else: 
                return f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2))
            
        
        else: 
            return False
        
        break


def MapTreeModule_exists(f: Callable[[a_, b_], bool], m: Optional[MapTreeLeaf_2[a_, b_]]=None) -> bool:
    return MapTreeModule_existsOpt(f, m)


def MapTreeModule_forallOpt(f_mut: Any, m_mut: Optional[MapTreeLeaf_2[Key, Value]]) -> bool:
    while True:
        (f, m) = (f_mut, m_mut)
        if m is not None:
            m2 : MapTreeLeaf_2[Key, Value] = m
            if isinstance(m2, MapTreeNode_2):
                if f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2)) if (MapTreeModule_forallOpt(f, MapTreeNode_2__get_Left(m2))) else (False):
                    f_mut = f
                    m_mut = MapTreeNode_2__get_Right(m2)
                    continue
                
                else: 
                    return False
                
            
            else: 
                return f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2))
            
        
        else: 
            return True
        
        break


def MapTreeModule_forall(f: Callable[[a_, b_], bool], m: Optional[MapTreeLeaf_2[a_, b_]]=None) -> bool:
    return MapTreeModule_forallOpt(f, m)


def MapTreeModule_map(f: Callable[[Value], Result], m: Optional[MapTreeLeaf_2[Key, Value]]=None) -> Optional[MapTreeLeaf_2[Key, Result]]:
    if m is not None:
        m2 : MapTreeLeaf_2[Key, Value] = m
        if isinstance(m2, MapTreeNode_2):
            l2 : Optional[MapTreeLeaf_2[Key, Result]] = MapTreeModule_map(f, MapTreeNode_2__get_Left(m2))
            v2 : Result = f(MapTreeLeaf_2__get_Value(m2))
            r2 : Optional[MapTreeLeaf_2[Key, Result]] = MapTreeModule_map(f, MapTreeNode_2__get_Right(m2))
            return MapTreeNode_2__ctor_Z39DE9543(MapTreeLeaf_2__get_Key(m2), v2, l2, r2, MapTreeNode_2__get_Height(m2))
        
        else: 
            return MapTreeLeaf_2__ctor_5BDDA1(MapTreeLeaf_2__get_Key(m2), f(MapTreeLeaf_2__get_Value(m2)))
        
    
    else: 
        return MapTreeModule_empty()
    


def MapTreeModule_mapiOpt(f: Any, m: Optional[MapTreeLeaf_2[Key, Value]]=None) -> Optional[MapTreeLeaf_2[Key, Result]]:
    if m is not None:
        m2 : MapTreeLeaf_2[Key, Value] = m
        if isinstance(m2, MapTreeNode_2):
            l2 : Optional[MapTreeLeaf_2[Key, Result]] = MapTreeModule_mapiOpt(f, MapTreeNode_2__get_Left(m2))
            v2 : Result = f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2))
            r2 : Optional[MapTreeLeaf_2[Key, Result]] = MapTreeModule_mapiOpt(f, MapTreeNode_2__get_Right(m2))
            return MapTreeNode_2__ctor_Z39DE9543(MapTreeLeaf_2__get_Key(m2), v2, l2, r2, MapTreeNode_2__get_Height(m2))
        
        else: 
            return MapTreeLeaf_2__ctor_5BDDA1(MapTreeLeaf_2__get_Key(m2), f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2)))
        
    
    else: 
        return MapTreeModule_empty()
    


def MapTreeModule_mapi(f: Callable[[a_, b_], c_], m: Optional[MapTreeLeaf_2[a_, b_]]=None) -> Optional[MapTreeLeaf_2[a_, c_]]:
    return MapTreeModule_mapiOpt(f, m)


def MapTreeModule_foldBackOpt(f_mut: Any, m_mut: Optional[MapTreeLeaf_2[Key, Value]], x_mut: a_=None) -> a_:
    while True:
        (f, m, x) = (f_mut, m_mut, x_mut)
        if m is not None:
            m2 : MapTreeLeaf_2[Key, Value] = m
            if isinstance(m2, MapTreeNode_2):
                x_1 : a_ = MapTreeModule_foldBackOpt(f, MapTreeNode_2__get_Right(m2), x)
                x_2 : a_ = f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), x_1)
                f_mut = f
                m_mut = MapTreeNode_2__get_Left(m2)
                x_mut = x_2
                continue
            
            else: 
                return f(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), x)
            
        
        else: 
            return x
        
        break


def MapTreeModule_foldBack(f: Callable[[a_, b_, c_], c_], m: Optional[MapTreeLeaf_2[a_, b_]], x: c_=None) -> c_:
    return MapTreeModule_foldBackOpt(f, m, x)


def MapTreeModule_foldOpt(f_mut: Any, x_mut: a_, m_mut: Optional[MapTreeLeaf_2[Key, Value]]) -> a_:
    while True:
        (f, x, m) = (f_mut, x_mut, m_mut)
        if m is not None:
            m2 : MapTreeLeaf_2[Key, Value] = m
            if isinstance(m2, MapTreeNode_2):
                f_mut = f
                x_mut = f(MapTreeModule_foldOpt(f, x, MapTreeNode_2__get_Left(m2)), MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2))
                m_mut = MapTreeNode_2__get_Right(m2)
                continue
            
            else: 
                return f(x, MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2))
            
        
        else: 
            return x
        
        break


def MapTreeModule_fold(f: Callable[[a_, b_, c_], a_], x: a_, m: Optional[MapTreeLeaf_2[b_, c_]]=None) -> a_:
    return MapTreeModule_foldOpt(f, x, m)


def MapTreeModule_foldSectionOpt(comparer: Any, lo: Key, hi: Key, f: Any, m: Optional[MapTreeLeaf_2[Key, Value]], x: a_=None) -> a_:
    def fold_from_to(f_1_mut: Any, m_1_mut: Optional[MapTreeLeaf_2[Key, Value]], x_1_mut: b_=None, comparer=comparer, lo=lo, hi=hi, f=f, m=m, x=x) -> b_:
        while True:
            (f_1, m_1, x_1) = (f_1_mut, m_1_mut, x_1_mut)
            if m_1 is not None:
                m2 : MapTreeLeaf_2[Key, Value] = m_1
                if isinstance(m2, MapTreeNode_2):
                    c_lo_key : int = comparer.Compare(lo, MapTreeLeaf_2__get_Key(m2)) or 0
                    c_key_hi : int = comparer.Compare(MapTreeLeaf_2__get_Key(m2), hi) or 0
                    x_2 : b_ = fold_from_to(f_1, MapTreeNode_2__get_Left(m2), x_1) if (c_lo_key < 0) else (x_1)
                    x_3 : b_ = f_1(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), x_2) if (c_key_hi <= 0 if (c_lo_key <= 0) else (False)) else (x_2)
                    if c_key_hi < 0:
                        f_1_mut = f_1
                        m_1_mut = MapTreeNode_2__get_Right(m2)
                        x_1_mut = x_3
                        continue
                    
                    else: 
                        return x_3
                    
                
                elif comparer.Compare(MapTreeLeaf_2__get_Key(m2), hi) <= 0 if (comparer.Compare(lo, MapTreeLeaf_2__get_Key(m2)) <= 0) else (False):
                    return f_1(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2), x_1)
                
                else: 
                    return x_1
                
            
            else: 
                return x_1
            
            break
    
    if comparer.Compare(lo, hi) == 1:
        return x
    
    else: 
        return fold_from_to(f, m, x)
    


def MapTreeModule_foldSection(comparer: Any, lo: Key, hi: Key, f: Callable[[Key, a_, b_], b_], m: Optional[MapTreeLeaf_2[Key, a_]], x: b_=None) -> b_:
    return MapTreeModule_foldSectionOpt(comparer, lo, hi, f, m, x)


def MapTreeModule_toList(m: Optional[MapTreeLeaf_2[Key, Value]]=None) -> FSharpList[Tuple[Key, Value]]:
    def loop(m_1_mut: Optional[MapTreeLeaf_2[Key, Value]], acc_mut: FSharpList[Tuple[Key, Value]], m=m) -> FSharpList[Tuple[Key, Value]]:
        while True:
            (m_1, acc) = (m_1_mut, acc_mut)
            if m_1 is not None:
                m2 : MapTreeLeaf_2[Key, Value] = m_1
                if isinstance(m2, MapTreeNode_2):
                    m_1_mut = MapTreeNode_2__get_Left(m2)
                    acc_mut = cons((MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2)), loop(MapTreeNode_2__get_Right(m2), acc))
                    continue
                
                else: 
                    return cons((MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2)), acc)
                
            
            else: 
                return acc
            
            break
    
    return loop(m, empty_1())


def MapTreeModule_copyToArray(m: Optional[MapTreeLeaf_2[a_, b_]], arr: List[Any], i: int) -> None:
    j : int = i or 0
    def arrow_145(x: Any, y: Any=None, m=m, arr=arr, i=i) -> None:
        nonlocal j
        arr[j] = (x, y)
        j = (j + 1) or 0
    
    MapTreeModule_iter(arrow_145, m)


def MapTreeModule_toArray(m: Optional[MapTreeLeaf_2[a_, b_]]=None) -> List[Any]:
    n : int = MapTreeModule_size(m) or 0
    res : List[Any] = fill([0] * n, 0, n, (None, None))
    MapTreeModule_copyToArray(m, res, 0)
    return res


def MapTreeModule_ofList(comparer: Any, l: FSharpList[Tuple[a_, b_]]) -> Optional[MapTreeLeaf_2[a_, b_]]:
    return fold_1(lambda acc, tupled_arg, comparer=comparer, l=l: MapTreeModule_add(comparer, tupled_arg[0], tupled_arg[1], acc), MapTreeModule_empty(), l)


def MapTreeModule_mkFromEnumerator(comparer_mut: Any, acc_mut: Optional[MapTreeLeaf_2[a_, b_]], e_mut: Any) -> Optional[MapTreeLeaf_2[a_, b_]]:
    while True:
        (comparer, acc, e) = (comparer_mut, acc_mut, e_mut)
        if e.System_Collections_IEnumerator_MoveNext():
            pattern_input : Tuple[a_, b_] = e.System_Collections_Generic_IEnumerator_00601_get_Current()
            comparer_mut = comparer
            acc_mut = MapTreeModule_add(comparer, pattern_input[0], pattern_input[1], acc)
            e_mut = e
            continue
        
        else: 
            return acc
        
        break


def MapTreeModule_ofArray(comparer: Any, arr: List[Tuple[Key, Value]]) -> Optional[MapTreeLeaf_2[Key, Value]]:
    res : Optional[MapTreeLeaf_2[Key, Value]] = MapTreeModule_empty()
    for idx in range(0, (len(arr) - 1) + 1, 1):
        for_loop_var : Tuple[Key, Value] = arr[idx]
        res = MapTreeModule_add(comparer, for_loop_var[0], for_loop_var[1], res)
    return res


def MapTreeModule_ofSeq(comparer: Any, c: Any) -> Optional[MapTreeLeaf_2[Key, Value]]:
    if is_array_like(c):
        return MapTreeModule_ofArray(comparer, c)
    
    elif isinstance(c, FSharpList):
        return MapTreeModule_ofList(comparer, c)
    
    else: 
        with get_enumerator(c) as ie:
            return MapTreeModule_mkFromEnumerator(comparer, MapTreeModule_empty(), ie)
    


def expr_146(gen0, gen1) -> TypeInfo:
    return record_type("Map.MapTreeModule.MapIterator`2", [gen0, gen1], MapTreeModule_MapIterator_2, lambda: [["stack", list_type(option_type(MapTreeLeaf_2_reflection(gen0, gen1)))], ["started", bool_type]])


class MapTreeModule_MapIterator_2(Record, Generic[Key_2, Value_2]):
    def __init__(self, stack: FSharpList[Optional[MapTreeLeaf_2[Key, Value]]], started: bool) -> None:
        super().__init__()
        self.stack = stack
        self.started = started
    

MapTreeModule_MapIterator_2_reflection = expr_146

def MapTreeModule_collapseLHS(stack_mut: FSharpList[Optional[MapTreeLeaf_2[Key, Value]]]) -> FSharpList[Optional[MapTreeLeaf_2[Key, Value]]]:
    while True:
        (stack,) = (stack_mut,)
        if not is_empty_1(stack):
            rest : FSharpList[Optional[MapTreeLeaf_2[Key, Value]]] = tail(stack)
            m : Optional[MapTreeLeaf_2[Key, Value]] = head(stack)
            if m is not None:
                m2 : MapTreeLeaf_2[Key, Value] = m
                if isinstance(m2, MapTreeNode_2):
                    stack_mut = of_array_with_tail([MapTreeNode_2__get_Left(m2), MapTreeLeaf_2__ctor_5BDDA1(MapTreeLeaf_2__get_Key(m2), MapTreeLeaf_2__get_Value(m2)), MapTreeNode_2__get_Right(m2)], rest)
                    continue
                
                else: 
                    return stack
                
            
            else: 
                stack_mut = rest
                continue
            
        
        else: 
            return empty_1()
        
        break


def MapTreeModule_mkIterator(m: Optional[MapTreeLeaf_2[a_, b_]]=None) -> MapTreeModule_MapIterator_2[a_, b_]:
    return MapTreeModule_MapIterator_2(MapTreeModule_collapseLHS(singleton(m)), False)


def MapTreeModule_notStarted() -> Any:
    raise Exception("enumeration not started")


def MapTreeModule_alreadyFinished() -> Any:
    raise Exception("enumeration already finished")


def MapTreeModule_current(i: MapTreeModule_MapIterator_2[Key, Value]) -> Any:
    if i.started:
        match_value : FSharpList[Optional[MapTreeLeaf_2[Key, Value]]] = i.stack
        if not is_empty_1(match_value):
            if head(match_value) is not None:
                m : MapTreeLeaf_2[Key, Value] = head(match_value)
                if isinstance(m, MapTreeNode_2):
                    raise Exception("Please report error: Map iterator, unexpected stack for current")
                
                else: 
                    return (MapTreeLeaf_2__get_Key(m), MapTreeLeaf_2__get_Value(m))
                
            
            else: 
                raise Exception("Please report error: Map iterator, unexpected stack for current")
            
        
        else: 
            return MapTreeModule_alreadyFinished()
        
    
    else: 
        return MapTreeModule_notStarted()
    


def MapTreeModule_moveNext(i: MapTreeModule_MapIterator_2[Any, Any]) -> bool:
    if i.started:
        match_value : FSharpList[Optional[MapTreeLeaf_2[Key, Value]]] = i.stack
        if not is_empty_1(match_value):
            if head(match_value) is not None:
                m : MapTreeLeaf_2[Key, Value] = head(match_value)
                if isinstance(m, MapTreeNode_2):
                    raise Exception("Please report error: Map iterator, unexpected stack for moveNext")
                
                else: 
                    i.stack = MapTreeModule_collapseLHS(tail(match_value))
                    return not is_empty_1(i.stack)
                
            
            else: 
                raise Exception("Please report error: Map iterator, unexpected stack for moveNext")
            
        
        else: 
            return False
        
    
    else: 
        i.started = True
        return not is_empty_1(i.stack)
    


def MapTreeModule_mkIEnumerator(m: Optional[MapTreeLeaf_2[a_, b_]]=None) -> Any:
    i : MapTreeModule_MapIterator_2[a_, b_] = MapTreeModule_mkIterator(m)
    class ObjectExpr147(IDisposable):
        def System_Collections_Generic_IEnumerator_00601_get_Current(self, m=m) -> Any:
            return MapTreeModule_current(i)
        
        def System_Collections_IEnumerator_get_Current(self, m=m) -> Any:
            return MapTreeModule_current(i)
        
        def System_Collections_IEnumerator_MoveNext(self, m=m) -> bool:
            return MapTreeModule_moveNext(i)
        
        def System_Collections_IEnumerator_Reset(self, m=m) -> None:
            nonlocal i
            i = MapTreeModule_mkIterator(m)
        
        def Dispose(self, m=m) -> None:
            pass
        
    return ObjectExpr147()


def MapTreeModule_toSeq(s: Optional[MapTreeLeaf_2[a_, b_]]=None) -> Any:
    def generator(en_1: Any, s=s) -> Optional[Tuple[Any, Any]]:
        if en_1.System_Collections_IEnumerator_MoveNext():
            return (en_1.System_Collections_Generic_IEnumerator_00601_get_Current(), en_1)
        
        else: 
            return None
        
    
    return unfold(generator, MapTreeModule_mkIEnumerator(s))


def expr_149(gen0, gen1) -> TypeInfo:
    return class_type("Map.FSharpMap", [gen0, gen1], FSharpMap)


class FSharpMap(Generic[Key_3, Value_3]):
    def __init__(self, comparer: Any, tree: Optional[MapTreeLeaf_2[Key, Value]]=None) -> None:
        self.comparer = comparer
        self.tree = tree
    
    def GetHashCode(self) -> int:
        this : FSharpMap[Key, Value] = self
        return FSharpMap__ComputeHashCode(this)
    
    def __eq__(self, that: Any) -> bool:
        this : FSharpMap[Key, Value] = self
        if isinstance(that, FSharpMap):
            with get_enumerator(this) as e1:
                with get_enumerator(that) as e2:
                    def loop(_unit=None) -> bool:
                        m1 : bool = e1.System_Collections_IEnumerator_MoveNext()
                        if m1 == e2.System_Collections_IEnumerator_MoveNext():
                            if not m1:
                                return True
                            
                            else: 
                                e1c : Any = e1.System_Collections_Generic_IEnumerator_00601_get_Current()
                                e2c : Any = e2.System_Collections_Generic_IEnumerator_00601_get_Current()
                                if equals(e1c[1], e2c[1]) if (equals(e1c[0], e2c[0])) else (False):
                                    return loop()
                                
                                else: 
                                    return False
                                
                            
                        
                        else: 
                            return False
                        
                    
                    loop : Callable[[], bool] = loop
                    return loop()
        
        else: 
            return False
        
    
    def __str__(self) -> str:
        this : FSharpMap[Key, Value] = self
        return ("map [" + join("; ", map_1(lambda kv: format("({0}, {1})", kv[0], kv[1]), this))) + "]"
    
    @property
    def Symbol_toStringTag(self) -> str:
        return "FSharpMap"
    
    def to_json(self, _key: str) -> Any:
        this : FSharpMap[Key, Value] = self
        return Array.from_(this)
    
    def GetEnumerator(self) -> Any:
        _ : FSharpMap[Key, Value] = self
        return MapTreeModule_mkIEnumerator(_.tree)
    
    def __iter__(self) -> Any:
        return to_iterator(self.GetEnumerator())
    
    def System_Collections_IEnumerable_GetEnumerator(self) -> Any:
        _ : FSharpMap[Key, Value] = self
        return MapTreeModule_mkIEnumerator(_.tree)
    
    def CompareTo(self, obj: Any) -> int:
        m : FSharpMap[Key, Value] = self
        if isinstance(obj, FSharpMap):
            def arrow_148(kvp1: Any, kvp2: Any) -> int:
                c : int = m.comparer.Compare(kvp1[0], kvp2[0]) or 0
                return c if (c != 0) else (compare(kvp1[1], kvp2[1]))
            
            return compare_with(arrow_148, m, obj)
        
        else: 
            raise Exception("not comparable\\nParameter name: obj")
        
    
    def System_Collections_Generic_ICollection_00601_Add2B595(self, x: Any) -> None:
        ignore(x)
        raise Exception("Map cannot be mutated")
    
    def System_Collections_Generic_ICollection_00601_Clear(self) -> None:
        raise Exception("Map cannot be mutated")
    
    def System_Collections_Generic_ICollection_00601_Remove2B595(self, x: Any) -> bool:
        ignore(x)
        raise Exception("Map cannot be mutated")
    
    def System_Collections_Generic_ICollection_00601_Contains2B595(self, x: Any) -> bool:
        m : FSharpMap[Key, Value] = self
        return equals(FSharpMap__get_Item(m, x[0]), x[1]) if (FSharpMap__ContainsKey(m, x[0])) else (False)
    
    def System_Collections_Generic_ICollection_00601_CopyToZ2E171D71(self, arr: List[Any], i: int) -> None:
        m : FSharpMap[Key, Value] = self
        MapTreeModule_copyToArray(m.tree, arr, i)
    
    def System_Collections_Generic_ICollection_00601_get_IsReadOnly(self) -> bool:
        return True
    
    def System_Collections_Generic_ICollection_00601_get_Count(self) -> int:
        m : FSharpMap[Key, Value] = self
        return FSharpMap__get_Count(m)
    
    def System_Collections_Generic_IReadOnlyCollection_00601_get_Count(self) -> int:
        m : FSharpMap[Key, Value] = self
        return FSharpMap__get_Count(m)
    
    @property
    def size(self) -> int:
        m : FSharpMap[Key, Value] = self
        return FSharpMap__get_Count(m)
    
    def clear(self) -> None:
        raise Exception("Map cannot be mutated")
    
    def delete(self, _arg1: Any=None) -> bool:
        raise Exception("Map cannot be mutated")
        return False
    
    def entries(self) -> Any:
        m : FSharpMap[Key, Value] = self
        return map_1(lambda p: (p[0], p[1]), m)
    
    def __getitem__(self, k: Any=None) -> Any:
        m : FSharpMap[Key, Value] = self
        return FSharpMap__get_Item(m, k)
    
    def has(self, k: Any=None) -> bool:
        m : FSharpMap[Key, Value] = self
        return FSharpMap__ContainsKey(m, k)
    
    def keys(self) -> Any:
        m : FSharpMap[Key, Value] = self
        return map_1(lambda p: p[0], m)
    
    def __setitem__(self, k: Key, v: Value=None) -> Any:
        m : FSharpMap[Key, Value] = self
        raise Exception("Map cannot be mutated")
        return m
    
    def values(self) -> Any:
        m : FSharpMap[Key, Value] = self
        return map_1(lambda p: p[1], m)
    
    def for_each(self, f: Callable[[Value, Key, Any], None], this_arg: Optional[Any]=None) -> None:
        m : FSharpMap[Key, Value] = self
        def action(p: Any) -> None:
            f(p[1], p[0], m)
        
        iterate_1(action, m)
    

FSharpMap_reflection = expr_149

def FSharpMap__ctor(comparer: Any, tree: Optional[MapTreeLeaf_2[Key, Value]]=None) -> FSharpMap[Key, Value]:
    return FSharpMap(comparer, tree)


def FSharpMap_Empty(comparer: Any) -> FSharpMap[Key, Any]:
    return FSharpMap__ctor(comparer, MapTreeModule_empty())


def FSharpMap__get_Comparer(m: FSharpMap[Key, Any]) -> Any:
    return m.comparer


def FSharpMap__get_Tree(m: FSharpMap[Key, Value]) -> Optional[MapTreeLeaf_2[Key, Value]]:
    return m.tree


def FSharpMap__Add(m: FSharpMap[Key, Value], key: Key, value: Value=None) -> FSharpMap[Key, Value]:
    return FSharpMap__ctor(m.comparer, MapTreeModule_add(m.comparer, key, value, m.tree))


def FSharpMap__Change(m: FSharpMap[Key, Value], key: Key, f: Callable[[Optional[Value]], Optional[Value]]) -> FSharpMap[Key, Value]:
    return FSharpMap__ctor(m.comparer, MapTreeModule_change(m.comparer, key, f, m.tree))


def FSharpMap__get_IsEmpty(m: FSharpMap[Any, Any]) -> bool:
    return m.tree is None


def FSharpMap__get_Item(m: FSharpMap[Key, Value], key: Key=None) -> Value:
    return MapTreeModule_find(m.comparer, key, m.tree)


def FSharpMap__TryPick(m: FSharpMap[Key, Value], f: Callable[[Key, Value], Optional[a_]]) -> Optional[a_]:
    return MapTreeModule_tryPick(f, m.tree)


def FSharpMap__Exists(m: FSharpMap[Key, Value], predicate: Callable[[Key, Value], bool]) -> bool:
    return MapTreeModule_exists(predicate, m.tree)


def FSharpMap__Filter(m: FSharpMap[Key, Value], predicate: Callable[[Key, Value], bool]) -> FSharpMap[Key, Value]:
    return FSharpMap__ctor(m.comparer, MapTreeModule_filter(m.comparer, predicate, m.tree))


def FSharpMap__ForAll(m: FSharpMap[Key, Value], predicate: Callable[[Key, Value], bool]) -> bool:
    return MapTreeModule_forall(predicate, m.tree)


def FSharpMap__Fold(m: FSharpMap[Key, Value], f: Callable[[Key, Value, a_], a_], acc: a_=None) -> a_:
    return MapTreeModule_foldBack(f, m.tree, acc)


def FSharpMap__FoldSection(m: FSharpMap[Key, Value], lo: Key, hi: Key, f: Callable[[Key, Value, z], z], acc: z=None) -> z:
    return MapTreeModule_foldSection(m.comparer, lo, hi, f, m.tree, acc)


def FSharpMap__Iterate(m: FSharpMap[Key, Value], f: Callable[[Key, Value], None]) -> None:
    MapTreeModule_iter(f, m.tree)


def FSharpMap__MapRange(m: FSharpMap[Key, Value], f: Callable[[Value], Result]) -> FSharpMap[Key, Result]:
    return FSharpMap__ctor(m.comparer, MapTreeModule_map(f, m.tree))


def FSharpMap__Map(m: FSharpMap[Key, Value], f: Callable[[Key, Value], b]) -> FSharpMap[Key, b]:
    return FSharpMap__ctor(m.comparer, MapTreeModule_mapi(f, m.tree))


def FSharpMap__Partition(m: FSharpMap[Key, Value], predicate: Callable[[Key, Value], bool]) -> Tuple[FSharpMap[Key, Value], FSharpMap[Key, Value]]:
    pattern_input : Tuple[Optional[MapTreeLeaf_2[Key, Value]], Optional[MapTreeLeaf_2[Key, Value]]] = MapTreeModule_partition(m.comparer, predicate, m.tree)
    return (FSharpMap__ctor(m.comparer, pattern_input[0]), FSharpMap__ctor(m.comparer, pattern_input[1]))


def FSharpMap__get_Count(m: FSharpMap[Any, Any]) -> int:
    return MapTreeModule_size(m.tree)


def FSharpMap__ContainsKey(m: FSharpMap[Key, Any], key: Key=None) -> bool:
    return MapTreeModule_mem(m.comparer, key, m.tree)


def FSharpMap__Remove(m: FSharpMap[Key, Value], key: Key=None) -> FSharpMap[Key, Value]:
    return FSharpMap__ctor(m.comparer, MapTreeModule_remove(m.comparer, key, m.tree))


def FSharpMap__TryGetValue(_: FSharpMap[Key, Value], key: Key, value: Any) -> bool:
    match_value : Optional[Value] = MapTreeModule_tryFind(_.comparer, key, _.tree)
    if match_value is None:
        return False
    
    else: 
        v : Value = value_1(match_value)
        value.contents = v
        return True
    


def FSharpMap__get_Keys(__: FSharpMap[Key, Any]) -> Any:
    return list(map_1(lambda kvp, __=__: kvp[0], MapTreeModule_toSeq(__.tree)))


def FSharpMap__get_Values(__: FSharpMap[Any, Value]) -> Any:
    return list(map_1(lambda kvp, __=__: kvp[1], MapTreeModule_toSeq(__.tree)))


def FSharpMap__TryFind(m: FSharpMap[Key, Value], key: Key=None) -> Optional[Value]:
    return MapTreeModule_tryFind(m.comparer, key, m.tree)


def FSharpMap__ToList(m: FSharpMap[Key, Value]) -> FSharpList[Tuple[Key, Value]]:
    return MapTreeModule_toList(m.tree)


def FSharpMap__ToArray(m: FSharpMap[Key, Value]) -> List[Any]:
    return MapTreeModule_toArray(m.tree)


def FSharpMap__ComputeHashCode(this: FSharpMap[Any, Any]) -> int:
    combine_hash : Callable[[int, int], int] = lambda x, y, this=this: ((x << 1) + y) + 631
    res : int = 0
    with get_enumerator(this) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            active_pattern_result5184 : Tuple[Key, Value] = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
            res = combine_hash(res, structural_hash(active_pattern_result5184[0])) or 0
            res = combine_hash(res, structural_hash(active_pattern_result5184[1])) or 0
    return res


def is_empty(table: FSharpMap[Any, Any]) -> bool:
    return FSharpMap__get_IsEmpty(table)


def add(key: a_, value: b_, table: FSharpMap[a_, b_]) -> FSharpMap[a_, b_]:
    return FSharpMap__Add(table, key, value)


def change(key: a_, f: Callable[[Optional[b_]], Optional[b_]], table: FSharpMap[a_, b_]) -> FSharpMap[a_, b_]:
    return FSharpMap__Change(table, key, f)


def find(key: a_, table: FSharpMap[a_, b_]) -> b_:
    return FSharpMap__get_Item(table, key)


def try_find(key: a_, table: FSharpMap[a_, b_]) -> Optional[b_]:
    return FSharpMap__TryFind(table, key)


def remove(key: a_, table: FSharpMap[a_, b_]) -> FSharpMap[a_, b_]:
    return FSharpMap__Remove(table, key)


def contains_key(key: a_, table: FSharpMap[a_, Any]) -> bool:
    return FSharpMap__ContainsKey(table, key)


def iterate(action: Callable[[a_, b_], None], table: FSharpMap[a_, b_]) -> None:
    FSharpMap__Iterate(table, action)


def try_pick(chooser: Callable[[a_, b_], Optional[c_]], table: FSharpMap[a_, b_]) -> Optional[c_]:
    return FSharpMap__TryPick(table, chooser)


def pick(chooser: Callable[[a_, b_], Optional[c_]], table: FSharpMap[a_, b_]) -> c_:
    match_value : Optional[c_] = try_pick(chooser, table)
    if match_value is not None:
        return value_1(match_value)
    
    else: 
        raise Exception()
    


def exists(predicate: Callable[[a_, b_], bool], table: FSharpMap[a_, b_]) -> bool:
    return FSharpMap__Exists(table, predicate)


def filter(predicate: Callable[[a_, b_], bool], table: FSharpMap[a_, b_]) -> FSharpMap[a_, b_]:
    return FSharpMap__Filter(table, predicate)


def partition(predicate: Callable[[a_, b_], bool], table: FSharpMap[a_, b_]) -> Tuple[FSharpMap[a_, b_], FSharpMap[a_, b_]]:
    return FSharpMap__Partition(table, predicate)


def for_all(predicate: Callable[[a_, b_], bool], table: FSharpMap[a_, b_]) -> bool:
    return FSharpMap__ForAll(table, predicate)


def map(mapping: Callable[[a_, b_], c_], table: FSharpMap[a_, b_]) -> FSharpMap[a_, c_]:
    return FSharpMap__Map(table, mapping)


def fold(folder: Callable[[State, Key, T], State], state: State, table: FSharpMap[Key, T]) -> State:
    return MapTreeModule_fold(folder, state, FSharpMap__get_Tree(table))


def fold_back(folder: Callable[[Key, T, State], State], table: FSharpMap[Key, T], state: State=None) -> State:
    return MapTreeModule_foldBack(folder, FSharpMap__get_Tree(table), state)


def to_seq(table: FSharpMap[a_, b_]) -> Any:
    return map_1(lambda kvp, table=table: (kvp[0], kvp[1]), table)


def find_key(predicate: Callable[[a_, b_], bool], table: FSharpMap[a_, b_]) -> a_:
    def chooser(kvp: Any, predicate=predicate, table=table) -> Optional[a_]:
        k : a_ = kvp[0]
        if predicate(k, kvp[1]):
            return some(k)
        
        else: 
            return None
        
    
    return pick_1(chooser, table)


def try_find_key(predicate: Callable[[a_, b_], bool], table: FSharpMap[a_, b_]) -> Optional[a_]:
    def chooser(kvp: Any, predicate=predicate, table=table) -> Optional[a_]:
        k : a_ = kvp[0]
        if predicate(k, kvp[1]):
            return some(k)
        
        else: 
            return None
        
    
    return try_pick_1(chooser, table)


def of_list(elements: FSharpList[Tuple[Key, Value]], comparer: Any) -> FSharpMap[Key, Value]:
    return FSharpMap__ctor(comparer, MapTreeModule_ofSeq(comparer, elements))


def of_seq(elements: Any, comparer: Any) -> FSharpMap[T, a_]:
    return FSharpMap__ctor(comparer, MapTreeModule_ofSeq(comparer, elements))


def of_array(elements: List[Tuple[Key, Value]], comparer: Any) -> FSharpMap[Key, Value]:
    return FSharpMap__ctor(comparer, MapTreeModule_ofSeq(comparer, elements))


def to_list(table: FSharpMap[a_, b_]) -> FSharpList[Tuple[a_, b_]]:
    return FSharpMap__ToList(table)


def to_array(table: FSharpMap[a_, b_]) -> List[Any]:
    return FSharpMap__ToArray(table)


def keys(table: FSharpMap[K, Any]) -> Any:
    return FSharpMap__get_Keys(table)


def values(table: FSharpMap[Any, V]) -> Any:
    return FSharpMap__get_Values(table)


def empty(comparer: Any) -> FSharpMap[Key, Any]:
    return FSharpMap_Empty(comparer)


def count(table: FSharpMap[Any, Any]) -> int:
    return FSharpMap__get_Count(table)


