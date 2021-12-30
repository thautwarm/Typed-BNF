from __future__ import annotations
from typing import (TypeVar, Optional, Tuple, Callable, Any, Generic, List)
from .array import (fill, fold_back as fold_back_1, fold_back2 as fold_back2_1, iterate as iterate_1, scan_back as scan_back_1, try_find_back as try_find_back_1, try_find_index_back as try_find_index_back_1, permute as permute_1, map as map_1, chunk_by_size as chunk_by_size_1, pairwise as pairwise_1, windowed as windowed_1, split_into as split_into_1, transpose as transpose_1)
from .global_ import (SR_inputWasEmpty, SR_indexOutOfBounds, SR_keyNotFoundAlt, SR_differentLengths, SR_notEnoughElements, SR_inputMustBeNonNegative, SR_inputSequenceEmpty, SR_inputSequenceTooLong)
from .option import (some, value as value_1, default_arg)
from .reflection import (TypeInfo, option_type, record_type, class_type)
from .string import join
from .types import Record
from .util import (equals, structural_hash, compare, to_iterator, get_enumerator, IDisposable, ignore, is_array_like, uncurry)

T = TypeVar("T")

_50335_ = TypeVar("_50335_")

_50334_ = TypeVar("_50334_")

_50394_ = TypeVar("_50394_")

_50393_ = TypeVar("_50393_")

T_1 = TypeVar("T_1")

_50282_ = TypeVar("_50282_")

_50281_ = TypeVar("_50281_")

_50308_ = TypeVar("_50308_")

_50307_ = TypeVar("_50307_")

a_ = TypeVar("a_")

State = TypeVar("State")

T1 = TypeVar("T1")

T2 = TypeVar("T2")

b_ = TypeVar("b_")

U = TypeVar("U")

T3 = TypeVar("T3")

Result = TypeVar("Result")

c_ = TypeVar("c_")

def expr_78(gen0) -> TypeInfo:
    return record_type("ListModule.FSharpList", [gen0], FSharpList, lambda: [["head", gen0], ["tail", option_type(FSharpList_reflection(gen0))]])


class FSharpList(Record, Generic[T]):
    def __init__(self, head: T, tail: Optional[FSharpList[T]]) -> None:
        super().__init__()
        self.head = head
        self.tail = tail
    
    def __str__(self) -> str:
        xs : FSharpList[T] = self
        return ("[" + join("; ", xs)) + "]"
    
    def __eq__(self, other: Any) -> bool:
        xs : FSharpList[T] = self
        if xs is other:
            return True
        
        else: 
            def loop(xs_1_mut: FSharpList[_50335_], ys_1_mut: FSharpList[_50335_]) -> bool:
                while True:
                    (xs_1, ys_1) = (xs_1_mut, ys_1_mut)
                    match_value : Tuple[Optional[FSharpList[_50335_]], Optional[FSharpList[_50335_]]] = (xs_1.tail, ys_1.tail)
                    if match_value[0] is not None:
                        if match_value[1] is not None:
                            xt : FSharpList[_50335_] = match_value[0]
                            yt : FSharpList[_50335_] = match_value[1]
                            if equals(xs_1.head, ys_1.head):
                                xs_1_mut = xt
                                ys_1_mut = yt
                                continue
                            
                            else: 
                                return False
                            
                        
                        else: 
                            return False
                        
                    
                    elif match_value[1] is not None:
                        return False
                    
                    else: 
                        return True
                    
                    break
            
            loop : Callable[[FSharpList[_50334_], FSharpList[_50334_]], bool] = loop
            return loop(xs, other)
        
    
    def GetHashCode(self) -> int:
        xs : FSharpList[T] = self
        def loop(i_mut: int, h_mut: int, xs_1_mut: FSharpList[Any]) -> int:
            while True:
                (i, h, xs_1) = (i_mut, h_mut, xs_1_mut)
                match_value : Optional[FSharpList[T]] = xs_1.tail
                if match_value is not None:
                    t : FSharpList[T] = match_value
                    if i > 18:
                        return h
                    
                    else: 
                        i_mut = i + 1
                        h_mut = ((h << 1) + structural_hash(xs_1.head)) + (631 * i)
                        xs_1_mut = t
                        continue
                    
                
                else: 
                    return h
                
                break
        
        return loop(0, 0, xs)
    
    def to_json(self, _key: str) -> Any:
        this : FSharpList[T] = self
        return list(this)
    
    def CompareTo(self, other: Any) -> int:
        xs : FSharpList[T] = self
        def loop(xs_1_mut: FSharpList[_50394_], ys_1_mut: FSharpList[_50394_]) -> int:
            while True:
                (xs_1, ys_1) = (xs_1_mut, ys_1_mut)
                match_value : Tuple[Optional[FSharpList[_50394_]], Optional[FSharpList[_50394_]]] = (xs_1.tail, ys_1.tail)
                if match_value[0] is not None:
                    if match_value[1] is not None:
                        xt : FSharpList[_50394_] = match_value[0]
                        yt : FSharpList[_50394_] = match_value[1]
                        c : int = compare(xs_1.head, ys_1.head) or 0
                        if c == 0:
                            xs_1_mut = xt
                            ys_1_mut = yt
                            continue
                        
                        else: 
                            return c
                        
                    
                    else: 
                        return 1
                    
                
                elif match_value[1] is not None:
                    return -1
                
                else: 
                    return 0
                
                break
        
        return loop(xs, other)
    
    def GetEnumerator(self) -> Any:
        xs : FSharpList[T] = self
        return ListEnumerator_1__ctor_3002E699(xs)
    
    def __iter__(self) -> Any:
        return to_iterator(self.GetEnumerator())
    
    def System_Collections_IEnumerable_GetEnumerator(self) -> Any:
        xs : FSharpList[T] = self
        return get_enumerator(xs)
    

FSharpList_reflection = expr_78

def expr_80(gen0) -> TypeInfo:
    return class_type("ListModule.ListEnumerator`1", [gen0], ListEnumerator_1)


class ListEnumerator_1(IDisposable, Generic[T_1]):
    def __init__(self, xs: FSharpList[Any]=None) -> None:
        self.xs = xs
        self.it = self.xs
        self.current = None
    
    def System_Collections_Generic_IEnumerator_00601_get_Current(self) -> Any:
        __ : ListEnumerator_1[T] = self
        return __.current
    
    def System_Collections_IEnumerator_get_Current(self) -> Any:
        __ : ListEnumerator_1[T] = self
        return __.current
    
    def System_Collections_IEnumerator_MoveNext(self) -> bool:
        __ : ListEnumerator_1[T] = self
        match_value : Optional[FSharpList[T]] = __.it.tail
        if match_value is not None:
            t : FSharpList[T] = match_value
            __.current = __.it.head
            __.it = t
            return True
        
        else: 
            return False
        
    
    def System_Collections_IEnumerator_Reset(self) -> None:
        __ : ListEnumerator_1[T] = self
        __.it = __.xs
        __.current = None
    
    def Dispose(self) -> None:
        pass
    

ListEnumerator_1_reflection = expr_80

def ListEnumerator_1__ctor_3002E699(xs: FSharpList[Any]) -> ListEnumerator_1[T]:
    return ListEnumerator_1(xs)


