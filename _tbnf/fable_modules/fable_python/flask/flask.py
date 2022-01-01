from __future__ import annotations
from abc import abstractmethod

class RequestBase:
    @property
    @abstractmethod
    def url(self) -> str:
        ...
    

class Request(RequestBase):
    pass

class Flask:
    pass

class FlaskStatic:
    @abstractmethod
    def Create(self, name: str, static_url_path: str) -> Flask:
        ...
    

class IExports:
    @property
    @abstractmethod
    def request(self) -> Request:
        ...
    
    @abstractmethod
    def url_for(self, route: str, filename: str) -> str:
        ...
    

