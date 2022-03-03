from __future__ import annotations
from abc import abstractmethod
from typing import (Tuple, Any, TypeVar, Callable, List, MutableSequence)
from ..fable_modules.fable_library.array import (map as map_1, iterate, initialize, fill, iterate_indexed, compare_with, choose, map_indexed, try_item)
from ..fable_modules.fable_library.list import (FSharpList, is_empty, head, tail, cons, empty, singleton, of_array, exists, fold, sort_with, concat, map, to_array, append, filter, iterate as iterate_1)
from ..fable_modules.fable_library.map import (empty as empty_1, try_find, add, find, of_array as of_array_1, map as map_2, FSharpMap__get_Item)
from ..fable_modules.fable_library.option import (Option, value)
from ..fable_modules.fable_library.reflection import (TypeInfo, int32_type, list_type, tuple_type, record_type, array_type, union_type, class_type, string_type, lambda_type, bool_type)
from ..fable_modules.fable_library.set import (empty as empty_2, add as add_1)
from ..fable_modules.fable_library.string import (to_text, interpolate)
from ..fable_modules.fable_library.types import (FSharpRef, Record, Union)
from ..fable_modules.fable_library.util import (compare, uncurry, compare_primitives, min as min_2, get_enumerator, ignore)

__A = TypeVar("__A")

__B = TypeVar("__B")

__C = TypeVar("__C")

def incr(a: FSharpRef[int]) -> None:
    a.contents = (a.contents + 1) or 0


def Cset_union(c1_mut: FSharpList[Tuple[int, int]], c2_mut: FSharpList[Tuple[int, int]]) -> FSharpList[Tuple[int, int]]:
    while True:
        (c1, c2) = (c1_mut, c2_mut)
        match_value : Tuple[FSharpList[Tuple[int, int]], FSharpList[Tuple[int, int]]] = (c1, c2)
        if not is_empty(match_value[0]):
            if not is_empty(match_value[1]):
                if head(match_value[0])[0] <= head(match_value[1])[0]:
                    if (head(match_value[0])[1] + 1) < head(match_value[1])[0]:
                        return cons(head(match_value[0]), Cset_union(tail(match_value[0]), c2))
                    
                    elif head(match_value[0])[1] < head(match_value[1])[1]:
                        c1_mut = tail(match_value[0])
                        c2_mut = cons((head(match_value[0])[0], head(match_value[1])[1]), tail(match_value[1]))
                        continue
                    
                    else: 
                        c1_mut = c1
                        c2_mut = tail(match_value[1])
                        continue
                    
                
                else: 
                    c1_mut = c2
                    c2_mut = c1
                    continue
                
            
            else: 
                return c1
            
        
        else: 
            return c2
        
        break


Cset_max_code : int = 1114111

Cset_min_code : int = -1

def Cset_empty() -> FSharpList[Any]:
    return empty()


def Cset_singleton(i: __A=None) -> FSharpList[Tuple[__A, __A]]:
    return singleton((i, i))


def Cset_is_empty(_arg1: FSharpList[Any]) -> bool:
    if is_empty(_arg1):
        return True
    
    else: 
        return False
    


def Cset_interval(i: __A, j: __A=None) -> FSharpList[Tuple[__A, __A]]:
    if compare(i, j) <= 0:
        return singleton((i, j))
    
    else: 
        return singleton((j, i))
    


Cset_eof : FSharpList[Tuple[int, int]] = Cset_singleton(-1)

Cset_any : FSharpList[Tuple[int, int]] = Cset_interval(0, Cset_max_code)

def Cset_complement(c: FSharpList[Tuple[int, int]]) -> FSharpList[Tuple[int, int]]:
    def aux(start_1: int, _arg1: FSharpList[Tuple[int, int]], c: FSharpList[Tuple[int, int]]=c) -> FSharpList[Tuple[int, int]]:
        if not is_empty(_arg1):
            return cons((start_1, head(_arg1)[0] - 1), aux(head(_arg1)[1] + 1, tail(_arg1)))
        
        elif start_1 <= Cset_max_code:
            return singleton((start_1, Cset_max_code))
        
        else: 
            return empty()
        
    
    (pattern_matching_result, j_1, l_1, l_2) = (None, None, None, None)
    if not is_empty(c):
        if head(c)[0] == -1:
            pattern_matching_result = 0
            j_1 = head(c)[1]
            l_1 = tail(c)
        
        else: 
            pattern_matching_result = 1
            l_2 = c
        
    
    else: 
        pattern_matching_result = 1
        l_2 = c
    
    if pattern_matching_result == 0:
        return aux(j_1 + 1, l_1)
    
    elif pattern_matching_result == 1:
        return aux(-1, l_2)
    


def Cset_intersection(c1: FSharpList[Tuple[int, int]], c2: FSharpList[Tuple[int, int]]) -> FSharpList[Tuple[int, int]]:
    return Cset_complement(Cset_union(Cset_complement(c1), Cset_complement(c2)))


def Cset_difference(c1: FSharpList[Tuple[int, int]], c2: FSharpList[Tuple[int, int]]) -> FSharpList[Tuple[int, int]]:
    return Cset_complement(Cset_union(Cset_complement(c1), c2))


def expr_20() -> TypeInfo:
    return record_type("Fable.Sedlex.Compiler.Automata.node", [], Automata_node, lambda: [["id", int32_type], ["eps", list_type(Automata_node_reflection())], ["trans", list_type(tuple_type(list_type(tuple_type(int32_type, int32_type)), Automata_node_reflection()))]])


class Automata_node(Record):
    def __init__(self, id: int, eps: FSharpList[Automata_node], trans: FSharpList[Tuple[FSharpList[Tuple[int, int]], Automata_node]]) -> None:
        super().__init__()
        self.id = id or 0
        self.eps = eps
        self.trans = trans
    

Automata_node_reflection = expr_20

Automata_cur_id : FSharpRef[int] = FSharpRef(0)

def Automata_new_node() -> Automata_node:
    incr(Automata_cur_id)
    return Automata_node(Automata_cur_id.contents, empty(), empty())


def Automata_seq(r1: Callable[[__A], __B], r2: Callable[[__C], __A], succ: __C=None) -> __B:
    return r1(r2(succ))


def Automata_is_chars(final: Any, _arg1: Automata_node) -> Option[FSharpList[Tuple[int, int]]]:
    (pattern_matching_result, c_1, f_1) = (None, None, None)
    if is_empty(_arg1.eps):
        if not is_empty(_arg1.trans):
            if is_empty(tail(_arg1.trans)):
                def arrow_21(final: __A=final, _arg1: Automata_node=_arg1) -> bool:
                    f : Automata_node = head(_arg1.trans)[1]
                    c : FSharpList[Tuple[int, int]] = head(_arg1.trans)[0]
                    return f is final
                
                if arrow_21():
                    pattern_matching_result = 0
                    c_1 = head(_arg1.trans)[0]
                    f_1 = head(_arg1.trans)[1]
                
                else: 
                    pattern_matching_result = 1
                
            
            else: 
                pattern_matching_result = 1
            
        
        else: 
            pattern_matching_result = 1
        
    
    else: 
        pattern_matching_result = 1
    
    if pattern_matching_result == 0:
        return c_1
    
    elif pattern_matching_result == 1:
        return None
    


def Automata_chars(c: FSharpList[Tuple[int, int]], succ: Automata_node) -> Automata_node:
    n : Automata_node = Automata_new_node()
    n.trans = singleton((c, succ))
    return n


