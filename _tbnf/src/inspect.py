from __future__ import annotations
from typing import Tuple
from ..fable_modules.fable_library.list import map
from ..fable_modules.fable_library.string import join
from ..fable_modules.fable_library.types import to_string
from .grammar import (monot, _007CTTuple_007C__007C, expr)

def inspect_mono_type(t: monot) -> str:
    (pattern_matching_result, x, s, args) = (None, None, None, None)
    if t.tag == 0:
        pattern_matching_result = 0
        x = t.fields[0]
    
    elif t.tag == 1:
        pattern_matching_result = 1
        s = t.fields[0]
    
    elif t.tag == 2:
        if _007CTTuple_007C__007C(t.fields[0]) is not None:
            pattern_matching_result = 2
            args = t.fields[1]
        
        else: 
            pattern_matching_result = 3
        
    
    else: 
        pattern_matching_result = 3
    
    if pattern_matching_result == 0:
        return to_string(x)
    
    elif pattern_matching_result == 1:
        return s
    
    elif pattern_matching_result == 2:
        def arrow_119(t_1: monot, t: monot=t) -> str:
            return inspect_mono_type(t_1)
        
        return ("(" + join(" * ", map(arrow_119, args))) + ")"
    
    elif pattern_matching_result == 3:
        if t.tag == 2:
            def arrow_120(t_2: monot, t: monot=t) -> str:
                return inspect_mono_type(t_2)
            
            return ((inspect_mono_type(t.fields[0]) + "\u003c") + join(", ", map(arrow_120, t.fields[1]))) + "\u003e"
        
        elif t.tag == 3:
            def mapping(tupled_arg: Tuple[str, monot], t: monot=t) -> str:
                return (tupled_arg[0] + ": ") + inspect_mono_type(tupled_arg[1])
            
            return (("(" + join(", ", map(mapping, t.fields[0]))) + ") -\u003e") + inspect_mono_type(t)
        
        elif t.tag == 4:
            return "\u0027" + t.fields[0]
        
        else: 
            raise Exception("Match failure: tbnf.Grammar.monot")
        
    


def show_expr(e: expr) -> str:
    if e.node.tag == 0:
        raise Exception("")
    
    else: 
        raise Exception("Match failure")
    


