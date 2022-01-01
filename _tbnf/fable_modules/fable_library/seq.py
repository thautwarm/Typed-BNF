from __future__ import annotations
from typing import (Any, TypeVar, Iterator, Callable, Generic, Iterable, Optional, Tuple, List)
from .array import (singleton as singleton_1, try_find_back as try_find_back_1, try_find_index_back as try_find_index_back_1, fold_back as fold_back_1, fold_back2 as fold_back2_1, try_head as try_head_1, try_item as try_item_1, map_fold as map_fold_1, map_fold_back as map_fold_back_1, reduce_back as reduce_back_1, reverse as reverse_1, scan_back as scan_back_1, pairwise as pairwise_1, map as map_1, split_into as split_into_1, windowed as windowed_1, transpose as transpose_1, permute as permute_1, chunk_by_size as chunk_by_size_1)
from .fsharp_core import Operators_NullArg
from .global_ import (IGenericAdder_1, IGenericAverager_1, SR_indexOutOfBounds)
from .list import (FSharpList, to_array as to_array_1, of_array as of_array_1, of_seq as of_seq_1, try_head as try_head_2, is_empty as is_empty_1, try_item as try_item_2, length as length_1)
from .option import (value as value_1, some)
from .reflection import (TypeInfo, class_type)
from .types import to_string
from .util import (get_enumerator, to_iterator, IDisposable, is_disposable, dispose as dispose_2, is_array_like, IEqualityComparer, equals, ignore, clear)

T = TypeVar("T")

T_1 = TypeVar("T_1")

U = TypeVar("U")

State = TypeVar("State")

a_ = TypeVar("a_")

b_ = TypeVar("b_")

T1 = TypeVar("T1")

T2 = TypeVar("T2")

T3 = TypeVar("T3")

T_2 = TypeVar("T_2")

Result = TypeVar("Result")

SR_enumerationAlreadyFinished : str = "Enumeration already finished."

SR_enumerationNotStarted : str = "Enumeration has not started. Call MoveNext."

SR_inputSequenceEmpty : str = "The input sequence was empty."

SR_inputSequenceTooLong : str = "The input sequence contains more than one element."

SR_keyNotFoundAlt : str = "An index satisfying the predicate was not found in the collection."

SR_notEnoughElements : str = "The input sequence has an insufficient number of elements."

SR_resetNotSupported : str = "Reset is not supported on this enumerator."

def Enumerator_noReset() -> Any:
    raise Exception(SR_resetNotSupported)


def Enumerator_notStarted() -> Any:
    raise Exception(SR_enumerationNotStarted)


def Enumerator_alreadyFinished() -> Any:
    raise Exception(SR_enumerationAlreadyFinished)


def expr_38(gen0: TypeInfo) -> TypeInfo:
    return class_type("SeqModule.Enumerator.Seq", [gen0], Enumerator_Seq)


class Enumerator_Seq(Generic[T]):
    def __init__(self, f: Callable[[], Iterator[T]]=None) -> None:
        self.f = f
    
    def __str__(self) -> str:
        xs : Enumerator_Seq[T] = self
        max_count : int = 4
        i : int = 0
        str_1 : str = "seq ["
        with get_enumerator(xs) as e:
            while e.System_Collections_IEnumerator_MoveNext() if (i < max_count) else (False):
                if i > 0:
                    str_1 = str_1 + "; "
                
                str_1 = str_1 + to_string(e.System_Collections_Generic_IEnumerator_00601_get_Current())
                i = (i + 1) or 0
            if i == max_count:
                str_1 = str_1 + "; ..."
            
            return str_1 + "]"
    
    def GetEnumerator(self) -> Iterator[Any]:
        x : Enumerator_Seq[T] = self
        return x.f()
    
    def __iter__(self) -> Iterator[Any]:
        return to_iterator(self.GetEnumerator())
    
    def System_Collections_IEnumerable_GetEnumerator(self) -> Iterator[Any]:
        x : Enumerator_Seq[T] = self
        return x.f()
    

Enumerator_Seq_reflection = expr_38

def Enumerator_Seq__ctor_673A07F2(f: Callable[[], Iterator[T]]) -> Enumerator_Seq[Any]:
    return Enumerator_Seq(f)


def expr_39(gen0: TypeInfo) -> TypeInfo:
    return class_type("SeqModule.Enumerator.FromFunctions`1", [gen0], Enumerator_FromFunctions_1)


class Enumerator_FromFunctions_1(IDisposable, Generic[T_1]):
    def __init__(self, current: Callable[[], T], next_1: Callable[[], bool], dispose: Callable[[], None]) -> None:
        self.current = current
        self.next = next_1
        self.dispose = dispose
    
    def System_Collections_Generic_IEnumerator_00601_get_Current(self) -> Any:
        __ : Enumerator_FromFunctions_1[T] = self
        return __.current()
    
    def System_Collections_IEnumerator_get_Current(self) -> Any:
        __ : Enumerator_FromFunctions_1[T] = self
        return __.current()
    
    def System_Collections_IEnumerator_MoveNext(self) -> bool:
        __ : Enumerator_FromFunctions_1[T] = self
        return __.next()
    
    def System_Collections_IEnumerator_Reset(self) -> None:
        Enumerator_noReset()
    
    def Dispose(self) -> None:
        __ : Enumerator_FromFunctions_1[T] = self
        __.dispose()
    

Enumerator_FromFunctions_1_reflection = expr_39

def Enumerator_FromFunctions_1__ctor_58C54629(current: Callable[[], T], next_1: Callable[[], bool], dispose: Callable[[], None]) -> Enumerator_FromFunctions_1[Any]:
    return Enumerator_FromFunctions_1(current, next_1, dispose)


def Enumerator_cast(e: Iterator[Any]) -> Iterator[Any]:
    def dispose(e: Iterator[Any]=e) -> None:
        if is_disposable(e):
            dispose_2(e)
        
    
    return Enumerator_FromFunctions_1__ctor_58C54629(lambda e=e: e.System_Collections_IEnumerator_get_Current(), lambda e=e: e.System_Collections_IEnumerator_MoveNext(), dispose)


