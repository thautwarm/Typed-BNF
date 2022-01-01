from __future__ import annotations
from typing import (Tuple, Any, TypeVar, Optional, Callable)
from ..fable_modules.fable_library.list import (FSharpList, length, iterate2, empty, map, unzip, is_empty)
from ..fable_modules.fable_library.map import (of_list, try_find)
from ..fable_modules.fable_library.reflection import (TypeInfo, class_type)
from ..fable_modules.fable_library.util import (equals, compare_primitives)
from .exceptions import (IllFormedType, TypeMismatch, UnboundTypeVariable)
from .grammar import (polyt, monot, Cell_1, Cell_1__ctor, monot__find_any_children_z23d07ce9, monot__prune, Cell_1__Set_2B595, monot__transform_children_z2cab662a)

a_ = TypeVar("a_")

b_ = TypeVar("b_")

def expr_0() -> TypeInfo:
    return class_type("tbnf.Unification.Manager", None, Manager)


class Manager:
    def __init__(self) -> None:
        pass
    

Manager_reflection = expr_0

def Manager__ctor() -> Manager:
    return Manager()


def Manager__Instantiate_Z25E5E15E(__: Manager, t: polyt) -> Tuple[FSharpList[monot], monot]:
    return Manager__instantiate_Z25E5E15E(__, t)


def Manager__Unify(__: Manager, l: monot, r: monot) -> None:
    Manager__unify(__, l, r)


def Manager__NewTyRef_Z721C83C5(__: Manager, s: str) -> monot:
    return Manager__newTyRef_Z721C83C5(__, s)


def Manager__CellRepr_7A2426C3(__: Manager, cell: Cell_1[monot]) -> Any:
    raise Exception("access repr of unknown typeref.")


def Manager__newTyRef_Z721C83C5(this: Manager, name: str) -> monot:
    return monot(0, Cell_1__ctor())


def Manager__occur_in(this: Manager, r: Cell_1[monot], other: monot) -> bool:
    (pattern_matching_result,) = (None,)
    if other.tag == 0:
        if other.fields[0] is r:
            pattern_matching_result = 0
        
        else: 
            pattern_matching_result = 1
        
    
    else: 
        pattern_matching_result = 1
    
    if pattern_matching_result == 0:
        return True
    
    elif pattern_matching_result == 1:
        return monot__find_any_children_z23d07ce9(other, lambda other_1, this=this, r=r, other=other: Manager__occur_in(this, r, other_1))
    


def Manager__op_AtEqualsAt(this: Manager, a: FSharpList[Any], b: FSharpList[Any]) -> bool:
    return length(a) == length(b)


