from __future__ import annotations
from array import array
from typing import (Any, Tuple, TypeVar, Callable, Optional, List)
from fable_modules.fable_library.array import (map as map_1, iterate, initialize, fill, iterate_indexed, compare_with, choose, map_indexed, try_item)
from fable_modules.fable_library.list import (FSharpList, is_empty, head, tail, cons, empty, singleton, of_array, exists, fold, sort_with, concat, map, to_array, append, filter, iterate as iterate_1)
from fable_modules.fable_library.map import (empty as empty_1, try_find, add, find, of_array as of_array_1, map as map_2, FSharpMap__get_Item)
from fable_modules.fable_library.option import value
from fable_modules.fable_library.reflection import (TypeInfo, int32_type, list_type, tuple_type, record_type, array_type, union_type, class_type, string_type, lambda_type, bool_type)
from fable_modules.fable_library.set import (empty as empty_2, add as add_1)
from fable_modules.fable_library.string import (to_text, interpolate)
from fable_modules.fable_library.types import (Record, FSharpRef, Union)
from fable_modules.fable_library.util import (compare, uncurry, compare_primitives, min as min_2, get_enumerator, ignore)

a_ = TypeVar("a_")

b_ = TypeVar("b_")

c_ = TypeVar("c_")

def incr(a: Any) -> None:
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


Cset_max_code = 1114111

Cset_min_code = -1

def Cset_empty() -> FSharpList[Any]:
    return empty()


def Cset_singleton(i: a_=None) -> FSharpList[Tuple[a_, a_]]:
    return singleton((i, i))


def Cset_is_empty(_arg1: FSharpList[Any]) -> bool:
    if is_empty(_arg1):
        return True
    
    else: 
        return False
    


def Cset_interval(i: a_, j: a_=None) -> FSharpList[Tuple[a_, a_]]:
    if compare(i, j) <= 0:
        return singleton((i, j))
    
    else: 
        return singleton((j, i))
    


Cset_eof = Cset_singleton(-1)

Cset_any = Cset_interval(0, Cset_max_code)

def Cset_complement(c: FSharpList[Tuple[int, int]]) -> FSharpList[Tuple[int, int]]:
    def aux(start_1: int, _arg1: FSharpList[Tuple[int, int]], c=c) -> FSharpList[Tuple[int, int]]:
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


def expr_63() -> TypeInfo:
    return record_type("Fable.Sedlex.Compiler.Automata.node", [], Automata_node, lambda: [["id", int32_type], ["eps", list_type(Automata_node_reflection())], ["trans", list_type(tuple_type(list_type(tuple_type(int32_type, int32_type)), Automata_node_reflection()))]])


class Automata_node(Record):
    def __init__(self, id: int, eps: FSharpList[Automata_node], trans: FSharpList[Tuple[FSharpList[Tuple[int, int]], Automata_node]]) -> None:
        super().__init__()
        self.id = id or 0
        self.eps = eps
        self.trans = trans
    

Automata_node_reflection = expr_63

Automata_cur_id = FSharpRef(0)

def Automata_new_node() -> Automata_node:
    incr(Automata_cur_id)
    return Automata_node(Automata_cur_id.contents, empty(), empty())


def Automata_seq(r1: Callable[[a_], b_], r2: Callable[[c_], a_], succ: c_=None) -> b_:
    return r1(r2(succ))


def Automata_is_chars(final: Any, _arg1: Automata_node) -> Optional[FSharpList[Tuple[int, int]]]:
    (pattern_matching_result, c_1, f_1) = (None, None, None)
    if is_empty(_arg1.eps):
        if not is_empty(_arg1.trans):
            if is_empty(tail(_arg1.trans)):
                def arrow_64(final=final, _arg1=_arg1) -> bool:
                    c : FSharpList[Tuple[int, int]] = head(_arg1.trans)[0]
                    return head(_arg1.trans)[1] is final
                
                if arrow_64():
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
    match_value : Tuple[Optional[FSharpList[Tuple[int, int]]], Optional[FSharpList[Tuple[int, int]]]] = (Automata_is_chars(succ, nr1), Automata_is_chars(succ, nr2))
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


def Automata_eps(succ: a_=None) -> a_:
    return succ


def Automata_compl(r: Callable[[Automata_node], Automata_node]) -> Optional[Callable[[Automata_node], Automata_node]]:
    n : Automata_node = Automata_new_node()
    match_value : Optional[FSharpList[Tuple[int, int]]] = Automata_is_chars(n, r(n))
    if match_value is not None:
        def arrow_65(r=r) -> Callable[[Automata_node], Automata_node]:
            c_1 : FSharpList[Tuple[int, int]] = Cset_difference(Cset_any, match_value)
            return lambda succ: Automata_chars(c_1, succ)
        
        return arrow_65()
    
    else: 
        return None
    


