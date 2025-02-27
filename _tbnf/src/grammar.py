from __future__ import annotations
from typing import (TypeVar, Any, Generic, List, Callable, Tuple)
from ..fable_modules.fable_library.list import (FSharpList, map, exists, iterate, singleton)
from ..fable_modules.fable_library.option import (some, Option)
from ..fable_modules.fable_library.reflection import (TypeInfo, class_type, int32_type, string_type, record_type, list_type, tuple_type, float64_type, bool_type, union_type, anon_record_type)
from ..fable_modules.fable_library.string import join
from ..fable_modules.fable_library.types import (to_string, Record, Union, FSharpRef)
from .utils import escape_string

_A = TypeVar("_A")

def expr_121(gen0: TypeInfo) -> TypeInfo:
    return class_type("tbnf.Grammar.Cell`1", [gen0], Cell_1)


class Cell_1(Generic[_A]):
    def __init__(self) -> None:
        self._cell = None
    
    def __str__(self) -> str:
        __ : Cell_1[_A] = self
        if Cell_1__get_IsNull(__):
            return "\u003cnull\u003e"
        
        else: 
            copy_of_struct : _A = Cell_1__get_Get(__)
            return to_string(copy_of_struct)
        
    

Cell_1_reflection = expr_121

def Cell_1__ctor() -> Cell_1[Any]:
    return Cell_1()


def Cell_1__Set_2B595(this: Cell_1[_A], a: _A=None) -> None:
    this._cell = a


def Cell_1__get_Get(this: Cell_1[_A]) -> _A:
    return this._cell


def Cell_1__get_IsNull(this: Cell_1[Any]) -> bool:
    return this._cell is None


def expr_122() -> TypeInfo:
    return record_type("tbnf.Grammar.position", [], position, lambda: [["line", int32_type], ["col", int32_type], ["filename", string_type]])


class position(Record):
    def __init__(self, line: int, col: int, filename: str) -> None:
        super().__init__()
        self.line = line or 0
        self.col = col or 0
        self.filename = filename
    

position_reflection = expr_122

def expr_123() -> TypeInfo:
    return union_type("tbnf.Grammar.node", [], node, lambda: [[["Item1", expr_reflection()], ["Item2", list_type(expr_reflection())]], [["Item", list_type(expr_reflection())]], [["Item", list_type(expr_reflection())]], [["Item1", expr_reflection()], ["Item2", string_type]], [["Item1", string_type], ["Item2", expr_reflection()], ["Item3", expr_reflection()]], [["Item1", list_type(tuple_type(string_type, monot_reflection()))], ["Item2", expr_reflection()]], [["Item1", string_type], ["Item2", record_type("Microsoft.FSharp.Core.FSharpRef`1", [list_type(monot_reflection())], FSharpRef, lambda: [["contents", list_type(monot_reflection())]])]], [["Item", int32_type]], [["Item", int32_type]], [["Item", string_type]], [["Item", float64_type]], [["Item", bool_type]]])


