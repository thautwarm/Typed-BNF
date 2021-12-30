from __future__ import annotations
from typing import (TypeVar, Generic, Any, List)
from .array import (fill, copy_to, initialize)
from .reflection import (TypeInfo, class_type)
from .seq import (delay, enumerate_while, append, singleton, empty, to_array)
from .util import (compare, equals, structural_hash, get_enumerator, to_iterator, max, compare_primitives)

T = TypeVar("T")

T_1 = TypeVar("T_1")

t = TypeVar("t")

T_2 = TypeVar("T_2")

def expr_24(gen0) -> TypeInfo:
    return class_type("System.Collections.Generic.Comparer`1", [gen0], Comparer_1)


class Comparer_1(Generic[T]):
    def __init__(self) -> None:
        pass
    
    def Compare(self, x: T, y: T=None) -> int:
        return compare(x, y)
    

Comparer_1_reflection = expr_24

def Comparer_1__ctor() -> Comparer_1[T]:
    return Comparer_1()


def Comparer_1_get_Default() -> Any:
    class ObjectExpr25:
        def Compare(self, x: T, y: T=None) -> int:
            return compare(x, y)
        
    return ObjectExpr25()


def expr_26(gen0) -> TypeInfo:
    return class_type("System.Collections.Generic.EqualityComparer`1", [gen0], EqualityComparer_1)


class EqualityComparer_1(Generic[T_1]):
    def __init__(self) -> None:
        pass
    
    def __eq__(self, x: T, y: T=None) -> bool:
        return equals(x, y)
    
    def GetHashCode(self, x: Any=None) -> int:
        return structural_hash(x)
    

EqualityComparer_1_reflection = expr_26

def EqualityComparer_1__ctor() -> EqualityComparer_1[T]:
    return EqualityComparer_1()


def EqualityComparer_1_get_Default() -> Any:
    class ObjectExpr27:
        def Equals(self, x: T, y: T=None) -> bool:
            return equals(x, y)
        
        def GetHashCode(self, x_1: Any=None) -> int:
            return structural_hash(x_1)
        
    return ObjectExpr27()


def expr_31(gen0) -> TypeInfo:
    return class_type("System.Collections.Generic.Stack`1", [gen0], Stack_1)


class Stack_1(Generic[t]):
    def __init__(self, initial_contents: List[t], initial_count: int) -> None:
        self.contents = initial_contents
        self.count = initial_count or 0
    
    def GetEnumerator(self) -> Any:
        this : Stack_1[t] = self
        def arrow_30(_unit=None) -> Any:
            index : int = (this.count - 1) or 0
            def arrow_29(_unit=None) -> Any:
                def arrow_28(_unit=None) -> Any:
                    nonlocal index
                    index = (index - 1) or 0
                    return empty()
                
                return append(singleton(this.contents[index]), delay(arrow_28))
            
            return enumerate_while(lambda _unit=None: index >= 0, delay(arrow_29))
        
        return get_enumerator(delay(arrow_30))
    
    def __iter__(self) -> Any:
        return to_iterator(self.GetEnumerator())
    
    def System_Collections_IEnumerable_GetEnumerator(self) -> Any:
        this : Stack_1[t] = self
        return get_enumerator(this)
    

Stack_1_reflection = expr_31

def Stack_1__ctor_Z2E171D71(initial_contents: List[t], initial_count: int) -> Stack_1[t]:
    return Stack_1(initial_contents, initial_count)


def Stack_1__ctor_Z524259A4(initial_capacity: int) -> Stack_1[Any]:
    return Stack_1__ctor_Z2E171D71(fill([0] * initial_capacity, 0, initial_capacity, None), 0)


def Stack_1__ctor() -> Stack_1[Any]:
    return Stack_1__ctor_Z524259A4(4)


def Stack_1__ctor_BB573A(xs: Any) -> Stack_1[t]:
    arr : List[t] = list(xs)
    return Stack_1__ctor_Z2E171D71(arr, len(arr))