def Automata_alt(r1: Callable[[Automata_node], Automata_node], r2: Callable[[Automata_node], Automata_node], succ: Automata_node) -> Automata_node:
    nr1 : Automata_node = r1(succ)
    nr2 : Automata_node = r2(succ)
    match_value : Tuple[Option[FSharpList[Tuple[int, int]]], Option[FSharpList[Tuple[int, int]]]] = (Automata_is_chars(succ, nr1), Automata_is_chars(succ, nr2))
    (pattern_matching_result, c1, c2) = (None, None, None)
    if match_value[0] is not None:
        if match_value[1] is not None:
            pattern_matching_result = 0
            c1 = match_value[0]
            c2 = match_value[1]
        
        else: 
            pattern_matching_result = 1
        
    
    else: 
        pattern_matching_result = 1
    
    if pattern_matching_result == 0:
        return Automata_chars(Cset_union(c1, c2), succ)
    
    elif pattern_matching_result == 1:
        n : Automata_node = Automata_new_node()
        n.eps = of_array([nr1, nr2])
        return n
    


def Automata_rep(r: Callable[[Automata_node], Automata_node], succ: Automata_node) -> Automata_node:
    n : Automata_node = Automata_new_node()
    n.eps = of_array([r(n), succ])
    return n


def Automata_plus(r: Callable[[Automata_node], Automata_node], succ: Automata_node) -> Automata_node:
    n : Automata_node = Automata_new_node()
    nr : Automata_node = r(n)
    n.eps = of_array([nr, succ])
    return nr


def Automata_eps(succ: __A=None) -> __A:
    return succ


def Automata_compl(r: Callable[[Automata_node], Automata_node]) -> Option[Callable[[Automata_node], Automata_node]]:
    n : Automata_node = Automata_new_node()
    match_value : Option[FSharpList[Tuple[int, int]]] = Automata_is_chars(n, r(n))
    if match_value is not None:
        def arrow_23(r: Callable[[Automata_node], Automata_node]=r) -> Callable[[Automata_node], Automata_node]:
            c_1 : FSharpList[Tuple[int, int]] = Cset_difference(Cset_any, match_value)
            def arrow_22(succ: Automata_node) -> Automata_node:
                return Automata_chars(c_1, succ)
            
            return arrow_22
        
        return arrow_23()
    
    else: 
        return None
    


def Automata_pair_op(f: Callable[[FSharpList[Tuple[int, int]], FSharpList[Tuple[int, int]]], FSharpList[Tuple[int, int]]], r0: Callable[[Automata_node], Automata_node], r1: Callable[[Automata_node], Automata_node]) -> Option[Callable[[Automata_node], Automata_node]]:
    n : Automata_node = Automata_new_node()
    def to_chars(r: Callable[[Automata_node], Automata_node], f: Callable[[FSharpList[Tuple[int, int]], FSharpList[Tuple[int, int]]], FSharpList[Tuple[int, int]]]=f, r0: Callable[[Automata_node], Automata_node]=r0, r1: Callable[[Automata_node], Automata_node]=r1) -> Option[FSharpList[Tuple[int, int]]]:
        return Automata_is_chars(n, r(n))
    
    match_value : Tuple[Option[FSharpList[Tuple[int, int]]], Option[FSharpList[Tuple[int, int]]]] = (to_chars(r0), to_chars(r1))
    (pattern_matching_result, c0, c1) = (None, None, None)
    if match_value[0] is not None:
        if match_value[1] is not None:
            pattern_matching_result = 0
            c0 = match_value[0]
            c1 = match_value[1]
        
        else: 
            pattern_matching_result = 1
        
    
    else: 
        pattern_matching_result = 1
    
    if pattern_matching_result == 0:
        def arrow_25(f: Callable[[FSharpList[Tuple[int, int]], FSharpList[Tuple[int, int]]], FSharpList[Tuple[int, int]]]=f, r0: Callable[[Automata_node], Automata_node]=r0, r1: Callable[[Automata_node], Automata_node]=r1) -> Callable[[Automata_node], Automata_node]:
            c : FSharpList[Tuple[int, int]] = f(c0, c1)
            def arrow_24(succ: Automata_node) -> Automata_node:
                return Automata_chars(c, succ)
            
            return arrow_24
        
        return arrow_25()
    
    elif pattern_matching_result == 1:
        return None
    


def arrow_28(r0: Callable[[Automata_node], Automata_node]) -> Callable[[Callable[[Automata_node], Automata_node]], Option[Callable[[Automata_node], Automata_node]]]:
    def arrow_27(r1: Callable[[Automata_node], Automata_node]) -> Option[Callable[[Automata_node], Automata_node]]:
        def arrow_26(c1: FSharpList[Tuple[int, int]], c2: FSharpList[Tuple[int, int]]) -> FSharpList[Tuple[int, int]]:
            return Cset_difference(c1, c2)
        
        return Automata_pair_op(arrow_26, r0, r1)
    
    return arrow_27


Automata_subtract : Callable[[Callable[[Automata_node], Automata_node], Callable[[Automata_node], Automata_node]], Option[Callable[[Automata_node], Automata_node]]] = arrow_28

def arrow_31(r0: Callable[[Automata_node], Automata_node]) -> Callable[[Callable[[Automata_node], Automata_node]], Option[Callable[[Automata_node], Automata_node]]]:
    def arrow_30(r1: Callable[[Automata_node], Automata_node]) -> Option[Callable[[Automata_node], Automata_node]]:
        def arrow_29(c1: FSharpList[Tuple[int, int]], c2: FSharpList[Tuple[int, int]]) -> FSharpList[Tuple[int, int]]:
            return Cset_intersection(c1, c2)
        
        return Automata_pair_op(arrow_29, r0, r1)
    
    return arrow_30


Automata_intersection : Callable[[Callable[[Automata_node], Automata_node], Callable[[Automata_node], Automata_node]], Option[Callable[[Automata_node], Automata_node]]] = arrow_31

def Automata_compile_re(re: Callable[[Automata_node], __A]) -> Tuple[__A, Automata_node]:
    final : Automata_node = Automata_new_node()
    return (re(final), final)


def Automata_add_node(state: FSharpList[Automata_node], node: Automata_node) -> FSharpList[Automata_node]:
    def arrow_32(b: Automata_node, state: FSharpList[Automata_node]=state, node: Automata_node=node) -> bool:
        return node is b
    
    if exists(arrow_32, state):
        return state
    
    else: 
        return Automata_add_nodes(cons(node, state), node.eps)
    


def Automata_add_nodes(state: FSharpList[Automata_node], nodes: FSharpList[Automata_node]) -> FSharpList[Automata_node]:
    def arrow_33(state_1: FSharpList[Automata_node], node: Automata_node, state: FSharpList[Automata_node]=state, nodes: FSharpList[Automata_node]=nodes) -> FSharpList[Automata_node]:
        return Automata_add_node(state_1, node)
    
    return fold(arrow_33, state, nodes)


