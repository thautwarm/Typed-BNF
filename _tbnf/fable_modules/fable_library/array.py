from array import array as array_2
import builtins
import functools
import math
from typing import (Any, TypeVar, List, Callable, Optional, Tuple)
from .global_ import SR_indexOutOfBounds
from .native import (Helpers_allocateArrayFromCons, Helpers_fillImpl, Helpers_indexOfImpl, Helpers_spliceImpl)
from .option import (some, default_arg, value as value_1)
from .util import (max as max_1, compare_primitives, ignore, get_enumerator, equals as equals_1, min as min_1)

T = TypeVar("T")

U = TypeVar("U")

T1 = TypeVar("T1")

T2 = TypeVar("T2")

T3 = TypeVar("T3")

State = TypeVar("State")

Result = TypeVar("Result")

a_ = TypeVar("a_")

b_ = TypeVar("b_")

a = TypeVar("a")

b = TypeVar("b")

c_ = TypeVar("c_")

def index_not_found() -> Any:
    raise Exception("An index satisfying the predicate was not found in the collection.")


def different_lengths() -> Any:
    raise Exception("Arrays had different lengths")


def append(array1: List[T], array2: List[T], cons: Any) -> List[T]:
    len1 : int = len(array1) or 0
    len2 : int = len(array2) or 0
    new_array : List[T] = Helpers_allocateArrayFromCons(cons, len1 + len2)
    for i in range(0, (len1 - 1) + 1, 1):
        new_array[i] = array1[i]
    for i_1 in range(0, (len2 - 1) + 1, 1):
        new_array[i_1 + len1] = array2[i_1]
    return new_array


def filter(predicate: Callable[[T], bool], array: List[T]) -> List[T]:
    return list(builtins.filter(predicate, array))


def fill(target: List[T], target_index: int, count: int, value: T=None) -> List[T]:
    return Helpers_fillImpl(target, value, target_index, count)


def get_sub_array(array: List[T], start: int, count: int) -> List[T]:
    return array[start:start+count]


def last(array: List[T]) -> T:
    if len(array) == 0:
        raise Exception("The input array was empty\\nParameter name: array")
    
    return array[len(array) - 1]


def try_last(array: List[T]) -> Optional[T]:
    if len(array) == 0:
        return None
    
    else: 
        return some(array[len(array) - 1])
    


def map_indexed(f: Callable[[int, T], U], source: List[T], cons: Any) -> List[U]:
    len_1 : int = len(source) or 0
    target : List[U] = Helpers_allocateArrayFromCons(cons, len_1)
    for i in range(0, (len_1 - 1) + 1, 1):
        target[i] = f(i, source[i])
    return target


def map(f: Callable[[T], U], source: List[T], cons: Any) -> List[U]:
    len_1 : int = len(source) or 0
    target : List[U] = Helpers_allocateArrayFromCons(cons, len_1)
    for i in range(0, (len_1 - 1) + 1, 1):
        target[i] = f(source[i])
    return target


def map_indexed2(f: Callable[[int, T1, T2], U], source1: List[T1], source2: List[T2], cons: Any) -> List[U]:
    if len(source1) != len(source2):
        raise Exception("Arrays had different lengths")
    
    result : List[U] = Helpers_allocateArrayFromCons(cons, len(source1))
    for i in range(0, (len(source1) - 1) + 1, 1):
        result[i] = f(i, source1[i], source2[i])
    return result


def map2(f: Callable[[T1, T2], U], source1: List[T1], source2: List[T2], cons: Any) -> List[U]:
    if len(source1) != len(source2):
        raise Exception("Arrays had different lengths")
    
    result : List[U] = Helpers_allocateArrayFromCons(cons, len(source1))
    for i in range(0, (len(source1) - 1) + 1, 1):
        result[i] = f(source1[i], source2[i])
    return result


def map_indexed3(f: Callable[[int, T1, T2, T3], U], source1: List[T1], source2: List[T2], source3: List[T3], cons: Any) -> List[U]:
    if True if (len(source1) != len(source2)) else (len(source2) != len(source3)):
        raise Exception("Arrays had different lengths")
    
    result : List[U] = Helpers_allocateArrayFromCons(cons, len(source1))
    for i in range(0, (len(source1) - 1) + 1, 1):
        result[i] = f(i, source1[i], source2[i], source3[i])
    return result


def map3(f: Callable[[T1, T2, T3], U], source1: List[T1], source2: List[T2], source3: List[T3], cons: Any) -> List[U]:
    if True if (len(source1) != len(source2)) else (len(source2) != len(source3)):
        raise Exception("Arrays had different lengths")
    
    result : List[U] = Helpers_allocateArrayFromCons(cons, len(source1))
    for i in range(0, (len(source1) - 1) + 1, 1):
        result[i] = f(source1[i], source2[i], source3[i])
    return result


