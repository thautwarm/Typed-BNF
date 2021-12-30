from typing import (Any, TypeVar, Callable, List, Tuple)
from .list import FSharpList
from .map_util import (add_to_set, try_get_value, get_item_from_dict, add_to_dict)
from .mutable_map import Dictionary
from .mutable_set import HashSet
from .seq import (delay, filter, map, to_array, to_list)
from .types import FSharpRef
from .util import get_enumerator

T = TypeVar("T")

Key = TypeVar("Key")

def distinct(xs: Any, comparer: Any) -> Any:
    def arrow_9(xs=xs, comparer=comparer) -> Any:
        hash_set : Any = HashSet([], comparer)
        return filter(lambda x=None: add_to_set(x, hash_set), xs)
    
    return delay(arrow_9)


def distinct_by(projection: Callable[[T], Key], xs: Any, comparer: Any) -> Any:
    def arrow_10(projection=projection, xs=xs, comparer=comparer) -> Any:
        hash_set : Any = HashSet([], comparer)
        return filter(lambda x=None: add_to_set(projection(x), hash_set), xs)
    
    return delay(arrow_10)


def except_(items_to_exclude: Any, xs: Any, comparer: Any) -> Any:
    def arrow_13(items_to_exclude=items_to_exclude, xs=xs, comparer=comparer) -> Any:
        hash_set : Any = HashSet(items_to_exclude, comparer)
        return filter(lambda x=None: add_to_set(x, hash_set), xs)
    
    return delay(arrow_13)


def count_by(projection: Callable[[T], Key], xs: Any, comparer: Any) -> Any:
    def arrow_19(projection=projection, xs=xs, comparer=comparer) -> Any:
        dict_1 : Any = Dictionary([], comparer)
        keys : List[Key] = []
        with get_enumerator(xs) as enumerator:
            while enumerator.System_Collections_IEnumerator_MoveNext():
                key : Key = projection(enumerator.System_Collections_Generic_IEnumerator_00601_get_Current())
                match_value = None
                out_arg : int = 0
                def arrow_15(v: int) -> None:
                    nonlocal out_arg
                    out_arg = v or 0
                
                match_value = (try_get_value(dict_1, key, FSharpRef(lambda _unit=None: out_arg, arrow_15)), out_arg)
                if match_value[0]:
                    dict_1[key] = match_value[1] + 1
                
                else: 
                    dict_1[key] = 1
                    (keys.append(key))
                
        return map(lambda key_1=None: (key_1, get_item_from_dict(dict_1, key_1)), keys)
    
    return delay(arrow_19)


def group_by(projection: Callable[[T], Key], xs: Any, comparer: Any) -> Any:
    def arrow_21(projection=projection, xs=xs, comparer=comparer) -> Any:
        dict_1 : Any = Dictionary([], comparer)
        keys : List[Key] = []
        with get_enumerator(xs) as enumerator:
            while enumerator.System_Collections_IEnumerator_MoveNext():
                x : T = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
                key : Key = projection(x)
                match_value = None
                out_arg : List[T] = None
                def arrow_20(v: List[T]) -> None:
                    nonlocal out_arg
                    out_arg = v
                
                match_value = (try_get_value(dict_1, key, FSharpRef(lambda _unit=None: out_arg, arrow_20)), out_arg)
                if match_value[0]:
                    (match_value[1].append(x))
                
                else: 
                    add_to_dict(dict_1, key, [x])
                    (keys.append(key))
                
        return map(lambda key_1=None: (key_1, get_item_from_dict(dict_1, key_1)), keys)
    
    return delay(arrow_21)


def Array_distinct(xs: List[T], comparer: Any) -> List[T]:
    return to_array(distinct(xs, comparer))


def Array_distinctBy(projection: Callable[[T], Key], xs: List[T], comparer: Any) -> List[T]:
    return to_array(distinct_by(projection, xs, comparer))


def Array_except(items_to_exclude: Any, xs: List[T], comparer: Any) -> List[T]:
    return to_array(except_(items_to_exclude, xs, comparer))


def Array_countBy(projection: Callable[[T], Key], xs: List[T], comparer: Any) -> List[Tuple[Key, int]]:
    return to_array(count_by(projection, xs, comparer))


def Array_groupBy(projection: Callable[[T], Key], xs: List[T], comparer: Any) -> List[Tuple[Key, List[T]]]:
    return to_array(map(lambda tupled_arg, projection=projection, xs=xs, comparer=comparer: (tupled_arg[0], to_array(tupled_arg[1])), group_by(projection, xs, comparer)))


def List_distinct(xs: FSharpList[T], comparer: Any) -> FSharpList[T]:
    return to_list(distinct(xs, comparer))


def List_distinctBy(projection: Callable[[T], Key], xs: FSharpList[T], comparer: Any) -> FSharpList[T]:
    return to_list(distinct_by(projection, xs, comparer))


def List_except(items_to_exclude: Any, xs: FSharpList[T], comparer: Any) -> FSharpList[T]:
    return to_list(except_(items_to_exclude, xs, comparer))


def List_countBy(projection: Callable[[T], Key], xs: FSharpList[T], comparer: Any) -> FSharpList[Tuple[Key, int]]:
    return to_list(count_by(projection, xs, comparer))


def List_groupBy(projection: Callable[[T], Key], xs: FSharpList[T], comparer: Any) -> FSharpList[Tuple[Key, FSharpList[T]]]:
    return to_list(map(lambda tupled_arg, projection=projection, xs=xs, comparer=comparer: (tupled_arg[0], to_list(tupled_arg[1])), group_by(projection, xs, comparer)))


