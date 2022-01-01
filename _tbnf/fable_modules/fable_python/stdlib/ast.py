from __future__ import annotations
from abc import abstractmethod
from typing import (List, Optional)
from .....fable_library.list import FSharpList

class AST:
    @property
    @abstractmethod
    def foo(self) -> int:
        ...
    

class mod(AST):
    pass

class expr(AST):
    pass

class Module(mod, AST):
    @property
    @abstractmethod
    def body(self) -> List[stmt]:
        ...
    

class Expression(mod, AST):
    @property
    @abstractmethod
    def body(self) -> expr:
        ...
    

class stmt(AST):
    pass

class FunctionDef(stmt, AST):
    @property
    @abstractmethod
    def args(self) -> arguments:
        ...
    
    @property
    @abstractmethod
    def body(self) -> List[stmt]:
        ...
    
    @property
    @abstractmethod
    def decorator_list(self) -> List[expr]:
        ...
    
    @property
    @abstractmethod
    def name(self) -> str:
        ...
    
    @property
    @abstractmethod
    def returns(self) -> Optional[expr]:
        ...
    

class ClassDef(stmt, AST):
    @property
    @abstractmethod
    def bases(self) -> List[expr]:
        ...
    
    @property
    @abstractmethod
    def body(self) -> List[stmt]:
        ...
    
    @property
    @abstractmethod
    def decorator_list(self) -> List[expr]:
        ...
    
    @property
    @abstractmethod
    def keywords(self) -> List[keyword]:
        ...
    
    @property
    @abstractmethod
    def name(self) -> str:
        ...
    

class Return(stmt, AST):
    @property
    @abstractmethod
    def value(self) -> Optional[expr]:
        ...
    

class Delete(stmt, AST):
    @property
    @abstractmethod
    def targets(self) -> List[expr]:
        ...
    

class Assign(stmt, AST):
    @property
    @abstractmethod
    def targets(self) -> List[expr]:
        ...
    
    @property
    @abstractmethod
    def value(self) -> expr:
        ...
    

class Import(stmt, AST):
    @property
    @abstractmethod
    def names(self) -> List[alias]:
        ...
    

class ImportFrom(stmt, AST):
    @property
    @abstractmethod
    def level(self) -> int:
        ...
    
    @property
    @abstractmethod
    def module(self) -> Optional[str]:
        ...
    
    @property
    @abstractmethod
    def names(self) -> List[alias]:
        ...
    

class If(stmt, AST):
    @property
    @abstractmethod
    def body(self) -> List[stmt]:
        ...
    
    @property
    @abstractmethod
    def orelse(self) -> List[stmt]:
        ...
    
    @property
    @abstractmethod
    def test(self) -> expr:
        ...
    

class arguments(AST):
    @property
    @abstractmethod
    def args(self) -> List[arg]:
        ...
    
    @property
    @abstractmethod
    def defaults(self) -> List[expr]:
        ...
    
    @property
    @abstractmethod
    def kw_defaults(self) -> FSharpList[Optional[expr]]:
        ...
    
    @property
    @abstractmethod
    def kwarg(self) -> Optional[arg]:
        ...
    
    @property
    @abstractmethod
    def kwonlyargs(self) -> List[arg]:
        ...
    
    @property
    @abstractmethod
    def posonlyargs(self) -> List[arg]:
        ...
    
    @property
    @abstractmethod
    def vararg(self) -> Optional[arg]:
        ...
    

class arg(AST):
    @property
    @abstractmethod
    def annotation(self) -> Optional[expr]:
        ...
    
    @property
    @abstractmethod
    def arg(self) -> str:
        ...
    

class keyword(AST):
    @property
    @abstractmethod
    def arg(self) -> Optional[str]:
        ...
    
    @property
    @abstractmethod
    def value(self) -> expr:
        ...
    

class alias(AST):
    @property
    @abstractmethod
    def asname(self) -> Optional[str]:
        ...
    
    @property
    @abstractmethod
    def name(self) -> str:
        ...
    

class IExports:
    @abstractmethod
    def unparse(self, astObj: AST) -> str:
        ...
    
    @abstractmethod
    def walk(self, node: AST) -> List[AST]:
        ...
    

