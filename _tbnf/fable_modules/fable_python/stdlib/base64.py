from abc import abstractmethod
from typing import ByteString

class IExports:
    @abstractmethod
    def b16encode(self, __arg0: ByteString) -> int:
        ...
    
    @abstractmethod
    def b32encode(self, __arg0: ByteString) -> ByteString:
        ...
    
    @abstractmethod
    def standard_b64encode(self, __arg0: ByteString) -> ByteString:
        ...
    
    @abstractmethod
    def urlsafe_b64encode(self, __arg0: ByteString) -> ByteString:
        ...
    