def map_fold(mapping: Callable[[State, T], Tuple[Result, State]], state: State, array: List[T], cons: Any) -> Tuple[List[Result], State]:
    match_value : int = len(array) or 0
    if match_value == 0:
        return ([], state)
    
    else: 
        acc : State = state
        res : List[Result] = Helpers_allocateArrayFromCons(cons, match_value)
        for i in range(0, (len(array) - 1) + 1, 1):
            pattern_input : Tuple[Result, State] = mapping(acc, array[i])
            res[i] = pattern_input[0]
            acc = pattern_input[1]
        return (res, acc)
    


def map_fold_back(mapping: Callable[[T, State], Tuple[Result, State]], array: List[T], state: State, cons: Any) -> Tuple[List[Result], State]:
    match_value : int = len(array) or 0
    if match_value == 0:
        return ([], state)
    
    else: 
        acc : State = state
        res : List[Result] = Helpers_allocateArrayFromCons(cons, match_value)
        for i in range(len(array) - 1, 0 - 1, -1):
            pattern_input : Tuple[Result, State] = mapping(array[i], acc)
            res[i] = pattern_input[0]
            acc = pattern_input[1]
        return (res, acc)
    


def indexed(source: List[T]) -> List[Tuple[int, T]]:
    len_1 : int = len(source) or 0
    target : List[Tuple[int, T]] = [None]*len_1
    for i in range(0, (len_1 - 1) + 1, 1):
        target[i] = (i, source[i])
    return target


def truncate(count: int, array: List[T]) -> List[T]:
    count_1 : int = max_1(lambda x, y, count=count, array=array: compare_primitives(x, y), 0, count) or 0
    return array[0:0+count_1]


def concat(arrays: Any, cons: Any) -> List[T]:
    arrays_1 : List[List[T]] = arrays if (isinstance(arrays, list)) else (list(arrays))
    match_value : int = len(arrays_1) or 0
    if match_value == 0:
        return Helpers_allocateArrayFromCons(cons, 0)
    
    elif match_value == 1:
        return arrays_1[0]
    
    else: 
        total_idx : int = 0
        total_length : int = 0
        for idx in range(0, (len(arrays_1) - 1) + 1, 1):
            arr_1 : List[T] = arrays_1[idx]
            total_length = (total_length + len(arr_1)) or 0
        result : List[T] = Helpers_allocateArrayFromCons(cons, total_length)
        for idx_1 in range(0, (len(arrays_1) - 1) + 1, 1):
            arr_2 : List[T] = arrays_1[idx_1]
            for j in range(0, (len(arr_2) - 1) + 1, 1):
                result[total_idx] = arr_2[j]
                total_idx = (total_idx + 1) or 0
        return result
    


def collect(mapping: Callable[[T], List[U]], array: List[T], cons: Any) -> List[U]:
    return concat(map(mapping, array, None), cons)


def where(predicate: Callable[[a_], bool], array: List[a_]) -> List[a_]:
    return list(builtins.filter(predicate, array))


def contains(value: T, array: List[T], eq: Any) -> bool:
    def loop(i_mut: int, value=value, array=array, eq=eq) -> bool:
        while True:
            (i,) = (i_mut,)
            if i >= len(array):
                return False
            
            elif eq.Equals(value, array[i]):
                return True
            
            else: 
                i_mut = i + 1
                continue
            
            break
    
    return loop(0)


def empty(cons: Any) -> List[a_]:
    return Helpers_allocateArrayFromCons(cons, 0)


def singleton(value: T, cons: Any) -> List[T]:
    ar : List[T] = Helpers_allocateArrayFromCons(cons, 1)
    ar[0] = value
    return ar


def initialize(count: int, initializer: Callable[[int], T], cons: Any) -> List[T]:
    if count < 0:
        raise Exception("The input must be non-negative\\nParameter name: count")
    
    result : List[T] = Helpers_allocateArrayFromCons(cons, count)
    for i in range(0, (count - 1) + 1, 1):
        result[i] = initializer(i)
    return result


def pairwise(array: List[T]) -> List[Tuple[T, T]]:
    if len(array) < 2:
        return []
    
    else: 
        count : int = (len(array) - 1) or 0
        result : List[Tuple[T, T]] = [None]*count
        for i in range(0, (count - 1) + 1, 1):
            result[i] = (array[i], array[i + 1])
        return result
    


def replicate(count: int, initial: T, cons: Any) -> List[T]:
    if count < 0:
        raise Exception("The input must be non-negative\\nParameter name: count")
    
    result : List[T] = Helpers_allocateArrayFromCons(cons, count)
    for i in range(0, (len(result) - 1) + 1, 1):
        result[i] = initial
    return result


def copy(array: List[T]) -> List[T]:
    return array[:]


def reverse(array: List[T]) -> List[T]:
    array_1 : List[T] = array[:]
    return array_1[::-1]


def scan(folder: Callable[[State, T], State], state: State, array: List[T], cons: Any) -> List[State]:
    res : List[State] = Helpers_allocateArrayFromCons(cons, len(array) + 1)
    res[0] = state
    for i in range(0, (len(array) - 1) + 1, 1):
        res[i + 1] = folder(res[i], array[i])
    return res