def FSharpList_get_Empty() -> FSharpList[Any]:
    return FSharpList(None, None)


def FSharpList_Cons_305B8EAC(x: T, xs: FSharpList[T]) -> FSharpList[T]:
    return FSharpList(x, xs)


def FSharpList__get_IsEmpty(xs: FSharpList[Any]) -> bool:
    return xs.tail is None


def FSharpList__get_Length(xs: FSharpList[Any]) -> int:
    def loop(i_mut: int, xs_1_mut: FSharpList[Any], xs=xs) -> int:
        while True:
            (i, xs_1) = (i_mut, xs_1_mut)
            match_value : Optional[FSharpList[_50282_]] = xs_1.tail
            if match_value is not None:
                i_mut = i + 1
                xs_1_mut = match_value
                continue
            
            else: 
                return i
            
            break
    
    return loop(0, xs)


def FSharpList__get_Head(xs: FSharpList[T]) -> T:
    match_value : Optional[FSharpList[T]] = xs.tail
    if match_value is not None:
        return xs.head
    
    else: 
        raise Exception((SR_inputWasEmpty + "\\nParameter name: ") + "list")
    


def FSharpList__get_Tail(xs: FSharpList[T]) -> FSharpList[T]:
    match_value : Optional[FSharpList[T]] = xs.tail
    if match_value is not None:
        return match_value
    
    else: 
        raise Exception((SR_inputWasEmpty + "\\nParameter name: ") + "list")
    


def FSharpList__get_Item_Z524259A4(xs: FSharpList[T], index: int) -> T:
    def loop(i_mut: int, xs_1_mut: FSharpList[_50308_], xs=xs, index=index) -> _50308_:
        while True:
            (i, xs_1) = (i_mut, xs_1_mut)
            match_value : Optional[FSharpList[_50308_]] = xs_1.tail
            if match_value is not None:
                if i == index:
                    return xs_1.head
                
                else: 
                    i_mut = i + 1
                    xs_1_mut = match_value
                    continue
                
            
            else: 
                raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
            
            break
    
    return loop(0, xs)


def empty() -> FSharpList[Any]:
    return FSharpList_get_Empty()


def cons(x: T, xs: FSharpList[T]) -> FSharpList[T]:
    return FSharpList_Cons_305B8EAC(x, xs)


def singleton(x: a_=None) -> FSharpList[a_]:
    return FSharpList_Cons_305B8EAC(x, FSharpList_get_Empty())


def is_empty(xs: FSharpList[Any]) -> bool:
    return FSharpList__get_IsEmpty(xs)


def length(xs: FSharpList[Any]) -> int:
    return FSharpList__get_Length(xs)


def head(xs: FSharpList[T]) -> T:
    return FSharpList__get_Head(xs)


def try_head(xs: FSharpList[T]) -> Optional[T]:
    if FSharpList__get_IsEmpty(xs):
        return None
    
    else: 
        return some(FSharpList__get_Head(xs))
    


def tail(xs: FSharpList[T]) -> FSharpList[T]:
    return FSharpList__get_Tail(xs)


def try_last(xs_mut: FSharpList[T]) -> Optional[T]:
    while True:
        (xs,) = (xs_mut,)
        if FSharpList__get_IsEmpty(xs):
            return None
        
        else: 
            t : FSharpList[T] = FSharpList__get_Tail(xs)
            if FSharpList__get_IsEmpty(t):
                return some(FSharpList__get_Head(xs))
            
            else: 
                xs_mut = t
                continue
            
        
        break


def last(xs: FSharpList[T]) -> T:
    match_value : Optional[T] = try_last(xs)
    if match_value is None:
        raise Exception(SR_inputWasEmpty)
    
    else: 
        return value_1(match_value)
    


def compare_with(comparer: Callable[[T, T], int], xs: FSharpList[T], ys: FSharpList[T]) -> int:
    def loop(xs_1_mut: FSharpList[T], ys_1_mut: FSharpList[T], comparer=comparer, xs=xs, ys=ys) -> int:
        while True:
            (xs_1, ys_1) = (xs_1_mut, ys_1_mut)
            match_value : Tuple[bool, bool] = (FSharpList__get_IsEmpty(xs_1), FSharpList__get_IsEmpty(ys_1))
            if match_value[0]:
                if match_value[1]:
                    return 0
                
                else: 
                    return -1
                
            
            elif match_value[1]:
                return 1
            
            else: 
                c : int = comparer(FSharpList__get_Head(xs_1), FSharpList__get_Head(ys_1)) or 0
                if c == 0:
                    xs_1_mut = FSharpList__get_Tail(xs_1)
                    ys_1_mut = FSharpList__get_Tail(ys_1)
                    continue
                
                else: 
                    return c
                
            
            break
    
    return loop(xs, ys)


def to_array(xs: FSharpList[T]) -> List[T]:
    len_1 : int = FSharpList__get_Length(xs) or 0
    res : List[T] = fill([0] * len_1, 0, len_1, None)
    def loop(i_mut: int, xs_1_mut: FSharpList[Any], xs=xs) -> None:
        while True:
            (i, xs_1) = (i_mut, xs_1_mut)
            if not FSharpList__get_IsEmpty(xs_1):
                res[i] = FSharpList__get_Head(xs_1)
                i_mut = i + 1
                xs_1_mut = FSharpList__get_Tail(xs_1)
                continue
            
            break
    
    loop(0, xs)
    return res


def fold(folder: Callable[[State, T], State], state: State, xs: FSharpList[T]) -> State:
    acc : State = state
    xs_1 : FSharpList[T] = xs
    while not FSharpList__get_IsEmpty(xs_1):
        acc = folder(acc, FSharpList__get_Head(xs_1))
        xs_1 = FSharpList__get_Tail(xs_1)
    return acc


def reverse(xs: FSharpList[T]) -> FSharpList[T]:
    return fold(lambda acc, x=None, xs=xs: FSharpList_Cons_305B8EAC(x, acc), FSharpList_get_Empty(), xs)


def fold_back(folder: Callable[[T, State], State], xs: FSharpList[T], state: State=None) -> State:
    return fold_back_1(folder, to_array(xs), state)


def fold_indexed(folder: Callable[[int, State, T], State], state: State, xs: FSharpList[T]) -> State:
    def loop(i_mut: int, acc_mut: State, xs_1_mut: FSharpList[Any], folder=folder, state=state, xs=xs) -> State:
        while True:
            (i, acc, xs_1) = (i_mut, acc_mut, xs_1_mut)
            if FSharpList__get_IsEmpty(xs_1):
                return acc
            
            else: 
                i_mut = i + 1
                acc_mut = folder(i, acc, FSharpList__get_Head(xs_1))
                xs_1_mut = FSharpList__get_Tail(xs_1)
                continue
            
            break
    
    return loop(0, state, xs)


