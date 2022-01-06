from __future__ import annotations
from typing import (Any, List)
from ..fable_modules.fable_library.reflection import (TypeInfo, union_type, class_type, string_type)
from ..fable_modules.fable_library.types import (Union, FSharpException)
from ..fable_modules.fable_library.util import equals
from .grammar import (monot, monot_reflection)

def expr_0() -> TypeInfo:
    return union_type("tbnf.Exceptions.NameErrorScope", [], NameErrorScope, lambda: [[], [], [], []])


class NameErrorScope(Union):
    def __init__(self, tag: int=None, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["TYPE", "VAR", "NONTERM", "LEXER"]
    

NameErrorScope_reflection = expr_0

def expr_1() -> TypeInfo:
    return union_type("tbnf.Exceptions.NameErrorKind", [], NameErrorKind, lambda: [[], []])


class NameErrorKind(Union):
    def __init__(self, tag: int=None, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["Duplicate", "Unbound"]
    

NameErrorKind_reflection = expr_1

def expr_4() -> TypeInfo:
    return class_type("tbnf.Exceptions.IllFormedType", None, IllFormedType, class_type("System.Exception"))


class IllFormedType(FSharpException):
    def __init__(self, Data0: monot, Data1: monot) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
    

IllFormedType_reflection = expr_4

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
    


def expr_10() -> TypeInfo:
    return class_type("tbnf.Exceptions.TypeMismatch", None, TypeMismatch, class_type("System.Exception"))


class TypeMismatch(FSharpException):
    def __init__(self, Data0: monot, Data1: monot) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
    

TypeMismatch_reflection = expr_10

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
    


def expr_12() -> TypeInfo:
    return class_type("tbnf.Exceptions.InvalidTypeApplication", None, InvalidTypeApplication, class_type("System.Exception"))


class InvalidTypeApplication(FSharpException):
    def __init__(self, Data0: monot=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

InvalidTypeApplication_reflection = expr_12

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
    


def expr_15() -> TypeInfo:
    return class_type("tbnf.Exceptions.InvalidKind", None, InvalidKind, class_type("System.Exception"))


class InvalidKind(FSharpException):
    def __init__(self, Data0: dict[str, Any]=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

InvalidKind_reflection = expr_15

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
    


def expr_17() -> TypeInfo:
    return class_type("tbnf.Exceptions.NoField", None, NoField, class_type("System.Exception"))


class NoField(FSharpException):
    def __init__(self, Data0: monot, Data1: str) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
    

NoField_reflection = expr_17

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
    


def expr_18() -> TypeInfo:
    return class_type("tbnf.Exceptions.CannotInferField", None, CannotInferField, class_type("System.Exception"))


class CannotInferField(FSharpException):
    def __init__(self, Data0: monot=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

CannotInferField_reflection = expr_18

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
    


def expr_21() -> TypeInfo:
    return class_type("tbnf.Exceptions.NoBaseName", None, NoBaseName, class_type("System.Exception"))


class NoBaseName(FSharpException):
    def __init__(self, Data0: monot=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

NoBaseName_reflection = expr_21

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
    


def expr_24() -> TypeInfo:
    return class_type("tbnf.Exceptions.NameError", None, NameError, class_type("System.Exception"))


class NameError(FSharpException):
    def __init__(self, Data0: str, Data1: NameErrorScope, Data2: NameErrorKind) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
        self.Data2 = Data2
    

NameError_reflection = expr_24

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
    return NameError(name, NameErrorScope(3), NameErrorKind(1))


def DuplicateLexer(name: str) -> NameError:
    return NameError(name, NameErrorScope(3), NameErrorKind(0))


def expr_31() -> TypeInfo:
    return class_type("tbnf.Exceptions.ComponentAccessingOutOfBound", None, ComponentAccessingOutOfBound, class_type("System.Exception"))


class ComponentAccessingOutOfBound(FSharpException):
    def __init__(self, Data0: int=None) -> None:
        super().__init__()
        self.Data0 = Data0 or 0
    

ComponentAccessingOutOfBound_reflection = expr_31

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
    


def expr_35() -> TypeInfo:
    return class_type("tbnf.Exceptions.MacroResolveError", None, MacroResolveError, class_type("System.Exception"))


class MacroResolveError(FSharpException):
    def __init__(self, Data0: str=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

MacroResolveError_reflection = expr_35

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
    


def expr_36() -> TypeInfo:
    return class_type("tbnf.Exceptions.UnsolvedTypeVariable", None, UnsolvedTypeVariable, class_type("System.Exception"))


class UnsolvedTypeVariable(FSharpException):
    def __init__(self) -> None:
        super().__init__()
    

UnsolvedTypeVariable_reflection = expr_36

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
    


def expr_43() -> TypeInfo:
    return class_type("tbnf.Exceptions.NotGlobalVariable", None, NotGlobalVariable, class_type("System.Exception"))


class NotGlobalVariable(FSharpException):
    def __init__(self, Data0: str=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

NotGlobalVariable_reflection = expr_43

def NotGlobalVariable__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, NotGlobalVariable):
                return this.Data0 == obj.Data0
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


def expr_44() -> TypeInfo:
    return class_type("tbnf.Exceptions.MalformedConstructor", None, MalformedConstructor, class_type("System.Exception"))


class MalformedConstructor(FSharpException):
    def __init__(self, Data0: str, Data1: monot) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
    

MalformedConstructor_reflection = expr_44

def MalformedConstructor__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, MalformedConstructor):
                if this.Data0 == obj.Data0:
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
    


def expr_45() -> TypeInfo:
    return union_type("tbnf.Exceptions.InvalidConstructorDefininationCause", [], InvalidConstructorDefininationCause, lambda: [[], [], [], [["Item", string_type]], [["Item", monot_reflection()]]])


class InvalidConstructorDefininationCause(Union):
    def __init__(self, tag: int=None, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["CauseExternalType", "CauseRecordType", "CauseGenericADTType", "CauseDuplicateConstructorName", "CauseInvalidConstructorType"]
    

InvalidConstructorDefininationCause_reflection = expr_45

def expr_46() -> TypeInfo:
    return class_type("tbnf.Exceptions.InvalidConstructorDefinination", None, InvalidConstructorDefinination, class_type("System.Exception"))


class InvalidConstructorDefinination(FSharpException):
    def __init__(self, Data0: InvalidConstructorDefininationCause=None) -> None:
        super().__init__()
        self.Data0 = Data0
    

InvalidConstructorDefinination_reflection = expr_46

def InvalidConstructorDefinination__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, InvalidConstructorDefinination):
                return equals(this.Data0, obj.Data0)
            
            else: 
                return False
            
        
        else: 
            return False
        
    
    elif not equals(obj, None):
        return False
    
    else: 
        return True
    