def scan_back(folder: Callable[[T, State], State], array: List[T], state: State, cons: Any) -> List[State]:
    res : List[State] = Helpers_allocateArrayFromCons(cons, len(array) + 1)
    res[len(array)] = state
    for i in range(len(array) - 1, 0 - 1, -1):
        res[i] = folder(array[i], res[i + 1])
    return res


def skip(count: int, array: List[T], cons: Any) -> List[T]:
    if count > len(array):
        raise Exception("count is greater than array length\\nParameter name: count")
    
    if count == len(array):
        return Helpers_allocateArrayFromCons(cons, 0)
    
    else: 
        count_1 : int = (0 if (count < 0) else (count)) or 0
        return array[count_1:]
    


def skip_while(predicate: Callable[[T], bool], array: List[T], cons: Any) -> List[T]:
    count : int = 0
    while predicate(array[count]) if (count < len(array)) else (False):
        count = (count + 1) or 0
    if count == len(array):
        return Helpers_allocateArrayFromCons(cons, 0)
    
    else: 
        return array[count:]
    


def take(count: int, array: List[T], cons: Any) -> List[T]:
    if count < 0:
        raise Exception("The input must be non-negative\\nParameter name: count")
    
    if count > len(array):
        raise Exception("count is greater than array length\\nParameter name: count")
    
    if count == 0:
        return Helpers_allocateArrayFromCons(cons, 0)
    
    else: 
        return array[0:0+count]
    


def take_while(predicate: Callable[[T], bool], array: List[T], cons: Any) -> List[T]:
    count : int = 0
    while predicate(array[count]) if (count < len(array)) else (False):
        count = (count + 1) or 0
    if count == 0:
        return Helpers_allocateArrayFromCons(cons, 0)
    
    else: 
        return array[0:0+count]
    


def add_in_place(x: T, array: List[T]) -> None:
    ignore(array.append(x))


def add_range_in_place(range: Any, array: List[T]) -> None:
    with get_enumerator(range) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            add_in_place(enumerator.System_Collections_Generic_IEnumerator_00601_get_Current(), array)


def insert_range_in_place(index: int, range: Any, array: List[T]) -> None:
    i : int = index or 0
    with get_enumerator(range) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            x : T = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
            def arrow_53(index=index, range=range, array=array) -> List[T]:
                index_1 : int = i or 0
                return array.insert(index_1, x)
            
            ignore(arrow_53())
            i = (i + 1) or 0


def remove_in_place(item_1: T, array: List[T]) -> bool:
    i : int = Helpers_indexOfImpl(array, item_1, 0) or 0
    if i > -1:
        ignore(Helpers_spliceImpl(array, i, 1))
        return True
    
    else: 
        return False
    


def remove_all_in_place(predicate: Callable[[T], bool], array: List[T]) -> int:
    def count_remove_all(count: int, predicate=predicate, array=array) -> int:
        i : int = (next((i for i, x in enumerate(array) if (predicate)(x)), -1)) or 0
        if i > -1:
            ignore(Helpers_spliceImpl(array, i, 1))
            return count_remove_all(count) + 1
        
        else: 
            return count
        
    
    return count_remove_all(0)


def copy_to(source: List[T], source_index: int, target: List[T], target_index: int, count: int) -> None:
    diff : int = (target_index - source_index) or 0
    for i in range(source_index, ((source_index + count) - 1) + 1, 1):
        target[i + diff] = source[i]


def copy_to_typed_array(source: List[T], source_index: int, target: List[T], target_index: int, count: int) -> None:
    try: 
        target.set(source.subarray(source_index, source_index + count), target_index)
    
    except Exception as match_value:
        copy_to(source, source_index, target, target_index, count)
    


def index_of(array: List[T], item_1: T, start: Optional[int]=None, count: Optional[int]=None) -> int:
    start_1 : int = default_arg(start, 0) or 0
    i : int = Helpers_indexOfImpl(array, item_1, start_1) or 0
    if i >= (start_1 + value_1(count)) if (count is not None) else (False):
        return -1
    
    else: 
        return i
    


def partition(f: Callable[[T], bool], source: List[T], cons: Any) -> Tuple[List[T], List[T]]:
    len_1 : int = len(source) or 0
    res1 : List[T] = Helpers_allocateArrayFromCons(cons, len_1)
    res2 : List[T] = Helpers_allocateArrayFromCons(cons, len_1)
    i_true : int = 0
    i_false : int = 0
    for i in range(0, (len_1 - 1) + 1, 1):
        if f(source[i]):
            res1[i_true] = source[i]
            i_true = (i_true + 1) or 0
        
        else: 
            res2[i_false] = source[i]
            i_false = (i_false + 1) or 0
        
    return (truncate(i_true, res1), truncate(i_false, res2))


def find(predicate: Callable[[T], bool], array: List[T]) -> T:
    match_value : Optional[T] = next((x for x in array if (predicate)(x)), None)
    if match_value is None:
        return index_not_found()
    
    else: 
        return value_1(match_value)
    