def Enumerator_concat(sources: Iterable[Any]) -> Iterator[Any]:
    outer_opt : Optional[Iterator[U]] = None
    inner_opt : Optional[Iterator[T]] = None
    started : bool = False
    finished : bool = False
    curr : Optional[T] = None
    def finish(sources: Iterable[U]=sources) -> None:
        nonlocal finished, inner_opt, outer_opt
        finished = True
        if inner_opt is not None:
            inner : Iterator[T] = inner_opt
            try: 
                dispose_2(inner)
            
            finally: 
                inner_opt = None
            
        
        if outer_opt is not None:
            outer : Iterator[U] = outer_opt
            try: 
                dispose_2(outer)
            
            finally: 
                outer_opt = None
            
        
    
    def current(sources: Iterable[U]=sources) -> Any:
        if not started:
            Enumerator_notStarted()
        
        elif finished:
            Enumerator_alreadyFinished()
        
        if curr is not None:
            return value_1(curr)
        
        else: 
            return Enumerator_alreadyFinished()
        
    
    def next_1(sources: Iterable[U]=sources) -> bool:
        nonlocal started
        if not started:
            started = True
        
        if finished:
            return False
        
        else: 
            res : Optional[bool] = None
            while res is None:
                nonlocal curr, inner_opt, outer_opt
                match_value : Tuple[Optional[Iterator[U]], Optional[Iterator[T]]] = (outer_opt, inner_opt)
                if match_value[0] is not None:
                    if match_value[1] is not None:
                        inner_1 : Iterator[T] = match_value[1]
                        if inner_1.System_Collections_IEnumerator_MoveNext():
                            curr = some(inner_1.System_Collections_Generic_IEnumerator_00601_get_Current())
                            res = True
                        
                        else: 
                            try: 
                                dispose_2(inner_1)
                            
                            finally: 
                                inner_opt = None
                            
                        
                    
                    else: 
                        outer_1 : Iterator[U] = match_value[0]
                        if outer_1.System_Collections_IEnumerator_MoveNext():
                            ie : U = outer_1.System_Collections_Generic_IEnumerator_00601_get_Current()
                            def arrow_40(_unit=None) -> Iterator[Any]:
                                copy_of_struct : U = ie
                                return get_enumerator(copy_of_struct)
                            
                            inner_opt = arrow_40()
                        
                        else: 
                            finish()
                            res = False
                        
                    
                
                else: 
                    outer_opt = get_enumerator(sources)
                
            return value_1(res)
        
    
    def dispose(sources: Iterable[U]=sources) -> None:
        if not finished:
            finish()
        
    
    return Enumerator_FromFunctions_1__ctor_58C54629(current, next_1, dispose)


def Enumerator_enumerateThenFinally(f: Callable[[], None], e: Iterator[T]) -> Iterator[T]:
    def dispose(f: Callable[[], None]=f, e: Iterator[T]=e) -> None:
        try: 
            dispose_2(e)
        
        finally: 
            f()
        
    
    return Enumerator_FromFunctions_1__ctor_58C54629(lambda f=f, e=e: e.System_Collections_Generic_IEnumerator_00601_get_Current(), lambda f=f, e=e: e.System_Collections_IEnumerator_MoveNext(), dispose)


def Enumerator_generateWhileSome(openf: Callable[[], T], compute: Callable[[T], Optional[U]], closef: Callable[[T], None]) -> Iterator[U]:
    started : bool = False
    curr : Optional[U] = None
    state : Optional[T] = some(openf())
    def dispose(openf: Callable[[], T]=openf, compute: Callable[[T], Optional[U]]=compute, closef: Callable[[T], None]=closef) -> None:
        nonlocal state
        if state is not None:
            x_1 : T = value_1(state)
            try: 
                closef(x_1)
            
            finally: 
                state = None
            
        
    
    def finish(openf: Callable[[], T]=openf, compute: Callable[[T], Optional[U]]=compute, closef: Callable[[T], None]=closef) -> None:
        nonlocal curr
        try: 
            dispose()
        
        finally: 
            curr = None
        
    
    def current(openf: Callable[[], T]=openf, compute: Callable[[T], Optional[U]]=compute, closef: Callable[[T], None]=closef) -> Any:
        if not started:
            Enumerator_notStarted()
        
        if curr is not None:
            return value_1(curr)
        
        else: 
            return Enumerator_alreadyFinished()
        
    
    def next_1(openf: Callable[[], T]=openf, compute: Callable[[T], Optional[U]]=compute, closef: Callable[[T], None]=closef) -> bool:
        nonlocal started, curr
        if not started:
            started = True
        
        if state is not None:
            s : T = value_1(state)
            match_value_1 = None
            try: 
                match_value_1 = compute(s)
            
            except Exception as match_value:
                finish()
                raise match_value
            
            if match_value_1 is not None:
                curr = match_value_1
                return True
            
            else: 
                finish()
                return False
            
        
        else: 
            return False
        
    
    return Enumerator_FromFunctions_1__ctor_58C54629(current, next_1, dispose)


def Enumerator_unfold(f: Callable[[State], Optional[Tuple[T, State]]], state: State=None) -> Iterator[T]:
    curr : Optional[Tuple[T, State]] = None
    acc : State = state
    def current(f: Callable[[State], Optional[Tuple[T, State]]]=f, state: State=state) -> Any:
        if curr is not None:
            x : T = curr[0]
            st : State = curr[1]
            return x
        
        else: 
            return Enumerator_notStarted()
        
    
    def next_1(f: Callable[[State], Optional[Tuple[T, State]]]=f, state: State=state) -> bool:
        nonlocal curr, acc
        curr = f(acc)
        if curr is not None:
            x_1 : T = curr[0]
            st_1 : State = curr[1]
            acc = st_1
            return True
        
        else: 
            return False
        
    
    def dispose(f: Callable[[State], Optional[Tuple[T, State]]]=f, state: State=state) -> None:
        pass
    
    return Enumerator_FromFunctions_1__ctor_58C54629(current, next_1, dispose)


def index_not_found() -> Any:
    raise Exception(SR_keyNotFoundAlt)


def check_non_null(arg_name: str, arg: Any=None) -> None:
    if arg is None:
        Operators_NullArg(arg_name)
    


def mk_seq(f: Callable[[], Iterator[T]]) -> Iterable[T]:
    return Enumerator_Seq__ctor_673A07F2(f)


def of_seq(xs: Iterable[T]) -> Iterator[T]:
    check_non_null("source", xs)
    return get_enumerator(xs)


def delay(generator: Callable[[], Iterable[T]]) -> Iterable[T]:
    return mk_seq(lambda generator=generator: get_enumerator(generator()))


def concat(sources: Iterable[Any]) -> Iterable[Any]:
    return mk_seq(lambda sources=sources: Enumerator_concat(sources))


def unfold(generator: Callable[[State], Optional[Tuple[T, State]]], state: State=None) -> Iterable[T]:
    return mk_seq(lambda generator=generator, state=state: Enumerator_unfold(generator, state))


def empty() -> Iterable[Any]:
    return delay(lambda _unit=None: [])


def singleton(x: T=None) -> Iterable[T]:
    return delay(lambda x=x: singleton_1(x, None))


def of_array(arr: List[T]) -> Iterable[T]:
    return arr


def to_array(xs: Iterable[T]) -> List[T]:
    if isinstance(xs, FSharpList):
        return to_array_1(xs)
    
    else: 
        return list(xs)
    


def of_list(xs: FSharpList[T]) -> Iterable[T]:
    return xs


def to_list(xs: Iterable[T]) -> Iterable[T]:
    if is_array_like(xs):
        return of_array_1(xs)
    
    elif isinstance(xs, FSharpList):
        return xs
    
    else: 
        return of_seq_1(xs)
    


def generate(create: Callable[[], a_], compute: Callable[[a_], Optional[b_]], dispose: Callable[[a_], None]) -> Iterable[b_]:
    return mk_seq(lambda create=create, compute=compute, dispose=dispose: Enumerator_generateWhileSome(create, compute, dispose))


def generate_indexed(create: Callable[[], a_], compute: Callable[[int, a_], Optional[b_]], dispose: Callable[[a_], None]) -> Iterable[b_]:
    def arrow_42(create: Callable[[], a_]=create, compute: Callable[[int, a_], Optional[b_]]=compute, dispose: Callable[[a_], None]=dispose) -> Iterator[Any]:
        i : int = -1
        def arrow_41(x: Any=None) -> Optional[b_]:
            nonlocal i
            i = (i + 1) or 0
            return compute(i, x)
        
        return Enumerator_generateWhileSome(create, arrow_41, dispose)
    
    return mk_seq(arrow_42)


