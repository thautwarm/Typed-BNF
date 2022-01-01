from abc import abstractmethod

class IDisplay:
    @abstractmethod
    def clear(self) -> None:
        ...
    
    @abstractmethod
    def is_on(self) -> bool:
        ...
    
    @abstractmethod
    def off(self) -> None:
        ...
    
    @abstractmethod
    def on(self) -> None:
        ...
    

class IButton:
    @abstractmethod
    def presses(self) -> int:
        ...
    
    @abstractmethod
    def is_pressed(self) -> bool:
        ...
    
    @abstractmethod
    def was_pressed(self) -> bool:
        ...
    

class ICompass:
    @abstractmethod
    def calibrate(self) -> None:
        ...
    
    @abstractmethod
    def heading(self) -> int:
        ...
    

class IAccelerometer:
    @abstractmethod
    def x(self) -> int:
        ...
    
    @abstractmethod
    def y(self) -> int:
        ...
    
    @abstractmethod
    def z(self) -> int:
        ...
    

class IPinLogo:
    @abstractmethod
    def is_touched(self) -> bool:
        ...
    