def Automata_pair_op(f: Callable[[FSharpList[Tuple[int, int]], FSharpList[Tuple[int, int]]], FSharpList[Tuple[int, int]]], r0: Callable[[Automata_node], Automata_node], r1: Callable[[Automata_node], Automata_node]) -> Optional[Callable[[Automata_node], Automata_node]]:
    n : Automata_node = Automata_new_node()
    to_chars : Callable[[Callable[[Automata_node], Automata_node]], Optional[FSharpList[Tuple[int, int]]]] = lambda r, f=f, r0=r0, r1=r1: Automata_is_chars(n, r(n))
    match_value : Tuple[Optional[FSharpList[Tuple[int, int]]], Optional[FSharpList[Tuple[int, int]]]] = (to_chars(r0), to_chars(r1))
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
        def arrow_66(f=f, r0=r0, r1=r1) -> Callable[[Automata_node], Automata_node]:
            c : FSharpList[Tuple[int, int]] = f(c0, c1)
            return lambda succ: Automata_chars(c, succ)
        
        return arrow_66()
    
    elif pattern_matching_result == 1:
        return None
    


Automata_subtract = lambda r0: lambda r1: Automata_pair_op(lambda c1, c2: Cset_difference(c1, c2), r0, r1)

Automata_intersection = lambda r0: lambda r1: Automata_pair_op(lambda c1, c2: Cset_intersection(c1, c2), r0, r1)

def Automata_compile_re(re: Callable[[Automata_node], a_]) -> Tuple[a_, Automata_node]:
    final : Automata_node = Automata_new_node()
    return (re(final), final)


def Automata_add_node(state: FSharpList[Automata_node], node: Automata_node) -> FSharpList[Automata_node]:
    if exists(lambda b, state=state, node=node: node is b, state):
        return state
    
    else: 
        return Automata_add_nodes(cons(node, state), node.eps)
    


def Automata_add_nodes(state: FSharpList[Automata_node], nodes: FSharpList[Automata_node]) -> FSharpList[Automata_node]:
    return fold(lambda state_1, node, state=state, nodes=nodes: Automata_add_node(state_1, node), state, nodes)


def Automata_transition(state: FSharpList[Automata_node]) -> List[Tuple[FSharpList[Tuple[int, int]], FSharpList[Automata_node]]]:
    def norm(_arg1_mut: FSharpList[Tuple[FSharpList[Tuple[int, int]], a_]], state=state) -> FSharpList[Tuple[FSharpList[Tuple[int, int]], a_]]:
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
    
    t_1 : FSharpList[Tuple[FSharpList[Tuple[int, int]], Automata_node]] = norm(sort_with(lambda tupled_arg, tupled_arg_1, state=state: tupled_arg[1].id - tupled_arg_1[1].id, concat(map(lambda n, state=state: n.trans, state))))
    def split(tupled_arg_2: Tuple[FSharpList[Tuple[int, int]], FSharpList[Tuple[FSharpList[Tuple[int, int]], FSharpList[a_]]]], state=state) -> Callable[[Tuple[FSharpList[Tuple[int, int]], a_]], Tuple[FSharpList[Tuple[int, int]], FSharpList[Tuple[FSharpList[Tuple[int, int]], FSharpList[a_]]]]]:
        all : FSharpList[Tuple[int, int]] = tupled_arg_2[0]
        t_2 : FSharpList[Tuple[FSharpList[Tuple[int, int]], FSharpList[a_]]] = tupled_arg_2[1]
        def arrow_67(tupled_arg_3: Tuple[FSharpList[Tuple[int, int]], a_], tupled_arg_2=tupled_arg_2) -> Tuple[FSharpList[Tuple[int, int]], FSharpList[Tuple[FSharpList[Tuple[int, int]], FSharpList[a_]]]]:
            c0 : FSharpList[Tuple[int, int]] = tupled_arg_3[0]
            n0 : a_ = tupled_arg_3[1]
            t_3 : FSharpList[Tuple[FSharpList[Tuple[int, int]], FSharpList[a_]]] = append(cons((Cset_difference(c0, all), singleton(n0)), map(lambda tupled_arg_4: (Cset_intersection(tupled_arg_4[0], c0), cons(n0, tupled_arg_4[1])), t_2)), map(lambda tupled_arg_5: (Cset_difference(tupled_arg_5[0], c0), tupled_arg_5[1]), t_2))
            return (Cset_union(all, c0), filter(lambda tupled_arg_6: not Cset_is_empty(tupled_arg_6[0]), t_3))
        
        return arrow_67
    
    t_6 : List[Tuple[FSharpList[Tuple[int, int]], FSharpList[Automata_node]]] = to_array(map(lambda tupled_arg_7, state=state: (tupled_arg_7[0], Automata_add_nodes(empty(), tupled_arg_7[1])), fold(uncurry(2, split), (Cset_empty(), empty()), t_1)[1]))
    t_6.sort()
    return t_6