def fold2(folder: Callable[[State, T1, T2], State], state: State, xs: FSharpList[T1], ys: FSharpList[T2]) -> State:
    acc : State = state
    xs_1 : FSharpList[T1] = xs
    ys_1 : FSharpList[T2] = ys
    while not FSharpList__get_IsEmpty(ys_1) if (not FSharpList__get_IsEmpty(xs_1)) else (False):
        acc = folder(acc, FSharpList__get_Head(xs_1), FSharpList__get_Head(ys_1))
        xs_1 = FSharpList__get_Tail(xs_1)
        ys_1 = FSharpList__get_Tail(ys_1)
    return acc


def fold_back2(folder: Callable[[T1, T2, State], State], xs: FSharpList[T1], ys: FSharpList[T2], state: State=None) -> State:
    return fold_back2_1(folder, to_array(xs), to_array(ys), state)


def unfold(gen: Callable[[State], Optional[Tuple[T, State]]], state: State=None) -> FSharpList[T]:
    def loop(acc_mut: Any, node_mut: FSharpList[T], gen=gen, state=state) -> FSharpList[T]:
        while True:
            (acc, node) = (acc_mut, node_mut)
            match_value : Optional[Tuple[T, State]] = gen(acc)
            if match_value is not None:
                acc_mut = match_value[1]
                def arrow_86(acc=acc, node=node) -> FSharpList[Any]:
                    t : FSharpList[T] = FSharpList(match_value[0], None)
                    node.tail = t
                    return t
                
                node_mut = arrow_86()
                continue
            
            else: 
                return node
            
            break
    
    root : FSharpList[T] = FSharpList_get_Empty()
    node_1 : FSharpList[T] = loop(state, root)
    t_2 : FSharpList[T] = FSharpList_get_Empty()
    node_1.tail = t_2
    return FSharpList__get_Tail(root)


def iterate(action: Callable[[a_], None], xs: FSharpList[a_]) -> None:
    def arrow_90(unit_var0: None, x: Any=None, action=action, xs=xs) -> None:
        action(x)
    
    fold(arrow_90, None, xs)


def iterate2(action: Callable[[a_, b_], None], xs: FSharpList[a_], ys: FSharpList[b_]) -> None:
    def arrow_91(unit_var0: None, x: Any, y: Any=None, action=action, xs=xs, ys=ys) -> None:
        action(x, y)
    
    fold2(arrow_91, None, xs, ys)


def iterate_indexed(action: Callable[[int, a_], None], xs: FSharpList[a_]) -> None:
    def arrow_94(i: int, x: Any=None, action=action, xs=xs) -> int:
        action(i, x)
        return i + 1
    
    ignore(fold(arrow_94, 0, xs))


def iterate_indexed2(action: Callable[[int, a_, b_], None], xs: FSharpList[a_], ys: FSharpList[b_]) -> None:
    def arrow_95(i: int, x: Any, y: Any=None, action=action, xs=xs, ys=ys) -> int:
        action(i, x, y)
        return i + 1
    
    ignore(fold2(arrow_95, 0, xs, ys))


def to_seq(xs: FSharpList[T]) -> Any:
    return xs


def of_array_with_tail(xs: List[T], tail_1: FSharpList[T]) -> FSharpList[T]:
    res : FSharpList[T] = tail_1
    for i in range(len(xs) - 1, 0 - 1, -1):
        res = FSharpList_Cons_305B8EAC(xs[i], res)
    return res


def of_array(xs: List[T]) -> FSharpList[T]:
    return of_array_with_tail(xs, FSharpList_get_Empty())


def of_seq(xs: Any) -> FSharpList[T]:
    if is_array_like(xs):
        return of_array(xs)
    
    elif isinstance(xs, FSharpList):
        return xs
    
    else: 
        root : FSharpList[T] = FSharpList_get_Empty()
        node : FSharpList[T] = root
        with get_enumerator(xs) as enumerator:
            while enumerator.System_Collections_IEnumerator_MoveNext():
                x : T = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
                def arrow_99(xs=xs) -> FSharpList[Any]:
                    xs_3 : FSharpList[T] = node
                    def arrow_98(_unit=None) -> FSharpList[Any]:
                        t : FSharpList[T] = FSharpList(x, None)
                        xs_3.tail = t
                        return t
                    
                    return arrow_98()
                
                node = arrow_99()
        xs_5 : FSharpList[T] = node
        t_2 : FSharpList[T] = FSharpList_get_Empty()
        xs_5.tail = t_2
        return FSharpList__get_Tail(root)
    


def concat(lists: Any) -> FSharpList[T]:
    root : FSharpList[T] = FSharpList_get_Empty()
    node : FSharpList[T] = root
    def action(xs: FSharpList[Any], lists=lists) -> None:
        nonlocal node
        def arrow_101(acc: FSharpList[T], x: T=None, xs=xs) -> FSharpList[T]:
            def arrow_100(_unit=None) -> FSharpList[Any]:
                t : FSharpList[T] = FSharpList(x, None)
                acc.tail = t
                return t
            
            return arrow_100()
        
        node = fold(arrow_101, node, xs)
    
    if is_array_like(lists):
        iterate_1(action, lists)
    
    elif isinstance(lists, FSharpList):
        iterate(action, lists)
    
    else: 
        with get_enumerator(lists) as enumerator:
            while enumerator.System_Collections_IEnumerator_MoveNext():
                action(enumerator.System_Collections_Generic_IEnumerator_00601_get_Current())
    
    xs_6 : FSharpList[T] = node
    t_2 : FSharpList[T] = FSharpList_get_Empty()
    xs_6.tail = t_2
    return FSharpList__get_Tail(root)


def scan(folder: Callable[[State, T], State], state: State, xs: FSharpList[T]) -> FSharpList[State]:
    root : FSharpList[State] = FSharpList_get_Empty()
    def arrow_102(folder=folder, state=state, xs=xs) -> FSharpList[Any]:
        t : FSharpList[T] = FSharpList(state, None)
        root.tail = t
        return t
    
    node : FSharpList[State] = arrow_102()
    acc : State = state
    xs_3 : FSharpList[T] = xs
    while not FSharpList__get_IsEmpty(xs_3):
        acc = folder(acc, FSharpList__get_Head(xs_3))
        def arrow_104(folder=folder, state=state, xs=xs) -> FSharpList[Any]:
            xs_4 : FSharpList[State] = node
            def arrow_103(_unit=None) -> FSharpList[Any]:
                t_2 : FSharpList[T] = FSharpList(acc, None)
                xs_4.tail = t_2
                return t_2
            
            return arrow_103()
        
        node = arrow_104()
        xs_3 = FSharpList__get_Tail(xs_3)
    xs_6 : FSharpList[State] = node
    t_4 : FSharpList[State] = FSharpList_get_Empty()
    xs_6.tail = t_4
    return FSharpList__get_Tail(root)


def scan_back(folder: Callable[[T, State], State], xs: FSharpList[T], state: State=None) -> FSharpList[State]:
    return of_array(scan_back_1(folder, to_array(xs), state, None))


def append(xs: FSharpList[T], ys: FSharpList[T]) -> FSharpList[T]:
    return fold(lambda acc, x=None, xs=xs, ys=ys: FSharpList_Cons_305B8EAC(x, acc), ys, reverse(xs))