def Automata_transition(state: FSharpList[Automata_node]) -> List[Tuple[FSharpList[Tuple[int, int]], FSharpList[Automata_node]]]:
    def norm(_arg1_mut: FSharpList[Tuple[FSharpList[Tuple[int, int]], __A]], state: FSharpList[Automata_node]=state) -> FSharpList[Tuple[FSharpList[Tuple[int, int]], __A]]:
        while True:
            (_arg1,) = (_arg1_mut,)
            (pattern_matching_result, c1, c2, l, n1, n2, q, l_1) = (None, None, None, None, None, None, None, None)
            if not is_empty(_arg1):
                if not is_empty(tail(_arg1)):
                    pattern_matching_result = 0
                    c1 = head(_arg1)[0]
                    c2 = head(tail(_arg1))[0]
                    l = tail(_arg1)
                    n1 = head(_arg1)[1]
                    n2 = head(tail(_arg1))[1]
                    q = tail(tail(_arg1))
                
                else: 
                    pattern_matching_result = 1
                    l_1 = _arg1
                
            
            else: 
                pattern_matching_result = 1
                l_1 = _arg1
            
            if pattern_matching_result == 0:
                if n1 is n2:
                    _arg1_mut = cons((Cset_union(c1, c2), n1), q)
                    continue
                
                else: 
                    return cons((c1, n1), norm(l))
                
            
            elif pattern_matching_result == 1:
                return l_1
            
            break
    
    def arrow_34(tupled_arg: Tuple[FSharpList[Tuple[int, int]], Automata_node], tupled_arg_1: Tuple[FSharpList[Tuple[int, int]], Automata_node], state: FSharpList[Automata_node]=state) -> int:
        return tupled_arg[1].id - tupled_arg_1[1].id
    
    def arrow_35(n: Automata_node, state: FSharpList[Automata_node]=state) -> FSharpList[Tuple[FSharpList[Tuple[int, int]], Automata_node]]:
        return n.trans
    
    t_1 : FSharpList[Tuple[FSharpList[Tuple[int, int]], Automata_node]] = norm(sort_with(arrow_34, concat(map(arrow_35, state))))
    def arrow_36(tupled_arg_7: Tuple[FSharpList[Tuple[int, int]], FSharpList[Automata_node]], state: FSharpList[Automata_node]=state) -> Tuple[FSharpList[Tuple[int, int]], FSharpList[Automata_node]]:
        return (tupled_arg_7[0], Automata_add_nodes(empty(), tupled_arg_7[1]))
    
    def split(tupled_arg_2: Tuple[FSharpList[Tuple[int, int]], FSharpList[Tuple[FSharpList[Tuple[int, int]], FSharpList[__A]]]], state: FSharpList[Automata_node]=state) -> Callable[[Tuple[FSharpList[Tuple[int, int]], __A]], Tuple[FSharpList[Tuple[int, int]], FSharpList[Tuple[FSharpList[Tuple[int, int]], FSharpList[__A]]]]]:
        all : FSharpList[Tuple[int, int]] = tupled_arg_2[0]
        t_2 : FSharpList[Tuple[FSharpList[Tuple[int, int]], FSharpList[__A]]] = tupled_arg_2[1]
        def arrow_40(tupled_arg_3: Tuple[FSharpList[Tuple[int, int]], __A], tupled_arg_2: Tuple[FSharpList[Tuple[int, int]], FSharpList[Tuple[FSharpList[Tuple[int, int]], FSharpList[__A]]]]=tupled_arg_2) -> Tuple[FSharpList[Tuple[int, int]], FSharpList[Tuple[FSharpList[Tuple[int, int]], FSharpList[__A]]]]:
            c0 : FSharpList[Tuple[int, int]] = tupled_arg_3[0]
            n0 : __A = tupled_arg_3[1]
            def arrow_37(tupled_arg_4: Tuple[FSharpList[Tuple[int, int]], FSharpList[__A]]) -> Tuple[FSharpList[Tuple[int, int]], FSharpList[__A]]:
                return (Cset_intersection(tupled_arg_4[0], c0), cons(n0, tupled_arg_4[1]))
            
            def arrow_38(tupled_arg_5: Tuple[FSharpList[Tuple[int, int]], FSharpList[__A]]) -> Tuple[FSharpList[Tuple[int, int]], FSharpList[__A]]:
                return (Cset_difference(tupled_arg_5[0], c0), tupled_arg_5[1])
            
            t_3 : FSharpList[Tuple[FSharpList[Tuple[int, int]], FSharpList[__A]]] = append(cons((Cset_difference(c0, all), singleton(n0)), map(arrow_37, t_2)), map(arrow_38, t_2))
            def arrow_39(tupled_arg_6: Tuple[FSharpList[Tuple[int, int]], FSharpList[__A]]) -> bool:
                return not Cset_is_empty(tupled_arg_6[0])
            
            return (Cset_union(all, c0), filter(arrow_39, t_3))
        
        return arrow_40
    
    t_6 : List[Tuple[FSharpList[Tuple[int, int]], FSharpList[Automata_node]]] = to_array(map(arrow_36, fold(uncurry(2, split), (Cset_empty(), empty()), t_1)[1]))
    def arrow_41(tupled_arg_8: Tuple[FSharpList[Tuple[int, int]], FSharpList[Automata_node]], tupled_arg_9: Tuple[FSharpList[Tuple[int, int]], FSharpList[Automata_node]], state: FSharpList[Automata_node]=state) -> int:
        return compare(tupled_arg_8[0], tupled_arg_9[0])
    
    t_6.sort()
    return t_6


def Automata_compile(rs: List[Callable[[Automata_node], Automata_node]]) -> List[Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]]:
    def arrow_42(re: Callable[[Automata_node], Automata_node], rs: List[Callable[[Automata_node], Automata_node]]=rs) -> Tuple[Automata_node, Automata_node]:
        return Automata_compile_re(re)
    
    rs_1 : List[Tuple[Automata_node, Automata_node]] = map_1(arrow_42, rs, None)
    counter : FSharpRef[int] = FSharpRef(0)
    class ObjectExpr44:
        @property
        def Compare(self) -> Any:
            def arrow_43(x: FSharpList[Automata_node], y: FSharpList[Automata_node]) -> int:
                return compare(x, y)
            
            return arrow_43
        
    states : Any = empty_1(ObjectExpr44())
    class ObjectExpr46:
        @property
        def Compare(self) -> Any:
            def arrow_45(x_1: int, y_1: int) -> int:
                return compare_primitives(x_1, y_1)
            
            return arrow_45
        
    states_def : Any = empty_1(ObjectExpr46())
    def aux(state: FSharpList[Automata_node], rs: List[Callable[[Automata_node], Automata_node]]=rs) -> int:
        nonlocal states, states_def
        match_value : Option[int] = try_find(state, states)
        if match_value is None:
            i : int = counter.contents or 0
            incr(counter)
            states = add(state, i, states)
            def arrow_47(tupled_arg: Tuple[FSharpList[Tuple[int, int]], FSharpList[Automata_node]], state: FSharpList[Automata_node]=state) -> Tuple[FSharpList[Tuple[int, int]], int]:
                return (tupled_arg[0], aux(tupled_arg[1]))
            
            trans_1 : List[Tuple[FSharpList[Tuple[int, int]], int]] = map_1(arrow_47, Automata_transition(state), None)
            def arrow_49(tupled_arg_1: Tuple[Automata_node, Automata_node], state: FSharpList[Automata_node]=state) -> bool:
                def arrow_48(b: Automata_node) -> bool:
                    return tupled_arg_1[1] is b
                
                return exists(arrow_48, state)
            
            finals : List[bool] = map_1(arrow_49, rs_1, None)
            states_def = add(i, (trans_1, finals), states_def)
            return i
        
        else: 
            return match_value
        
    
    init : FSharpRef[FSharpList[Automata_node]] = FSharpRef(empty())
    def arrow_50(tupled_arg_2: Tuple[Automata_node, Automata_node], rs: List[Callable[[Automata_node], Automata_node]]=rs) -> None:
        init.contents = Automata_add_node(init.contents, tupled_arg_2[0])
    
    iterate(arrow_50, rs_1)
    i_2 : int = aux(init.contents) or 0
    def arrow_51(x_2: int, rs: List[Callable[[Automata_node], Automata_node]]=rs) -> Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]:
        return find(x_2, states_def)
    
    return initialize(counter.contents, arrow_51, None)


def expr_52() -> TypeInfo:
    return union_type("Fable.Sedlex.Compiler.Automata.decision_tree", [], Automata_decision_tree, lambda: [[["Item1", int32_type], ["Item2", Automata_decision_tree_reflection()], ["Item3", Automata_decision_tree_reflection()]], [["Item1", int32_type], ["Item2", array_type(int32_type)]], [["Item", int32_type]]])


