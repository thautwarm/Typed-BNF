from __future__ import annotations
from typing import (TypeVar, Any, List, Tuple, Callable, Optional, Generic)
from .array import find_index
from .map_util import (try_get_value, get_item_from_dict)
from .option import some
from .reflection import (TypeInfo, class_type)
from .seq import (concat, iterate_indexed, map, iterate)
from .types import FSharpRef
from .util import (get_enumerator, to_iterator, ignore, dispose)

T = TypeVar("T")

def expr_22(gen0) -> TypeInfo:
    return class_type("Fable.Collections.HashSet", [gen0], HashSet)


class HashSet(Generic[T]):
    def __init__(self, items: Any, comparer: Any) -> None:
        this : Any = FSharpRef(None)
        self.comparer = comparer
        this.contents = self
        self.hash_map = dict([])
        self.init_00409_002d1 = 1
        with get_enumerator(items) as enumerator:
            while enumerator.System_Collections_IEnumerator_MoveNext():
                ignore(HashSet__Add_2B595(this.contents, enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()))
    
    @property
    def Symbol_toStringTag(self) -> str:
        return "HashSet"
    
    def to_json(self, _key: str) -> Any:
        this : HashSet[T] = self
        return list(this)
    
    def System_Collections_IEnumerable_GetEnumerator(self) -> Any:
        this : HashSet[T] = self
        return get_enumerator(this)
    
    def GetEnumerator(self) -> Any:
        this : HashSet[T] = self
        return get_enumerator(concat(this.hash_map.values()))
    
    def __iter__(self) -> Any:
        return to_iterator(self.GetEnumerator())
    
    def System_Collections_Generic_ICollection_00601_Add2B595(self, item: Any=None) -> None:
        this : HashSet[T] = self
        ignore(HashSet__Add_2B595(this, item))
    
    def System_Collections_Generic_ICollection_00601_Clear(self) -> None:
        this : HashSet[T] = self
        HashSet__Clear(this)
    
    def System_Collections_Generic_ICollection_00601_Contains2B595(self, item: Any=None) -> bool:
        this : HashSet[T] = self
        return HashSet__Contains_2B595(this, item)
    
    def System_Collections_Generic_ICollection_00601_CopyToZ2E171D71(self, array: List[T], array_index: int) -> None:
        this : HashSet[T] = self
        def action(i: int, e: Any=None) -> None:
            array[array_index + i] = e
        
        iterate_indexed(action, this)
    
    def System_Collections_Generic_ICollection_00601_get_Count(self) -> int:
        this : HashSet[T] = self
        return HashSet__get_Count(this)
    
    def System_Collections_Generic_ICollection_00601_get_IsReadOnly(self) -> bool:
        return False
    
    def System_Collections_Generic_ICollection_00601_Remove2B595(self, item: Any=None) -> bool:
        this : HashSet[T] = self
        return HashSet__Remove_2B595(this, item)
    
    @property
    def size(self) -> int:
        this : HashSet[T] = self
        return HashSet__get_Count(this)
    
    def add(self, k: T=None) -> Any:
        this : HashSet[T] = self
        ignore(HashSet__Add_2B595(this, k))
        return this
    
    def clear(self) -> None:
        this : HashSet[T] = self
        HashSet__Clear(this)
    
    def delete(self, k: Any=None) -> bool:
        this : HashSet[T] = self
        return HashSet__Remove_2B595(this, k)
    
    def has(self, k: Any=None) -> bool:
        this : HashSet[T] = self
        return HashSet__Contains_2B595(this, k)
    
    def keys(self) -> Any:
        this : HashSet[T] = self
        return map(lambda x=None: x, this)
    
    def values(self) -> Any:
        this : HashSet[T] = self
        return map(lambda x=None: x, this)
    
    def entries(self) -> Any:
        this : HashSet[T] = self
        return map(lambda v=None: (v, v), this)
    
    def for_each(self, f: Callable[[T, T, Any], None], this_arg: Optional[Any]=None) -> None:
        this : HashSet[T] = self
        def action(x: Any=None) -> None:
            f(x, x, this)
        
        iterate(action, this)
    