def append(xs: Iterable[T], ys: Iterable[T]) -> Iterable[T]:
    return concat([xs, ys])


def cast(xs: Iterator[Any]) -> Iterable[Any]:
    def arrow_43(xs: Iterator[Any]=xs) -> Iterator[Any]:
        check_non_null("source", xs)
        return Enumerator_cast(get_enumerator(xs))
    
    return mk_seq(arrow_43)


def choose(chooser: Callable[[T], Optional[U]], xs: Iterable[T]) -> Iterable[U]:
    def arrow_44(e: Iterator[Any], chooser: Callable[[T], Optional[U]]=chooser, xs: Iterable[T]=xs) -> Optional[U]:
        curr : Optional[U] = None
        while e.System_Collections_IEnumerator_MoveNext() if (curr is None) else (False):
            curr = chooser(e.System_Collections_Generic_IEnumerator_00601_get_Current())
        return curr
    
    def arrow_45(e_1: Iterator[Any], chooser: Callable[[T], Optional[U]]=chooser, xs: Iterable[T]=xs) -> None:
        dispose_2(e_1)
    
    return generate(lambda chooser=chooser, xs=xs: of_seq(xs), arrow_44, arrow_45)


def compare_with(comparer: Callable[[T, T], int], xs: Iterable[T], ys: Iterable[T]) -> int:
    with of_seq(xs) as e1:
        with of_seq(ys) as e2:
            c : int = 0
            b1 : bool = e1.System_Collections_IEnumerator_MoveNext()
            b2 : bool = e2.System_Collections_IEnumerator_MoveNext()
            while b2 if (b1 if (c == 0) else (False)) else (False):
                c = comparer(e1.System_Collections_Generic_IEnumerator_00601_get_Current(), e2.System_Collections_Generic_IEnumerator_00601_get_Current()) or 0
                if c == 0:
                    b1 = e1.System_Collections_IEnumerator_MoveNext()
                    b2 = e2.System_Collections_IEnumerator_MoveNext()
                
            if c != 0:
                return c
            
            elif b1:
                return 1
            
            elif b2:
                return -1
            
            else: 
                return 0
            


def contains(value: T, xs: Iterable[T], comparer: IEqualityComparer[Any]) -> bool:
    with of_seq(xs) as e:
        found : bool = False
        while e.System_Collections_IEnumerator_MoveNext() if (not found) else (False):
            found = comparer.Equals(value, e.System_Collections_Generic_IEnumerator_00601_get_Current())
        return found


def enumerate_from_functions(create: Callable[[], a_], move_next: Callable[[a_], bool], current: Callable[[a_], b_]) -> Iterable[b_]:
    def arrow_46(x_1: Any=None, create: Callable[[], a_]=create, move_next: Callable[[a_], bool]=move_next, current: Callable[[a_], b_]=current) -> None:
        match_value : Any = x_1
        if is_disposable(match_value):
            dispose_2(match_value)
        
    
    return generate(create, lambda x=None, create=create, move_next=move_next, current=current: some(current(x)) if (move_next(x)) else (None), arrow_46)


def enumerate_then_finally(source: Iterable[T], compensation: Callable[[], None]) -> Iterable[T]:
    compensation_1 : Callable[[], None] = compensation
    def arrow_47(source: Iterable[T]=source, compensation: Callable[[], None]=compensation) -> Iterator[Any]:
        try: 
            return Enumerator_enumerateThenFinally(compensation_1, of_seq(source))
        
        except Exception as match_value:
            compensation_1()
            raise match_value
        
    
    return mk_seq(arrow_47)


def enumerate_using(resource: T, source: Callable[[T], a_]) -> Iterable[Any]:
    def compensation(resource: T=resource, source: Callable[[T], a_]=source) -> None:
        if equals(resource, None):
            pass
        
        else: 
            copy_of_struct : T = resource
            dispose_2(copy_of_struct)
        
    
    def arrow_48(resource: T=resource, source: Callable[[T], a_]=source) -> Iterator[Any]:
        try: 
            return Enumerator_enumerateThenFinally(compensation, of_seq(source(resource)))
        
        except Exception as match_value_1:
            compensation()
            raise match_value_1
        
    
    return mk_seq(arrow_48)


def enumerate_while(guard: Callable[[], bool], xs: Iterable[T]) -> Iterable[T]:
    return concat(unfold(lambda i, guard=guard, xs=xs: (xs, i + 1) if (guard()) else (None), 0))


def filter(f: Callable[[T], bool], xs: Iterable[T]) -> Iterable[T]:
    def chooser(x: T=None, f: Callable[[T], bool]=f, xs: Iterable[T]=xs) -> Optional[T]:
        if f(x):
            return some(x)
        
        else: 
            return None
        
    
    return choose(chooser, xs)


def exists(predicate: Callable[[T], bool], xs: Iterable[T]) -> bool:
    with of_seq(xs) as e:
        found : bool = False
        while e.System_Collections_IEnumerator_MoveNext() if (not found) else (False):
            found = predicate(e.System_Collections_Generic_IEnumerator_00601_get_Current())
        return found


def exists2(predicate: Callable[[T1, T2], bool], xs: Iterable[T1], ys: Iterable[T2]) -> bool:
    with of_seq(xs) as e1:
        with of_seq(ys) as e2:
            found : bool = False
            while e2.System_Collections_IEnumerator_MoveNext() if (e1.System_Collections_IEnumerator_MoveNext() if (not found) else (False)) else (False):
                found = predicate(e1.System_Collections_Generic_IEnumerator_00601_get_Current(), e2.System_Collections_Generic_IEnumerator_00601_get_Current())
            return found


def exactly_one(xs: Iterable[T]) -> T:
    with of_seq(xs) as e:
        if e.System_Collections_IEnumerator_MoveNext():
            v : T = e.System_Collections_Generic_IEnumerator_00601_get_Current()
            if e.System_Collections_IEnumerator_MoveNext():
                raise Exception((SR_inputSequenceTooLong + "\\nParameter name: ") + "source")
            
            else: 
                return v
            
        
        else: 
            raise Exception((SR_inputSequenceEmpty + "\\nParameter name: ") + "source")
        


def try_exactly_one(xs: Iterable[T]) -> Optional[T]:
    with of_seq(xs) as e:
        if e.System_Collections_IEnumerator_MoveNext():
            v : T = e.System_Collections_Generic_IEnumerator_00601_get_Current()
            if e.System_Collections_IEnumerator_MoveNext():
                return None
            
            else: 
                return some(v)
            
        
        else: 
            return None
        


def try_find(predicate: Callable[[T], bool], xs: Iterable[T]) -> Optional[T]:
    with of_seq(xs) as e:
        res : Optional[T] = None
        while e.System_Collections_IEnumerator_MoveNext() if (res is None) else (False):
            c : T = e.System_Collections_Generic_IEnumerator_00601_get_Current()
            if predicate(c):
                res = some(c)
            
        return res


def find(predicate: Callable[[T], bool], xs: Iterable[T]) -> T:
    match_value : Optional[T] = try_find(predicate, xs)
    if match_value is None:
        return index_not_found()
    
    else: 
        return value_1(match_value)
    