def Automata_compile(rs: List[Callable[[Automata_node], Automata_node]]) -> List[Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]]:
    rs_1 : List[Tuple[Automata_node, Automata_node]] = map_1(lambda re, rs=rs: Automata_compile_re(re), rs, None)
    counter : Any = FSharpRef(0)
    class ObjectExpr68:
        @property
        def Compare(self) -> Any:
            return lambda x, y: compare(x, y)
        
    states : Any = empty_1(ObjectExpr68())
    class ObjectExpr69:
        @property
        def Compare(self) -> Any:
            return lambda x_1, y_1: compare_primitives(x_1, y_1)
        
    states_def : Any = empty_1(ObjectExpr69())
    def aux(state: FSharpList[Automata_node], rs=rs) -> int:
        nonlocal states, states_def
        match_value : Optional[int] = try_find(state, states)
        if match_value is None:
            i : int = counter.contents or 0
            incr(counter)
            states = add(state, i, states)
            trans_1 : List[Tuple[FSharpList[Tuple[int, int]], int]] = map_1(lambda tupled_arg, state=state: (tupled_arg[0], aux(tupled_arg[1])), Automata_transition(state), None)
            finals : List[bool] = map_1(lambda tupled_arg_1, state=state: exists(lambda b: tupled_arg_1[1] is b, state), rs_1, None)
            states_def = add(i, (trans_1, finals), states_def)
            return i
        
        else: 
            return match_value
        
    
    init : Any = FSharpRef(empty())
    def arrow_70(tupled_arg_2: Tuple[Automata_node, Automata_node], rs=rs) -> None:
        init.contents = Automata_add_node(init.contents, tupled_arg_2[0])
    
    iterate(arrow_70, rs_1)
    i_2 : int = aux(init.contents) or 0
    return initialize(counter.contents, lambda x_2, rs=rs: find(x_2, states_def), None)


def expr_71() -> TypeInfo:
    return union_type("Fable.Sedlex.Compiler.Automata.decision_tree", [], Automata_decision_tree, lambda: [[["Item1", int32_type], ["Item2", Automata_decision_tree_reflection()], ["Item3", Automata_decision_tree_reflection()]], [["Item1", int32_type], ["Item2", array_type(int32_type)]], [["Item", int32_type]]])


class Automata_decision_tree(Union):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Lte", "Table", "Return"]
    

Automata_decision_tree_reflection = expr_71

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
    def merge2(_arg1: FSharpList[Tuple[int, int, Automata_decision_tree]], l=l) -> FSharpList[Tuple[int, int, Automata_decision_tree]]:
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
        
    
    def aux(_arg2_mut: FSharpList[Tuple[int, int, Automata_decision_tree]], l=l) -> Automata_decision_tree:
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
    
    return aux(map(lambda tupled_arg, l=l: (tupled_arg[0], tupled_arg[1], Automata_decision_tree(2, tupled_arg[2])), l))


Automata_limit = 8192

def Automata_old_decision_table(l: FSharpList[Tuple[int, int, int]]) -> Automata_decision_tree:
    def aux(m_mut: a_, accu_mut: FSharpList[Tuple[a_, int, int]], _arg1_mut: FSharpList[Tuple[a_, int, int]], l=l) -> Tuple[a_, FSharpList[Tuple[a_, int, int]], FSharpList[Tuple[a_, int, int]]]:
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
                m_mut = min_2(lambda x_2, y=None, m=m, accu=accu, _arg1=_arg1: compare(x_2, y), a_1, m)
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
            arr : array = fill([0] * ((head(table)[1] - min) + 1), 0, (head(table)[1] - min) + 1, 0)
            def set_1(tupled_arg: Tuple[int, int, int], l=l) -> None:
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