def try_find(predicate: Callable[[T], bool], array: List[T]) -> Optional[T]:
    return next((x for x in array if (predicate)(x)), None)


def find_index(predicate: Callable[[T], bool], array: List[T]) -> int:
    match_value : int = (next((i for i, x in enumerate(array) if (predicate)(x)), -1)) or 0
    if match_value > -1:
        return match_value
    
    else: 
        return index_not_found()
    


def try_find_index(predicate: Callable[[T], bool], array: List[T]) -> Optional[int]:
    match_value : int = (next((i for i, x in enumerate(array) if (predicate)(x)), -1)) or 0
    if match_value > -1:
        return match_value
    
    else: 
        return None
    


def pick(chooser: Callable[[a_], Optional[b_]], array: List[a_]) -> b_:
    def loop(i_mut: int, chooser=chooser, array=array) -> Any:
        while True:
            (i,) = (i_mut,)
            if i >= len(array):
                return index_not_found()
            
            else: 
                match_value : Optional[b_] = chooser(array[i])
                if match_value is not None:
                    return value_1(match_value)
                
                else: 
                    i_mut = i + 1
                    continue
                
            
            break
    
    return loop(0)


def try_pick(chooser: Callable[[a_], Optional[b_]], array: List[a_]) -> Optional[b_]:
    def loop(i_mut: int, chooser=chooser, array=array) -> Optional[b_]:
        while True:
            (i,) = (i_mut,)
            if i >= len(array):
                return None
            
            else: 
                match_value : Optional[b_] = chooser(array[i])
                if match_value is None:
                    i_mut = i + 1
                    continue
                
                else: 
                    return match_value
                
            
            break
    
    return loop(0)


def find_back(predicate: Callable[[a_], bool], array: List[a_]) -> a_:
    def loop(i_mut: int, predicate=predicate, array=array) -> Any:
        while True:
            (i,) = (i_mut,)
            if i < 0:
                return index_not_found()
            
            elif predicate(array[i]):
                return array[i]
            
            else: 
                i_mut = i - 1
                continue
            
            break
    
    return loop(len(array) - 1)


def try_find_back(predicate: Callable[[a_], bool], array: List[a_]) -> Optional[a_]:
    def loop(i_mut: int, predicate=predicate, array=array) -> Optional[a_]:
        while True:
            (i,) = (i_mut,)
            if i < 0:
                return None
            
            elif predicate(array[i]):
                return some(array[i])
            
            else: 
                i_mut = i - 1
                continue
            
            break
    
    return loop(len(array) - 1)


def find_last_index(predicate: Callable[[a_], bool], array: List[a_]) -> int:
    def loop(i_mut: int, predicate=predicate, array=array) -> int:
        while True:
            (i,) = (i_mut,)
            if i < 0:
                return -1
            
            elif predicate(array[i]):
                return i
            
            else: 
                i_mut = i - 1
                continue
            
            break
    
    return loop(len(array) - 1)


def find_index_back(predicate: Callable[[a_], bool], array: List[a_]) -> int:
    def loop(i_mut: int, predicate=predicate, array=array) -> int:
        while True:
            (i,) = (i_mut,)
            if i < 0:
                return index_not_found()
            
            elif predicate(array[i]):
                return i
            
            else: 
                i_mut = i - 1
                continue
            
            break
    
    return loop(len(array) - 1)


def try_find_index_back(predicate: Callable[[a_], bool], array: List[a_]) -> Optional[int]:
    def loop(i_mut: int, predicate=predicate, array=array) -> Optional[int]:
        while True:
            (i,) = (i_mut,)
            if i < 0:
                return None
            
            elif predicate(array[i]):
                return i
            
            else: 
                i_mut = i - 1
                continue
            
            break
    
    return loop(len(array) - 1)


def choose(chooser: Callable[[T], Optional[U]], array: List[T], cons: Any) -> List[U]:
    res : List[U] = []
    for i in range(0, (len(array) - 1) + 1, 1):
        match_value : Optional[U] = chooser(array[i])
        if match_value is not None:
            ignore(res.append(value_1(match_value)))
        
    if equals_1(cons, None):
        return res
    
    else: 
        return map(lambda x=None, chooser=chooser, array=array, cons=cons: x, res, cons)
    


def fold_indexed(folder: Callable[[int, State, T], State], state: State, array: List[T]) -> State:
    return array.reduce((lambda delegate_arg0, delegate_arg1, delegate_arg2, folder=folder, state=state, array=array: folder(delegate_arg2, delegate_arg0, delegate_arg1), state))


def fold(folder: Callable[[State, T], State], state: State, array: List[T]) -> State:
    return functools.reduce((lambda acc, x=None, folder=folder, state=state, array=array: folder(acc, x)), array, state)


def iterate(action: Callable[[T], None], array: List[T]) -> None:
    for i in range(0, (len(array) - 1) + 1, 1):
        action(array[i])


def iterate_indexed(action: Callable[[int, T], None], array: List[T]) -> None:
    for i in range(0, (len(array) - 1) + 1, 1):
        action(i, array[i])