def try_find_back(predicate: Callable[[T], bool], xs: Iterable[T]) -> Optional[T]:
    return try_find_back_1(predicate, to_array(xs))


def find_back(predicate: Callable[[T], bool], xs: Iterable[T]) -> T:
    match_value : Optional[T] = try_find_back(predicate, xs)
    if match_value is None:
        return index_not_found()
    
    else: 
        return value_1(match_value)
    


def try_find_index(predicate: Callable[[T], bool], xs: Iterable[T]) -> Optional[int]:
    with of_seq(xs) as e:
        def loop(i_mut: int, predicate: Callable[[T], bool]=predicate, xs: Iterable[T]=xs) -> Optional[int]:
            while True:
                (i,) = (i_mut,)
                if e.System_Collections_IEnumerator_MoveNext():
                    if predicate(e.System_Collections_Generic_IEnumerator_00601_get_Current()):
                        return i
                    
                    else: 
                        i_mut = i + 1
                        continue
                    
                
                else: 
                    return None
                
                break
        
        loop : Callable[[int], Optional[int]] = loop
        return loop(0)


def find_index(predicate: Callable[[T], bool], xs: Iterable[T]) -> int:
    match_value : Optional[int] = try_find_index(predicate, xs)
    if match_value is None:
        return index_not_found()
    
    else: 
        return match_value
    


def try_find_index_back(predicate: Callable[[T], bool], xs: Iterable[T]) -> Optional[int]:
    return try_find_index_back_1(predicate, to_array(xs))


def find_index_back(predicate: Callable[[T], bool], xs: Iterable[T]) -> int:
    match_value : Optional[int] = try_find_index_back(predicate, xs)
    if match_value is None:
        return index_not_found()
    
    else: 
        return match_value
    


def fold(folder: Callable[[State, T], State], state: State, xs: Iterable[T]) -> State:
    with of_seq(xs) as e:
        acc : State = state
        while e.System_Collections_IEnumerator_MoveNext():
            acc = folder(acc, e.System_Collections_Generic_IEnumerator_00601_get_Current())
        return acc


def fold_back(folder: Callable[[T, a_], a_], xs: Iterable[T], state: a_=None) -> a_:
    return fold_back_1(folder, to_array(xs), state)


def fold2(folder: Callable[[State, T1, T2], State], state: State, xs: Iterable[T1], ys: Iterable[T2]) -> State:
    with of_seq(xs) as e1:
        with of_seq(ys) as e2:
            acc : State = state
            while e2.System_Collections_IEnumerator_MoveNext() if (e1.System_Collections_IEnumerator_MoveNext()) else (False):
                acc = folder(acc, e1.System_Collections_Generic_IEnumerator_00601_get_Current(), e2.System_Collections_Generic_IEnumerator_00601_get_Current())
            return acc


def fold_back2(folder: Callable[[T1, T2, State], State], xs: Iterable[T1], ys: Iterable[T2], state: State=None) -> State:
    return fold_back2_1(folder, to_array(xs), to_array(ys), state)


def for_all(predicate: Callable[[a_], bool], xs: Iterable[a_]) -> bool:
    return not exists(lambda x=None, predicate=predicate, xs=xs: not predicate(x), xs)


def for_all2(predicate: Callable[[a_, b_], bool], xs: Iterable[a_], ys: Iterable[b_]) -> bool:
    return not exists2(lambda x, y=None, predicate=predicate, xs=xs, ys=ys: not predicate(x, y), xs, ys)


def try_head(xs: Iterable[T]) -> Optional[T]:
    if is_array_like(xs):
        return try_head_1(xs)
    
    elif isinstance(xs, FSharpList):
        return try_head_2(xs)
    
    else: 
        with of_seq(xs) as e:
            if e.System_Collections_IEnumerator_MoveNext():
                return some(e.System_Collections_Generic_IEnumerator_00601_get_Current())
            
            else: 
                return None
            
    


def head(xs: Iterable[T]) -> T:
    match_value : Optional[T] = try_head(xs)
    if match_value is None:
        raise Exception((SR_inputSequenceEmpty + "\\nParameter name: ") + "source")
    
    else: 
        return value_1(match_value)
    


def initialize(count: int, f: Callable[[int], a_]) -> Iterable[a_]:
    return unfold(lambda i, count=count, f=f: (f(i), i + 1) if (i < count) else (None), 0)


def initialize_infinite(f: Callable[[int], a_]) -> Iterable[a_]:
    return initialize(2147483647, f)


def is_empty(xs: Iterable[Any]) -> bool:
    if is_array_like(xs):
        return len(xs) == 0
    
    elif isinstance(xs, FSharpList):
        return is_empty_1(xs)
    
    else: 
        with of_seq(xs) as e:
            return not e.System_Collections_IEnumerator_MoveNext()
    


def try_item(index: int, xs: Iterable[T]) -> Optional[T]:
    if is_array_like(xs):
        return try_item_1(index, xs)
    
    elif isinstance(xs, FSharpList):
        return try_item_2(index, xs)
    
    else: 
        with of_seq(xs) as e:
            def loop(index_1_mut: int, index: int=index, xs: Iterable[T]=xs) -> Optional[T]:
                while True:
                    (index_1,) = (index_1_mut,)
                    if not e.System_Collections_IEnumerator_MoveNext():
                        return None
                    
                    elif index_1 == 0:
                        return some(e.System_Collections_Generic_IEnumerator_00601_get_Current())
                    
                    else: 
                        index_1_mut = index_1 - 1
                        continue
                    
                    break
            
            loop : Callable[[int], Optional[T]] = loop
            return loop(index)
    


def item(index: int, xs: Iterable[T]) -> T:
    match_value : Optional[T] = try_item(index, xs)
    if match_value is None:
        raise Exception((SR_notEnoughElements + "\\nParameter name: ") + "index")
    
    else: 
        return value_1(match_value)
    


def iterate(action: Callable[[a_], None], xs: Iterable[a_]) -> None:
    def arrow_49(unit_var0: None, x: Any=None, action: Callable[[a_], None]=action, xs: Iterable[a_]=xs) -> None:
        action(x)
    
    fold(arrow_49, None, xs)


def iterate2(action: Callable[[a_, b_], None], xs: Iterable[a_], ys: Iterable[b_]) -> None:
    def arrow_50(unit_var0: None, x: Any, y: Any=None, action: Callable[[a_, b_], None]=action, xs: Iterable[a_]=xs, ys: Iterable[b_]=ys) -> None:
        action(x, y)
    
    fold2(arrow_50, None, xs, ys)


def iterate_indexed(action: Callable[[int, a_], None], xs: Iterable[a_]) -> None:
    def arrow_51(i: int, x: Any=None, action: Callable[[int, a_], None]=action, xs: Iterable[a_]=xs) -> int:
        action(i, x)
        return i + 1
    
    ignore(fold(arrow_51, 0, xs))


def iterate_indexed2(action: Callable[[int, a_, b_], None], xs: Iterable[a_], ys: Iterable[b_]) -> None:
    def arrow_52(i: int, x: Any, y: Any=None, action: Callable[[int, a_, b_], None]=action, xs: Iterable[a_]=xs, ys: Iterable[b_]=ys) -> int:
        action(i, x, y)
        return i + 1
    
    ignore(fold2(arrow_52, 0, xs, ys))