HashSet_reflection = expr_22

def HashSet__ctor_Z6150332D(items: Any, comparer: Any) -> HashSet[T]:
    return HashSet(items, comparer)


def HashSet__TryFindIndex_2B595(this: HashSet[T], k: T=None) -> Tuple[bool, int, int]:
    h : int = this.comparer.GetHashCode(k) or 0
    match_value = None
    out_arg : List[T] = None
    def arrow_23(v: List[T], this=this, k=k) -> None:
        nonlocal out_arg
        out_arg = v
    
    match_value = (try_get_value(this.hash_map, h, FSharpRef(lambda this=this, k=k: out_arg, arrow_23)), out_arg)
    if match_value[0]:
        return (True, h, find_index(lambda v_1=None, this=this, k=k: this.comparer.Equals(k, v_1), match_value[1]))
    
    else: 
        return (False, h, -1)
    


def HashSet__TryFind_2B595(this: HashSet[T], k: T=None) -> Optional[T]:
    match_value : Tuple[bool, int, int] = HashSet__TryFindIndex_2B595(this, k)
    (pattern_matching_result,) = (None,)
    if match_value[0]:
        if match_value[2] > -1:
            pattern_matching_result = 0
        
        else: 
            pattern_matching_result = 1
        
    
    else: 
        pattern_matching_result = 1
    
    if pattern_matching_result == 0:
        return some(get_item_from_dict(this.hash_map, match_value[1])[match_value[2]])
    
    elif pattern_matching_result == 1:
        return None
    


def HashSet__get_Comparer(this: HashSet[T]) -> Any:
    return this.comparer


def HashSet__Clear(this: HashSet[Any]) -> None:
    this.hash_map.clear()


def HashSet__get_Count(this: HashSet[Any]) -> int:
    count : int = 0
    enumerator : Any = get_enumerator(this.hash_map.values())
    try: 
        while enumerator.System_Collections_IEnumerator_MoveNext():
            items : List[T] = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
            count = (count + len(items)) or 0
    
    finally: 
        dispose(enumerator)
    
    return count


def HashSet__Add_2B595(this: HashSet[T], k: T=None) -> bool:
    match_value : Tuple[bool, int, int] = HashSet__TryFindIndex_2B595(this, k)
    (pattern_matching_result,) = (None,)
    if match_value[0]:
        if match_value[2] > -1:
            pattern_matching_result = 0
        
        else: 
            pattern_matching_result = 1
        
    
    else: 
        pattern_matching_result = 1
    
    if pattern_matching_result == 0:
        return False
    
    elif pattern_matching_result == 1:
        if match_value[0]:
            value : None = (get_item_from_dict(this.hash_map, match_value[1]).append(k))
            ignore()
            return True
        
        else: 
            this.hash_map[match_value[1]] = [k]
            return True
        
    


def HashSet__Contains_2B595(this: HashSet[T], k: T=None) -> bool:
    match_value : Tuple[bool, int, int] = HashSet__TryFindIndex_2B595(this, k)
    (pattern_matching_result,) = (None,)
    if match_value[0]:
        if match_value[2] > -1:
            pattern_matching_result = 0
        
        else: 
            pattern_matching_result = 1
        
    
    else: 
        pattern_matching_result = 1
    
    if pattern_matching_result == 0:
        return True
    
    elif pattern_matching_result == 1:
        return False
    


def HashSet__Remove_2B595(this: HashSet[T], k: T=None) -> bool:
    match_value : Tuple[bool, int, int] = HashSet__TryFindIndex_2B595(this, k)
    (pattern_matching_result,) = (None,)
    if match_value[0]:
        if match_value[2] > -1:
            pattern_matching_result = 0
        
        else: 
            pattern_matching_result = 1
        
    
    else: 
        pattern_matching_result = 1
    
    if pattern_matching_result == 0:
        get_item_from_dict(this.hash_map, match_value[1]).pop(match_value[2], 1)
        return True
    
    elif pattern_matching_result == 1:
        return False
    