def iterate2(action: Callable[[T, T], None], array1: List[T], array2: List[T]) -> None:
    if len(array1) != len(array2):
        different_lengths()
    
    for i in range(0, (len(array1) - 1) + 1, 1):
        action(array1[i], array2[i])


def iterate_indexed2(action: Callable[[int, T, T], None], array1: List[T], array2: List[T]) -> None:
    if len(array1) != len(array2):
        different_lengths()
    
    for i in range(0, (len(array1) - 1) + 1, 1):
        action(i, array1[i], array2[i])


def is_empty(array: List[T]) -> bool:
    return len(array) == 0


def for_all(predicate: Callable[[T], bool], array: List[T]) -> bool:
    return all([predicate(x) for x in array])


def permute(f: Callable[[int], int], array: List[T]) -> List[T]:
    size : int = len(array) or 0
    res : List[T] = array[:]
    check_flags : array_2 = [None]*size
    def arrow_62(i: int, x: Any=None, f=f, array=array) -> None:
        j : int = f(i) or 0
        if True if (j < 0) else (j >= size):
            raise Exception("Not a valid permutation")
        
        res[j] = x
        check_flags[j] = 1
    
    iterate_indexed(arrow_62, array)
    if not (all([(lambda y, f=f, array=array: 1 == y)(x) for x in check_flags])):
        raise Exception("Not a valid permutation")
    
    return res


def set_slice(target: List[T], lower: Optional[int], upper: Optional[int], source: List[T]) -> None:
    lower_1 : int = default_arg(lower, 0) or 0
    upper_1 : int = default_arg(upper, 0) or 0
    length : int = ((upper_1 if (upper_1 > 0) else (len(target) - 1)) - lower_1) or 0
    for i in range(0, length + 1, 1):
        target[i + lower_1] = source[i]


def sort_in_place_by(projection: Callable[[a], b], xs: List[a], comparer: Any) -> None:
    xs.sort()


def sort_in_place(xs: List[T], comparer: Any) -> None:
    xs.sort()


def sort(xs: List[T], comparer: Any) -> List[T]:
    xs_1 : List[T] = xs[:]
    def expr_65():
        xs_1.sort()
        return xs_1
    
    return expr_65()


def sort_by(projection: Callable[[a], b], xs: List[a], comparer: Any) -> List[a]:
    xs_1 : List[a] = xs[:]
    def expr_66():
        xs_1.sort()
        return xs_1
    
    return expr_66()


def sort_descending(xs: List[T], comparer: Any) -> List[T]:
    xs_1 : List[T] = xs[:]
    def expr_67():
        xs_1.sort()
        return xs_1
    
    return expr_67()


def sort_by_descending(projection: Callable[[a], b], xs: List[a], comparer: Any) -> List[a]:
    xs_1 : List[a] = xs[:]
    def expr_68():
        xs_1.sort()
        return xs_1
    
    return expr_68()


def sort_with(comparer: Callable[[T, T], int], xs: List[T]) -> List[T]:
    comparer_1 : Callable[[T, T], int] = comparer
    xs_1 : List[T] = xs[:]
    def expr_69():
        xs_1.sort()
        return xs_1
    
    return expr_69()


def all_pairs(xs: List[T1], ys: List[T2]) -> List[Tuple[T1, T2]]:
    len1 : int = len(xs) or 0
    len2 : int = len(ys) or 0
    res : List[Tuple[T1, T2]] = [None]*(len1 * len2)
    for i in range(0, (len(xs) - 1) + 1, 1):
        for j in range(0, (len(ys) - 1) + 1, 1):
            res[(i * len2) + j] = (xs[i], ys[j])
    return res


def unfold(generator: Callable[[State], Optional[Tuple[T, State]]], state: State=None) -> List[T]:
    res : List[T] = []
    def loop(state_1_mut: Any=None, generator=generator, state=state) -> None:
        while True:
            (state_1,) = (state_1_mut,)
            match_value : Optional[Tuple[T, State]] = generator(state_1)
            if match_value is not None:
                s : State = match_value[1]
                ignore(res.append(match_value[0]))
                state_1_mut = s
                continue
            
            break
    
    loop(state)
    return res


def unzip(array: List[Tuple[a_, b_]]) -> Tuple[List[a_], List[b_]]:
    len_1 : int = len(array) or 0
    res1 : List[a_] = [None]*len_1
    res2 : List[b_] = [None]*len_1
    def arrow_70(i: int, tupled_arg: Tuple[a_, b_], array=array) -> None:
        res1[i] = tupled_arg[0]
        res2[i] = tupled_arg[1]
    
    iterate_indexed(arrow_70, array)
    return (res1, res2)


