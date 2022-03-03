from __future__ import annotations
from typing import (Any, List)
from ..fable_modules.fable_library.list import FSharpList
from ..fable_modules.fable_library.reflection import (TypeInfo, list_type, record_type, union_type, class_type, string_type)
from ..fable_modules.fable_library.types import (Record, Union, FSharpException)
from ..fable_modules.fable_library.util import equals
from .grammar import (expr, definition, definition_reflection, expr_reflection, monot, monot_reflection)

def expr_135() -> TypeInfo:
    return record_type("tbnf.Exceptions.ErrorTrace", [], ErrorTrace, lambda: [["whichDef", definition_reflection()], ["exprStack", list_type(expr_reflection())], ["currentRexpr", expr_reflection()]])


class ErrorTrace(Record):
    def __init__(self, which_def: definition, expr_stack: FSharpList[expr], current_rexpr: expr) -> None:
        super().__init__()
        self.which_def = which_def
        self.expr_stack = expr_stack
        self.current_rexpr = current_rexpr
    

ErrorTrace_reflection = expr_135

def expr_136() -> TypeInfo:
    return union_type("tbnf.Exceptions.NameErrorScope", [], NameErrorScope, lambda: [[], [], [], []])


class NameErrorScope(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["TYPE", "VAR", "NONTERM", "LEXER"]
    

NameErrorScope_reflection = expr_136

def expr_137() -> TypeInfo:
    return union_type("tbnf.Exceptions.NameErrorKind", [], NameErrorKind, lambda: [[], []])


class NameErrorKind(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["Duplicate", "Unbound"]
    

NameErrorKind_reflection = expr_137

def expr_138() -> TypeInfo:
    return class_type("tbnf.Exceptions.IllFormedType", None, IllFormedType, class_type("System.Exception"))


class IllFormedType(FSharpException):
    def __init__(self, Data0: monot, Data1: monot) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
    

IllFormedType_reflection = expr_138

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
    


def expr_139() -> TypeInfo:
    return class_type("tbnf.Exceptions.TypeMismatch", None, TypeMismatch, class_type("System.Exception"))


class TypeMismatch(FSharpException):
    def __init__(self, Data0: monot, Data1: monot) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
    

TypeMismatch_reflection = expr_139

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
    


def expr_140() -> TypeInfo:
    return class_type("tbnf.Exceptions.TypeUnexpected", None, TypeUnexpected, class_type("System.Exception"))


class TypeUnexpected(FSharpException):
    def __init__(self, got: monot, expected: monot) -> None:
        super().__init__()
        self.got = got
        self.expected = expected
    

TypeUnexpected_reflection = expr_140

def TypeUnexpected__Equals_229D3F39(this: Exception, obj: Exception) -> bool:
    if not equals(this, None):
        if not equals(obj, None):
            if isinstance(obj, TypeUnexpected):
                if equals(this.got, obj.got):
                    return equals(this.expected, obj.expected)
                
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
    


def expr_141() -> TypeInfo:
    return class_type("tbnf.Exceptions.InvalidTypeApplication", None, InvalidTypeApplication, class_type("System.Exception"))


class InvalidTypeApplication(FSharpException):
    def __init__(self, Data0: monot) -> None:
        super().__init__()
        self.Data0 = Data0
    

InvalidTypeApplication_reflection = expr_141

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
    


def expr_142() -> TypeInfo:
    return class_type("tbnf.Exceptions.InvalidKind", None, InvalidKind, class_type("System.Exception"))


class InvalidKind(FSharpException):
    def __init__(self, Data0: dict[str, Any]) -> None:
        super().__init__()
        self.Data0 = Data0
    

InvalidKind_reflection = expr_142

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
    


def expr_143() -> TypeInfo:
    return class_type("tbnf.Exceptions.NoField", None, NoField, class_type("System.Exception"))


class NoField(FSharpException):
    def __init__(self, Data0: monot, Data1: str) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
    

NoField_reflection = expr_143

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
    


def expr_144() -> TypeInfo:
    return class_type("tbnf.Exceptions.CannotInferField", None, CannotInferField, class_type("System.Exception"))


class CannotInferField(FSharpException):
    def __init__(self, Data0: monot) -> None:
        super().__init__()
        self.Data0 = Data0
    

CannotInferField_reflection = expr_144

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
    


def expr_145() -> TypeInfo:
    return class_type("tbnf.Exceptions.NoBaseName", None, NoBaseName, class_type("System.Exception"))


class NoBaseName(FSharpException):
    def __init__(self, Data0: monot) -> None:
        super().__init__()
        self.Data0 = Data0
    

NoBaseName_reflection = expr_145

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
    


def expr_146() -> TypeInfo:
    return class_type("tbnf.Exceptions.NameError", None, NameError, class_type("System.Exception"))


class NameError(FSharpException):
    def __init__(self, Data0: str, Data1: NameErrorScope, Data2: NameErrorKind) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
        self.Data2 = Data2
    

NameError_reflection = expr_146

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


def expr_147() -> TypeInfo:
    return class_type("tbnf.Exceptions.ComponentAccessingOutOfBound", None, ComponentAccessingOutOfBound, class_type("System.Exception"))


class ComponentAccessingOutOfBound(FSharpException):
    def __init__(self, Data0: int) -> None:
        super().__init__()
        self.Data0 = Data0 or 0
    

ComponentAccessingOutOfBound_reflection = expr_147

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
    


def expr_148() -> TypeInfo:
    return class_type("tbnf.Exceptions.MacroResolveError", None, MacroResolveError, class_type("System.Exception"))


class MacroResolveError(FSharpException):
    def __init__(self, Data0: str) -> None:
        super().__init__()
        self.Data0 = Data0
    

MacroResolveError_reflection = expr_148

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
    


def expr_149() -> TypeInfo:
    return class_type("tbnf.Exceptions.UnsolvedTypeVariable", None, UnsolvedTypeVariable, class_type("System.Exception"))


class UnsolvedTypeVariable(FSharpException):
    def __init__(self) -> None:
        super().__init__()
    

UnsolvedTypeVariable_reflection = expr_149

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
    


def expr_150() -> TypeInfo:
    return class_type("tbnf.Exceptions.NotGlobalVariable", None, NotGlobalVariable, class_type("System.Exception"))


class NotGlobalVariable(FSharpException):
    def __init__(self, Data0: str) -> None:
        super().__init__()
        self.Data0 = Data0
    

NotGlobalVariable_reflection = expr_150

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
    


def expr_151() -> TypeInfo:
    return class_type("tbnf.Exceptions.MalformedConstructor", None, MalformedConstructor, class_type("System.Exception"))


class MalformedConstructor(FSharpException):
    def __init__(self, Data0: str, Data1: monot) -> None:
        super().__init__()
        self.Data0 = Data0
        self.Data1 = Data1
    

MalformedConstructor_reflection = expr_151

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
    


def expr_152() -> TypeInfo:
    return union_type("tbnf.Exceptions.InvalidConstructorDefininationCause", [], InvalidConstructorDefininationCause, lambda: [[], [], [], [["Item", string_type]], [["Item", monot_reflection()]]])


class InvalidConstructorDefininationCause(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["CauseExternalType", "CauseRecordType", "CauseGenericADTType", "CauseDuplicateConstructorName", "CauseInvalidConstructorType"]
    

InvalidConstructorDefininationCause_reflection = expr_152

def expr_153() -> TypeInfo:
    return class_type("tbnf.Exceptions.InvalidConstructorDefinination", None, InvalidConstructorDefinination, class_type("System.Exception"))


class InvalidConstructorDefinination(FSharpException):
    def __init__(self, Data0: InvalidConstructorDefininationCause) -> None:
        super().__init__()
        self.Data0 = Data0
    

InvalidConstructorDefinination_reflection = expr_153

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
    


