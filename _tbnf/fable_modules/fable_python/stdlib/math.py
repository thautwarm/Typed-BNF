from abc import abstractmethod
from typing import MutableSequence

class IExports:
    @abstractmethod
    def acos(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def asin(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def atan(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def atan2(self, __arg0: float, __arg1: float) -> float:
        ...
    
    @abstractmethod
    def comb(self, __arg0: int, __arg1: int) -> int:
        ...
    
    @abstractmethod
    def copysign(self, __arg0: float, __arg1: int) -> float:
        ...
    
    @abstractmethod
    def cos(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def dist(self, __arg0: float, __arg1: float) -> float:
        ...
    
    @abstractmethod
    def exp(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def expm1(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def fabs(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def factorial(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def fmod(self, __arg0: int, __arg1: int) -> int:
        ...
    
    @abstractmethod
    def gcd(self, ints: MutableSequence[int]) -> int:
        ...
    
    @abstractmethod
    def lcm(self, ints: MutableSequence[int]) -> int:
        ...
    
    @abstractmethod
    def log(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def log10(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def log1p(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def log2(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def pow(self, __arg0: float, __arg1: float) -> float:
        ...
    
    @abstractmethod
    def sin(self, __arg0: float) -> float:
        ...
    
    @abstractmethod
    def tan(self, __arg0: float) -> float:
        ...
    