class Automata_decision_tree(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["Lte", "Table", "Return"]
    

Automata_decision_tree_reflection = expr_52

def Automata_simplify_decision_tree(x: Automata_decision_tree) -> Automata_decision_tree:
    (pattern_matching_result, a_1, b_1, l_1) = (None, None, None, None)
    if x.tag == 2:
        pattern_matching_result = 0
    
    elif x.tag == 0:
        if x.fields[1].tag == 2:
            if x.fields[2].tag == 2:
                if x.fields[1].fields[0] == x.fields[2].fields[0]:
                    pattern_matching_result = 1
                    a_1 = x.fields[1].fields[0]
                    b_1 = x.fields[2].fields[0]
                    l_1 = x.fields[1]
                
                else: 
                    pattern_matching_result = 2
                
            
            else: 
                pattern_matching_result = 2
            
        
        else: 
            pattern_matching_result = 2
        
    
    else: 
        pattern_matching_result = 0
    
    if pattern_matching_result == 0:
        return x
    
    elif pattern_matching_result == 1:
        return l_1
    
    elif pattern_matching_result == 2:
        if x.tag == 0:
            l_3 : Automata_decision_tree = Automata_simplify_decision_tree(x.fields[1])
            r_1 : Automata_decision_tree = Automata_simplify_decision_tree(x.fields[2])
            match_value : Tuple[Automata_decision_tree, Automata_decision_tree] = (l_3, r_1)
            (pattern_matching_result_1,) = (None,)
            if match_value[0].tag == 2:
                if match_value[1].tag == 2:
                    if match_value[0].fields[0] == match_value[1].fields[0]:
                        pattern_matching_result_1 = 0
                    
                    else: 
                        pattern_matching_result_1 = 1
                    
                
                else: 
                    pattern_matching_result_1 = 1
                
            
            else: 
                pattern_matching_result_1 = 1
            
            if pattern_matching_result_1 == 0:
                return l_3
            
            elif pattern_matching_result_1 == 1:
                return Automata_decision_tree(0, x.fields[0], l_3, r_1)
            
        
        else: 
            raise Exception("Match failure")
        
    


def Automata_decision(l: FSharpList[Tuple[int, int, int]]) -> Automata_decision_tree:
    def merge2(_arg1: FSharpList[Tuple[int, int, Automata_decision_tree]], l: FSharpList[Tuple[int, int, int]]=l) -> FSharpList[Tuple[int, int, Automata_decision_tree]]:
        (pattern_matching_result, a1, a2, b1, b2, d1, d2, rest, rest_1) = (None, None, None, None, None, None, None, None, None)
        if not is_empty(_arg1):
            if not is_empty(tail(_arg1)):
                pattern_matching_result = 0
                a1 = head(_arg1)[0]
                a2 = head(tail(_arg1))[0]
                b1 = head(_arg1)[1]
                b2 = head(tail(_arg1))[1]
                d1 = head(_arg1)[2]
                d2 = head(tail(_arg1))[2]
                rest = tail(tail(_arg1))
            
            else: 
                pattern_matching_result = 1
                rest_1 = _arg1
            
        
        else: 
            pattern_matching_result = 1
            rest_1 = _arg1
        
        if pattern_matching_result == 0:
            return cons((a1, b2, Automata_decision_tree(0, b1, d1, d2 if ((b1 + 1) == a2) else (Automata_decision_tree(0, a2 - 1, Automata_decision_tree(2, -1), d2)))), merge2(rest))
        
        elif pattern_matching_result == 1:
            return rest_1
        
    
    def aux(_arg2_mut: FSharpList[Tuple[int, int, Automata_decision_tree]], l: FSharpList[Tuple[int, int, int]]=l) -> Automata_decision_tree:
        while True:
            (_arg2,) = (_arg2_mut,)
            if is_empty(_arg2):
                return Automata_decision_tree(2, -1)
            
            elif is_empty(tail(_arg2)):
                return Automata_decision_tree(0, head(_arg2)[0] - 1, Automata_decision_tree(2, -1), Automata_decision_tree(0, head(_arg2)[1], head(_arg2)[2], Automata_decision_tree(2, -1)))
            
            else: 
                _arg2_mut = merge2(_arg2)
                continue
            
            break
    
    def arrow_53(tupled_arg: Tuple[int, int, int], l: FSharpList[Tuple[int, int, int]]=l) -> Tuple[int, int, Automata_decision_tree]:
        return (tupled_arg[0], tupled_arg[1], Automata_decision_tree(2, tupled_arg[2]))
    
    return aux(map(arrow_53, l))


Automata_limit : int = 8192

def Automata_old_decision_table(l: FSharpList[Tuple[int, int, int]]) -> Automata_decision_tree:
    def aux(m_mut: __A, accu_mut: FSharpList[Tuple[__A, int, int]], _arg1_mut: FSharpList[Tuple[__A, int, int]], l: FSharpList[Tuple[int, int, int]]=l) -> Tuple[__A, FSharpList[Tuple[__A, int, int]], FSharpList[Tuple[__A, int, int]]]:
        while True:
            (m, accu, _arg1) = (m_mut, accu_mut, _arg1_mut)
            (pattern_matching_result, a_1, b_1, i_1, rem_1, x_1) = (None, None, None, None, None, None)
            if not is_empty(_arg1):
                if head(_arg1)[2] < 255 if (head(_arg1)[1] < Automata_limit) else (False):
                    pattern_matching_result = 0
                    a_1 = head(_arg1)[0]
                    b_1 = head(_arg1)[1]
                    i_1 = head(_arg1)[2]
                    rem_1 = tail(_arg1)
                    x_1 = head(_arg1)
                
                else: 
                    pattern_matching_result = 1
                
            
            else: 
                pattern_matching_result = 1
            
            if pattern_matching_result == 0:
                def arrow_54(x_2: __A, y: __A=None, m: __A=m, accu: FSharpList[Tuple[__A, int, int]]=accu, _arg1: FSharpList[Tuple[__A, int, int]]=_arg1) -> int:
                    return compare(x_2, y)
                
                m_mut = min_2(arrow_54, a_1, m)
                accu_mut = cons(x_1, accu)
                _arg1_mut = rem_1
                continue
            
            elif pattern_matching_result == 1:
                return (m, accu, _arg1)
            
            break
    
    pattern_input : Tuple[int, FSharpList[Tuple[int, int, int]], FSharpList[Tuple[int, int, int]]] = aux(2147483647, empty(), l)
    table : FSharpList[Tuple[int, int, int]] = pattern_input[1]
    rest : FSharpList[Tuple[int, int, int]] = pattern_input[2]
    min : int = pattern_input[0] or 0
    if not is_empty(table):
        if is_empty(tail(table)):
            return Automata_decision_tree(0, head(table)[0] - 1, Automata_decision_tree(2, -1), Automata_decision_tree(0, head(table)[1], Automata_decision_tree(2, head(table)[2]), Automata_decision(rest)))
        
        else: 
            arr : MutableSequence[int] = fill([0] * ((head(table)[1] - min) + 1), 0, (head(table)[1] - min) + 1, 0)
            def set_1(tupled_arg: Tuple[int, int, int], l: FSharpList[Tuple[int, int, int]]=l) -> None:
                for j in range(tupled_arg[0], tupled_arg[1] + 1, 1):
                    arr[j - min] = (tupled_arg[2] + 1) or 0
            
            iterate_1(set_1, table)
            return Automata_decision_tree(0, min - 1, Automata_decision_tree(2, -1), Automata_decision_tree(0, head(table)[1], Automata_decision_tree(1, min, arr), Automata_decision(rest)))
        
    
    else: 
        return Automata_decision(l)
    


def Automata_simplify(min_mut: int, max_mut: int, _arg1_mut: Automata_decision_tree) -> Automata_decision_tree:
    while True:
        (min, max, _arg1) = (min_mut, max_mut, _arg1_mut)
        if _arg1.tag == 0:
            yes : Automata_decision_tree = _arg1.fields[1]
            no : Automata_decision_tree = _arg1.fields[2]
            i : int = _arg1.fields[0] or 0
            if i >= max:
                min_mut = min
                max_mut = max
                _arg1_mut = yes
                continue
            
            elif i < min:
                min_mut = min
                max_mut = max
                _arg1_mut = no
                continue
            
            else: 
                return Automata_decision_tree(0, i, Automata_simplify(min, i, yes), Automata_simplify(i + 1, max, no))
            
        
        else: 
            return _arg1
        
        break


def Automata_segments_of_partition(p: List[FSharpList[Tuple[__A, __B]]]) -> FSharpList[Tuple[__A, __B, int]]:
    seg : FSharpRef[FSharpList[Tuple[__A, __B, int]]] = FSharpRef(empty())
    def arrow_56(i: int, c: FSharpList[Tuple[__A, __B]], p: List[FSharpList[Tuple[__A, __B]]]=p) -> None:
        def arrow_55(tupled_arg: Tuple[__A, __B]) -> None:
            seg.contents = cons((tupled_arg[0], tupled_arg[1], i), seg.contents)
        
        iterate_1(arrow_55, c)
    
    iterate_indexed(arrow_56, p)
    def arrow_57(tupled_arg_1: Tuple[__A, __B, int], tupled_arg_2: Tuple[__A, __B, int], p: List[FSharpList[Tuple[__A, __B]]]=p) -> int:
        return compare(tupled_arg_1[0], tupled_arg_2[0])
    
    return sort_with(arrow_57, seg.contents)


def Automata_decision_table(p: List[FSharpList[Tuple[int, int]]]) -> Automata_decision_tree:
    return Automata_simplify(-1, Cset_max_code, Automata_old_decision_table(Automata_segments_of_partition(p)))


def Automata_char_pair_op(func: Callable[[__A, __B], Option[__C]], name: str, p0: __A, p1: __B=None) -> __C:
    match_value : Option[__C] = func(p0, p1)
    if match_value is None:
        raise Exception(to_text(interpolate("the %P() operator can only applied to single-character length regexps", [name])))
    
    else: 
        return value(match_value)
    


def Automata_repeat(r: Callable[[Automata_node], Automata_node], _arg1_0: int, _arg1_1: int) -> Callable[[Automata_node], Automata_node]:
    _arg1 : Tuple[int, int] = (_arg1_0, _arg1_1)
    if _arg1[0] == 0:
        if _arg1[1] == 0:
            def arrow_58(succ: Automata_node, r: Callable[[Automata_node], Automata_node]=r, _arg1_0: int=_arg1_0, _arg1_1: int=_arg1_1) -> Automata_node:
                return Automata_eps(succ)
            
            return arrow_58
        
        else: 
            r2_1 : Callable[[Automata_node], Automata_node]
            r2 : Callable[[Automata_node], Automata_node] = Automata_repeat(r, 0, _arg1[1] - 1)
            def arrow_59(succ_2: Automata_node, r: Callable[[Automata_node], Automata_node]=r, _arg1_0: int=_arg1_0, _arg1_1: int=_arg1_1) -> Automata_node:
                return Automata_seq(r, r2, succ_2)
            
            r2_1 = arrow_59
            def arrow_60(succ_3: Automata_node, r: Callable[[Automata_node], Automata_node]=r, _arg1_0: int=_arg1_0, _arg1_1: int=_arg1_1) -> Automata_node:
                def r1(succ_1: Automata_node) -> Automata_node:
                    return Automata_eps(succ_1)
                
                return Automata_alt(r1, r2_1, succ_3)
            
            return arrow_60
        
    
    else: 
        r2_2 : Callable[[Automata_node], Automata_node] = Automata_repeat(r, _arg1[0] - 1, _arg1[1] - 1)
        def arrow_61(succ_4: Automata_node, r: Callable[[Automata_node], Automata_node]=r, _arg1_0: int=_arg1_0, _arg1_1: int=_arg1_1) -> Automata_node:
            return Automata_seq(r, r2_2, succ_4)
        
        return arrow_61
    


def expr_62() -> TypeInfo:
    return union_type("Fable.Sedlex.Compiler.keep_token", [], keep_token, lambda: [[], [["Item", int32_type]]])


class keep_token(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["Discard", "Tokenize"]
    

keep_token_reflection = expr_62

def expr_63() -> TypeInfo:
    return union_type("Fable.Sedlex.Compiler.lang", [], lang, lambda: [[["Item1", Automata_decision_tree_reflection()], ["Item2", array_type(lang_reflection())], ["Item3", lang_reflection()]], [], [["Item1", int32_type], ["Item2", lang_reflection()]], [["Item", int32_type]], [["Item", int32_type]]])


class lang(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["Lang_match_i", "Lang_backtrace", "Lang_mark", "Lang_callst", "Lang_int"]
    

lang_reflection = expr_63

def expr_64() -> TypeInfo:
    return record_type("Fable.Sedlex.Compiler.compiled_unit", [], compiled_unit, lambda: [["states", class_type("Microsoft.FSharp.Collections.FSharpMap`2", [int32_type, lang_reflection()])], ["lex_code", tuple_type(array_type(keep_token_reflection()), string_type)], ["referenced_decision_trees", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [Automata_decision_tree_reflection()])]])


class compiled_unit(Record):
    def __init__(self, states: Any, lex_code: Tuple[List[keep_token], str], referenced_decision_trees: Any) -> None:
        super().__init__()
        self.states = states
        self.lex_code = lex_code
        self.referenced_decision_trees = referenced_decision_trees
    

compiled_unit_reflection = expr_64

def build(definition: List[Tuple[Callable[[Automata_node], Automata_node], keep_token]], error_msg: str) -> compiled_unit:
    class ObjectExpr67:
        @property
        def Compare(self) -> Any:
            def arrow_66(x: List[FSharpList[Tuple[int, int]]], y: List[FSharpList[Tuple[int, int]]]) -> int:
                def arrow_65(x_1: FSharpList[Tuple[int, int]], y_1: FSharpList[Tuple[int, int]]) -> int:
                    return compare(x_1, y_1)
                
                return compare_with(arrow_65, x, y)
            
            return arrow_66
        
    partitions : Any = empty_1(ObjectExpr67())
    partition_counter : FSharpRef[int] = FSharpRef(0)
    class ObjectExpr70:
        @property
        def Compare(self) -> Any:
            def arrow_69(x_2: List[FSharpList[Tuple[int, int]]], y_2: List[FSharpList[Tuple[int, int]]]) -> int:
                def arrow_68(x_3: FSharpList[Tuple[int, int]], y_3: FSharpList[Tuple[int, int]]) -> int:
                    return compare(x_3, y_3)
                
                return compare_with(arrow_68, x_2, y_2)
            
            return arrow_69
        
    partition_trees : Any = empty_1(ObjectExpr70())
    class ObjectExpr72:
        @property
        def Compare(self) -> Any:
            def arrow_71(x_4: Automata_decision_tree, y_4: Automata_decision_tree) -> int:
                return compare(x_4, y_4)
            
            return arrow_71
        
    referenced_decision_trees : Any = empty_2(ObjectExpr72())
    def best_final(final: List[bool], definition: List[Tuple[Callable[[Automata_node], Automata_node], keep_token]]=definition, error_msg: str=error_msg) -> Option[int]:
        fin : FSharpRef[Option[int]] = FSharpRef(None)
        for i in range(len(final) - 1, 0 - 1, -1):
            if final[i]:
                fin.contents = i
            
        return fin.contents
    
    def gen_definition(l: List[Tuple[Callable[[Automata_node], Automata_node], keep_token]], definition: List[Tuple[Callable[[Automata_node], Automata_node], keep_token]]=definition, error_msg: str=error_msg) -> Callable[[str], compiled_unit]:
        def arrow_78(error: str, l: List[Tuple[Callable[[Automata_node], Automata_node], keep_token]]=l) -> compiled_unit:
            brs : List[Tuple[Callable[[Automata_node], Automata_node], keep_token]] = l
            def arrow_73(tuple: Tuple[Callable[[Automata_node], Automata_node], keep_token]) -> Callable[[Automata_node], Automata_node]:
                return tuple[0]
            
            auto : List[Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]] = Automata_compile(map_1(arrow_73, brs, None))
            def arrow_74(tupled_arg: Tuple[Callable[[Automata_node], Automata_node], keep_token]) -> keep_token:
                return tupled_arg[1]
            
            cases : List[keep_token] = map_1(arrow_74, brs, None)
            def arrow_75(x_6: Option[Tuple[int, lang]]=None) -> Option[Tuple[int, lang]]:
                return x_6
            
            class ObjectExpr77:
                @property
                def Compare(self) -> Any:
                    def arrow_76(x_7: int, y_5: int) -> int:
                        return compare_primitives(x_7, y_5)
                    
                    return arrow_76
                
            return compiled_unit(of_array_1(choose(arrow_75, map_indexed(uncurry(2, gen_state(auto)), auto, None), None), ObjectExpr77()), (cases, error), referenced_decision_trees)
        
        return arrow_78
    
    def call_state(auto_1: List[Tuple[List[__A], List[bool]]], definition: List[Tuple[Callable[[Automata_node], Automata_node], keep_token]]=definition, error_msg: str=error_msg) -> Callable[[int], lang]:
        def arrow_79(state: int, auto_1: List[Tuple[List[__A], List[bool]]]=auto_1) -> lang:
            pattern_input : Tuple[List[__A], List[bool]] = auto_1[state]
            if len(pattern_input[0]) == 0:
                match_value_2 : Option[int] = best_final(pattern_input[1])
                if match_value_2 is None:
                    raise Exception("cannot found best final")
                
                else: 
                    return lang(4, match_value_2)
                
            
            else: 
                return lang(3, state)
            
        
        return arrow_79
    
    def gen_state(auto_2: List[Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]], definition: List[Tuple[Callable[[Automata_node], Automata_node], keep_token]]=definition, error_msg: str=error_msg) -> Callable[[int, Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]], Option[Tuple[int, lang]]]:
        def arrow_84(i_2: int, auto_2: List[Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]]=auto_2) -> Callable[[Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]], Option[Tuple[int, lang]]]:
            def arrow_83(tupled_arg_1: Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]) -> Option[Tuple[int, lang]]:
                trans_1 : List[Tuple[FSharpList[Tuple[int, int]], int]] = tupled_arg_1[0]
                def arrow_80(tuple_1: Tuple[FSharpList[Tuple[int, int]], int]) -> FSharpList[Tuple[int, int]]:
                    return tuple_1[0]
                
                v_partition : List[FSharpList[Tuple[int, int]]] = map_1(arrow_80, trans_1, None)
                def arrow_81(tupled_arg_2: Tuple[FSharpList[Tuple[int, int]], int]) -> lang:
                    return call_state(auto_2)(tupled_arg_2[1])
                
                cases_1 : List[lang] = map_1(arrow_81, trans_1, None)
                def body(_unit: Any=None) -> lang:
                    def arrow_82(_unit: Any=None) -> Automata_decision_tree:
                        nonlocal referenced_decision_trees, partition_trees
                        p : List[FSharpList[Tuple[int, int]]] = v_partition
                        match_value : Option[Automata_decision_tree] = try_find(p, partition_trees)
                        if match_value is not None:
                            return match_value
                        
                        else: 
                            tree : Automata_decision_tree = Automata_simplify_decision_tree(Automata_decision_table(p))
                            referenced_decision_trees = add_1(tree, referenced_decision_trees)
                            partition_trees = add(p, tree, partition_trees)
                            return tree
                        
                    
                    return lang(0, arrow_82(), cases_1, lang(1))
                
                match_value_3 : Option[int] = best_final(tupled_arg_1[1])
                if match_value_3 is not None:
                    if len(trans_1) == 0:
                        return None
                    
                    elif match_value_3 is not None:
                        return (i_2, lang(2, match_value_3, body()))
                    
                    else: 
                        raise Exception("Match failure")
                    
                
                else: 
                    return (i_2, body())
                
            
            return arrow_83
        
        return arrow_84
    
    return gen_definition(definition)(error_msg)