def Stack_1__Ensure_Z524259A4(this: Stack_1[Any], new_size: int) -> None:
    old_size : int = len(this.contents) or 0
    if new_size > old_size:
        old : List[t] = this.contents
        this.contents = fill([0] * max(lambda x, y, this=this, new_size=new_size: compare_primitives(x, y), new_size, old_size * 2), 0, max(lambda x, y, this=this, new_size=new_size: compare_primitives(x, y), new_size, old_size * 2), None)
        copy_to(old, 0, this.contents, 0, this.count)
    


def Stack_1__get_Count(this: Stack_1[Any]) -> int:
    return this.count


def Stack_1__Pop(this: Stack_1[t]) -> t:
    this.count = (this.count - 1) or 0
    return this.contents[this.count]


def Stack_1__Peek(this: Stack_1[t]) -> t:
    return this.contents[this.count - 1]


def Stack_1__Contains_2B595(this: Stack_1[t], x: t=None) -> bool:
    found : bool = False
    i : int = 0
    while not found if (i < this.count) else (False):
        if equals(x, this.contents[i]):
            found = True
        
        else: 
            i = (i + 1) or 0
        
    return found


def Stack_1__TryPeek_1F3DB691(this: Stack_1[t], result: Any) -> bool:
    if this.count > 0:
        result.contents = Stack_1__Peek(this)
        return True
    
    else: 
        return False
    


def Stack_1__TryPop_1F3DB691(this: Stack_1[t], result: Any) -> bool:
    if this.count > 0:
        result.contents = Stack_1__Pop(this)
        return True
    
    else: 
        return False
    


def Stack_1__Push_2B595(this: Stack_1[t], x: t=None) -> None:
    Stack_1__Ensure_Z524259A4(this, this.count + 1)
    this.contents[this.count] = x
    this.count = (this.count + 1) or 0


def Stack_1__Clear(this: Stack_1[Any]) -> None:
    this.count = 0
    fill(this.contents, 0, len(this.contents), None)


def Stack_1__TrimExcess(this: Stack_1[Any]) -> None:
    if (this.count / len(this.contents)) > 0.9:
        Stack_1__Ensure_Z524259A4(this, this.count)
    


def Stack_1__ToArray(this: Stack_1[t]) -> List[t]:
    return initialize(this.count, lambda i, this=this: this.contents[(this.count - 1) - i], None)


def expr_32(gen0) -> TypeInfo:
    return class_type("System.Collections.Generic.Queue`1", [gen0], Queue_1)


class Queue_1(Generic[T_2]):
    def __init__(self, initial_contents: List[T], initial_count: int) -> None:
        self.contents = initial_contents
        self.count = initial_count or 0
        self.head = 0
        self.tail = initial_count or 0
    
    def GetEnumerator(self) -> Any:
        this : Queue_1[T] = self
        return get_enumerator(Queue_1__toSeq(this))
    
    def __iter__(self) -> Any:
        return to_iterator(self.GetEnumerator())
    
    def System_Collections_IEnumerable_GetEnumerator(self) -> Any:
        this : Queue_1[T] = self
        return get_enumerator(this)
    

Queue_1_reflection = expr_32

def Queue_1__ctor_Z2E171D71(initial_contents: List[T], initial_count: int) -> Queue_1[T]:
    return Queue_1(initial_contents, initial_count)


def Queue_1__ctor_Z524259A4(initial_capacity: int) -> Queue_1[Any]:
    if initial_capacity < 0:
        raise Exception("capacity is less than 0")
    
    return Queue_1__ctor_Z2E171D71(fill([0] * initial_capacity, 0, initial_capacity, None), 0)


def Queue_1__ctor() -> Queue_1[Any]:
    return Queue_1__ctor_Z524259A4(4)


def Queue_1__ctor_BB573A(xs: Any) -> Queue_1[T]:
    arr : List[T] = list(xs)
    return Queue_1__ctor_Z2E171D71(arr, len(arr))


