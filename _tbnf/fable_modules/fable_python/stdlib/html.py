from abc import abstractmethod

class IExports:
    @abstractmethod
    def unescape(self, __arg0: str) -> str:
        ...
    