class node(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["EApp", "ETuple", "EList", "EField", "ELet", "EFun", "EVar", "ESlot", "EInt", "EStr", "EFlt", "EBool"]
    

node_reflection = expr_123

def expr_124() -> TypeInfo:
    return record_type("tbnf.Grammar.expr", [], expr, lambda: [["node", node_reflection()], ["pos", position_reflection()], ["t", monot_reflection()]])


class expr(Record):
    def __init__(self, node: node, pos: position, t: monot) -> None:
        super().__init__()
        self.node = node
        self.pos = pos
        self.t = t
    

expr_reflection = expr_124

def expr_125() -> TypeInfo:
    return union_type("tbnf.Grammar.monot", [], monot, lambda: [[["Item", Cell_1_reflection(monot_reflection())]], [["Item", string_type]], [["Item1", monot_reflection()], ["Item2", list_type(monot_reflection())]], [["Item1", list_type(tuple_type(string_type, monot_reflection()))], ["Item2", monot_reflection()]], [["Item", string_type]]])


class monot(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["TRef", "TConst", "TApp", "TFun", "TVar"]
    

monot_reflection = expr_125

def expr_126() -> TypeInfo:
    return union_type("tbnf.Grammar.polyt", [], polyt, lambda: [[["Item1", list_type(string_type)], ["Item2", monot_reflection()]], [["Item", monot_reflection()]]])


class polyt(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["Poly", "Mono"]
    

polyt_reflection = expr_126

def expr_127() -> TypeInfo:
    return record_type("tbnf.Grammar.production", [], production, lambda: [["symbols", list_type(symbol_reflection())], ["action", expr_reflection()]])


class production(Record):
    def __init__(self, symbols: FSharpList[symbol], action: expr) -> None:
        super().__init__()
        self.symbols = symbols
        self.action = action
    

production_reflection = expr_127

def expr_128() -> TypeInfo:
    return union_type("tbnf.Grammar.symbol", [], symbol, lambda: [[["Item1", string_type], ["Item2", bool_type]], [["Item", string_type]], [["Item1", string_type], ["Item2", list_type(symbol_reflection())], ["Item3", position_reflection()]]])


class symbol(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["Term", "Nonterm", "Macrocall"]
    

symbol_reflection = expr_128

def expr_129() -> TypeInfo:
    return union_type("tbnf.Grammar.definition", [], definition, lambda: [[["Item", anon_record_type(["define", list_type(tuple_type(position_reflection(), production_reflection()))], ["lhs", string_type], ["parameters", list_type(string_type)], ["pos", position_reflection()])]], [["Item", anon_record_type(["define", list_type(tuple_type(position_reflection(), production_reflection()))], ["lhs", string_type], ["pos", position_reflection()])]], [["Item", anon_record_type(["define", lexerule_reflection()], ["lhs", string_type], ["pos", position_reflection()])]], [["Item", anon_record_type(["ident", string_type], ["pos", position_reflection()], ["t", polyt_reflection()])]], [["Item", anon_record_type(["ident", string_type], ["pos", position_reflection()], ["t", monot_reflection()])]], [["Item", anon_record_type(["external", bool_type], ["fields", list_type(tuple_type(string_type, monot_reflection(), position_reflection()))], ["hasFields", bool_type], ["ident", string_type], ["parameters", list_type(string_type)], ["pos", position_reflection()])]], [["Item", anon_record_type(["ignoreList", list_type(string_type)], ["pos", position_reflection()])]]])


class definition(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["Defmacro", "Defrule", "Deflexer", "Declvar", "Declctor", "Decltype", "Defignore"]
    

definition_reflection = expr_129

def expr_130() -> TypeInfo:
    return union_type("tbnf.Grammar.lexerule", [], lexerule, lambda: [[], [], [["Item", list_type(lexerule_reflection())]], [["Item", string_type]], [["Item", list_type(lexerule_reflection())]], [["Item", lexerule_reflection()]], [["Item", lexerule_reflection()]], [["Item", lexerule_reflection()]], [["Item", lexerule_reflection()]], [["Item", lexerule_reflection()]], [["Item1", int32_type], ["Item2", int32_type]], [["Item", string_type]]])


class lexerule(Union):
    def __init__(self, tag: int, *fields: Any) -> None:
        super().__init__()
        self.tag : int = tag or 0
        self.fields : List[Any] = list(fields)
    
    @staticmethod
    def cases() -> List[str]:
        return ["LNumber", "LWildcard", "LSeq", "LStr", "LOr", "LNot", "LPlus", "LStar", "LOptional", "LGroup", "LRange", "LRef"]
    

lexerule_reflection = expr_130

def position_get_fake() -> position:
    return position(0, 0, "")


def expr_with_node(expr_1: expr, node_1: node) -> expr:
    return expr(node_1, expr_1.pos, expr_1.t)


def expr__transform_children_z51b8244a(this: expr, op_dereference: Callable[[expr], expr]) -> expr:
    def arrow_131(this: expr=this, op_dereference: Callable[[expr], expr]=op_dereference) -> node:
        match_value : node = this.node
        (pattern_matching_result, a) = (None, None)
        if match_value.tag == 1:
            pattern_matching_result = 1
        
        elif match_value.tag == 2:
            pattern_matching_result = 2
        
        elif match_value.tag == 3:
            pattern_matching_result = 3
        
        elif match_value.tag == 4:
            pattern_matching_result = 4
        
        elif match_value.tag == 5:
            pattern_matching_result = 5
        
        elif match_value.tag == 7:
            pattern_matching_result = 6
            a = match_value
        
        elif match_value.tag == 6:
            pattern_matching_result = 6
            a = match_value
        
        elif match_value.tag == 9:
            pattern_matching_result = 6
            a = match_value
        
        elif match_value.tag == 8:
            pattern_matching_result = 6
            a = match_value
        
        elif match_value.tag == 10:
            pattern_matching_result = 6
            a = match_value
        
        elif match_value.tag == 11:
            pattern_matching_result = 6
            a = match_value
        
        else: 
            pattern_matching_result = 0
        
        if pattern_matching_result == 0:
            return node(0, op_dereference(match_value.fields[0]), map(op_dereference, match_value.fields[1]))
        
        elif pattern_matching_result == 1:
            return node(1, map(op_dereference, match_value.fields[0]))
        
        elif pattern_matching_result == 2:
            return node(2, map(op_dereference, match_value.fields[0]))
        
        elif pattern_matching_result == 3:
            return node(3, op_dereference(match_value.fields[0]), match_value.fields[1])
        
        elif pattern_matching_result == 4:
            return node(4, match_value.fields[0], op_dereference(match_value.fields[1]), op_dereference(match_value.fields[2]))
        
        elif pattern_matching_result == 5:
            return node(5, match_value.fields[0], match_value.fields[1])
        
        elif pattern_matching_result == 6:
            return a
        
    
    return expr_with_node(this, arrow_131())


def expr__deep_copy(x: expr) -> expr:
    def transformer(x_1: expr, x: expr=x) -> expr:
        match_value : node = x_1.node
        if match_value.tag == 6:
            return expr_with_node(x_1, node(6, match_value.fields[0], FSharpRef(match_value.fields[1].contents)))
        
        else: 
            return expr__transform_children_z51b8244a(x_1, transformer)
        
    
    return transformer(x)


def monot__find_any_children_z23d07ce9(this: monot, predicate: Callable[[monot], bool]) -> bool:
    if (this.tag == 4) or (this.tag == 0):
        return False
    
    elif this.tag == 2:
        if predicate(this.fields[0]):
            return True
        
        else: 
            return exists(predicate, this.fields[1])
        
    
    elif this.tag == 3:
        def arrow_132(tupled_arg: Tuple[str, monot], this: monot=this, predicate: Callable[[monot], bool]=predicate) -> bool:
            return predicate(tupled_arg[1])
        
        if exists(arrow_132, this.fields[0]):
            return True
        
        else: 
            return predicate(this.fields[1])
        
    
    else: 
        return False
    


def monot__transform_children_z2cab662a(this: monot, ap: Callable[[monot], monot]) -> monot:
    (pattern_matching_result, a) = (None, None)
    if this.tag == 4:
        pattern_matching_result = 0
        a = this
    
    elif this.tag == 0:
        pattern_matching_result = 0
        a = this
    
    elif this.tag == 2:
        pattern_matching_result = 1
    
    elif this.tag == 3:
        pattern_matching_result = 2
    
    else: 
        pattern_matching_result = 0
        a = this
    
    if pattern_matching_result == 0:
        return a
    
    elif pattern_matching_result == 1:
        return monot(2, ap(this.fields[0]), map(ap, this.fields[1]))
    
    elif pattern_matching_result == 2:
        def arrow_133(ab: Tuple[str, monot], this: monot=this, ap: Callable[[monot], monot]=ap) -> Tuple[str, monot]:
            return (ab[0], ap(ab[1]))
        
        return monot(3, map(arrow_133, this.fields[0]), ap(this.fields[1]))
    


def monot__apply_to_children_z6a62bcbf(this: monot, op_dereference: Callable[[monot], None]) -> None:
    if (this.tag == 4) or (this.tag == 0):
        pass
    
    elif this.tag == 2:
        op_dereference(this.fields[0])
        iterate(op_dereference, this.fields[1])
    
    elif this.tag == 3:
        def arrow_134(tupled_arg: Tuple[str, monot], this: monot=this, op_dereference: Callable[[monot], None]=op_dereference) -> None:
            op_dereference(tupled_arg[1])
        
        iterate(arrow_134, this.fields[0])
        op_dereference(this.fields[1])
    


def monot__prune(this: monot) -> monot:
    def prune(t: monot, this: monot=this) -> monot:
        (pattern_matching_result,) = (None,)
        if t.tag == 0:
            if Cell_1__get_IsNull(t.fields[0]):
                pattern_matching_result = 0
            
            else: 
                pattern_matching_result = 1
            
        
        else: 
            pattern_matching_result = 1
        
        if pattern_matching_result == 0:
            return t
        
        elif pattern_matching_result == 1:
            if t.tag == 0:
                a_2 : Cell_1[monot] = t.fields[0]
                r : monot = prune(Cell_1__get_Get(a_2))
                Cell_1__Set_2B595(a_2, r)
                return r
            
            else: 
                return monot__transform_children_z2cab662a(t, prune)
            
        
    
    return prune(this)


def symbol__inspect(this: symbol) -> str:
    if this.tag == 1:
        return this.fields[0]
    
    elif this.tag == 2:
        def mapping(x: symbol, this: symbol=this) -> str:
            return symbol__inspect(x)
        
        return ((this.fields[0] + "(") + join(", ", map(mapping, this.fields[1]))) + ")"
    
    elif this.fields[1]:
        return escape_string(this.fields[0])
    
    else: 
        return ("\u003c" + this.fields[0]) + "\u003e"
    


def definition__inspect(this: definition) -> str:
    if this.tag == 1:
        decl : dict[str, Any] = this.fields[0]
        def mapping_1(tupled_arg: Tuple[position, production], this: definition=this) -> str:
            def mapping(x: symbol, tupled_arg: Tuple[position, production]=tupled_arg) -> str:
                return symbol__inspect(x)
            
            return join(" ", map(mapping, tupled_arg[1].symbols))
        
        return (decl["lhs"] + " :\n ") + join("\n| ", map(mapping_1, decl["define"]))
    
    else: 
        return "omit"
    


TConst_token : monot = monot(1, "token")

TConst_tuple : monot = monot(1, "tuple")

TConst_list : monot = monot(1, "list")

TConst_int : monot = monot(1, "int")

TConst_float : monot = monot(1, "float")

TConst_str : monot = monot(1, "str")

TConst_bool : monot = monot(1, "bool")

_predefined_typenames : List[Tuple[str, int]] = [("token", 0), ("tuple", -1), ("list", 1), ("int", 0), ("float", 0), ("str", 0), ("bool", 0)]

def TTuple(xs: FSharpList[monot]) -> monot:
    return monot(2, TConst_tuple, xs)


def TList(a: monot) -> monot:
    return monot(2, TConst_list, singleton(a))


def _007CTTuple_007C__007C(x: monot) -> Option[None]:
    (pattern_matching_result,) = (None,)
    if x.tag == 1:
        if x.fields[0] == "tuple":
            pattern_matching_result = 0
        
        else: 
            pattern_matching_result = 1
        
    
    else: 
        pattern_matching_result = 1
    
    if pattern_matching_result == 0:
        return some(None)
    
    elif pattern_matching_result == 1:
        return None
    