def collect(mapping: Callable[[T], FSharpList[U]], xs: FSharpList[T]) -> FSharpList[U]:
    root : FSharpList[U] = FSharpList_get_Empty()
    node : FSharpList[U] = root
    ys : FSharpList[T] = xs
    while not FSharpList__get_IsEmpty(ys):
        zs : FSharpList[U] = mapping(FSharpList__get_Head(ys))
        while not FSharpList__get_IsEmpty(zs):
            def arrow_106(mapping=mapping, xs=xs) -> FSharpList[Any]:
                xs_1 : FSharpList[U] = node
                def arrow_105(_unit=None) -> FSharpList[Any]:
                    t : FSharpList[T] = FSharpList(FSharpList__get_Head(zs), None)
                    xs_1.tail = t
                    return t
                
                return arrow_105()
            
            node = arrow_106()
            zs = FSharpList__get_Tail(zs)
        ys = FSharpList__get_Tail(ys)
    xs_3 : FSharpList[U] = node
    t_2 : FSharpList[U] = FSharpList_get_Empty()
    xs_3.tail = t_2
    return FSharpList__get_Tail(root)


def map_indexed(mapping: Callable[[int, T], U], xs: FSharpList[T]) -> FSharpList[U]:
    root : FSharpList[U] = FSharpList_get_Empty()
    def folder(i: int, acc: FSharpList[U], x: Any=None, mapping=mapping, xs=xs) -> FSharpList[U]:
        def arrow_107(i=i, acc=acc, x=x) -> FSharpList[Any]:
            t : FSharpList[T] = FSharpList(mapping(i, x), None)
            acc.tail = t
            return t
        
        return arrow_107()
    
    node : FSharpList[U] = fold_indexed(folder, root, xs)
    t_2 : FSharpList[U] = FSharpList_get_Empty()
    node.tail = t_2
    return FSharpList__get_Tail(root)


def map(mapping: Callable[[T], U], xs: FSharpList[T]) -> FSharpList[U]:
    root : FSharpList[U] = FSharpList_get_Empty()
    def folder(acc: FSharpList[U], x: Any=None, mapping=mapping, xs=xs) -> FSharpList[U]:
        def arrow_108(acc=acc, x=x) -> FSharpList[Any]:
            t : FSharpList[T] = FSharpList(mapping(x), None)
            acc.tail = t
            return t
        
        return arrow_108()
    
    node : FSharpList[U] = fold(folder, root, xs)
    t_2 : FSharpList[U] = FSharpList_get_Empty()
    node.tail = t_2
    return FSharpList__get_Tail(root)


def indexed(xs: FSharpList[a_]) -> FSharpList[Tuple[int, a_]]:
    return map_indexed(lambda i, x=None, xs=xs: (i, x), xs)


def map2(mapping: Callable[[T1, T2], U], xs: FSharpList[T1], ys: FSharpList[T2]) -> FSharpList[U]:
    root : FSharpList[U] = FSharpList_get_Empty()
    def folder(acc: FSharpList[U], x: Any, y: Any=None, mapping=mapping, xs=xs, ys=ys) -> FSharpList[U]:
        def arrow_109(acc=acc, x=x, y=y) -> FSharpList[Any]:
            t : FSharpList[T] = FSharpList(mapping(x, y), None)
            acc.tail = t
            return t
        
        return arrow_109()
    
    node : FSharpList[U] = fold2(folder, root, xs, ys)
    t_2 : FSharpList[U] = FSharpList_get_Empty()
    node.tail = t_2
    return FSharpList__get_Tail(root)


def map_indexed2(mapping: Callable[[int, T1, T2], U], xs: FSharpList[T1], ys: FSharpList[T2]) -> FSharpList[U]:
    def loop(i_mut: int, acc_mut: FSharpList[U], xs_1_mut: FSharpList[Any], ys_1_mut: FSharpList[Any], mapping=mapping, xs=xs, ys=ys) -> FSharpList[U]:
        while True:
            (i, acc, xs_1, ys_1) = (i_mut, acc_mut, xs_1_mut, ys_1_mut)
            if True if (FSharpList__get_IsEmpty(xs_1)) else (FSharpList__get_IsEmpty(ys_1)):
                return acc
            
            else: 
                i_mut = i + 1
                def arrow_110(i=i, acc=acc, xs_1=xs_1, ys_1=ys_1) -> FSharpList[Any]:
                    t : FSharpList[T] = FSharpList(mapping(i, FSharpList__get_Head(xs_1), FSharpList__get_Head(ys_1)), None)
                    acc.tail = t
                    return t
                
                acc_mut = arrow_110()
                xs_1_mut = FSharpList__get_Tail(xs_1)
                ys_1_mut = FSharpList__get_Tail(ys_1)
                continue
            
            break
    
    root : FSharpList[U] = FSharpList_get_Empty()
    node_1 : FSharpList[U] = loop(0, root, xs, ys)
    t_2 : FSharpList[U] = FSharpList_get_Empty()
    node_1.tail = t_2
    return FSharpList__get_Tail(root)


def map3(mapping: Callable[[T1, T2, T3], U], xs: FSharpList[T1], ys: FSharpList[T2], zs: FSharpList[T3]) -> FSharpList[U]:
    def loop(acc_mut: FSharpList[U], xs_1_mut: FSharpList[Any], ys_1_mut: FSharpList[Any], zs_1_mut: FSharpList[Any], mapping=mapping, xs=xs, ys=ys, zs=zs) -> FSharpList[U]:
        while True:
            (acc, xs_1, ys_1, zs_1) = (acc_mut, xs_1_mut, ys_1_mut, zs_1_mut)
            if True if (True if (FSharpList__get_IsEmpty(xs_1)) else (FSharpList__get_IsEmpty(ys_1))) else (FSharpList__get_IsEmpty(zs_1)):
                return acc
            
            else: 
                def arrow_111(acc=acc, xs_1=xs_1, ys_1=ys_1, zs_1=zs_1) -> FSharpList[Any]:
                    t : FSharpList[T] = FSharpList(mapping(FSharpList__get_Head(xs_1), FSharpList__get_Head(ys_1), FSharpList__get_Head(zs_1)), None)
                    acc.tail = t
                    return t
                
                acc_mut = arrow_111()
                xs_1_mut = FSharpList__get_Tail(xs_1)
                ys_1_mut = FSharpList__get_Tail(ys_1)
                zs_1_mut = FSharpList__get_Tail(zs_1)
                continue
            
            break
    
    root : FSharpList[U] = FSharpList_get_Empty()
    node_1 : FSharpList[U] = loop(root, xs, ys, zs)
    t_2 : FSharpList[U] = FSharpList_get_Empty()
    node_1.tail = t_2
    return FSharpList__get_Tail(root)


def map_fold(mapping: Callable[[State, T], Tuple[Result, State]], state: State, xs: FSharpList[T]) -> Tuple[FSharpList[Result], State]:
    root : FSharpList[Result] = FSharpList_get_Empty()
    def folder(tupled_arg: Tuple[FSharpList[Result], State], x: Any=None, mapping=mapping, state=state, xs=xs) -> Tuple[FSharpList[Result], State]:
        pattern_input : Tuple[Result, State] = mapping(tupled_arg[1], x)
        def arrow_112(tupled_arg=tupled_arg, x=x) -> FSharpList[Any]:
            t : FSharpList[T] = FSharpList(pattern_input[0], None)
            tupled_arg[0].tail = t
            return t
        
        return (arrow_112(), pattern_input[1])
    
    pattern_input_1 : Tuple[FSharpList[Result], State] = fold(folder, (root, state), xs)
    t_2 : FSharpList[Result] = FSharpList_get_Empty()
    pattern_input_1[0].tail = t_2
    return (FSharpList__get_Tail(root), pattern_input_1[1])