def unzip3(array: List[Tuple[a_, b_, c_]]) -> Tuple[List[a_], List[b_], List[c_]]:
    len_1 : int = len(array) or 0
    res1 : List[a_] = [None]*len_1
    res2 : List[b_] = [None]*len_1
    res3 : List[c_] = [None]*len_1
    def arrow_71(i: int, tupled_arg: Tuple[a_, b_, c_], array=array) -> None:
        res1[i] = tupled_arg[0]
        res2[i] = tupled_arg[1]
        res3[i] = tupled_arg[2]
    
    iterate_indexed(arrow_71, array)
    return (res1, res2, res3)


def zip(array1: List[T], array2: List[U]) -> List[Tuple[T, U]]:
    if len(array1) != len(array2):
        different_lengths()
    
    result : List[Tuple[T, U]] = [None]*len(array1)
    for i in range(0, (len(array1) - 1) + 1, 1):
        result[i] = (array1[i], array2[i])
    return result


def zip3(array1: List[T], array2: List[U], array3: List[U]) -> List[Tuple[T, U, U]]:
    if True if (len(array1) != len(array2)) else (len(array2) != len(array3)):
        different_lengths()
    
    result : List[Tuple[T, U, U]] = [None]*len(array1)
    for i in range(0, (len(array1) - 1) + 1, 1):
        result[i] = (array1[i], array2[i], array3[i])
    return result


def chunk_by_size(chunk_size: int, array: List[T]) -> List[List[T]]:
    if chunk_size < 1:
        raise Exception("The input must be positive.\\nParameter name: size")
    
    if len(array) == 0:
        return [[]]
    
    else: 
        result : List[List[T]] = []
        for x in range(0, (int(math.ceil(len(array) / chunk_size)) - 1) + 1, 1):
            start : int = (x * chunk_size) or 0
            ignore(result.append(array[start:start+chunk_size]))
        return result
    


def split_at(index: int, array: List[T]) -> Tuple[List[T], List[T]]:
    if True if (index < 0) else (index > len(array)):
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    return (array[0:0+index], array[index:])


def compare_with(comparer: Callable[[T, T], int], array1: List[T], array2: List[T]) -> int:
    if array1 is None:
        if array2 is None:
            return 0
        
        else: 
            return -1
        
    
    elif array2 is None:
        return 1
    
    else: 
        i : int = 0
        result : int = 0
        length1 : int = len(array1) or 0
        length2 : int = len(array2) or 0
        if length1 > length2:
            return 1
        
        elif length1 < length2:
            return -1
        
        else: 
            while result == 0 if (i < length1) else (False):
                result = comparer(array1[i], array2[i]) or 0
                i = (i + 1) or 0
            return result
        
    


def equals_with(equals: Callable[[T, T], bool], array1: List[T], array2: List[T]) -> bool:
    if array1 is None:
        if array2 is None:
            return True
        
        else: 
            return False
        
    
    elif array2 is None:
        return False
    
    else: 
        i : int = 0
        result : bool = True
        length1 : int = len(array1) or 0
        length2 : int = len(array2) or 0
        if length1 > length2:
            return False
        
        elif length1 < length2:
            return False
        
        else: 
            while result if (i < length1) else (False):
                result = equals(array1[i], array2[i])
                i = (i + 1) or 0
            return result
        
    


def exactly_one(array: List[T]) -> T:
    if len(array) == 1:
        return array[0]
    
    elif len(array) == 0:
        raise Exception("The input sequence was empty\\nParameter name: array")
    
    else: 
        raise Exception("Input array too long\\nParameter name: array")
    


def try_exactly_one(array: List[T]) -> Optional[T]:
    if len(array) == 1:
        return some(array[0])
    
    else: 
        return None
    


def head(array: List[T]) -> T:
    if len(array) == 0:
        raise Exception("The input array was empty\\nParameter name: array")
    
    else: 
        return array[0]
    


def try_head(array: List[T]) -> Optional[T]:
    if len(array) == 0:
        return None
    
    else: 
        return some(array[0])
    


def tail(array: List[T]) -> List[T]:
    if len(array) == 0:
        raise Exception("Not enough elements\\nParameter name: array")
    
    return array[1:]


def item(index: int, array: List[a_]) -> a_:
    return array[index]


def try_item(index: int, array: List[T]) -> Optional[T]:
    if True if (index < 0) else (index >= len(array)):
        return None
    
    else: 
        return some(array[index])
    


def fold_back_indexed(folder: Callable[[int, T, State], State], array: List[T], state: State=None) -> State:
    return array.reduceRight((lambda delegate_arg0, delegate_arg1, delegate_arg2, folder=folder, array=array, state=state: folder(delegate_arg2, delegate_arg1, delegate_arg0), state))


def fold_back(folder: Callable[[T, State], State], array: List[T], state: State=None) -> State:
    return functools.reduce((lambda acc, x=None, folder=folder, array=array, state=state: folder(x, acc)), array[::-1], state)


def fold_indexed2(folder: Callable[[int, a_, b_, c_], a_], state: a_, array1: List[b_], array2: List[c_]) -> a_:
    acc : a_ = state
    if len(array1) != len(array2):
        raise Exception("Arrays have different lengths")
    
    for i in range(0, (len(array1) - 1) + 1, 1):
        acc = folder(i, acc, array1[i], array2[i])
    return acc


