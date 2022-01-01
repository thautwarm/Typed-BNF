from __future__ import annotations
from fable_modules.fable_library.reflection import (TypeInfo, union_type, class_type)
from fable_modules.fable_library.types import (Union, FSharpException)
from fable_modules.fable_library.util import equals
from .grammar import monot

def expr_1() -> TypeInfo:
    return union_type("tbnf.Exceptions.NameErrorScope", [], NameErrorScope, lambda: [[], [], [], []])


class NameErrorScope(Union):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["TYPE", "VAR", "NONTERM", "LEXER"]
    

NameErrorScope_reflection = expr_1

def expr_2() -> TypeInfo:
    return union_type("tbnf.Exceptions.NameErrorKind", [], NameErrorKind, lambda: [[], []])


class NameErrorKind(Union):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Duplicate", "Unbound"]
    

NameErrorKind_reflection = expr_2

def expr_3() -> TypeInfo:
    return class_type("tbnf.Exceptions.IllFormedType", None, IllFormedType, class_type("System.Exception"))


class IllFormedType(FSharpException):
    def __init__(self, Data0: monot, Data1: monot) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
    

IllFormedType_reflection = expr_3

def IllFormedType__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, IllFormedType):
                if equals(this.Data0, obj.Data0):
                    return equals(this.Data1, obj.Data1)
                
                else: 
                    return False
                
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


def expr_6() -> TypeInfo:
    return class_type("tbnf.Exceptions.TypeMismatch", None, TypeMismatch, class_type("System.Exception"))


class TypeMismatch(FSharpException):
    def __init__(self, Data0: monot, Data1: monot) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
    

TypeMismatch_reflection = expr_6

def TypeMismatch__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, TypeMismatch):
                if equals(this.Data0, obj.Data0):
                    return equals(this.Data1, obj.Data1)
                
                else: 
                    return False
                
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


def expr_8() -> TypeInfo:
    return class_type("tbnf.Exceptions.InvalidTypeApplication", None, InvalidTypeApplication, class_type("System.Exception"))


class InvalidTypeApplication(FSharpException):
    def __init__(self, Data0: monot=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

InvalidTypeApplication_reflection = expr_8

def InvalidTypeApplication__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, InvalidTypeApplication):
                return equals(this.Data0, obj.Data0)
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


def expr_10() -> TypeInfo:
    return class_type("tbnf.Exceptions.InvalidKind", None, InvalidKind, class_type("System.Exception"))


class InvalidKind(FSharpException):
    def __init__(self, Data0: dict=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

InvalidKind_reflection = expr_10

def InvalidKind__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, InvalidKind):
                return equals(this.Data0, obj.Data0)
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


def expr_12() -> TypeInfo:
    return class_type("tbnf.Exceptions.NoField", None, NoField, class_type("System.Exception"))


class NoField(FSharpException):
    def __init__(self, Data0: monot, Data1: str) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
    

NoField_reflection = expr_12

def NoField__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, NoField):
                if equals(this.Data0, obj.Data0):
                    return this.Data1 == obj.Data1
                
                else: 
                    return False
                
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


def expr_14() -> TypeInfo:
    return class_type("tbnf.Exceptions.CannotInferField", None, CannotInferField, class_type("System.Exception"))


class CannotInferField(FSharpException):
    def __init__(self, Data0: monot=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

CannotInferField_reflection = expr_14

def CannotInferField__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, CannotInferField):
                return equals(this.Data0, obj.Data0)
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


def expr_16() -> TypeInfo:
    return class_type("tbnf.Exceptions.NoBaseName", None, NoBaseName, class_type("System.Exception"))


class NoBaseName(FSharpException):
    def __init__(self, Data0: monot=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

NoBaseName_reflection = expr_16

def NoBaseName__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, NoBaseName):
                return equals(this.Data0, obj.Data0)
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


def expr_18() -> TypeInfo:
    return class_type("tbnf.Exceptions.NameError", None, NameError, class_type("System.Exception"))


class NameError(FSharpException):
    def __init__(self, Data0: str, Data1: NameErrorScope, Data2: NameErrorKind) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
        self.Data2 = Data2
    

NameError_reflection = expr_18

def NameError__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, NameError):
                if this.Data0 == obj.Data0:
                    if equals(this.Data1, obj.Data1):
                        return equals(this.Data2, obj.Data2)
                    
                    else: 
                        return False
                    
                
                else: 
                    return False
                
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


def UnboundTypeVariable(name: str) -> NameError:
    return NameError(name, NameErrorScope(0), NameErrorKind(1))


def DuplicateTypeVariable(name: str) -> NameError:
    return NameError(name, NameErrorScope(0), NameErrorKind(0))


def UnboundVariable(name: str) -> NameError:
    return NameError(name, NameErrorScope(1), NameErrorKind(1))


def DuplicateVariable(name: str) -> NameError:
    return NameError(name, NameErrorScope(1), NameErrorKind(0))


def UnboundNonterminal(name: str) -> NameError:
    return NameError(name, NameErrorScope(2), NameErrorKind(1))


def DuplicateNonterminal(name: str) -> NameError:
    return NameError(name, NameErrorScope(2), NameErrorKind(0))


def UnboundLexer(name: str) -> NameError:
    return NameError(name, NameErrorScope(2), NameErrorKind(1))


def DuplicateLexer(name: str) -> NameError:
    return NameError(name, NameErrorScope(3), NameErrorKind(0))


def expr_22() -> TypeInfo:
    return class_type("tbnf.Exceptions.ComponentAccessingOutOfBound", None, ComponentAccessingOutOfBound, class_type("System.Exception"))


class ComponentAccessingOutOfBound(FSharpException):
    def __init__(self, Data0: int=None) -> None:
        super().__init__()
        self.Data0 = Data0 or 0
    

ComponentAccessingOutOfBound_reflection = expr_22

def ComponentAccessingOutOfBound__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, ComponentAccessingOutOfBound):
                return this.Data0 == obj.Data0
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


def expr_24() -> TypeInfo:
    return class_type("tbnf.Exceptions.MacroResolveError", None, MacroResolveError, class_type("System.Exception"))


class MacroResolveError(FSharpException):
    def __init__(self, Data0: str=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

MacroResolveError_reflection = expr_24

def MacroResolveError__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, MacroResolveError):
                return this.Data0 == obj.Data0
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


def expr_27() -> TypeInfo:
    return class_type("tbnf.Exceptions.UnsolvedTypeVariable", None, UnsolvedTypeVariable, class_type("System.Exception"))


class UnsolvedTypeVariable(FSharpException):
    def __init__(self) -> None:
        super().__init__()
    

UnsolvedTypeVariable_reflection = expr_27

def UnsolvedTypeVariable__Equals_229D3F39(this: Exception, obj: Exception) -> int:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, UnsolvedTypeVariable):
                return 1
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    

