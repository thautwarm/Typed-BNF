from abc import abstractmethod
from typing import (TypeVar, Generic, Any)

T = TypeVar("T")

class IGenericAdder_1(Generic[T]):
    @abstractmethod
    def Add(self, __arg0: T, __arg1: T) -> T:
        ...
    
    @abstractmethod
    def GetZero(self) -> T:
        ...
    

class IGenericAverager_1(Generic[T]):
    @abstractmethod
    def Add(self, __arg0: T, __arg1: T) -> T:
        ...
    
    @abstractmethod
    def DivideByInt(self, __arg0: T, __arg1: int) -> T:
        ...
    
    @abstractmethod
    def GetZero(self) -> T:
        ...
    

class Symbol_wellknown:
    @property
    @abstractmethod
    def Symbol_toStringTag(self) -> str:
        ...
    

class IJsonSerializable:
    @abstractmethod
    def to_json(self, key: str) -> Any:
        ...
    

SR_indexOutOfBounds : str = "The index was outside the range of elements in the collection."

SR_inputWasEmpty : str = "Collection was empty."

SR_inputMustBeNonNegative : str = "The input must be non-negative."

SR_inputSequenceEmpty : str = "The input sequence was empty."

SR_inputSequenceTooLong : str = "The input sequence contains more than one element."

SR_keyNotFoundAlt : str = "An index satisfying the predicate was not found in the collection."

SR_differentLengths : str = "The collections had different lengths."

SR_notEnoughElements : str = "The input sequence has an insufficient number of elements."