def try_last(xs: Iterable[T]) -> Optional[T]:
    with of_seq(xs) as e:
        def loop(acc_mut: T=None, xs: Iterable[T]=xs) -> T:
            while True:
                (acc,) = (acc_mut,)
                if not e.System_Collections_IEnumerator_MoveNext():
                    return acc
                
                else: 
                    acc_mut = e.System_Collections_Generic_IEnumerator_00601_get_Current()
                    continue
                
                break
        
        loop : Callable[[T], T] = loop
        if e.System_Collections_IEnumerator_MoveNext():
            return some(loop(e.System_Collections_Generic_IEnumerator_00601_get_Current()))
        
        else: 
            return None
        


def last(xs: Iterable[T]) -> T:
    match_value : Optional[T] = try_last(xs)
    if match_value is None:
        raise Exception((SR_notEnoughElements + "\\nParameter name: ") + "source")
    
    else: 
        return value_1(match_value)
    


def length(xs: Iterable[Any]) -> int:
    if is_array_like(xs):
        return len(xs)
    
    elif isinstance(xs, FSharpList):
        return length_1(xs)
    
    else: 
        with of_seq(xs) as e:
            count : int = 0
            while e.System_Collections_IEnumerator_MoveNext():
                count = (count + 1) or 0
            return count
    


def map(mapping: Callable[[T], U], xs: Iterable[T]) -> Iterable[U]:
    def arrow_53(e_1: Iterator[Any], mapping: Callable[[T], U]=mapping, xs: Iterable[T]=xs) -> None:
        dispose_2(e_1)
    
    return generate(lambda mapping=mapping, xs=xs: of_seq(xs), lambda e, mapping=mapping, xs=xs: some(mapping(e.System_Collections_Generic_IEnumerator_00601_get_Current())) if (e.System_Collections_IEnumerator_MoveNext()) else (None), arrow_53)


def map_indexed(mapping: Callable[[int, T], U], xs: Iterable[T]) -> Iterable[U]:
    def arrow_54(e_1: Iterator[Any], mapping: Callable[[int, T], U]=mapping, xs: Iterable[T]=xs) -> None:
        dispose_2(e_1)
    
    return generate_indexed(lambda mapping=mapping, xs=xs: of_seq(xs), lambda i, e, mapping=mapping, xs=xs: some(mapping(i, e.System_Collections_Generic_IEnumerator_00601_get_Current())) if (e.System_Collections_IEnumerator_MoveNext()) else (None), arrow_54)


def indexed(xs: Iterable[T]) -> Iterable[Tuple[int, T]]:
    return map_indexed(lambda i, x=None, xs=xs: (i, x), xs)


def map2(mapping: Callable[[T1, T2], U], xs: Iterable[T1], ys: Iterable[T2]) -> Iterable[U]:
    def arrow_55(tupled_arg: Tuple[Iterator[T1], Iterator[T2]], mapping: Callable[[T1, T2], U]=mapping, xs: Iterable[T1]=xs, ys: Iterable[T2]=ys) -> Optional[U]:
        e1 : Iterator[T1] = tupled_arg[0]
        e2 : Iterator[T2] = tupled_arg[1]
        return some(mapping(e1.System_Collections_Generic_IEnumerator_00601_get_Current(), e2.System_Collections_Generic_IEnumerator_00601_get_Current())) if (e2.System_Collections_IEnumerator_MoveNext() if (e1.System_Collections_IEnumerator_MoveNext()) else (False)) else (None)
    
    def arrow_56(tupled_arg_1: Tuple[Iterator[T1], Iterator[T2]], mapping: Callable[[T1, T2], U]=mapping, xs: Iterable[T1]=xs, ys: Iterable[T2]=ys) -> None:
        try: 
            dispose_2(tupled_arg_1[0])
        
        finally: 
            dispose_2(tupled_arg_1[1])
        
    
    return generate(lambda mapping=mapping, xs=xs, ys=ys: (of_seq(xs), of_seq(ys)), arrow_55, arrow_56)


def map_indexed2(mapping: Callable[[int, T1, T2], U], xs: Iterable[T1], ys: Iterable[T2]) -> Iterable[U]:
    def arrow_57(i: int, tupled_arg: Tuple[Iterator[T1], Iterator[T2]], mapping: Callable[[int, T1, T2], U]=mapping, xs: Iterable[T1]=xs, ys: Iterable[T2]=ys) -> Optional[U]:
        e1 : Iterator[T1] = tupled_arg[0]
        e2 : Iterator[T2] = tupled_arg[1]
        return some(mapping(i, e1.System_Collections_Generic_IEnumerator_00601_get_Current(), e2.System_Collections_Generic_IEnumerator_00601_get_Current())) if (e2.System_Collections_IEnumerator_MoveNext() if (e1.System_Collections_IEnumerator_MoveNext()) else (False)) else (None)
    
    def arrow_58(tupled_arg_1: Tuple[Iterator[T1], Iterator[T2]], mapping: Callable[[int, T1, T2], U]=mapping, xs: Iterable[T1]=xs, ys: Iterable[T2]=ys) -> None:
        try: 
            dispose_2(tupled_arg_1[0])
        
        finally: 
            dispose_2(tupled_arg_1[1])
        
    
    return generate_indexed(lambda mapping=mapping, xs=xs, ys=ys: (of_seq(xs), of_seq(ys)), arrow_57, arrow_58)


def map3(mapping: Callable[[T1, T2, T3], U], xs: Iterable[T1], ys: Iterable[T2], zs: Iterable[T3]) -> Iterable[U]:
    def arrow_59(tupled_arg: Tuple[Iterator[T1], Iterator[T2], Iterator[T3]], mapping: Callable[[T1, T2, T3], U]=mapping, xs: Iterable[T1]=xs, ys: Iterable[T2]=ys, zs: Iterable[T3]=zs) -> Optional[U]:
        e1 : Iterator[T1] = tupled_arg[0]
        e2 : Iterator[T2] = tupled_arg[1]
        e3 : Iterator[T3] = tupled_arg[2]
        return some(mapping(e1.System_Collections_Generic_IEnumerator_00601_get_Current(), e2.System_Collections_Generic_IEnumerator_00601_get_Current(), e3.System_Collections_Generic_IEnumerator_00601_get_Current())) if (e3.System_Collections_IEnumerator_MoveNext() if (e2.System_Collections_IEnumerator_MoveNext() if (e1.System_Collections_IEnumerator_MoveNext()) else (False)) else (False)) else (None)
    
    def arrow_60(tupled_arg_1: Tuple[Iterator[T1], Iterator[T2], Iterator[T3]], mapping: Callable[[T1, T2, T3], U]=mapping, xs: Iterable[T1]=xs, ys: Iterable[T2]=ys, zs: Iterable[T3]=zs) -> None:
        try: 
            dispose_2(tupled_arg_1[0])
        
        finally: 
            try: 
                dispose_2(tupled_arg_1[1])
            
            finally: 
                dispose_2(tupled_arg_1[2])
            
        
    
    return generate(lambda mapping=mapping, xs=xs, ys=ys, zs=zs: (of_seq(xs), of_seq(ys), of_seq(zs)), arrow_59, arrow_60)


def read_only(xs: Iterable[T]) -> Iterable[T]:
    check_non_null("source", xs)
    return map(lambda x=None, xs=xs: x, xs)


