from __future__ import annotations
from abc import abstractmethod
from typing import (Callable, Optional)

class Event:
    @property
    @abstractmethod
    def x(self) -> int:
        ...
    
    @property
    @abstractmethod
    def y(self) -> int:
        ...
    

class Misc:
    @abstractmethod
    def bind(self, sequence: str, func: Callable[[Event], None]) -> Optional[str]:
        ...
    

class Wm:
    pass

