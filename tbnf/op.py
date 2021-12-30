from __future__ import annotations
from .exceptions import NoBaseName
from .grammar import monot

def basename(t_mut: monot) -> str:
    while True:
        (t,) = (t_mut,)
        if ((t.tag == 3) or (t.tag == 0)) or (t.tag == 4):
            raise NoBaseName(t)
        
        elif t.tag == 2:
            t_mut = t.fields[0]
            continue
        
        else: 
            return t.fields[0]
        
        break