def expr_61(gen0: TypeInfo) -> TypeInfo:
    return class_type("SeqModule.CachedSeq`1", [gen0], CachedSeq_1)


class CachedSeq_1(IDisposable, Generic[T_2]):
    def __init__(self, cleanup: Callable[[], None], res: Iterable[Any]) -> None:
        self.cleanup = cleanup
        self.res = res
    
    def Dispose(self) -> None:
        _ : CachedSeq_1[T] = self
        _.cleanup()
    
    def GetEnumerator(self) -> Iterator[Any]:
        _ : CachedSeq_1[T] = self
        return get_enumerator(_.res)
    
    def __iter__(self) -> Iterator[Any]:
        return to_iterator(self.GetEnumerator())
    
    def System_Collections_IEnumerable_GetEnumerator(self) -> Iterator[Any]:
        _ : CachedSeq_1[T] = self
        return get_enumerator(_.res)
    

CachedSeq_1_reflection = expr_61

def CachedSeq_1__ctor_Z7A8347D4(cleanup: Callable[[], None], res: Iterable[Any]) -> CachedSeq_1[Any]:
    return CachedSeq_1(cleanup, res)


def CachedSeq_1__Clear(_: CachedSeq_1[Any]) -> None:
    _.cleanup()


def cache(source: Iterable[T]) -> Iterable[T]:
    check_non_null("source", source)
    prefix : List[T] = []
    enumerator_r : Optional[Optional[Iterator[T]]] = None
    def cleanup(source: Iterable[T]=source) -> None:
        nonlocal enumerator_r
        clear(prefix)
        (pattern_matching_result, e) = (None, None)
        if enumerator_r is not None:
            if value_1(enumerator_r) is not None:
                pattern_matching_result = 0
                e = value_1(enumerator_r)
            
            else: 
                pattern_matching_result = 1
            
        
        else: 
            pattern_matching_result = 1
        
        if pattern_matching_result == 0:
            dispose_2(e)
        
        enumerator_r = None
    
    def arrow_62(i_1: int, source: Iterable[T]=source) -> Optional[Tuple[T, int]]:
        nonlocal enumerator_r
        if i_1 < len(prefix):
            return (prefix[i_1], i_1 + 1)
        
        else: 
            if i_1 >= len(prefix):
                opt_enumerator_2 = None
                if enumerator_r is not None:
                    opt_enumerator_2 = value_1(enumerator_r)
                
                else: 
                    opt_enumerator : Optional[Iterator[T]] = get_enumerator(source)
                    enumerator_r = some(opt_enumerator)
                    opt_enumerator_2 = opt_enumerator
                
                if opt_enumerator_2 is None:
                    pass
                
                else: 
                    enumerator : Iterator[T] = opt_enumerator_2
                    if enumerator.System_Collections_IEnumerator_MoveNext():
                        (prefix.append(enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()))
                    
                    else: 
                        dispose_2(enumerator)
                        enumerator_r = some(None)
                    
                
            
            return (prefix[i_1], i_1 + 1) if (i_1 < len(prefix)) else (None)
        
    
    return CachedSeq_1__ctor_Z7A8347D4(cleanup, unfold(arrow_62, 0))


def all_pairs(xs: Iterable[T1], ys: Iterable[T2]) -> Iterable[Tuple[T1, T2]]:
    ys_cache : Iterable[T2] = cache(ys)
    return delay(lambda xs=xs, ys=ys: concat(map(lambda x=None: map(lambda y=None, x=x: (x, y), ys_cache), xs)))


def map_fold(mapping: Callable[[State, T], Tuple[Result, State]], state: State, xs: Iterable[T]) -> Tuple[Iterable[Result], State]:
    pattern_input : Tuple[List[Result], State] = map_fold_1(mapping, state, to_array(xs), None)
    return (read_only(pattern_input[0]), pattern_input[1])


def map_fold_back(mapping: Callable[[T, State], Tuple[Result, State]], xs: Iterable[T], state: State=None) -> Tuple[Iterable[Result], State]:
    pattern_input : Tuple[List[Result], State] = map_fold_back_1(mapping, to_array(xs), state, None)
    return (read_only(pattern_input[0]), pattern_input[1])


def try_pick(chooser: Callable[[T], Optional[a_]], xs: Iterable[T]) -> Optional[a_]:
    with of_seq(xs) as e:
        res : Optional[a_] = None
        while e.System_Collections_IEnumerator_MoveNext() if (res is None) else (False):
            res = chooser(e.System_Collections_Generic_IEnumerator_00601_get_Current())
        return res


def pick(chooser: Callable[[T], Optional[a_]], xs: Iterable[T]) -> a_:
    match_value : Optional[a_] = try_pick(chooser, xs)
    if match_value is None:
        return index_not_found()
    
    else: 
        return value_1(match_value)
    


def reduce(folder: Callable[[T, T], T], xs: Iterable[T]) -> T:
    with of_seq(xs) as e:
        def loop(acc_mut: T=None, folder: Callable[[T, T], T]=folder, xs: Iterable[T]=xs) -> T:
            while True:
                (acc,) = (acc_mut,)
                if e.System_Collections_IEnumerator_MoveNext():
                    acc_mut = folder(acc, e.System_Collections_Generic_IEnumerator_00601_get_Current())
                    continue
                
                else: 
                    return acc
                
                break
        
        loop : Callable[[T], T] = loop
        if e.System_Collections_IEnumerator_MoveNext():
            return loop(e.System_Collections_Generic_IEnumerator_00601_get_Current())
        
        else: 
            raise Exception(SR_inputSequenceEmpty)
        


def reduce_back(folder: Callable[[T, T], T], xs: Iterable[T]) -> T:
    arr : List[T] = to_array(xs)
    if len(arr) > 0:
        return reduce_back_1(folder, arr)
    
    else: 
        raise Exception(SR_inputSequenceEmpty)
    


def replicate(n: int, x: a_=None) -> Iterable[a_]:
    return initialize(n, lambda _arg1, n=n, x=x: x)


def reverse(xs: Iterable[T]) -> Iterable[T]:
    return delay(lambda xs=xs: of_array(reverse_1(to_array(xs))))


def scan(folder: Callable[[State, T], State], state: State, xs: Iterable[T]) -> Iterable[State]:
    def arrow_63(folder: Callable[[State, T], State]=folder, state: State=state, xs: Iterable[T]=xs) -> Iterable[Any]:
        acc : State = state
        def mapping(x: Any=None) -> Any:
            nonlocal acc
            acc = folder(acc, x)
            return acc
        
        return concat([singleton(state), map(mapping, xs)])
    
    return delay(arrow_63)


def scan_back(folder: Callable[[T, State], State], xs: Iterable[T], state: State=None) -> Iterable[State]:
    return delay(lambda folder=folder, xs=xs, state=state: of_array(scan_back_1(folder, to_array(xs), state, None)))


def skip(count: int, source: Iterable[T]) -> Iterable[T]:
    def arrow_64(count: int=count, source: Iterable[T]=source) -> Iterator[Any]:
        e : Iterator[T] = of_seq(source)
        try: 
            for _ in range(1, count + 1, 1):
                if not e.System_Collections_IEnumerator_MoveNext():
                    raise Exception((SR_notEnoughElements + "\\nParameter name: ") + "source")
                
            def compensation(_unit=None) -> None:
                pass
            
            return Enumerator_enumerateThenFinally(compensation, e)
        
        except Exception as match_value:
            dispose_2(e)
            raise match_value
        
    
    return mk_seq(arrow_64)