def expr_85() -> TypeInfo:
    return record_type("Fable.Sedlex.Compiler.lexbuf", [], lexbuf, lambda: [["refill", lambda_type(string_type, lambda_type(int32_type, lambda_type(int32_type, int32_type)))], ["buf", array_type(int32_type)], ["src", string_type], ["len", int32_type], ["offset", int32_type], ["pos", int32_type], ["curr_bol", int32_type], ["curr_line", int32_type], ["start_pos", int32_type], ["start_bol", int32_type], ["start_line", int32_type], ["marked_pos", int32_type], ["marked_bol", int32_type], ["marked_line", int32_type], ["marked_val", int32_type], ["filename", string_type], ["finished", bool_type]])


class lexbuf(Record):
    def __init__(self, refill: Callable[[str, int, int], int], buf: MutableSequence[int], src: str, len_1: int, offset: int, pos: int, curr_bol: int, curr_line: int, start_pos: int, start_bol: int, start_line: int, marked_pos: int, marked_bol: int, marked_line: int, marked_val: int, filename: str, finished: bool) -> None:
        super().__init__()
        self.refill = refill
        self.buf = buf
        self.src = src
        self.len = len_1 or 0
        self.offset = offset or 0
        self.pos = pos or 0
        self.curr_bol = curr_bol or 0
        self.curr_line = curr_line or 0
        self.start_pos = start_pos or 0
        self.start_bol = start_bol or 0
        self.start_line = start_line or 0
        self.marked_pos = marked_pos or 0
        self.marked_bol = marked_bol or 0
        self.marked_line = marked_line or 0
        self.marked_val = marked_val or 0
        self.filename = filename
        self.finished = finished
    

