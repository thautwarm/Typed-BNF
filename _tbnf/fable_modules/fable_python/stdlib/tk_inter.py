from __future__ import annotations
from abc import abstractmethod
from typing import Callable
from .....fable_library.option import Option

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
    def bind(self, sequence: str, func: Callable[[Event], None]) -> Option[str]:
        ...
    

class Wm:
    pass