def skip_while(predicate: Callable[[T], bool], xs: Iterable[T]) -> Iterable[T]:
    def arrow_65(predicate: Callable[[T], bool]=predicate, xs: Iterable[T]=xs) -> Iterable[Any]:
        skipped : bool = True
        def f(x: Any=None) -> bool:
            nonlocal skipped
            if skipped:
                skipped = predicate(x)
            
            return not skipped
        
        return filter(f, xs)
    
    return delay(arrow_65)


def tail(xs: Iterable[T]) -> Iterable[T]:
    return skip(1, xs)


def take(count: int, xs: Iterable[T]) -> Iterable[T]:
    def arrow_66(i: int, e: Iterator[T], count: int=count, xs: Iterable[T]=xs) -> Optional[T]:
        if i < count:
            if e.System_Collections_IEnumerator_MoveNext():
                return some(e.System_Collections_Generic_IEnumerator_00601_get_Current())
            
            else: 
                raise Exception((SR_notEnoughElements + "\\nParameter name: ") + "source")
            
        
        else: 
            return None
        
    
    def arrow_67(e_1: Iterator[Any], count: int=count, xs: Iterable[T]=xs) -> None:
        dispose_2(e_1)
    
    return generate_indexed(lambda count=count, xs=xs: of_seq(xs), arrow_66, arrow_67)


def take_while(predicate: Callable[[T], bool], xs: Iterable[T]) -> Iterable[T]:
    def arrow_68(e_1: Iterator[Any], predicate: Callable[[T], bool]=predicate, xs: Iterable[T]=xs) -> None:
        dispose_2(e_1)
    
    return generate(lambda predicate=predicate, xs=xs: of_seq(xs), lambda e, predicate=predicate, xs=xs: some(e.System_Collections_Generic_IEnumerator_00601_get_Current()) if (predicate(e.System_Collections_Generic_IEnumerator_00601_get_Current()) if (e.System_Collections_IEnumerator_MoveNext()) else (False)) else (None), arrow_68)


def truncate(count: int, xs: Iterable[T]) -> Iterable[T]:
    def arrow_69(e_1: Iterator[Any], count: int=count, xs: Iterable[T]=xs) -> None:
        dispose_2(e_1)
    
    return generate_indexed(lambda count=count, xs=xs: of_seq(xs), lambda i, e, count=count, xs=xs: some(e.System_Collections_Generic_IEnumerator_00601_get_Current()) if (e.System_Collections_IEnumerator_MoveNext() if (i < count) else (False)) else (None), arrow_69)


def zip(xs: Iterable[T1], ys: Iterable[T2]) -> Iterable[Tuple[T1, T2]]:
    return map2(lambda x, y=None, xs=xs, ys=ys: (x, y), xs, ys)


def zip3(xs: Iterable[T1], ys: Iterable[T2], zs: Iterable[T3]) -> Iterable[Tuple[T1, T2, T3]]:
    return map3(lambda x, y, z=None, xs=xs, ys=ys, zs=zs: (x, y, z), xs, ys, zs)


def collect(mapping: Callable[[T], Iterable[U]], xs: Iterable[T]) -> Iterable[U]:
    return delay(lambda mapping=mapping, xs=xs: concat(map(mapping, xs)))


def where(predicate: Callable[[T], bool], xs: Iterable[T]) -> Iterable[T]:
    return filter(predicate, xs)


def pairwise(xs: Iterable[T]) -> Iterable[Tuple[T, T]]:
    return delay(lambda xs=xs: of_array(pairwise_1(to_array(xs))))


def split_into(chunks: int, xs: Iterable[T]) -> Iterable[Iterable[T]]:
    return delay(lambda chunks=chunks, xs=xs: of_array(map_1(lambda arr: of_array(arr), split_into_1(chunks, to_array(xs)), None)))


def windowed(window_size: int, xs: Iterable[T]) -> Iterable[Iterable[T]]:
    return delay(lambda window_size=window_size, xs=xs: of_array(map_1(lambda arr: of_array(arr), windowed_1(window_size, to_array(xs)), None)))


def transpose(xss: Iterable[Any]) -> Iterable[Iterable[Any]]:
    return delay(lambda xss=xss: of_array(map_1(lambda arr: of_array(arr), transpose_1(map_1(lambda xs_1=None: to_array(xs_1), to_array(xss), None), None), None)))


def sort_with(comparer: Callable[[T, T], int], xs: Iterable[T]) -> Iterable[T]:
    def arrow_70(comparer: Callable[[T, T], int]=comparer, xs: Iterable[T]=xs) -> Iterable[Any]:
        arr : List[T] = to_array(xs)
        arr.sort()
        return of_array(arr)
    
    return delay(arrow_70)


def sort(xs: Iterable[T], comparer: IComparer_1[T]) -> Iterable[T]:
    return sort_with(lambda x, y=None, xs=xs, comparer=comparer: comparer.Compare(x, y), xs)


def sort_by(projection: Callable[[T], U], xs: Iterable[T], comparer: IComparer_1[U]) -> Iterable[T]:
    return sort_with(lambda x, y=None, projection=projection, xs=xs, comparer=comparer: comparer.Compare(projection(x), projection(y)), xs)


def sort_descending(xs: Iterable[T], comparer: IComparer_1[T]) -> Iterable[T]:
    return sort_with(lambda x, y=None, xs=xs, comparer=comparer: comparer.Compare(x, y) * -1, xs)


def sort_by_descending(projection: Callable[[T], U], xs: Iterable[T], comparer: IComparer_1[U]) -> Iterable[T]:
    return sort_with(lambda x, y=None, projection=projection, xs=xs, comparer=comparer: comparer.Compare(projection(x), projection(y)) * -1, xs)


def sum(xs: Iterable[T], adder: IGenericAdder_1[T]) -> T:
    return fold(lambda acc, x=None, xs=xs, adder=adder: adder.Add(acc, x), adder.GetZero(), xs)


def sum_by(f: Callable[[T], U], xs: Iterable[T], adder: IGenericAdder_1[U]) -> U:
    return fold(lambda acc, x=None, f=f, xs=xs, adder=adder: adder.Add(acc, f(x)), adder.GetZero(), xs)


def max_by(projection: Callable[[T], U], xs: Iterable[T], comparer: IComparer_1[U]) -> T:
    return reduce(lambda x, y=None, projection=projection, xs=xs, comparer=comparer: y if (comparer.Compare(projection(y), projection(x)) > 0) else (x), xs)


def max(xs: Iterable[T], comparer: IComparer_1[T]) -> T:
    return reduce(lambda x, y=None, xs=xs, comparer=comparer: y if (comparer.Compare(y, x) > 0) else (x), xs)


def min_by(projection: Callable[[T], U], xs: Iterable[T], comparer: IComparer_1[U]) -> T:
    return reduce(lambda x, y=None, projection=projection, xs=xs, comparer=comparer: x if (comparer.Compare(projection(y), projection(x)) > 0) else (y), xs)


def min(xs: Iterable[T], comparer: IComparer_1[T]) -> T:
    return reduce(lambda x, y=None, xs=xs, comparer=comparer: x if (comparer.Compare(y, x) > 0) else (y), xs)