lexbuf_reflection = expr_85

def arrow_86(_arg3: str, _arg2: int, _arg1: int) -> int:
    raise Exception("invalid")


empty_lexbuf : lexbuf = lexbuf(arrow_86, [], "", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "", False)

def from_ustring(a: str) -> lexbuf:
    len_1 : int = len(a) or 0
    buf : MutableSequence[int] = []
    with get_enumerator(list(a)) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            c : str = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
            (buf.append(ord(c)))
    return lexbuf(empty_lexbuf.refill, buf, a, len_1, empty_lexbuf.offset, empty_lexbuf.pos, empty_lexbuf.curr_bol, empty_lexbuf.curr_line, empty_lexbuf.start_pos, empty_lexbuf.start_bol, empty_lexbuf.start_line, empty_lexbuf.marked_pos, empty_lexbuf.marked_bol, empty_lexbuf.marked_line, empty_lexbuf.marked_val, empty_lexbuf.filename, True)


chunk_size : int = 512

def new_line(lexbuf_1: lexbuf) -> None:
    lexbuf_1.curr_line = (lexbuf_1.curr_line + 1) or 0
    lexbuf_1.curr_bol = (lexbuf_1.pos + lexbuf_1.offset) or 0


def public_next_int(lexbuf_1: lexbuf) -> int:
    if lexbuf_1.finished if (lexbuf_1.pos == lexbuf_1.len) else (False):
        return -1
    
    else: 
        ret : int = lexbuf_1.buf[lexbuf_1.pos] or 0
        lexbuf_1.pos = (lexbuf_1.pos + 1) or 0
        if ret == 10:
            new_line(lexbuf_1)
        
        return ret
    


def mark(lexbuf_1: lexbuf, i: int) -> None:
    lexbuf_1.marked_pos = lexbuf_1.pos or 0
    lexbuf_1.marked_bol = lexbuf_1.curr_bol or 0
    lexbuf_1.marked_line = lexbuf_1.curr_line or 0
    lexbuf_1.marked_val = i or 0


def start(lexbuf_1: lexbuf) -> None:
    lexbuf_1.start_pos = lexbuf_1.pos or 0
    lexbuf_1.start_bol = lexbuf_1.curr_bol or 0
    lexbuf_1.start_line = lexbuf_1.curr_line or 0
    mark(lexbuf_1, -1)


def backtrack(lexbuf_1: lexbuf) -> int:
    lexbuf_1.pos = lexbuf_1.marked_pos or 0
    lexbuf_1.curr_bol = lexbuf_1.marked_bol or 0
    lexbuf_1.curr_line = lexbuf_1.marked_line or 0
    return lexbuf_1.marked_val