def Automata_segments_of_partition(p: List[FSharpList[Tuple[a_, b_]]]) -> FSharpList[Tuple[a_, b_, int]]:
    seg : Any = FSharpRef(empty())
    def arrow_73(i: int, c: FSharpList[Tuple[a_, b_]], p=p) -> None:
        def arrow_72(tupled_arg: Tuple[a_, b_]) -> None:
            seg.contents = cons((tupled_arg[0], tupled_arg[1], i), seg.contents)
        
        iterate_1(arrow_72, c)
    
    iterate_indexed(arrow_73, p)
    return sort_with(lambda tupled_arg_1, tupled_arg_2, p=p: compare(tupled_arg_1[0], tupled_arg_2[0]), seg.contents)


def Automata_decision_table(p: List[FSharpList[Tuple[int, int]]]) -> Automata_decision_tree:
    return Automata_simplify(-1, Cset_max_code, Automata_old_decision_table(Automata_segments_of_partition(p)))


def Automata_char_pair_op(func: Callable[[a_, b_], Optional[c_]], name: str, p0: a_, p1: b_=None) -> c_:
    match_value : Optional[c_] = func(p0, p1)
    if match_value is None:
        raise Exception(to_text(interpolate("the %P() operator can only applied to single-character length regexps", [name])))
    
    else: 
        return value(match_value)
    


def Automata_repeat(r: Callable[[Automata_node], Automata_node], _arg1_0: int, _arg1_1: int) -> Callable[[Automata_node], Automata_node]:
    _arg1 : Tuple[int, int] = (_arg1_0, _arg1_1)
    if _arg1[0] == 0:
        if _arg1[1] == 0:
            return lambda succ, r=r, _arg1_0=_arg1_0, _arg1_1=_arg1_1: Automata_eps(succ)
        
        else: 
            r2_1 = None
            r2 : Callable[[Automata_node], Automata_node] = Automata_repeat(r, 0, _arg1[1] - 1)
            r2_1 = lambda succ_2, r=r, _arg1_0=_arg1_0, _arg1_1=_arg1_1: Automata_seq(r, r2, succ_2)
            return lambda succ_3, r=r, _arg1_0=_arg1_0, _arg1_1=_arg1_1: Automata_alt(lambda succ_1: Automata_eps(succ_1), r2_1, succ_3)
        
    
    else: 
        r2_2 : Callable[[Automata_node], Automata_node] = Automata_repeat(r, _arg1[0] - 1, _arg1[1] - 1)
        return lambda succ_4, r=r, _arg1_0=_arg1_0, _arg1_1=_arg1_1: Automata_seq(r, r2_2, succ_4)
    


def expr_74() -> TypeInfo:
    return union_type("Fable.Sedlex.Compiler.keep_token", [], keep_token, lambda: [[], [["Item", int32_type]]])


class keep_token(Union):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Discard", "Tokenize"]
    

keep_token_reflection = expr_74

def expr_75() -> TypeInfo:
    return union_type("Fable.Sedlex.Compiler.lang", [], lang, lambda: [[["Item1", Automata_decision_tree_reflection()], ["Item2", array_type(lang_reflection())], ["Item3", lang_reflection()]], [], [["Item1", int32_type], ["Item2", lang_reflection()]], [["Item", int32_type]], [["Item", int32_type]]])


class lang(Union):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Lang_match_i", "Lang_backtrace", "Lang_mark", "Lang_callst", "Lang_int"]
    

lang_reflection = expr_75

def expr_76() -> TypeInfo:
    return record_type("Fable.Sedlex.Compiler.compiled_unit", [], compiled_unit, lambda: [["states", class_type("Microsoft.FSharp.Collections.FSharpMap`2", [int32_type, lang_reflection()])], ["lex_code", tuple_type(array_type(keep_token_reflection()), string_type)], ["referenced_decision_trees", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [Automata_decision_tree_reflection()])]])


class compiled_unit(Record):
    def __init__(self, states: Any, lex_code: Tuple[List[keep_token], str], referenced_decision_trees: Any) -> None:
        super().__init__()
        self.states = states
        self.lex_code = lex_code
        self.referenced_decision_trees = referenced_decision_trees
    

compiled_unit_reflection = expr_76

