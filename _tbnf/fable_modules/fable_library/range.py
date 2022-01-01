from typing import (TypeVar, Callable, Tuple, Optional, Any, Iterable)
from .big_int import (from_zero, op_addition)
from .decimal import (from_parts, op_addition as op_addition_1)
from .long import (from_bits, op_addition as op_addition_2)
from .seq import (delay, unfold)
from .util import compare

T = TypeVar("T")

def make_range_step_function(step: T, stop: T, zero: T, add: Callable[[T, T], T]) -> Callable[[T], Optional[Tuple[T, T]]]:
    step_compared_with_zero : int = compare(step, zero) or 0
    if step_compared_with_zero == 0:
        raise Exception("The step of a range cannot be zero")
    
    step_greater_than_zero : bool = step_compared_with_zero > 0
    def arrow_9(x: T=None, step: T=step, stop: T=stop, zero: T=zero, add: Callable[[T, T], T]=add) -> Optional[Tuple[T, T]]:
        compared_with_last : int = compare(x, stop) or 0
        return (x, add(x, step)) if (True if (compared_with_last <= 0 if (step_greater_than_zero) else (False)) else (compared_with_last >= 0 if (not step_greater_than_zero) else (False))) else (None)
    
    return arrow_9


def integral_range_step(start: T, step: T, stop: T, zero: T, add: Callable[[T, T], T]) -> Iterable[T]:
    step_fn : Callable[[T], Optional[Tuple[T, T]]] = make_range_step_function(step, stop, zero, add)
    return delay(lambda start=start, step=step, stop=stop, zero=zero, add=add: unfold(step_fn, start))


def range_big_int(start: Any, step: Any, stop: Any) -> Iterable[Any]:
    return integral_range_step(start, step, stop, from_zero(), lambda x, y, start=start, step=step, stop=stop: op_addition(x, y))


def range_decimal(start: Any, step: Any, stop: Any) -> Iterable[Any]:
    return integral_range_step(start, step, stop, from_parts(0, 0, 0, False, 0), lambda x, y, start=start, step=step, stop=stop: op_addition_1(x, y))


def range_double(start: float, step: float, stop: float) -> Iterable[float]:
    return integral_range_step(start, step, stop, 0, lambda x, y, start=start, step=step, stop=stop: x + y)


def range_int64(start: Any, step: Any, stop: Any) -> Iterable[Any]:
    return integral_range_step(start, step, stop, from_bits(0, 0, False), lambda x, y, start=start, step=step, stop=stop: op_addition_2(x, y))


def range_uint64(start: Any, step: Any, stop: Any) -> Iterable[Any]:
    return integral_range_step(start, step, stop, from_bits(0, 0, True), lambda x, y, start=start, step=step, stop=stop: op_addition_2(x, y))


def range_char(start: str, stop: str) -> Iterable[str]:
    int_stop : int = ord(stop) or 0
    def arrow_12(start: str=start, stop: str=stop) -> Iterable[str]:
        def step_fn(c: int) -> Optional[Tuple[str, int]]:
            if c <= int_stop:
                return (chr(c), c + 1)
            
            else: 
                return None
            
        
        return unfold(step_fn, ord(start))
    
    return delay(arrow_12)


