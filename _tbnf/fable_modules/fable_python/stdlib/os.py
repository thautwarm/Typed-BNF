from abc import abstractmethod
from typing import Any

class IExports:
    @abstractmethod
    def chdir(self, __arg0: str) -> None:
        ...
    
    @abstractmethod
    def chroot(self, __arg0: str) -> None:
        ...
    
    @abstractmethod
    def close(self, fd: int) -> None:
        ...
    
    @property
    @abstractmethod
    def environ(self) -> Any:
        ...
    
    @abstractmethod
    def getcwd(self) -> str:
        ...
    
    @abstractmethod
    def kill(self, pid: int, sig: int) -> None:
        ...
    
    @abstractmethod
    def putenv(self, key: str, value: str) -> None:
        ...
    