def build(definition: List[Tuple[Callable[[Automata_node], Automata_node], keep_token]], error_msg: str) -> compiled_unit:
    class ObjectExpr77:
        @property
        def Compare(self) -> Any:
            return lambda x, y: compare_with(lambda x_1, y_1: compare(x_1, y_1), x, y)
        
    partitions : Any = empty_1(ObjectExpr77())
    partition_counter : Any = FSharpRef(0)
    class ObjectExpr78:
        @property
        def Compare(self) -> Any:
            return lambda x_2, y_2: compare_with(lambda x_3, y_3: compare(x_3, y_3), x_2, y_2)
        
    partition_trees : Any = empty_1(ObjectExpr78())
    class ObjectExpr79:
        @property
        def Compare(self) -> Any:
            return lambda x_4, y_4: compare(x_4, y_4)
        
    referenced_decision_trees : Any = empty_2(ObjectExpr79())
    def best_final(final: List[bool], definition=definition, error_msg=error_msg) -> Optional[int]:
        fin : Any = FSharpRef(None)
        for i in range(len(final) - 1, 0 - 1, -1):
            if final[i]:
                fin.contents = i
            
        return fin.contents
    
    def gen_definition(l: List[Tuple[Callable[[Automata_node], Automata_node], keep_token]], definition=definition, error_msg=error_msg) -> Callable[[str], compiled_unit]:
        def arrow_81(error: str, l=l) -> compiled_unit:
            brs : List[Tuple[Callable[[Automata_node], Automata_node], keep_token]] = l
            auto : List[Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]] = Automata_compile(map_1(lambda tuple: tuple[0], brs, None))
            cases : List[keep_token] = map_1(lambda tupled_arg: tupled_arg[1], brs, None)
            class ObjectExpr80:
                @property
                def Compare(self) -> Any:
                    return lambda x_7, y_5: compare_primitives(x_7, y_5)
                
            return compiled_unit(of_array_1(choose(lambda x_6=None: x_6, map_indexed(uncurry(2, gen_state(auto)), auto, None), None), ObjectExpr80()), (cases, error), referenced_decision_trees)
        
        return arrow_81
    
    def call_state(auto_1: List[Tuple[List[a_], List[bool]]], definition=definition, error_msg=error_msg) -> Callable[[int], lang]:
        def arrow_82(state: int, auto_1=auto_1) -> lang:
            pattern_input : Tuple[List[a_], List[bool]] = auto_1[state]
            if len(pattern_input[0]) == 0:
                match_value_2 : Optional[int] = best_final(pattern_input[1])
                if match_value_2 is None:
                    raise Exception("cannot found best final")
                
                else: 
                    return lang(4, match_value_2)
                
            
            else: 
                return lang(3, state)
            
        
        return arrow_82
    
    def gen_state(auto_2: List[Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]], definition=definition, error_msg=error_msg) -> Callable[[int, Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]], Optional[Tuple[int, lang]]]:
        def arrow_85(i_2: int, auto_2=auto_2) -> Callable[[Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]], Optional[Tuple[int, lang]]]:
            def arrow_84(tupled_arg_1: Tuple[List[Tuple[FSharpList[Tuple[int, int]], int]], List[bool]]) -> Optional[Tuple[int, lang]]:
                trans_1 : List[Tuple[FSharpList[Tuple[int, int]], int]] = tupled_arg_1[0]
                v_partition : List[FSharpList[Tuple[int, int]]] = map_1(lambda tuple_1: tuple_1[0], trans_1, None)
                cases_1 : List[lang] = map_1(lambda tupled_arg_2: call_state(auto_2)(tupled_arg_2[1]), trans_1, None)
                def body(_unit=None) -> lang:
                    def arrow_83(_unit=None) -> Automata_decision_tree:
                        nonlocal referenced_decision_trees, partition_trees
                        p : List[FSharpList[Tuple[int, int]]] = v_partition
                        match_value : Optional[Automata_decision_tree] = try_find(p, partition_trees)
                        if match_value is not None:
                            return match_value
                        
                        else: 
                            tree : Automata_decision_tree = Automata_simplify_decision_tree(Automata_decision_table(p))
                            referenced_decision_trees = add_1(tree, referenced_decision_trees)
                            partition_trees = add(p, tree, partition_trees)
                            return tree
                        
                    
                    return lang(0, arrow_83(), cases_1, lang(1))
                
                match_value_3 : Optional[int] = best_final(tupled_arg_1[1])
                if match_value_3 is not None:
                    if len(trans_1) == 0:
                        return None
                    
                    elif match_value_3 is not None:
                        return (i_2, lang(2, match_value_3, body()))
                    
                    else: 
                        raise Exception("Match failure")
                    
                
                else: 
                    return (i_2, body())
                
            
            return arrow_84
        
        return arrow_85
    
    return gen_definition(definition)(error_msg)


