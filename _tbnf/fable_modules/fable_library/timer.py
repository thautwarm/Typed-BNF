from __future__ import annotations
from abc import abstractmethod
from typing import Callable

class ITimer:
    @abstractmethod
    def Create(self, __arg0: float, __arg1: Callable[[], None]) -> ITimer:
        ...
    
    @abstractmethod
    def cancel(self) -> None:
        ...
    
    @property
    @abstractmethod
    def daemon(self) -> bool:
        ...
    
    @daemon.setter
    @abstractmethod
    def daemon(self, __arg0: bool) -> None:
        ...
    
    @abstractmethod
    def start(self) -> None:
        ...
    

