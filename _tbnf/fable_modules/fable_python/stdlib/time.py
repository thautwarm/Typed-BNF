from abc import abstractmethod
from typing import Tuple

class IExports:
    @property
    @abstractmethod
    def altzone(self) -> int:
        ...
    
    @property
    @abstractmethod
    def daylight(self) -> int:
        ...
    
    @property
    @abstractmethod
    def timezone(self) -> int:
        ...
    
    @property
    @abstractmethod
    def tzname(self) -> Tuple[str, str]:
        ...
    
    @abstractmethod
    def monotonic(self) -> float:
        ...
    
    @abstractmethod
    def perf_counter(self) -> float:
        ...
    
    @abstractmethod
    def process_time(self) -> float:
        ...
    
    @abstractmethod
    def sleep(self, secs: float) -> None:
        ...
    
    @abstractmethod
    def time(self) -> float:
        ...
    