def average(xs: Iterable[T], averager: IGenericAverager_1[T]) -> T:
    count : int = 0
    def folder(acc: T, x: T=None, xs: Iterable[T]=xs, averager: IGenericAverager_1[T]=averager) -> T:
        nonlocal count
        count = (count + 1) or 0
        return averager.Add(acc, x)
    
    total : T = fold(folder, averager.GetZero(), xs)
    if count == 0:
        raise Exception((SR_inputSequenceEmpty + "\\nParameter name: ") + "source")
    
    else: 
        return averager.DivideByInt(total, count)
    


def average_by(f: Callable[[T], U], xs: Iterable[T], averager: IGenericAverager_1[U]) -> U:
    count : int = 0
    def arrow_72(acc: U, x: Any=None, f: Callable[[T], U]=f, xs: Iterable[T]=xs, averager: IGenericAverager_1[U]=averager) -> U:
        nonlocal count
        count = (count + 1) or 0
        return averager.Add(acc, f(x))
    
    total : U = fold(arrow_72, averager.GetZero(), xs)
    if count == 0:
        raise Exception((SR_inputSequenceEmpty + "\\nParameter name: ") + "source")
    
    else: 
        return averager.DivideByInt(total, count)
    


def permute(f: Callable[[int], int], xs: Iterable[T]) -> Iterable[T]:
    return delay(lambda f=f, xs=xs: of_array(permute_1(f, to_array(xs))))


def chunk_by_size(chunk_size: int, xs: Iterable[T]) -> Iterable[Iterable[T]]:
    return delay(lambda chunk_size=chunk_size, xs=xs: of_array(map_1(lambda arr: of_array(arr), chunk_by_size_1(chunk_size, to_array(xs)), None)))


def insert_at(index: int, y: T, xs: Iterable[T]) -> Iterable[T]:
    is_done : bool = False
    if index < 0:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    def arrow_73(i: int, e: Iterator[T], index: int=index, y: T=y, xs: Iterable[T]=xs) -> Optional[T]:
        nonlocal is_done
        if e.System_Collections_IEnumerator_MoveNext() if (True if (is_done) else (i < index)) else (False):
            return some(e.System_Collections_Generic_IEnumerator_00601_get_Current())
        
        elif i == index:
            is_done = True
            return some(y)
        
        else: 
            if not is_done:
                raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
            
            return None
        
    
    def arrow_74(e_1: Iterator[Any], index: int=index, y: T=y, xs: Iterable[T]=xs) -> None:
        dispose_2(e_1)
    
    return generate_indexed(lambda index=index, y=y, xs=xs: of_seq(xs), arrow_73, arrow_74)


def insert_many_at(index: int, ys: Iterable[T], xs: Iterable[T]) -> Iterable[T]:
    status : int = -1
    if index < 0:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    def arrow_75(i: int, tupled_arg: Tuple[Iterator[T], Iterator[T]], index: int=index, ys: Iterable[T]=ys, xs: Iterable[T]=xs) -> Optional[T]:
        nonlocal status
        e1 : Iterator[T] = tupled_arg[0]
        e2 : Iterator[T] = tupled_arg[1]
        if i == index:
            status = 0
        
        inserted = None
        if status == 0:
            if e2.System_Collections_IEnumerator_MoveNext():
                inserted = some(e2.System_Collections_Generic_IEnumerator_00601_get_Current())
            
            else: 
                status = 1
                inserted = None
            
        
        else: 
            inserted = None
        
        if inserted is None:
            if e1.System_Collections_IEnumerator_MoveNext():
                return some(e1.System_Collections_Generic_IEnumerator_00601_get_Current())
            
            else: 
                if status < 1:
                    raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
                
                return None
            
        
        else: 
            return some(value_1(inserted))
        
    
    def arrow_76(tupled_arg_1: Tuple[Iterator[T], Iterator[T]], index: int=index, ys: Iterable[T]=ys, xs: Iterable[T]=xs) -> None:
        dispose_2(tupled_arg_1[0])
        dispose_2(tupled_arg_1[1])
    
    return generate_indexed(lambda index=index, ys=ys, xs=xs: (of_seq(xs), of_seq(ys)), arrow_75, arrow_76)


def remove_at(index: int, xs: Iterable[T]) -> Iterable[T]:
    is_done : bool = False
    if index < 0:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    def arrow_77(i: int, e: Iterator[T], index: int=index, xs: Iterable[T]=xs) -> Optional[T]:
        nonlocal is_done
        if e.System_Collections_IEnumerator_MoveNext() if (True if (is_done) else (i < index)) else (False):
            return some(e.System_Collections_Generic_IEnumerator_00601_get_Current())
        
        elif e.System_Collections_IEnumerator_MoveNext() if (i == index) else (False):
            is_done = True
            return some(e.System_Collections_Generic_IEnumerator_00601_get_Current()) if (e.System_Collections_IEnumerator_MoveNext()) else (None)
        
        else: 
            if not is_done:
                raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
            
            return None
        
    
    def arrow_78(e_1: Iterator[Any], index: int=index, xs: Iterable[T]=xs) -> None:
        dispose_2(e_1)
    
    return generate_indexed(lambda index=index, xs=xs: of_seq(xs), arrow_77, arrow_78)


def remove_many_at(index: int, count: int, xs: Iterable[T]) -> Iterable[T]:
    if index < 0:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    def arrow_79(i: int, e: Iterator[T], index: int=index, count: int=count, xs: Iterable[T]=xs) -> Optional[T]:
        if i < index:
            if e.System_Collections_IEnumerator_MoveNext():
                return some(e.System_Collections_Generic_IEnumerator_00601_get_Current())
            
            else: 
                raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
            
        
        else: 
            if i == index:
                for _ in range(1, count + 1, 1):
                    if not e.System_Collections_IEnumerator_MoveNext():
                        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "count")
                    
            
            return some(e.System_Collections_Generic_IEnumerator_00601_get_Current()) if (e.System_Collections_IEnumerator_MoveNext()) else (None)
        
    
    def arrow_80(e_1: Iterator[Any], index: int=index, count: int=count, xs: Iterable[T]=xs) -> None:
        dispose_2(e_1)
    
    return generate_indexed(lambda index=index, count=count, xs=xs: of_seq(xs), arrow_79, arrow_80)


def update_at(index: int, y: T, xs: Iterable[T]) -> Iterable[T]:
    is_done : bool = False
    if index < 0:
        raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
    
    def arrow_81(i: int, e: Iterator[T], index: int=index, y: T=y, xs: Iterable[T]=xs) -> Optional[T]:
        nonlocal is_done
        if e.System_Collections_IEnumerator_MoveNext() if (True if (is_done) else (i < index)) else (False):
            return some(e.System_Collections_Generic_IEnumerator_00601_get_Current())
        
        elif e.System_Collections_IEnumerator_MoveNext() if (i == index) else (False):
            is_done = True
            return some(y)
        
        else: 
            if not is_done:
                raise Exception((SR_indexOutOfBounds + "\\nParameter name: ") + "index")
            
            return None
        
    
    def arrow_82(e_1: Iterator[Any], index: int=index, y: T=y, xs: Iterable[T]=xs) -> None:
        dispose_2(e_1)
    
    return generate_indexed(lambda index=index, y=y, xs=xs: of_seq(xs), arrow_81, arrow_82)