def lexeme_start(lexbuf_1: lexbuf) -> int:
    return lexbuf_1.start_pos + lexbuf_1.offset


def lexeme_end(lexbuf_1: lexbuf) -> int:
    return lexbuf_1.pos + lexbuf_1.offset


def lexeme(lexbuf_1: lexbuf) -> str:
    return lexbuf_1.src[lexbuf_1.start_pos:(lexbuf_1.pos - 1) + 1]


def lexeme_char(lexbuf_1: lexbuf, pos: int) -> str:
    return lexbuf_1.src[lexbuf_1.start_pos + pos]


def expr_87() -> TypeInfo:
    return record_type("Fable.Sedlex.Compiler.position", [], position, lambda: [["pos_fname", string_type], ["pos_lnum", int32_type], ["pos_cnum", int32_type], ["pos_bol", int32_type]])


class position(Record):
    def __init__(self, pos_fname: str, pos_lnum: int, pos_cnum: int, pos_bol: int) -> None:
        super().__init__()
        self.pos_fname = pos_fname
        self.pos_lnum = pos_lnum or 0
        self.pos_cnum = pos_cnum or 0
        self.pos_bol = pos_bol or 0
    

position_reflection = expr_87

def lexing_positions(lexbuf_1: lexbuf) -> Tuple[position, position]:
    return (position(lexbuf_1.filename, lexbuf_1.start_line, lexbuf_1.start_pos + lexbuf_1.offset, lexbuf_1.start_bol), position(lexbuf_1.filename, lexbuf_1.curr_line, lexbuf_1.pos + lexbuf_1.offset, lexbuf_1.curr_bol))


def with_tokenizer(lexer_0027: Callable[[lexbuf], __A], lexbuf_1: lexbuf) -> Callable[[], Tuple[__A, position, position]]:
    def lexer(lexer_0027: Callable[[lexbuf], __A]=lexer_0027, lexbuf_1: lexbuf=lexbuf_1) -> Tuple[__A, position, position]:
        token_1 : __A = lexer_0027(lexbuf_1)
        pattern_input : Tuple[position, position] = lexing_positions(lexbuf_1)
        return (token_1, pattern_input[0], pattern_input[1])
    
    return lexer


class token:
    @property
    @abstractmethod
    def col(self) -> int:
        ...
    
    @property
    @abstractmethod
    def file(self) -> str:
        ...
    
    @property
    @abstractmethod
    def lexeme(self) -> str:
        ...
    
    @property
    @abstractmethod
    def line(self) -> int:
        ...
    
    @property
    @abstractmethod
    def offset(self) -> int:
        ...
    
    @property
    @abstractmethod
    def span(self) -> int:
        ...
    
    @property
    @abstractmethod
    def token_id(self) -> int:
        ...
    

def arrow_88(a: str) -> lexbuf:
    return from_ustring(a)


Utf8_from_ustring : Callable[[str], lexbuf] = arrow_88

def Utf8_lexeme_char(lexbuf_1: lexbuf, pos: int) -> str:
    return lexeme_char(lexbuf_1, pos)


def Utf8_sub_lexeme(lexbuf_1: lexbuf, pos: int, len_1: int) -> str:
    return lexbuf_1.src[lexbuf_1.start_pos + pos:(((lexbuf_1.start_pos + pos) + len_1) - 1) + 1]


def Utf8_lexeme(lexbuf_1: lexbuf) -> str:
    return lexbuf_1.src[lexbuf_1.start_pos:(lexbuf_1.pos - 1) + 1]


def inline_thread(cu: compiled_unit, token_creator: Callable[[Tuple[int, str, int, int, int, int, str]], token]) -> Callable[[lexbuf], Option[token]]:
    class ObjectExpr90:
        @property
        def Compare(self) -> Any:
            def arrow_89(x: Automata_decision_tree, y: Automata_decision_tree) -> int:
                return compare(x, y)
            
            return arrow_89
        
    decision_funcs : Any = empty_1(ObjectExpr90())
    class ObjectExpr92:
        @property
        def Compare(self) -> Any:
            def arrow_91(x_1: int, y_1: int) -> int:
                return compare_primitives(x_1, y_1)
            
            return arrow_91
        
    state_funcs : Any = empty_1(ObjectExpr92())
    def evaluate_decision_func(tree: Automata_decision_tree, cu: compiled_unit=cu, token_creator: Callable[[Tuple[int, str, int, int, int, int, str]], token]=token_creator) -> Callable[[int], int]:
        nonlocal decision_funcs
        match_value : Option[Callable[[int], int]] = try_find(tree, decision_funcs)
        if match_value is None:
            f_1 : Callable[[int], int]
            if tree.tag == 2:
                def arrow_93(_arg1: int, tree: Automata_decision_tree=tree) -> int:
                    return tree.fields[0]
                
                f_1 = arrow_93
            
            elif tree.tag == 1:
                def arrow_94(c_1: int, tree: Automata_decision_tree=tree) -> int:
                    return tree.fields[1][c_1 - tree.fields[0]] - 1
                
                f_1 = arrow_94
            
            else: 
                yes_f : Callable[[int], int] = evaluate_decision_func(tree.fields[1])
                no_f : Callable[[int], int] = evaluate_decision_func(tree.fields[2])
                def arrow_95(c: int, tree: Automata_decision_tree=tree) -> int:
                    return yes_f(c) if (c <= tree.fields[0]) else (no_f(c))
                
                f_1 = arrow_95
            
            decision_funcs = add(tree, f_1, decision_funcs)
            return f_1
        
        else: 
            return match_value
        
    
    def evaluate_state_func(lang_1: lang, cu: compiled_unit=cu, token_creator: Callable[[Tuple[int, str, int, int, int, int, str]], token]=token_creator) -> Callable[[lexbuf], int]:
        if lang_1.tag == 3:
            func_ref : FSharpRef[Callable[[lexbuf], int]] = find(lang_1.fields[0], state_funcs)
            def arrow_96(buf_1: lexbuf, lang_1: lang=lang_1) -> int:
                return func_ref.contents(buf_1)
            
            return arrow_96
        
        elif lang_1.tag == 4:
            def arrow_97(_arg2: lexbuf, lang_1: lang=lang_1) -> int:
                return lang_1.fields[0]
            
            return arrow_97
        
        elif lang_1.tag == 2:
            f_2 : Callable[[lexbuf], int] = evaluate_state_func(lang_1.fields[1])
            def arrow_98(buf_2: lexbuf, lang_1: lang=lang_1) -> int:
                mark(buf_2, lang_1.fields[0])
                return f_2(buf_2)
            
            return arrow_98
        
        elif lang_1.tag == 0:
            f_cases : List[Callable[[lexbuf], int]] = map_1(evaluate_state_func, lang_1.fields[1], None)
            f_error : Callable[[lexbuf], int] = evaluate_state_func(lang_1.fields[2])
            decision_func : Callable[[int], int] = evaluate_decision_func(lang_1.fields[0])
            def arrow_99(buf_3: lexbuf, lang_1: lang=lang_1) -> int:
                match_value_1 : Option[Callable[[lexbuf], int]] = try_item(decision_func(public_next_int(buf_3)), f_cases)
                return match_value_1(buf_3) if (match_value_1 is not None) else (f_error(buf_3))
            
            return arrow_99
        
        else: 
            def arrow_100(buf: lexbuf, lang_1: lang=lang_1) -> int:
                return backtrack(buf)
            
            return arrow_100
        
    
    def arrow_101(_arg4: int, _arg3: lang, cu: compiled_unit=cu, token_creator: Callable[[Tuple[int, str, int, int, int, int, str]], token]=token_creator) -> FSharpRef[Callable[[lexbuf], int]]:
        return FSharpRef(None)
    
    state_funcs = map_2(arrow_101, cu.states)
    with get_enumerator(cu.states) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            kv : Any = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
            FSharpMap__get_Item(state_funcs, kv[0]).contents = evaluate_state_func(kv[1])
    with get_enumerator(cu.referenced_decision_trees) as enumerator_1:
        while enumerator_1.System_Collections_IEnumerator_MoveNext():
            ignore(evaluate_decision_func(enumerator_1.System_Collections_Generic_IEnumerator_00601_get_Current()))
    pattern_input : Tuple[List[keep_token], str] = cu.lex_code
    initial_state_fun : Callable[[lexbuf], int] = find(0, state_funcs).contents
    def arrow_102(buf_4: lexbuf, cu: compiled_unit=cu, token_creator: Callable[[Tuple[int, str, int, int, int, int, str]], token]=token_creator) -> Option[token]:
        start(buf_4)
        match_value_2 : Option[keep_token] = try_item(initial_state_fun(buf_4), pattern_input[0])
        if match_value_2 is None:
            raise Exception(pattern_input[1])
        
        elif match_value_2.tag == 1:
            token_id : int = match_value_2.fields[0] or 0
            pattern_input_1 : Tuple[int, int, int]
            lexbuf_1 : lexbuf = buf_4
            pattern_input_1 = (lexbuf_1.start_line, lexbuf_1.pos - lexbuf_1.curr_bol, lexbuf_1.pos - lexbuf_1.start_pos)
            return token_creator((token_id, lexeme(buf_4), pattern_input_1[0], pattern_input_1[1], pattern_input_1[2], buf_4.start_pos, buf_4.filename))
        
        else: 
            return None
        
    
    return arrow_102


