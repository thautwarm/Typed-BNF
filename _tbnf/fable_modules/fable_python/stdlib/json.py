from abc import abstractmethod
from typing import Any

class IExports:
    @abstractmethod
    def dumps(self, obj: Any) -> str:
        ...
    
    @abstractmethod
    def loads(self, __arg0: str) -> Any:
        ...
    

