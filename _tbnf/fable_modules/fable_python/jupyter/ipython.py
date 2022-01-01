from abc import abstractmethod
from typing import Any

class IDisplay:
    @abstractmethod
    def Markdown(self, data: str) -> None:
        ...
    
    @abstractmethod
    def display(self, value: Any) -> None:
        ...
    