Lexer_discard : keep_token = keep_token(0)

def Lexer_tokenize(i: int) -> keep_token:
    return keep_token(1, i)


def por(a: Callable[[Automata_node], Automata_node], b: Callable[[Automata_node], Automata_node]) -> Callable[[Automata_node], Automata_node]:
    def arrow_103(succ: Automata_node, a: Callable[[Automata_node], Automata_node]=a, b: Callable[[Automata_node], Automata_node]=b) -> Automata_node:
        return Automata_alt(a, b, succ)
    
    return arrow_103


def pseq(xs: List[Callable[[__A], __A]]) -> Callable[[__B], __B]:
    xs_1 : FSharpList[Callable[[__B], __B]] = of_array(xs)
    if not is_empty(xs_1):
        def arrow_105(r: Callable[[__B], __B], p_1: Callable[[__B], __B], xs: List[Callable[[__A], __A]]=xs) -> Callable[[__B], __B]:
            def arrow_104(succ: __B=None) -> __B:
                return Automata_seq(r, p_1, succ)
            
            return arrow_104
        
        return fold(arrow_105, head(xs_1), tail(xs_1))
    
    else: 
        raise Exception("empty sequence")
    


def pstar(x: Callable[[Automata_node], Automata_node]) -> Callable[[Automata_node], Automata_node]:
    def arrow_106(succ: Automata_node, x: Callable[[Automata_node], Automata_node]=x) -> Automata_node:
        return Automata_rep(x, succ)
    
    return arrow_106


def pplus(x: Callable[[Automata_node], Automata_node]) -> Callable[[Automata_node], Automata_node]:
    def arrow_107(succ: Automata_node, x: Callable[[Automata_node], Automata_node]=x) -> Automata_node:
        return Automata_plus(x, succ)
    
    return arrow_107


def prep(p0: Callable[[Automata_node], Automata_node], i1: int, i2: int) -> Callable[[Automata_node], Automata_node]:
    if i1 <= i2 if (0 <= i1) else (False):
        return Automata_repeat(p0, i1, i2)
    
    else: 
        raise Exception(to_text(interpolate("repeat operator requires 0 \u003c= %P() \u003c= %P()", [i1, i2])))
    


def popt(p: Callable[[Automata_node], Automata_node]) -> Callable[[Automata_node], Automata_node]:
    def arrow_108(succ_1: Automata_node, p: Callable[[Automata_node], Automata_node]=p) -> Automata_node:
        def r1(succ: Automata_node) -> Automata_node:
            return Automata_eps(succ)
        
        return Automata_alt(r1, p, succ_1)
    
    return arrow_108


def pcompl(arg: Callable[[Automata_node], Automata_node]) -> Callable[[Automata_node], Automata_node]:
    match_value : Option[Callable[[Automata_node], Automata_node]] = Automata_compl(arg)
    if match_value is None:
        raise Exception("the Compl operator can only applied to a single-character length regexp")
    
    else: 
        return match_value
    


def psub(arg: Callable[[Automata_node], Automata_node]) -> Callable[[Callable[[Automata_node], Automata_node]], __C]:
    def arrow_109(p1: Callable[[Automata_node], Automata_node], arg: Callable[[Automata_node], Automata_node]=arg) -> Any:
        return Automata_char_pair_op(uncurry(2, Automata_subtract), "sub", arg, p1)
    
    return arrow_109


def pintersct(arg: Callable[[Automata_node], Automata_node]) -> Callable[[Callable[[Automata_node], Automata_node]], __C]:
    def arrow_110(p1: Callable[[Automata_node], Automata_node], arg: Callable[[Automata_node], Automata_node]=arg) -> Any:
        return Automata_char_pair_op(uncurry(2, Automata_intersection), "intersect", arg, p1)
    
    return arrow_110


def pchars(arg: List[str]) -> Callable[[Automata_node], Automata_node]:
    arg00 : FSharpList[str] = of_array(arg)
    clo1 : Callable[[Automata_node], Automata_node]
    c : FSharpList[Tuple[int, int]] = Cset_empty()
    with get_enumerator(arg00) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            ch : str = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
            i : int = ord(ch) or 0
            c = Cset_union(c, Cset_singleton(i))
    def arrow_111(succ: Automata_node, arg: List[str]=arg) -> Automata_node:
        return Automata_chars(c, succ)
    
    clo1 = arrow_111
    def arrow_112(arg10: Automata_node, arg: List[str]=arg) -> Automata_node:
        return clo1(arg10)
    
    return arrow_112


def pinterval(i_start: int, i_end: int) -> Callable[[Automata_node], Automata_node]:
    c : FSharpList[Tuple[int, int]] = Cset_interval(i_start, i_end)
    def arrow_113(succ: Automata_node, i_start: int=i_start, i_end: int=i_end) -> Automata_node:
        return Automata_chars(c, succ)
    
    return arrow_113


def regexp_for_char(c: str) -> Callable[[Automata_node], Automata_node]:
    c_1 : FSharpList[Tuple[int, int]] = Cset_singleton(ord(c))
    def arrow_114(succ: Automata_node, c: str=c) -> Automata_node:
        return Automata_chars(c_1, succ)
    
    return arrow_114


def regexp_for_string(s: str) -> Callable[[Automata_node], Automata_node]:
    def aux(n: int, s: str=s) -> Callable[[Automata_node], Automata_node]:
        if n == len(s):
            def arrow_115(succ: Automata_node, n: int=n) -> Automata_node:
                return Automata_eps(succ)
            
            return arrow_115
        
        else: 
            r1 : Callable[[Automata_node], Automata_node] = regexp_for_char(s[n])
            r2 : Callable[[Automata_node], Automata_node] = aux(n + 1)
            def arrow_116(succ_1: Automata_node, n: int=n) -> Automata_node:
                return Automata_seq(r1, r2, succ_1)
            
            return arrow_116
        
    
    return aux(0)


def pstring(s: str) -> Callable[[Automata_node], Automata_node]:
    return regexp_for_string(s)


def pchar(c: str) -> Callable[[Automata_node], Automata_node]:
    return regexp_for_char(c)


pany : Callable[[Automata_node], Automata_node] = pinterval(0, Cset_max_code)

def arrow_120(_unit: Any=None) -> Callable[[Automata_node], Automata_node]:
    c : FSharpList[Tuple[int, int]] = Cset_singleton(-1)
    def arrow_119(succ: Automata_node) -> Automata_node:
        return Automata_chars(c, succ)
    
    return arrow_119


peof : Callable[[Automata_node], Automata_node] = arrow_120()