def fold2(folder: Callable[[State, T1, T2], State], state: State, array1: List[T1], array2: List[T2]) -> State:
    return fold_indexed2(lambda _arg1, acc, x, y=None, folder=folder, state=state, array1=array1, array2=array2: folder(acc, x, y), state, array1, array2)


def fold_back_indexed2(folder: Callable[[int, T1, T2, State], State], array1: List[T1], array2: List[T2], state: State=None) -> State:
    acc : State = state
    if len(array1) != len(array2):
        different_lengths()
    
    size : int = len(array1) or 0
    for i in range(1, size + 1, 1):
        acc = folder(i - 1, array1[size - i], array2[size - i], acc)
    return acc


def fold_back2(f: Callable[[T1, T2, State], State], array1: List[T1], array2: List[T2], state: State=None) -> State:
    return fold_back_indexed2(lambda _arg1, x, y, acc=None, f=f, array1=array1, array2=array2, state=state: f(x, y, acc), array1, array2, state)


def reduce(reduction: Callable[[T, T], T], array: List[T]) -> T:
    if len(array) == 0:
        raise Exception("The input array was empty")
    
    return functools.reduce(reduction, array)


def reduce_back(reduction: Callable[[T, T], T], array: List[T]) -> T:
    if len(array) == 0:
        raise Exception("The input array was empty")
    
    return functools.reduce(reduction, array[::-1])


def for_all2(predicate: Callable[[a_, b_], bool], array1: List[a_], array2: List[b_]) -> bool:
    return fold2(lambda acc, x, y=None, predicate=predicate, array1=array1, array2=array2: predicate(x, y) if (acc) else (False), True, array1, array2)


def exists_offset(predicate_mut: Callable[[T], bool], array_mut: List[T], index_mut: int) -> bool:
    while True:
        (predicate, array, index) = (predicate_mut, array_mut, index_mut)
        if index == len(array):
            return False
        
        elif predicate(array[index]):
            return True
        
        else: 
            predicate_mut = predicate
            array_mut = array
            index_mut = index + 1
            continue
        
        break


def exists(predicate: Callable[[a_], bool], array: List[a_]) -> bool:
    return exists_offset(predicate, array, 0)


def exists_offset2(predicate_mut: Callable[[a_, b_], bool], array1_mut: List[a_], array2_mut: List[b_], index_mut: int) -> bool:
    while True:
        (predicate, array1, array2, index) = (predicate_mut, array1_mut, array2_mut, index_mut)
        if index == len(array1):
            return False
        
        elif predicate(array1[index], array2[index]):
            return True
        
        else: 
            predicate_mut = predicate
            array1_mut = array1
            array2_mut = array2
            index_mut = index + 1
            continue
        
        break


def exists2(predicate: Callable[[a_, b_], bool], array1: List[a_], array2: List[b_]) -> bool:
    if len(array1) != len(array2):
        different_lengths()
    
    return exists_offset2(predicate, array1, array2, 0)


def sum(array: List[T], adder: Any) -> T:
    acc : T = adder.GetZero()
    for i in range(0, (len(array) - 1) + 1, 1):
        acc = adder.Add(acc, array[i])
    return acc


def sum_by(projection: Callable[[T], T2], array: List[T], adder: Any) -> T2:
    acc : T2 = adder.GetZero()
    for i in range(0, (len(array) - 1) + 1, 1):
        acc = adder.Add(acc, projection(array[i]))
    return acc


def max_by(projection: Callable[[a], b], xs: List[a], comparer: Any) -> a:
    return reduce(lambda x, y=None, projection=projection, xs=xs, comparer=comparer: y if (comparer.Compare(projection(y), projection(x)) > 0) else (x), xs)


def max(xs: List[a], comparer: Any) -> a:
    return reduce(lambda x, y=None, xs=xs, comparer=comparer: y if (comparer.Compare(y, x) > 0) else (x), xs)


def min_by(projection: Callable[[a], b], xs: List[a], comparer: Any) -> a:
    return reduce(lambda x, y=None, projection=projection, xs=xs, comparer=comparer: x if (comparer.Compare(projection(y), projection(x)) > 0) else (y), xs)


def min(xs: List[a], comparer: Any) -> a:
    return reduce(lambda x, y=None, xs=xs, comparer=comparer: x if (comparer.Compare(y, x) > 0) else (y), xs)


def average(array: List[T], averager: Any) -> T:
    if len(array) == 0:
        raise Exception("The input array was empty\\nParameter name: array")
    
    total : T = averager.GetZero()
    for i in range(0, (len(array) - 1) + 1, 1):
        total = averager.Add(total, array[i])
    return averager.DivideByInt(total, len(array))


def average_by(projection: Callable[[T], T2], array: List[T], averager: Any) -> T2:
    if len(array) == 0:
        raise Exception("The input array was empty\\nParameter name: array")
    
    total : T2 = averager.GetZero()
    for i in range(0, (len(array) - 1) + 1, 1):
        total = averager.Add(total, projection(array[i]))
    return averager.DivideByInt(total, len(array))


