from abc import abstractmethod
import builtins
from typing import (Any, TypeVar)

__A = TypeVar("__A")

class TextIOBase:
    pass

class TextIOWrapper(TextIOBase):
    pass

class IExports:
    @abstractmethod
    def chr(self, __arg0: int) -> str:
        ...
    
    @abstractmethod
    def float(self, __arg0: Any) -> float:
        ...
    
    @abstractmethod
    def id(self, __arg0: Any) -> int:
        ...
    
    @abstractmethod
    def int(self, __arg0: Any) -> int:
        ...
    
    @abstractmethod
    def len(self, __arg0: Any) -> int:
        ...
    
    @abstractmethod
    def ord(self, __arg0: str) -> int:
        ...
    
    @abstractmethod
    def print(self, obj: Any) -> None:
        ...
    
    @abstractmethod
    def str(self, __arg0: Any) -> str:
        ...
    

def print(obj: Any=None) -> None:
    builtins.print(obj)