def expr_86() -> TypeInfo:
    return record_type("Fable.Sedlex.Compiler.lexbuf", [], lexbuf, lambda: [["refill", lambda_type(string_type, lambda_type(int32_type, lambda_type(int32_type, int32_type)))], ["buf", array_type(int32_type)], ["src", string_type], ["len", int32_type], ["offset", int32_type], ["pos", int32_type], ["curr_bol", int32_type], ["curr_line", int32_type], ["start_pos", int32_type], ["start_bol", int32_type], ["start_line", int32_type], ["marked_pos", int32_type], ["marked_bol", int32_type], ["marked_line", int32_type], ["marked_val", int32_type], ["filename", string_type], ["finished", bool_type]])


class lexbuf(Record):
    def __init__(self, refill: Callable[[str, int, int], int], buf: array, src: str, len_1: int, offset: int, pos: int, curr_bol: int, curr_line: int, start_pos: int, start_bol: int, start_line: int, marked_pos: int, marked_bol: int, marked_line: int, marked_val: int, filename: str, finished: bool) -> None:
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
    

lexbuf_reflection = expr_86

def arrow_87(_arg3: str, _arg2: int, _arg1: int) -> int:
    raise Exception("invalid")


empty_lexbuf = lexbuf(arrow_87, [], "", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "", False)

def from_ustring(a: str) -> lexbuf:
    len_1 : int = len(a) or 0
    buf : array = []
    with get_enumerator(list(a)) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            c : str = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
            (buf.append(ord(c)))
    return lexbuf(empty_lexbuf.refill, buf, a, len_1, empty_lexbuf.offset, empty_lexbuf.pos, empty_lexbuf.curr_bol, empty_lexbuf.curr_line, empty_lexbuf.start_pos, empty_lexbuf.start_bol, empty_lexbuf.start_line, empty_lexbuf.marked_pos, empty_lexbuf.marked_bol, empty_lexbuf.marked_line, empty_lexbuf.marked_val, empty_lexbuf.filename, True)


chunk_size = 512

def new_line(lexbuf_1: lexbuf) -> None:
    if lexbuf_1.curr_line != 0:
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


def expr_88() -> TypeInfo:
    return record_type("Fable.Sedlex.Compiler.position", [], position, lambda: [["pos_fname", string_type], ["pos_lnum", int32_type], ["pos_cnum", int32_type], ["pos_bol", int32_type]])


class position(Record):
    def __init__(self, pos_fname: str, pos_lnum: int, pos_cnum: int, pos_bol: int) -> None:
        super().__init__()
        self.pos_fname = pos_fname
        self.pos_lnum = pos_lnum or 0
        self.pos_cnum = pos_cnum or 0
        self.pos_bol = pos_bol or 0
    

position_reflection = expr_88

def lexing_positions(lexbuf_1: lexbuf) -> Tuple[position, position]:
    return (position(lexbuf_1.filename, lexbuf_1.start_line, lexbuf_1.start_pos + lexbuf_1.offset, lexbuf_1.start_bol), position(lexbuf_1.filename, lexbuf_1.curr_line, lexbuf_1.pos + lexbuf_1.offset, lexbuf_1.curr_bol))


def with_tokenizer(lexer_0027: Callable[[lexbuf], a_], lexbuf_1: lexbuf) -> Callable[[], Tuple[a_, position, position]]:
    def lexer(lexer_0027=lexer_0027, lexbuf_1=lexbuf_1) -> Tuple[a_, position, position]:
        token : a_ = lexer_0027(lexbuf_1)
        pattern_input : Tuple[position, position] = lexing_positions(lexbuf_1)
        return (token, pattern_input[0], pattern_input[1])
    
    return lexer


Utf8_from_ustring = lambda a: from_ustring(a)

def Utf8_lexeme_char(lexbuf_1: lexbuf, pos: int) -> str:
    return lexeme_char(lexbuf_1, pos)


def Utf8_sub_lexeme(lexbuf_1: lexbuf, pos: int, len_1: int) -> str:
    return lexbuf_1.src[lexbuf_1.start_pos + pos:(((lexbuf_1.start_pos + pos) + len_1) - 1) + 1]


def Utf8_lexeme(lexbuf_1: lexbuf) -> str:
    return lexbuf_1.src[lexbuf_1.start_pos:(lexbuf_1.pos - 1) + 1]