def Queue_1__get_Count(_: Queue_1[Any]) -> int:
    return _.count


def Queue_1__Enqueue_2B595(_: Queue_1[T], value: T=None) -> None:
    if _.count == Queue_1__size(_):
        Queue_1__ensure_Z524259A4(_, _.count + 1)
    
    _.contents[_.tail] = value
    _.tail = ((_.tail + 1) % Queue_1__size(_)) or 0
    _.count = (_.count + 1) or 0


def Queue_1__Dequeue(_: Queue_1[T]) -> T:
    if _.count == 0:
        raise Exception("Queue is empty")
    
    value : T = _.contents[_.head]
    _.head = ((_.head + 1) % Queue_1__size(_)) or 0
    _.count = (_.count - 1) or 0
    return value


def Queue_1__Peek(_: Queue_1[T]) -> T:
    if _.count == 0:
        raise Exception("Queue is empty")
    
    return _.contents[_.head]


def Queue_1__TryDequeue_1F3DB691(this: Queue_1[T], result: Any) -> bool:
    if this.count == 0:
        return False
    
    else: 
        result.contents = Queue_1__Dequeue(this)
        return True
    


def Queue_1__TryPeek_1F3DB691(this: Queue_1[T], result: Any) -> bool:
    if this.count == 0:
        return False
    
    else: 
        result.contents = Queue_1__Peek(this)
        return True
    


def Queue_1__Contains_2B595(this: Queue_1[T], x: T=None) -> bool:
    found : bool = False
    i : int = 0
    while not found if (i < this.count) else (False):
        if equals(x, this.contents[Queue_1__toIndex_Z524259A4(this, i)]):
            found = True
        
        else: 
            i = (i + 1) or 0
        
    return found


def Queue_1__Clear(this: Queue_1[Any]) -> None:
    this.count = 0
    this.head = 0
    this.tail = 0
    fill(this.contents, 0, Queue_1__size(this), None)


def Queue_1__TrimExcess(this: Queue_1[Any]) -> None:
    if (this.count / len(this.contents)) > 0.9:
        Queue_1__ensure_Z524259A4(this, this.count)
    


def Queue_1__ToArray(this: Queue_1[T]) -> List[T]:
    return to_array(Queue_1__toSeq(this))


def Queue_1__CopyTo_Z2E171D71(this: Queue_1[T], target: List[T], start: int) -> None:
    i : int = start or 0
    with get_enumerator(Queue_1__toSeq(this)) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            item : T = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
            target[i] = item
            i = (i + 1) or 0


def Queue_1__size(this: Queue_1[Any]) -> int:
    return len(this.contents)


def Queue_1__toIndex_Z524259A4(this: Queue_1[Any], i: int) -> int:
    return (this.head + i) % Queue_1__size(this)


def Queue_1__ensure_Z524259A4(this: Queue_1[Any], required_size: int) -> None:
    new_buffer : List[T] = fill([0] * required_size, 0, required_size, None)
    if this.head < this.tail:
        copy_to(this.contents, this.head, new_buffer, 0, this.count)
    
    else: 
        copy_to(this.contents, this.head, new_buffer, 0, Queue_1__size(this) - this.head)
        copy_to(this.contents, 0, new_buffer, Queue_1__size(this) - this.head, this.tail)
    
    this.head = 0
    this.tail = this.count or 0
    this.contents = new_buffer


def Queue_1__toSeq(this: Queue_1[T]) -> Any:
    def arrow_37(this=this) -> Any:
        i : int = 0
        def arrow_36(_unit=None) -> Any:
            def arrow_35(_unit=None) -> Any:
                nonlocal i
                i = (i + 1) or 0
                return empty()
            
            return append(singleton(this.contents[Queue_1__toIndex_Z524259A4(this, i)]), delay(arrow_35))
        
        return enumerate_while(lambda _unit=None: i < this.count, delay(arrow_36))
    
    return delay(arrow_37)