def map_fold_back(mapping: Callable[[T, State], Tuple[Result, State]], xs: FSharpList[T], state: State=None) -> Tuple[FSharpList[Result], State]:
    return map_fold(lambda acc, x=None, mapping=mapping, xs=xs, state=state: mapping(x, acc), state, reverse(xs))


def try_pick(f: Callable[[T], Optional[a_]], xs: FSharpList[T]) -> Optional[a_]:
    def loop(xs_1_mut: FSharpList[Any], f=f, xs=xs) -> Optional[a_]:
        while True:
            (xs_1,) = (xs_1_mut,)
            if FSharpList__get_IsEmpty(xs_1):
                return None
            
            else: 
                match_value : Optional[a_] = f(FSharpList__get_Head(xs_1))
                if match_value is None:
                    xs_1_mut = FSharpList__get_Tail(xs_1)
                    continue
                
                else: 
                    return match_value
                
            
            break
    
    return loop(xs)


def pick(f: Callable[[a_], Optional[b_]], xs: FSharpList[a_]) -> b_:
    match_value : Optional[b_] = try_pick(f, xs)
    if match_value is None:
        def arrow_113(f=f, xs=xs) -> Any:
            raise Exception(SR_keyNotFoundAlt)
        
        return arrow_113()
    
    else: 
        return value_1(match_value)
    


def try_find(f: Callable[[a_], bool], xs: FSharpList[a_]) -> Optional[a_]:
    return try_pick(lambda x=None, f=f, xs=xs: some(x) if (f(x)) else (None), xs)


def find(f: Callable[[a_], bool], xs: FSharpList[a_]) -> a_:
    match_value : Optional[a_] = try_find(f, xs)
    if match_value is None:
        def arrow_114(f=f, xs=xs) -> Any:
            raise Exception(SR_keyNotFoundAlt)
        
        return arrow_114()
    
    else: 
        return value_1(match_value)
    


def try_find_back(f: Callable[[a_], bool], xs: FSharpList[a_]) -> Optional[a_]:
    return try_find_back_1(f, to_array(xs))


def find_back(f: Callable[[a_], bool], xs: FSharpList[a_]) -> a_:
    match_value : Optional[a_] = try_find_back(f, xs)
    if match_value is None:
        def arrow_115(f=f, xs=xs) -> Any:
            raise Exception(SR_keyNotFoundAlt)
        
        return arrow_115()
    
    else: 
        return value_1(match_value)
    


def try_find_index(f: Callable[[T], bool], xs: FSharpList[T]) -> Optional[int]:
    def loop(i_mut: int, xs_1_mut: FSharpList[Any], f=f, xs=xs) -> Optional[int]:
        while True:
            (i, xs_1) = (i_mut, xs_1_mut)
            if FSharpList__get_IsEmpty(xs_1):
                return None
            
            elif f(FSharpList__get_Head(xs_1)):
                return i
            
            else: 
                i_mut = i + 1
                xs_1_mut = FSharpList__get_Tail(xs_1)
                continue
            
            break
    
    return loop(0, xs)


def find_index(f: Callable[[a_], bool], xs: FSharpList[a_]) -> int:
    match_value : Optional[int] = try_find_index(f, xs)
    if match_value is None:
        def arrow_116(f=f, xs=xs) -> int:
            raise Exception(SR_keyNotFoundAlt)
        
        return arrow_116()
    
    else: 
        return match_value
    


def try_find_index_back(f: Callable[[a_], bool], xs: FSharpList[a_]) -> Optional[int]:
    return try_find_index_back_1(f, to_array(xs))


def find_index_back(f: Callable[[a_], bool], xs: FSharpList[a_]) -> int:
    match_value : Optional[int] = try_find_index_back(f, xs)
    if match_value is None:
        def arrow_117(f=f, xs=xs) -> int:
            raise Exception(SR_keyNotFoundAlt)
        
        return arrow_117()
    
    else: 
        return match_value
    


def try_item(n: int, xs: FSharpList[T]) -> Optional[T]:
    def loop(i_mut: int, xs_1_mut: FSharpList[T], n=n, xs=xs) -> Optional[T]:
        while True:
            (i, xs_1) = (i_mut, xs_1_mut)
            if FSharpList__get_IsEmpty(xs_1):
                return None
            
            elif i == n:
                return some(FSharpList__get_Head(xs_1))
            
            else: 
                i_mut = i + 1
                xs_1_mut = FSharpList__get_Tail(xs_1)
                continue
            
            break
    
    return loop(0, xs)


def item(n: int, xs: FSharpList[T]) -> T:
    return FSharpList__get_Item_Z524259A4(xs, n)


def filter(f: Callable[[T], bool], xs: FSharpList[T]) -> FSharpList[T]:
    root : FSharpList[T] = FSharpList_get_Empty()
    def folder(acc: FSharpList[T], x: T=None, f=f, xs=xs) -> FSharpList[T]:
        if f(x):
            def arrow_118(acc=acc, x=x) -> FSharpList[Any]:
                t : FSharpList[T] = FSharpList(x, None)
                acc.tail = t
                return t
            
            return arrow_118()
        
        else: 
            return acc
        
    
    node : FSharpList[T] = fold(folder, root, xs)
    t_2 : FSharpList[T] = FSharpList_get_Empty()
    node.tail = t_2
    return FSharpList__get_Tail(root)


def partition(f: Callable[[T], bool], xs: FSharpList[T]) -> Tuple[FSharpList[T], FSharpList[T]]:
    pattern_input : Tuple[FSharpList[T], FSharpList[T]] = (FSharpList_get_Empty(), FSharpList_get_Empty())
    root2 : FSharpList[T] = pattern_input[1]
    root1 : FSharpList[T] = pattern_input[0]
    def folder(tupled_arg: Tuple[FSharpList[T], FSharpList[T]], f=f, xs=xs) -> Callable[[T], Tuple[FSharpList[T], FSharpList[T]]]:
        lacc : FSharpList[T] = tupled_arg[0]
        racc : FSharpList[T] = tupled_arg[1]
        def arrow_121(x: T=None, tupled_arg=tupled_arg) -> Tuple[FSharpList[T], FSharpList[T]]:
            def arrow_119(_unit=None) -> FSharpList[Any]:
                t : FSharpList[T] = FSharpList(x, None)
                lacc.tail = t
                return t
            
            def arrow_120(_unit=None) -> FSharpList[Any]:
                t_2 : FSharpList[T] = FSharpList(x, None)
                racc.tail = t_2
                return t_2
            
            return (arrow_119(), racc) if (f(x)) else ((lacc, arrow_120()))
        
        return arrow_121
    
    pattern_input_1 : Tuple[FSharpList[T], FSharpList[T]] = fold(uncurry(2, folder), (root1, root2), xs)
    t_4 : FSharpList[T] = FSharpList_get_Empty()
    pattern_input_1[0].tail = t_4
    t_5 : FSharpList[T] = FSharpList_get_Empty()
    pattern_input_1[1].tail = t_5
    return (FSharpList__get_Tail(root1), FSharpList__get_Tail(root2))