def inline_thread(cu: compiled_unit, token_creator: Callable[[Tuple[int, str, int, int, int, int, str]], Any]) -> Callable[[lexbuf], Optional[Any]]:
    class ObjectExpr89:
        @property
        def Compare(self) -> Any:
            return lambda x, y: compare(x, y)
        
    decision_funcs : Any = empty_1(ObjectExpr89())
    class ObjectExpr90:
        @property
        def Compare(self) -> Any:
            return lambda x_1, y_1: compare_primitives(x_1, y_1)
        
    state_funcs : Any = empty_1(ObjectExpr90())
    def evaluate_decision_func(tree: Automata_decision_tree, cu=cu, token_creator=token_creator) -> Callable[[int], int]:
        nonlocal decision_funcs
        match_value : Optional[Callable[[int], int]] = try_find(tree, decision_funcs)
        if match_value is None:
            f_1 = None
            if tree.tag == 2:
                f_1 = lambda _arg1, tree=tree: tree.fields[0]
            
            elif tree.tag == 1:
                f_1 = lambda c_1, tree=tree: tree.fields[1][c_1 - tree.fields[0]] - 1
            
            else: 
                yes_f : Callable[[int], int] = evaluate_decision_func(tree.fields[1])
                no_f : Callable[[int], int] = evaluate_decision_func(tree.fields[2])
                f_1 = lambda c, tree=tree: yes_f(c) if (c <= tree.fields[0]) else (no_f(c))
            
            decision_funcs = add(tree, f_1, decision_funcs)
            return f_1
        
        else: 
            return match_value
        
    
    def evaluate_state_func(lang_1: lang, cu=cu, token_creator=token_creator) -> Callable[[lexbuf], int]:
        if lang_1.tag == 3:
            func_ref : Any = find(lang_1.fields[0], state_funcs)
            return lambda buf_1, lang_1=lang_1: func_ref.contents(buf_1)
        
        elif lang_1.tag == 4:
            return lambda _arg2, lang_1=lang_1: lang_1.fields[0]
        
        elif lang_1.tag == 2:
            f_2 : Callable[[lexbuf], int] = evaluate_state_func(lang_1.fields[1])
            def arrow_91(buf_2: lexbuf, lang_1=lang_1) -> int:
                mark(buf_2, lang_1.fields[0])
                return f_2(buf_2)
            
            return arrow_91
        
        elif lang_1.tag == 0:
            f_cases : List[Callable[[lexbuf], int]] = map_1(evaluate_state_func, lang_1.fields[1], None)
            f_error : Callable[[lexbuf], int] = evaluate_state_func(lang_1.fields[2])
            decision_func : Callable[[int], int] = evaluate_decision_func(lang_1.fields[0])
            def arrow_92(buf_3: lexbuf, lang_1=lang_1) -> int:
                match_value_1 : Optional[Callable[[lexbuf], int]] = try_item(decision_func(public_next_int(buf_3)), f_cases)
                return match_value_1(buf_3) if (match_value_1 is not None) else (f_error(buf_3))
            
            return arrow_92
        
        else: 
            return lambda buf, lang_1=lang_1: backtrack(buf)
        
    
    state_funcs = map_2(lambda _arg4, _arg3, cu=cu, token_creator=token_creator: FSharpRef(None), cu.states)
    with get_enumerator(cu.states) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            kv : Any = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
            FSharpMap__get_Item(state_funcs, kv[0]).contents = evaluate_state_func(kv[1])
    with get_enumerator(cu.referenced_decision_trees) as enumerator_1:
        while enumerator_1.System_Collections_IEnumerator_MoveNext():
            ignore(evaluate_decision_func(enumerator_1.System_Collections_Generic_IEnumerator_00601_get_Current()))
    pattern_input : Tuple[List[keep_token], str] = cu.lex_code
    initial_state_fun : Callable[[lexbuf], int] = find(0, state_funcs).contents
    def arrow_93(buf_4: lexbuf, cu=cu, token_creator=token_creator) -> Optional[Any]:
        start(buf_4)
        match_value_2 : Optional[keep_token] = try_item(initial_state_fun(buf_4), pattern_input[0])
        if match_value_2 is None:
            raise Exception(pattern_input[1])
        
        elif match_value_2.tag == 1:
            token_id : int = match_value_2.fields[0] or 0
            pattern_input_1 = None
            lexbuf_1 : lexbuf = buf_4
            pattern_input_1 = (lexbuf_1.start_line, lexbuf_1.pos - lexbuf_1.curr_bol, lexbuf_1.pos - lexbuf_1.start_pos)
            return token_creator((token_id, lexeme(buf_4), pattern_input_1[0], pattern_input_1[1], pattern_input_1[2], buf_4.start_pos, buf_4.filename))
        
        else: 
            return None
        
    
    return arrow_93


Lexer_discard = keep_token(0)

def Lexer_tokenize(i: int) -> keep_token:
    return keep_token(1, i)


def por(a: Callable[[Automata_node], Automata_node], b: Callable[[Automata_node], Automata_node]) -> Callable[[Automata_node], Automata_node]:
    return lambda succ, a=a, b=b: Automata_alt(a, b, succ)


