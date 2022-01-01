from abc import abstractmethod

class ISpeach:
    @abstractmethod
    def say(self, text: str) -> None:
        ...
    