def choose(f: Callable[[T], Optional[T]], xs: FSharpList[T]) -> FSharpList[T]:
    root : FSharpList[T] = FSharpList_get_Empty()
    def folder(acc: FSharpList[T], x: T=None, f=f, xs=xs) -> FSharpList[T]:
        match_value : Optional[T] = f(x)
        if match_value is None:
            return acc
        
        else: 
            def arrow_122(acc=acc, x=x) -> FSharpList[Any]:
                t : FSharpList[T] = FSharpList(value_1(match_value), None)
                acc.tail = t
                return t
            
            return arrow_122()
        
    
    node : FSharpList[T] = fold(folder, root, xs)
    t_2 : FSharpList[T] = FSharpList_get_Empty()
    node.tail = t_2
    return FSharpList__get_Tail(root)


def contains(value: T, xs: FSharpList[T], eq: Any) -> bool:
    return try_find_index(lambda v=None, value=value, xs=xs, eq=eq: eq.Equals(value, v), xs) is not None


def initialize(n: int, f: Callable[[int], T]) -> FSharpList[T]:
    root : FSharpList[T] = FSharpList_get_Empty()
    node : FSharpList[T] = root
    for i in range(0, (n - 1) + 1, 1):
        def arrow_124(n=n, f=f) -> FSharpList[Any]:
            xs : FSharpList[T] = node
            def arrow_123(_unit=None) -> FSharpList[Any]:
                t : FSharpList[T] = FSharpList(f(i), None)
                xs.tail = t
                return t
            
            return arrow_123()
        
        node = arrow_124()
    xs_2 : FSharpList[T] = node
    t_2 : FSharpList[T] = FSharpList_get_Empty()
    xs_2.tail = t_2
    return FSharpList__get_Tail(root)


def replicate(n: int, x: a_=None) -> FSharpList[a_]:
    return initialize(n, lambda _arg1, n=n, x=x: x)


def reduce(f: Callable[[T, T], T], xs: FSharpList[T]) -> T:
    if FSharpList__get_IsEmpty(xs):
        raise Exception(SR_inputWasEmpty)
    
    else: 
        return fold(f, head(xs), tail(xs))
    


def reduce_back(f: Callable[[T, T], T], xs: FSharpList[T]) -> T:
    if FSharpList__get_IsEmpty(xs):
        raise Exception(SR_inputWasEmpty)
    
    else: 
        return fold_back(f, tail(xs), head(xs))
    


def for_all(f: Callable[[a_], bool], xs: FSharpList[a_]) -> bool:
    return fold(lambda acc, x=None, f=f, xs=xs: f(x) if (acc) else (False), True, xs)


def for_all2(f: Callable[[a_, b_], bool], xs: FSharpList[a_], ys: FSharpList[b_]) -> bool:
    return fold2(lambda acc, x, y=None, f=f, xs=xs, ys=ys: f(x, y) if (acc) else (False), True, xs, ys)


def exists(f: Callable[[a_], bool], xs: FSharpList[a_]) -> bool:
    return try_find_index(f, xs) is not None


def exists2(f_mut: Callable[[T1, T2], bool], xs_mut: FSharpList[T1], ys_mut: FSharpList[T2]) -> bool:
    while True:
        (f, xs, ys) = (f_mut, xs_mut, ys_mut)
        match_value : Tuple[bool, bool] = (FSharpList__get_IsEmpty(xs), FSharpList__get_IsEmpty(ys))
        (pattern_matching_result,) = (None,)
        if match_value[0]:
            if match_value[1]:
                pattern_matching_result = 0
            
            else: 
                pattern_matching_result = 2
            
        
        elif match_value[1]:
            pattern_matching_result = 2
        
        else: 
            pattern_matching_result = 1
        
        if pattern_matching_result == 0:
            return False
        
        elif pattern_matching_result == 1:
            if f(FSharpList__get_Head(xs), FSharpList__get_Head(ys)):
                return True
            
            else: 
                f_mut = f
                xs_mut = FSharpList__get_Tail(xs)
                ys_mut = FSharpList__get_Tail(ys)
                continue
            
        
        elif pattern_matching_result == 2:
            raise Exception((SR_differentLengths + "\\nParameter name: ") + "list2")
        
        break


def unzip(xs: FSharpList[Tuple[a_, b_]]) -> Tuple[FSharpList[a_], FSharpList[b_]]:
    return fold_back(lambda tupled_arg, tupled_arg_1, xs=xs: (FSharpList_Cons_305B8EAC(tupled_arg[0], tupled_arg_1[0]), FSharpList_Cons_305B8EAC(tupled_arg[1], tupled_arg_1[1])), xs, (FSharpList_get_Empty(), FSharpList_get_Empty()))


def unzip3(xs: FSharpList[Tuple[a_, b_, c_]]) -> Tuple[FSharpList[a_], FSharpList[b_], FSharpList[c_]]:
    return fold_back(lambda tupled_arg, tupled_arg_1, xs=xs: (FSharpList_Cons_305B8EAC(tupled_arg[0], tupled_arg_1[0]), FSharpList_Cons_305B8EAC(tupled_arg[1], tupled_arg_1[1]), FSharpList_Cons_305B8EAC(tupled_arg[2], tupled_arg_1[2])), xs, (FSharpList_get_Empty(), FSharpList_get_Empty(), FSharpList_get_Empty()))


def zip(xs: FSharpList[a_], ys: FSharpList[b_]) -> FSharpList[Tuple[a_, b_]]:
    return map2(lambda x, y=None, xs=xs, ys=ys: (x, y), xs, ys)


def zip3(xs: FSharpList[a_], ys: FSharpList[b_], zs: FSharpList[c_]) -> FSharpList[Tuple[a_, b_, c_]]:
    return map3(lambda x, y, z=None, xs=xs, ys=ys, zs=zs: (x, y, z), xs, ys, zs)


def sort_with(comparer: Callable[[T, T], int], xs: FSharpList[T]) -> FSharpList[T]:
    arr : List[T] = to_array(xs)
    arr.sort()
    return of_array(arr)


def sort(xs: FSharpList[T], comparer: Any) -> FSharpList[T]:
    return sort_with(lambda x, y=None, xs=xs, comparer=comparer: comparer.Compare(x, y), xs)


def sort_by(projection: Callable[[T], U], xs: FSharpList[T], comparer: Any) -> FSharpList[T]:
    return sort_with(lambda x, y=None, projection=projection, xs=xs, comparer=comparer: comparer.Compare(projection(x), projection(y)), xs)


def sort_descending(xs: FSharpList[T], comparer: Any) -> FSharpList[T]:
    return sort_with(lambda x, y=None, xs=xs, comparer=comparer: comparer.Compare(x, y) * -1, xs)