def windowed(window_size: int, source: List[T]) -> List[List[T]]:
    if window_size <= 0:
        raise Exception("windowSize must be positive")
    
    res = None
    len_1 : int = max_1(lambda x, y, window_size=window_size, source=source: compare_primitives(x, y), 0, len(source) - window_size) or 0
    res = [None]*len_1
    for i in range(window_size, len(source) + 1, 1):
        res[i - window_size] = source[i - window_size:(i - 1) + 1]
    return res


def split_into(chunks: int, array: List[T]) -> List[List[T]]:
    if chunks < 1:
        raise Exception("The input must be positive.\\nParameter name: chunks")
    
    if len(array) == 0:
        return [[]]
    
    else: 
        result : List[List[T]] = []
        chunks_1 : int = min_1(lambda x, y, chunks=chunks, array=array: compare_primitives(x, y), chunks, len(array)) or 0
        min_chunk_size : int = (len(array) // chunks_1) or 0
        chunks_with_extra_item : int = (len(array) % chunks_1) or 0
        for i in range(0, (chunks_1 - 1) + 1, 1):
            chunk_size : int = (min_chunk_size + 1 if (i < chunks_with_extra_item) else (min_chunk_size)) or 0
            start : int = ((i * min_chunk_size) + min_1(lambda x_1, y_1, chunks=chunks, array=array: compare_primitives(x_1, y_1), chunks_with_extra_item, i)) or 0
            ignore(result.append(array[start:start+chunk_size]))
        return result
    


def transpose(arrays: Any, cons: Any) -> List[List[T]]:
    arrays_1 : List[List[T]] = arrays if (isinstance(arrays, list)) else (list(arrays))
    len_1 : int = len(arrays_1) or 0
    if len_1 == 0:
        return [None]*0
    
    else: 
        len_inner : int = len(arrays_1[0]) or 0
        if not for_all(lambda a, arrays=arrays, cons=cons: len(a) == len_inner, arrays_1):
            different_lengths()
        
        result : List[List[T]] = [None]*len_inner
        for i in range(0, (len_inner - 1) + 1, 1):
            result[i] = Helpers_allocateArrayFromCons(cons, len_1)
            for j in range(0, (len_1 - 1) + 1, 1):
                result[i][j] = arrays_1[j][i]
        return result
    


def insert_at(index: int, y: T, xs: List[T]) -> List[T]:
    len_1 : int = len(xs) or 0
    if True if (index < 0) else (index > len_1):
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    target : List[T] = [x for i, x in enumerate(xs) if i < (len_1 + 1)]
    for i in range(0, (index - 1) + 1, 1):
        target[i] = xs[i]
    target[index] = y
    for i_1 in range(index, (len_1 - 1) + 1, 1):
        target[i_1 + 1] = xs[i_1]
    return target


def insert_many_at(index: int, ys: Any, xs: List[T]) -> List[T]:
    len_1 : int = len(xs) or 0
    if True if (index < 0) else (index > len_1):
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    ys_1 : List[T] = list(ys)
    len2 : int = len(ys_1) or 0
    target : List[T] = [x for i, x in enumerate(xs) if i < (len_1 + len2)]
    for i in range(0, (index - 1) + 1, 1):
        target[i] = xs[i]
    for i_1 in range(0, (len2 - 1) + 1, 1):
        target[index + i_1] = ys_1[i_1]
    for i_2 in range(index, (len_1 - 1) + 1, 1):
        target[i_2 + len2] = xs[i_2]
    return target


def remove_at(index: int, xs: List[T]) -> List[T]:
    if True if (index < 0) else (index >= len(xs)):
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    i : int = -1
    def predicate(_arg1: Any=None, index=index, xs=xs) -> bool:
        nonlocal i
        i = (i + 1) or 0
        return i != index
    
    return filter(predicate, xs)


def remove_many_at(index: int, count: int, xs: List[T]) -> List[T]:
    i : int = -1
    status : int = -1
    def predicate(_arg1: Any=None, index=index, count=count, xs=xs) -> bool:
        nonlocal i, status
        i = (i + 1) or 0
        if i == index:
            status = 0
            return False
        
        elif i > index:
            if i < (index + count):
                return False
            
            else: 
                status = 1
                return True
            
        
        else: 
            return True
        
    
    ys : List[T] = filter(predicate, xs)
    status_1 : int = (1 if ((i + 1) == (index + count) if (status == 0) else (False)) else (status)) or 0
    if status_1 < 1:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + ("index" if (status_1 < 0) else ("count")))
    
    return ys


def update_at(index: int, y: T, xs: List[T]) -> List[T]:
    len_1 : int = len(xs) or 0
    if True if (index < 0) else (index >= len_1):
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    target : List[T] = [x for i, x in enumerate(xs) if i < len_1]
    for i in range(0, (len_1 - 1) + 1, 1):
        target[i] = y if (i == index) else (xs[i])
    return target


