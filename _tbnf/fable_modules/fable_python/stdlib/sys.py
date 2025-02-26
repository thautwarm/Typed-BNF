from __future__ import annotations
from abc import abstractmethod
from typing import List

class VersionInfo:
    @property
    @abstractmethod
    def major(self) -> int:
        ...
    
    @property
    @abstractmethod
    def micro(self) -> int:
        ...
    
    @property
    @abstractmethod
    def minor(self) -> int:
        ...
    
    @property
    @abstractmethod
    def releaselevel(self) -> str:
        ...
    
    @property
    @abstractmethod
    def serial(self) -> int:
        ...
    

class IExports:
    @property
    @abstractmethod
    def argv(self) -> List[str]:
        ...
    
    @property
    @abstractmethod
    def byteorder(self) -> str:
        ...
    
    @property
    @abstractmethod
    def hexversion(self) -> int:
        ...
    
    @property
    @abstractmethod
    def maxsize(self) -> int:
        ...
    
    @property
    @abstractmethod
    def maxunicode(self) -> int:
        ...
    
    @property
    @abstractmethod
    def path(self) -> List[str]:
        ...
    
    @property
    @abstractmethod
    def platform(self) -> str:
        ...
    
    @property
    @abstractmethod
    def prefix(self) -> str:
        ...
    
    @property
    @abstractmethod
    def version(self) -> str:
        ...
    
    @property
    @abstractmethod
    def version_info(self) -> VersionInfo:
        ...
    

