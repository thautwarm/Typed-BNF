from __future__ import annotations
from typing import (Generic, TypeVar, Callable, Any, Optional)
from .option import some
from .reflection import (TypeInfo, union_type)
from .types import Union

T = TypeVar("T")

TError = TypeVar("TError")

a_ = TypeVar("a_")

b_ = TypeVar("b_")

c_ = TypeVar("c_")

T1 = TypeVar("T1")

T2 = TypeVar("T2")

T1_1 = TypeVar("T1_1")

T2_1 = TypeVar("T2_1")

T3 = TypeVar("T3")

T1_2 = TypeVar("T1_2")

T2_2 = TypeVar("T2_2")

T3_1 = TypeVar("T3_1")

T4 = TypeVar("T4")

T1_3 = TypeVar("T1_3")

T2_3 = TypeVar("T2_3")

T3_2 = TypeVar("T3_2")

T4_1 = TypeVar("T4_1")

T5 = TypeVar("T5")

T1_4 = TypeVar("T1_4")

T2_4 = TypeVar("T2_4")

T3_3 = TypeVar("T3_3")

T4_2 = TypeVar("T4_2")

T5_1 = TypeVar("T5_1")

T6 = TypeVar("T6")

T1_5 = TypeVar("T1_5")

T2_5 = TypeVar("T2_5")

T3_4 = TypeVar("T3_4")

T4_3 = TypeVar("T4_3")

T5_2 = TypeVar("T5_2")

T6_1 = TypeVar("T6_1")

T7 = TypeVar("T7")

def expr_2(gen0, gen1) -> TypeInfo:
    return union_type("FSharp.Core.FSharpResult`2", [gen0, gen1], FSharpResult_2, lambda: [[["ResultValue", gen0]], [["ErrorValue", gen1]]])


class FSharpResult_2(Union, Generic[T, TError]):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Ok", "Error"]
    

FSharpResult_2_reflection = expr_2

def Result_Map(mapping: Callable[[a_], b_], result: FSharpResult_2[a_, c_]) -> FSharpResult_2[b_, c_]:
    if result.tag == 0:
        return FSharpResult_2(0, mapping(result.fields[0]))
    
    else: 
        return FSharpResult_2(1, result.fields[0])
    


def Result_MapError(mapping: Callable[[a_], b_], result: FSharpResult_2[c_, a_]) -> FSharpResult_2[c_, b_]:
    if result.tag == 0:
        return FSharpResult_2(0, result.fields[0])
    
    else: 
        return FSharpResult_2(1, mapping(result.fields[0]))
    


def Result_Bind(binder: Callable[[a_], FSharpResult_2[b_, c_]], result: FSharpResult_2[a_, c_]) -> FSharpResult_2[b_, c_]:
    if result.tag == 0:
        return binder(result.fields[0])
    
    else: 
        return FSharpResult_2(1, result.fields[0])
    


def expr_11(gen0, gen1) -> TypeInfo:
    return union_type("FSharp.Core.FSharpChoice`2", [gen0, gen1], FSharpChoice_2, lambda: [[["Item", gen0]], [["Item", gen1]]])


class FSharpChoice_2(Union, Generic[T1, T2]):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Choice1Of2", "Choice2Of2"]
    

FSharpChoice_2_reflection = expr_11

def expr_12(gen0, gen1, gen2) -> TypeInfo:
    return union_type("FSharp.Core.FSharpChoice`3", [gen0, gen1, gen2], FSharpChoice_3, lambda: [[["Item", gen0]], [["Item", gen1]], [["Item", gen2]]])


class FSharpChoice_3(Union, Generic[T1_1, T2_1, T3]):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Choice1Of3", "Choice2Of3", "Choice3Of3"]
    

FSharpChoice_3_reflection = expr_12

def expr_14(gen0, gen1, gen2, gen3) -> TypeInfo:
    return union_type("FSharp.Core.FSharpChoice`4", [gen0, gen1, gen2, gen3], FSharpChoice_4, lambda: [[["Item", gen0]], [["Item", gen1]], [["Item", gen2]], [["Item", gen3]]])


class FSharpChoice_4(Union, Generic[T1_2, T2_2, T3_1, T4]):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Choice1Of4", "Choice2Of4", "Choice3Of4", "Choice4Of4"]
    

FSharpChoice_4_reflection = expr_14

def expr_16(gen0, gen1, gen2, gen3, gen4) -> TypeInfo:
    return union_type("FSharp.Core.FSharpChoice`5", [gen0, gen1, gen2, gen3, gen4], FSharpChoice_5, lambda: [[["Item", gen0]], [["Item", gen1]], [["Item", gen2]], [["Item", gen3]], [["Item", gen4]]])


class FSharpChoice_5(Union, Generic[T1_3, T2_3, T3_2, T4_1, T5]):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Choice1Of5", "Choice2Of5", "Choice3Of5", "Choice4Of5", "Choice5Of5"]
    

FSharpChoice_5_reflection = expr_16

def expr_17(gen0, gen1, gen2, gen3, gen4, gen5) -> TypeInfo:
    return union_type("FSharp.Core.FSharpChoice`6", [gen0, gen1, gen2, gen3, gen4, gen5], FSharpChoice_6, lambda: [[["Item", gen0]], [["Item", gen1]], [["Item", gen2]], [["Item", gen3]], [["Item", gen4]], [["Item", gen5]]])


class FSharpChoice_6(Union, Generic[T1_4, T2_4, T3_3, T4_2, T5_1, T6]):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Choice1Of6", "Choice2Of6", "Choice3Of6", "Choice4Of6", "Choice5Of6", "Choice6Of6"]
    

FSharpChoice_6_reflection = expr_17

def expr_18(gen0, gen1, gen2, gen3, gen4, gen5, gen6) -> TypeInfo:
    return union_type("FSharp.Core.FSharpChoice`7", [gen0, gen1, gen2, gen3, gen4, gen5, gen6], FSharpChoice_7, lambda: [[["Item", gen0]], [["Item", gen1]], [["Item", gen2]], [["Item", gen3]], [["Item", gen4]], [["Item", gen5]], [["Item", gen6]]])


class FSharpChoice_7(Union, Generic[T1_5, T2_5, T3_4, T4_3, T5_2, T6_1, T7]):
    def __init__(self, tag=None, *fields) -> None:
        super().__init__()
        self.tag = tag or 0
        self.fields = fields
    
    @staticmethod
    def cases():
        return ["Choice1Of7", "Choice2Of7", "Choice3Of7", "Choice4Of7", "Choice5Of7", "Choice6Of7", "Choice7Of7"]
    

FSharpChoice_7_reflection = expr_18

def Choice_makeChoice1Of2(x: T1=None) -> FSharpChoice_2[T1, Any]:
    return FSharpChoice_2(0, x)


def Choice_makeChoice2Of2(x: T2=None) -> FSharpChoice_2[Any, T2]:
    return FSharpChoice_2(1, x)


def Choice_tryValueIfChoice1Of2(x: FSharpChoice_2[T1, Any]) -> Optional[T1]:
    if x.tag == 0:
        return some(x.fields[0])
    
    else: 
        return None
    


def Choice_tryValueIfChoice2Of2(x: FSharpChoice_2[Any, T2]) -> Optional[T2]:
    if x.tag == 1:
        return some(x.fields[0])
    
    else: 
        return None
    