def pseq(xs: List[Callable[[a_], a_]]) -> Callable[[b_], b_]:
    xs_1 : FSharpList[Callable[[b_], b_]] = of_array(xs)
    if not is_empty(xs_1):
        return fold(lambda r, p_1, xs=xs: lambda succ=None: Automata_seq(r, p_1, succ), head(xs_1), tail(xs_1))
    
    else: 
        raise Exception("empty sequence")
    


def pstar(x: Callable[[Automata_node], Automata_node]) -> Callable[[Automata_node], Automata_node]:
    return lambda succ, x=x: Automata_rep(x, succ)


def pplus(x: Callable[[Automata_node], Automata_node]) -> Callable[[Automata_node], Automata_node]:
    return lambda succ, x=x: Automata_plus(x, succ)


def prep(p0: Callable[[Automata_node], Automata_node], i1: int, i2: int) -> Callable[[Automata_node], Automata_node]:
    if i1 <= i2 if (0 <= i1) else (False):
        return Automata_repeat(p0, i1, i2)
    
    else: 
        raise Exception(to_text(interpolate("repeat operator requires 0 \u003c= %P() \u003c= %P()", [i1, i2])))
    


def popt(p: Callable[[Automata_node], Automata_node]) -> Callable[[Automata_node], Automata_node]:
    return lambda succ_1, p=p: Automata_alt(lambda succ: Automata_eps(succ), p, succ_1)


def pcompl(arg: Callable[[Automata_node], Automata_node]) -> Callable[[Automata_node], Automata_node]:
    match_value : Optional[Callable[[Automata_node], Automata_node]] = Automata_compl(arg)
    if match_value is None:
        raise Exception("the Compl operator can only applied to a single-character length regexp")
    
    else: 
        return match_value
    


def psub(arg: Callable[[Automata_node], Automata_node]) -> Callable[[Callable[[Automata_node], Automata_node]], c_]:
    return lambda p1, arg=arg: Automata_char_pair_op(uncurry(2, Automata_subtract), "sub", arg, p1)


def pintersct(arg: Callable[[Automata_node], Automata_node]) -> Callable[[Callable[[Automata_node], Automata_node]], c_]:
    return lambda p1, arg=arg: Automata_char_pair_op(uncurry(2, Automata_intersection), "intersect", arg, p1)


def pchars(arg: List[str]) -> Callable[[Automata_node], Automata_node]:
    arg00 : FSharpList[str] = of_array(arg)
    clo1 = None
    c : FSharpList[Tuple[int, int]] = Cset_empty()
    with get_enumerator(arg00) as enumerator:
        while enumerator.System_Collections_IEnumerator_MoveNext():
            i : int = ord(enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()) or 0
            c = Cset_union(c, Cset_singleton(i))
    clo1 = lambda succ, arg=arg: Automata_chars(c, succ)
    return lambda arg10, arg=arg: clo1(arg10)


def pinterval(i_start: int, i_end: int) -> Callable[[Automata_node], Automata_node]:
    c : FSharpList[Tuple[int, int]] = Cset_interval(i_start, i_end)
    return lambda succ, i_start=i_start, i_end=i_end: Automata_chars(c, succ)


def regexp_for_char(c: str) -> Callable[[Automata_node], Automata_node]:
    c_1 : FSharpList[Tuple[int, int]] = Cset_singleton(ord(c))
    return lambda succ, c=c: Automata_chars(c_1, succ)


def regexp_for_string(s: str) -> Callable[[Automata_node], Automata_node]:
    def aux(n: int, s=s) -> Callable[[Automata_node], Automata_node]:
        if n == len(s):
            return lambda succ, n=n: Automata_eps(succ)
        
        else: 
            r1 : Callable[[Automata_node], Automata_node] = regexp_for_char(s[n])
            r2 : Callable[[Automata_node], Automata_node] = aux(n + 1)
            return lambda succ_1, n=n: Automata_seq(r1, r2, succ_1)
        
    
    return aux(0)


def pstring(s: str) -> Callable[[Automata_node], Automata_node]:
    return regexp_for_string(s)


def pchar(c: str) -> Callable[[Automata_node], Automata_node]:
    return regexp_for_char(c)


pany = pinterval(0, Cset_max_code)

def arrow_94(_unit=None) -> Callable[[Automata_node], Automata_node]:
    c : FSharpList[Tuple[int, int]] = Cset_singleton(-1)
    return lambda succ: Automata_chars(c, succ)


peof = arrow_94()

