from __future__ import annotations
from abc import abstractmethod
from typing import (List, Any)
from .....fable_library.list import FSharpList

class ITimeSeries:
    @abstractmethod
    def plot(self, start: str, end: str, aggregates: List[str], granularity: str) -> None:
        ...
    

class ITimeSeriesApi:
    @abstractmethod
    def list(self) -> FSharpList[ITimeSeries]:
        ...
    
    @abstractmethod
    def retrieve(self, id: Any) -> ITimeSeries:
        ...
    