def sort_by_descending(projection: Callable[[T], U], xs: FSharpList[T], comparer: Any) -> FSharpList[T]:
    return sort_with(lambda x, y=None, projection=projection, xs=xs, comparer=comparer: comparer.Compare(projection(x), projection(y)) * -1, xs)


def sum(xs: FSharpList[T], adder: Any) -> T:
    return fold(lambda acc, x=None, xs=xs, adder=adder: adder.Add(acc, x), adder.GetZero(), xs)


def sum_by(f: Callable[[T], U], xs: FSharpList[T], adder: Any) -> U:
    return fold(lambda acc, x=None, f=f, xs=xs, adder=adder: adder.Add(acc, f(x)), adder.GetZero(), xs)


def max_by(projection: Callable[[T], U], xs: FSharpList[T], comparer: Any) -> T:
    return reduce(lambda x, y=None, projection=projection, xs=xs, comparer=comparer: y if (comparer.Compare(projection(y), projection(x)) > 0) else (x), xs)


def max(xs: FSharpList[T], comparer: Any) -> T:
    return reduce(lambda x, y=None, xs=xs, comparer=comparer: y if (comparer.Compare(y, x) > 0) else (x), xs)


def min_by(projection: Callable[[T], U], xs: FSharpList[T], comparer: Any) -> T:
    return reduce(lambda x, y=None, projection=projection, xs=xs, comparer=comparer: x if (comparer.Compare(projection(y), projection(x)) > 0) else (y), xs)


def min(xs: FSharpList[T], comparer: Any) -> T:
    return reduce(lambda x, y=None, xs=xs, comparer=comparer: x if (comparer.Compare(y, x) > 0) else (y), xs)


def average(xs: FSharpList[T], averager: Any) -> T:
    count : int = 0
    def folder(acc: T, x: T=None, xs=xs, averager=averager) -> T:
        nonlocal count
        count = (count + 1) or 0
        return averager.Add(acc, x)
    
    return averager.DivideByInt(fold(folder, averager.GetZero(), xs), count)


def average_by(f: Callable[[T], U], xs: FSharpList[T], averager: Any) -> U:
    count : int = 0
    def arrow_129(acc: U, x: Any=None, f=f, xs=xs, averager=averager) -> U:
        nonlocal count
        count = (count + 1) or 0
        return averager.Add(acc, f(x))
    
    return averager.DivideByInt(fold(arrow_129, averager.GetZero(), xs), count)


def permute(f: Callable[[int], int], xs: FSharpList[T]) -> FSharpList[T]:
    return of_array(permute_1(f, to_array(xs)))


def chunk_by_size(chunk_size: int, xs: FSharpList[T]) -> FSharpList[FSharpList[T]]:
    return of_array(map_1(lambda xs_1, chunk_size=chunk_size, xs=xs: of_array(xs_1), chunk_by_size_1(chunk_size, to_array(xs)), None))


def all_pairs(xs: FSharpList[T1], ys: FSharpList[T2]) -> FSharpList[Tuple[T1, T2]]:
    root : FSharpList[Tuple[T1, T2]] = FSharpList_get_Empty()
    node : FSharpList[Tuple[T1, T2]] = root
    def arrow_137(x: Any=None, xs=xs, ys=ys) -> None:
        def arrow_136(y: Any=None) -> None:
            nonlocal node
            def arrow_135(_unit=None) -> FSharpList[Tuple[T1, T2]]:
                xs_1 : FSharpList[Tuple[T1, T2]] = node
                def arrow_134(_unit=None) -> FSharpList[Any]:
                    t : FSharpList[T] = FSharpList((x, y), None)
                    xs_1.tail = t
                    return t
                
                return arrow_134()
            
            node = arrow_135()
        
        iterate(arrow_136, ys)
    
    iterate(arrow_137, xs)
    xs_3 : FSharpList[Tuple[T1, T2]] = node
    t_2 : FSharpList[Tuple[T1, T2]] = FSharpList_get_Empty()
    xs_3.tail = t_2
    return FSharpList__get_Tail(root)


def skip(count_mut: int, xs_mut: FSharpList[T]) -> FSharpList[T]:
    while True:
        (count, xs) = (count_mut, xs_mut)
        if count <= 0:
            return xs
        
        elif FSharpList__get_IsEmpty(xs):
            raise Exception((SR_notEnoughElements + "\\nParameter name: ") + "list")
        
        else: 
            count_mut = count - 1
            xs_mut = FSharpList__get_Tail(xs)
            continue
        
        break


def skip_while(predicate_mut: Callable[[T], bool], xs_mut: FSharpList[T]) -> FSharpList[T]:
    while True:
        (predicate, xs) = (predicate_mut, xs_mut)
        if FSharpList__get_IsEmpty(xs):
            return xs
        
        elif not predicate(FSharpList__get_Head(xs)):
            return xs
        
        else: 
            predicate_mut = predicate
            xs_mut = FSharpList__get_Tail(xs)
            continue
        
        break


def take(count: int, xs: FSharpList[T]) -> FSharpList[T]:
    if count < 0:
        raise Exception((SR_inputMustBeNonNegative + "\\nParameter name: ") + "count")
    
    def loop(i_mut: int, acc_mut: FSharpList[T], xs_1_mut: FSharpList[T], count=count, xs=xs) -> FSharpList[T]:
        while True:
            (i, acc, xs_1) = (i_mut, acc_mut, xs_1_mut)
            if i <= 0:
                return acc
            
            elif FSharpList__get_IsEmpty(xs_1):
                raise Exception((SR_notEnoughElements + "\\nParameter name: ") + "list")
            
            else: 
                i_mut = i - 1
                def arrow_140(i=i, acc=acc, xs_1=xs_1) -> FSharpList[Any]:
                    t : FSharpList[T] = FSharpList(FSharpList__get_Head(xs_1), None)
                    acc.tail = t
                    return t
                
                acc_mut = arrow_140()
                xs_1_mut = FSharpList__get_Tail(xs_1)
                continue
            
            break
    
    root : FSharpList[T] = FSharpList_get_Empty()
    node : FSharpList[T] = loop(count, root, xs)
    t_2 : FSharpList[T] = FSharpList_get_Empty()
    node.tail = t_2
    return FSharpList__get_Tail(root)


def take_while(predicate: Callable[[T], bool], xs: FSharpList[T]) -> FSharpList[T]:
    def loop(acc_mut: FSharpList[T], xs_1_mut: FSharpList[T], predicate=predicate, xs=xs) -> FSharpList[T]:
        while True:
            (acc, xs_1) = (acc_mut, xs_1_mut)
            if FSharpList__get_IsEmpty(xs_1):
                return acc
            
            elif not predicate(FSharpList__get_Head(xs_1)):
                return acc
            
            else: 
                def arrow_141(acc=acc, xs_1=xs_1) -> FSharpList[Any]:
                    t : FSharpList[T] = FSharpList(FSharpList__get_Head(xs_1), None)
                    acc.tail = t
                    return t
                
                acc_mut = arrow_141()
                xs_1_mut = FSharpList__get_Tail(xs_1)
                continue
            
            break
    
    root : FSharpList[T] = FSharpList_get_Empty()
    node : FSharpList[T] = loop(root, xs)
    t_2 : FSharpList[T] = FSharpList_get_Empty()
    node.tail = t_2
    return FSharpList__get_Tail(root)