def Manager__unify(this_mut: Manager, l_mut: monot, r_mut: monot) -> None:
    while True:
        (this, l, r) = (this_mut, l_mut, r_mut)
        l_1 : monot = monot__prune(l)
        r_1 : monot = monot__prune(r)
        match_value : Tuple[monot, monot] = (l_1, r_1)
        (pattern_matching_result, cell) = (None, None)
        if match_value[0].tag == 0:
            pattern_matching_result = 0
            cell = match_value[0].fields[0]
        
        elif match_value[0].tag == 1:
            if match_value[1].tag == 0:
                pattern_matching_result = 1
            
            elif match_value[1].tag == 1:
                if match_value[0].fields[0] == match_value[1].fields[0]:
                    pattern_matching_result = 2
                
                else: 
                    pattern_matching_result = 3
                
            
            else: 
                pattern_matching_result = 3
            
        
        elif match_value[1].tag == 0:
            pattern_matching_result = 1
        
        else: 
            pattern_matching_result = 3
        
        if pattern_matching_result == 0:
            if equals(l_1, r_1):
                pass
            
            elif Manager__occur_in(this, cell, r_1):
                raise IllFormedType(l_1, r_1)
            
            else: 
                Cell_1__Set_2B595(cell, r_1)
            
        
        elif pattern_matching_result == 1:
            this_mut = this
            l_mut = r_1
            r_mut = l_1
            continue
        
        elif pattern_matching_result == 2:
            pass
        
        elif pattern_matching_result == 3:
            (pattern_matching_result_1,) = (None,)
            if match_value[0].tag == 4:
                if match_value[1].tag == 4:
                    if match_value[0].fields[0] == match_value[1].fields[0]:
                        pattern_matching_result_1 = 0
                    
                    else: 
                        pattern_matching_result_1 = 1
                    
                
                else: 
                    pattern_matching_result_1 = 1
                
            
            else: 
                pattern_matching_result_1 = 1
            
            if pattern_matching_result_1 == 0:
                pass
            
            elif pattern_matching_result_1 == 1:
                (pattern_matching_result_2, x_1, xs_1, y_1, ys_1) = (None, None, None, None, None)
                if match_value[0].tag == 2:
                    if match_value[1].tag == 2:
                        if Manager__op_AtEqualsAt(this, match_value[0].fields[1], match_value[1].fields[1]):
                            pattern_matching_result_2 = 0
                            x_1 = match_value[0].fields[0]
                            xs_1 = match_value[0].fields[1]
                            y_1 = match_value[1].fields[0]
                            ys_1 = match_value[1].fields[1]
                        
                        else: 
                            pattern_matching_result_2 = 1
                        
                    
                    else: 
                        pattern_matching_result_2 = 1
                    
                
                else: 
                    pattern_matching_result_2 = 1
                
                if pattern_matching_result_2 == 0:
                    Manager__unify(this, x_1, y_1)
                    def arrow_8(l_2: monot, r_2: monot, this: Manager=this, l: monot=l, r: monot=r) -> None:
                        Manager__unify(this, l_2, r_2)
                    
                    iterate2(arrow_8, xs_1, ys_1)
                
                elif pattern_matching_result_2 == 1:
                    (pattern_matching_result_3, x_3, xs_3, y_3, ys_3) = (None, None, None, None, None)
                    if match_value[0].tag == 3:
                        if match_value[1].tag == 3:
                            if Manager__op_AtEqualsAt(this, match_value[0].fields[0], match_value[1].fields[0]):
                                pattern_matching_result_3 = 0
                                x_3 = match_value[0].fields[1]
                                xs_3 = match_value[0].fields[0]
                                y_3 = match_value[1].fields[1]
                                ys_3 = match_value[1].fields[0]
                            
                            else: 
                                pattern_matching_result_3 = 1
                            
                        
                        else: 
                            pattern_matching_result_3 = 1
                        
                    
                    else: 
                        pattern_matching_result_3 = 1
                    
                    if pattern_matching_result_3 == 0:
                        def arrow_10(tupled_arg: Tuple[str, monot], tupled_arg_1: Tuple[str, monot], this: Manager=this, l: monot=l, r: monot=r) -> None:
                            Manager__unify(this, tupled_arg[1], tupled_arg_1[1])
                        
                        iterate2(arrow_10, xs_3, ys_3)
                        this_mut = this
                        l_mut = x_3
                        r_mut = y_3
                        continue
                    
                    elif pattern_matching_result_3 == 1:
                        raise TypeMismatch(l_1, r_1)
                    
                
            
        
        break


def Manager__instantiate_Z25E5E15E(this: Manager, t: polyt) -> Tuple[FSharpList[monot], monot]:
    (pattern_matching_result, t_1, t_2, vars) = (None, None, None, None)
    if t.tag == 0:
        if is_empty(t.fields[0]):
            pattern_matching_result = 0
            t_1 = t.fields[1]
        
        else: 
            pattern_matching_result = 1
            t_2 = t.fields[1]
            vars = t.fields[0]
        
    
    else: 
        pattern_matching_result = 0
        t_1 = t.fields[0]
    
    if pattern_matching_result == 0:
        return (empty(), t_1)
    
    elif pattern_matching_result == 1:
        specialization_args : FSharpList[Tuple[str, monot]] = map(lambda var, this=this, t=t: (var, Manager__newTyRef_Z721C83C5(this, var)), vars)
        class ObjectExpr18:
            @property
            def Compare(self) -> Any:
                return lambda x, y: compare_primitives(x, y)
            
        replace_map : Any = of_list(specialization_args, ObjectExpr18())
        def instantiate(t_3: monot, this: Manager=this, t: polyt=t) -> monot:
            if t_3.tag == 4:
                a : str = t_3.fields[0]
                match_value : Optional[monot] = try_find(a, replace_map)
                if match_value is not None:
                    return match_value
                
                else: 
                    raise UnboundTypeVariable(a)
                
            
            else: 
                return monot__transform_children_z2cab662a(t_3, instantiate)
            
        
        instantiate : Callable[[monot], monot] = instantiate
        return (unzip(specialization_args)[1], instantiate(t_2))
    