def truncate(count: int, xs: FSharpList[T]) -> FSharpList[T]:
    def loop(i_mut: int, acc_mut: FSharpList[T], xs_1_mut: FSharpList[T], count=count, xs=xs) -> FSharpList[T]:
        while True:
            (i, acc, xs_1) = (i_mut, acc_mut, xs_1_mut)
            if i <= 0:
                return acc
            
            elif FSharpList__get_IsEmpty(xs_1):
                return acc
            
            else: 
                i_mut = i - 1
                def arrow_142(i=i, acc=acc, xs_1=xs_1) -> FSharpList[Any]:
                    t : FSharpList[T] = FSharpList(FSharpList__get_Head(xs_1), None)
                    acc.tail = t
                    return t
                
                acc_mut = arrow_142()
                xs_1_mut = FSharpList__get_Tail(xs_1)
                continue
            
            break
    
    root : FSharpList[T] = FSharpList_get_Empty()
    node : FSharpList[T] = loop(count, root, xs)
    t_2 : FSharpList[T] = FSharpList_get_Empty()
    node.tail = t_2
    return FSharpList__get_Tail(root)


def get_slice(start_index: Optional[int], end_index: Optional[int], xs: FSharpList[T]) -> FSharpList[T]:
    len_1 : int = length(xs) or 0
    start_index_1 : int = default_arg(start_index, 0) or 0
    end_index_1 : int = default_arg(end_index, len_1 - 1) or 0
    if start_index_1 < 0:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "startIndex")
    
    elif end_index_1 >= len_1:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "endIndex")
    
    elif end_index_1 < start_index_1:
        return FSharpList_get_Empty()
    
    else: 
        return take((end_index_1 - start_index_1) + 1, skip(start_index_1, xs))
    


def split_at(index: int, xs: FSharpList[T]) -> Tuple[FSharpList[T], FSharpList[T]]:
    if index < 0:
        raise Exception((SR_inputMustBeNonNegative + "\\nParameter name: ") + "index")
    
    if index > FSharpList__get_Length(xs):
        raise Exception((SR_notEnoughElements + "\\nParameter name: ") + "index")
    
    return (take(index, xs), skip(index, xs))


def exactly_one(xs: FSharpList[T]) -> T:
    if FSharpList__get_IsEmpty(xs):
        raise Exception((SR_inputSequenceEmpty + "\\nParameter name: ") + "list")
    
    elif FSharpList__get_IsEmpty(FSharpList__get_Tail(xs)):
        return FSharpList__get_Head(xs)
    
    else: 
        raise Exception((SR_inputSequenceTooLong + "\\nParameter name: ") + "list")
    


def try_exactly_one(xs: FSharpList[T]) -> Optional[T]:
    if FSharpList__get_IsEmpty(FSharpList__get_Tail(xs)) if (not FSharpList__get_IsEmpty(xs)) else (False):
        return some(FSharpList__get_Head(xs))
    
    else: 
        return None
    


def where(predicate: Callable[[T], bool], xs: FSharpList[T]) -> FSharpList[T]:
    return filter(predicate, xs)


def pairwise(xs: FSharpList[T]) -> FSharpList[Tuple[T, T]]:
    return of_array(pairwise_1(to_array(xs)))


def windowed(window_size: int, xs: FSharpList[T]) -> FSharpList[FSharpList[T]]:
    return of_array(map_1(lambda xs_1, window_size=window_size, xs=xs: of_array(xs_1), windowed_1(window_size, to_array(xs)), None))


def split_into(chunks: int, xs: FSharpList[T]) -> FSharpList[FSharpList[T]]:
    return of_array(map_1(lambda xs_1, chunks=chunks, xs=xs: of_array(xs_1), split_into_1(chunks, to_array(xs)), None))


def transpose(lists: Any) -> FSharpList[FSharpList[T]]:
    return of_array(map_1(lambda xs_1, lists=lists: of_array(xs_1), transpose_1(map_1(lambda xs, lists=lists: to_array(xs), list(lists), None), None), None))


def insert_at(index: int, y: T, xs: FSharpList[T]) -> FSharpList[T]:
    i : int = -1
    is_done : bool = False
    def folder(acc: FSharpList[T], x: T=None, index=index, y=y, xs=xs) -> FSharpList[T]:
        nonlocal i, is_done
        i = (i + 1) or 0
        if i == index:
            is_done = True
            return FSharpList_Cons_305B8EAC(x, FSharpList_Cons_305B8EAC(y, acc))
        
        else: 
            return FSharpList_Cons_305B8EAC(x, acc)
        
    
    result : FSharpList[T] = fold(folder, FSharpList_get_Empty(), xs)
    def arrow_143(index=index, y=y, xs=xs) -> FSharpList[Any]:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    return reverse(result if (is_done) else (FSharpList_Cons_305B8EAC(y, result) if ((i + 1) == index) else (arrow_143())))


def insert_many_at(index: int, ys: Any, xs: FSharpList[T]) -> FSharpList[T]:
    i : int = -1
    is_done : bool = False
    ys_1 : FSharpList[T] = of_seq(ys)
    def folder(acc: FSharpList[T], x: T=None, index=index, ys=ys, xs=xs) -> FSharpList[T]:
        nonlocal i, is_done
        i = (i + 1) or 0
        if i == index:
            is_done = True
            return FSharpList_Cons_305B8EAC(x, append(ys_1, acc))
        
        else: 
            return FSharpList_Cons_305B8EAC(x, acc)
        
    
    result : FSharpList[T] = fold(folder, FSharpList_get_Empty(), xs)
    def arrow_144(index=index, ys=ys, xs=xs) -> FSharpList[Any]:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    return reverse(result if (is_done) else (append(ys_1, result) if ((i + 1) == index) else (arrow_144())))


def remove_at(index: int, xs: FSharpList[T]) -> FSharpList[T]:
    i : int = -1
    is_done : bool = False
    def f(_arg1: Any=None, index=index, xs=xs) -> bool:
        nonlocal i, is_done
        i = (i + 1) or 0
        if i == index:
            is_done = True
            return False
        
        else: 
            return True
        
    
    ys : FSharpList[T] = filter(f, xs)
    if not is_done:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    return ys


def remove_many_at(index: int, count: int, xs: FSharpList[T]) -> FSharpList[T]:
    i : int = -1
    status : int = -1
    def f(_arg1: Any=None, index=index, count=count, xs=xs) -> bool:
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
        
    
    ys : FSharpList[T] = filter(f, xs)
    status_1 : int = (1 if ((i + 1) == (index + count) if (status == 0) else (False)) else (status)) or 0
    if status_1 < 1:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + ("index" if (status_1 < 0) else ("count")))
    
    return ys


def update_at(index: int, y: T, xs: FSharpList[T]) -> FSharpList[T]:
    is_done : bool = False
    def mapping(i: int, x: T=None, index=index, y=y, xs=xs) -> T:
        nonlocal is_done
        if i == index:
            is_done = True
            return y
        
        else: 
            return x
        
    
    ys : FSharpList[T] = map_indexed(mapping, xs)
    if not is_done:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    return ys


