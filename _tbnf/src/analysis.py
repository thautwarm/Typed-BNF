from __future__ import annotations
from typing import (Tuple, Any, List, Callable)
from ..fable_modules.fable_library.array import reverse as reverse_1
from ..fable_modules.fable_library.list import (FSharpList, empty as empty_2, map, reverse, length, iterate, is_empty, cons, of_array as of_array_1, try_item, map_indexed, fold, contains as contains_1, to_array)
from ..fable_modules.fable_library.map import (empty, of_array, contains_key, FSharpMap__get_Item, try_find, add)
from ..fable_modules.fable_library.option import Option
from ..fable_modules.fable_library.reflection import (TypeInfo, string_type, list_type, tuple_type, record_type, class_type, array_type)
from ..fable_modules.fable_library.set import (empty as empty_1, contains, add as add_1)
from ..fable_modules.fable_library.string import (to_text, interpolate, to_console, printf)
from ..fable_modules.fable_library.types import Record
from ..fable_modules.fable_library.util import (compare_primitives, string_hash, get_enumerator, ignore)
from .exceptions import (NotGlobalVariable, InvalidKind, UnboundTypeVariable, InvalidTypeApplication, DuplicateVariable, DuplicateTypeVariable, InvalidConstructorDefininationCause, InvalidConstructorDefinination, NoField, UnboundVariable, ComponentAccessingOutOfBound, UnboundLexer, DuplicateNonterminal, DuplicateLexer, UnboundNonterminal)
from .grammar import (monot, monot_reflection, _predefined_typenames, polyt, monot__prune, monot__apply_to_children_z6a62bcbf, TTuple, position, position_reflection, definition, expr as expr_1, node as node_5, TConst_str, TConst_int, TConst_bool, TConst_float, TList, lexerule, production as production_1, symbol, TConst_token)
from .macro_resolve import resolve_macro
from .op import basename
from .unification import (Manager, Manager__NewTyRef_Z721C83C5, Manager__Unify_Z1D753960, Manager__Instantiate_Z25E5E15E, Manager_reflection, Manager__ctor)
from .utils import (List_replaceWith, List_tryLookup)

def expr_186() -> TypeInfo:
    return record_type("tbnf.Analysis.Shape", [], Shape, lambda: [["parameters", list_type(string_type)], ["fields", list_type(tuple_type(string_type, monot_reflection()))]])


class Shape(Record):
    def __init__(self, parameters: FSharpList[str], fields: FSharpList[Tuple[str, monot]]) -> None:
        super().__init__()
        self.parameters = parameters
        self.fields = fields
    

Shape_reflection = expr_186

def expr_197() -> TypeInfo:
    return class_type("tbnf.Analysis.Sigma", None, Sigma)


class Sigma:
    def __init__(self, UM: Manager) -> None:
        self.UM = UM
        class ObjectExpr188:
            @property
            def Compare(self) -> Any:
                def arrow_187(x: str, y: str) -> int:
                    return compare_primitives(x, y)
                
                return arrow_187
            
        self.shapes = empty(ObjectExpr188())
        class ObjectExpr190:
            @property
            def Compare(self) -> Any:
                def arrow_189(x_1: str, y_1: str) -> int:
                    return compare_primitives(x_1, y_1)
                
                return arrow_189
            
        self.kinds = of_array(_predefined_typenames, ObjectExpr190())
        class ObjectExpr192:
            @property
            def Compare(self) -> Any:
                def arrow_191(x_2: str, y_2: str) -> int:
                    return compare_primitives(x_2, y_2)
                
                return arrow_191
            
        self.global_variables = empty(ObjectExpr192())
        class ObjectExpr194:
            @property
            def Compare(self) -> Any:
                def arrow_193(x_3: str, y_3: str) -> int:
                    return compare_primitives(x_3, y_3)
                
                return arrow_193
            
        self.constructors = empty_1(ObjectExpr194())
        class ObjectExpr196:
            @property
            def Compare(self) -> Any:
                def arrow_195(x_4: str, y_4: str) -> int:
                    return compare_primitives(x_4, y_4)
                
                return arrow_195
            
        self.external_types = empty_1(ObjectExpr196())
        self.records = empty_2()
        self.adt_cases = empty_2()
    

Sigma_reflection = expr_197

def Sigma__ctor_Z57FA2555(UM: Manager) -> Sigma:
    return Sigma(UM)


def Sigma__KindCheck_Z25145215(__: Sigma, t: monot) -> monot:
    Sigma__checkKind__Z25145215(__, t)
    return t


def Sigma__KindCheckMono_Z25145215(__: Sigma, t: monot) -> monot:
    return Sigma__KindCheck_Z25145215(__, t)


def Sigma__KindCheck_Z25E5E15E(__: Sigma, t: polyt) -> polyt:
    if t.tag == 1:
        Sigma__checkKind__Z25145215(__, t.fields[0])
        return t
    
    else: 
        Sigma__checkKind__Z25145215(__, t.fields[1])
        return t
    


def Sigma__RegisterType(__: Sigma, external: bool, has_fields: bool, typename: str, parameters: FSharpList[str], fields: FSharpList[Tuple[str, monot]]) -> None:
    Sigma__defineShape(__, external, has_fields, typename, parameters, fields)


def Sigma__RegisterExtGVar(__: Sigma, ident: str, t: polyt) -> None:
    Sigma__registerExtGVar(__, ident, t)


def Sigma__RegisterCtorGVar(__: Sigma, ident: str, t: monot) -> None:
    Sigma__registerCtorGVar(__, ident, t)


def Sigma__LookupField(__: Sigma, t: monot, field: str) -> monot:
    return Sigma__lookupField(__, t, field, Manager__NewTyRef_Z721C83C5(__.UM, "." + field))


def Sigma__get_GlobalVariables(__: Sigma) -> Any:
    return __.global_variables


def Sigma__IsGlobalVariableConstructor_Z721C83C5(__: Sigma, varname: str) -> bool:
    if contains_key(varname, __.global_variables):
        return contains(varname, __.constructors)
    
    else: 
        raise NotGlobalVariable(varname)
    


def Sigma__GetADTCases(__: Sigma) -> FSharpList[Tuple[str, Any]]:
    return __.adt_cases


def Sigma__GetRecordTypes(__: Sigma) -> FSharpList[Tuple[str, Shape]]:
    def mapping(x: str, __: Sigma=__) -> Tuple[str, Shape]:
        return (x, FSharpMap__get_Item(__.shapes, x))
    
    return map(mapping, reverse(__.records))


def Sigma__checkKind__Z25145215(this: Sigma, t: monot) -> None:
    t_1 : monot = monot__prune(t)
    if t_1.tag == 1:
        match_value : Option[int] = try_find(t_1.fields[0], this.kinds)
        if match_value is not None:
            if match_value == 0:
                pass
            
            else: 
                kind : int = match_value or 0
                got : int = 0
                if kind != got if (kind >= 0) else (False):
                    raise InvalidKind({
                        "expect": kind,
                        "got": got,
                        "name": t_1.fields[0]
                    })
                
            
        
        else: 
            raise UnboundTypeVariable(t_1.fields[0])
        
    
    elif t_1.tag == 2:
        if t_1.fields[0].tag == 1:
            match_value_1 : Option[int] = try_find(t_1.fields[0].fields[0], this.kinds)
            if match_value_1 is not None:
                kind_1 : int = match_value_1 or 0
                got_1 : int = length(t_1.fields[1]) or 0
                if kind_1 != got_1 if (kind_1 >= 0) else (False):
                    raise InvalidKind({
                        "expect": kind_1,
                        "got": got_1,
                        "name": t_1.fields[0].fields[0]
                    })
                
                def arrow_198(t_2: monot, this: Sigma=this, t: monot=t) -> None:
                    Sigma__checkKind__Z25145215(this, t_2)
                
                iterate(arrow_198, t_1.fields[1])
            
            else: 
                raise UnboundTypeVariable(t_1.fields[0].fields[0])
            
        
        else: 
            raise InvalidTypeApplication(t_1.fields[0])
        
    
    else: 
        def arrow_199(t_3: monot, this: Sigma=this, t: monot=t) -> None:
            Sigma__checkKind__Z25145215(this, t_3)
        
        monot__apply_to_children_z6a62bcbf(t_1, arrow_199)
    


def Sigma__registerExistingVariable(this: Sigma, varname: str, t: polyt) -> None:
    if contains_key(varname, this.global_variables):
        raise DuplicateVariable(varname)
    
    else: 
        this.global_variables = add(varname, t, this.global_variables)
    


def Sigma__registerType(this: Sigma, typename: str, kind: int) -> None:
    if contains_key(typename, this.kinds):
        raise DuplicateTypeVariable(typename)
    
    else: 
        this.kinds = add(typename, kind, this.kinds)
    


def Sigma__addCase(this: Sigma, typename: str, ctor_name: str, t: FSharpList[Tuple[str, monot]]) -> None:
    if contains(typename, this.external_types):
        raise InvalidConstructorDefinination(InvalidConstructorDefininationCause(0))
    
    match_value : Option[Shape] = try_find(typename, this.shapes)
    (pattern_matching_result,) = (None,)
    if match_value is not None:
        if length(match_value.fields) != 0:
            pattern_matching_result = 0
        
        else: 
            pattern_matching_result = 1
        
    
    else: 
        pattern_matching_result = 1
    
    if pattern_matching_result == 0:
        raise InvalidConstructorDefinination(InvalidConstructorDefininationCause(1))
    
    elif pattern_matching_result == 1:
        if match_value is None:
            Sigma__registerType(this, typename, 0)
            this.shapes = add(typename, Shape(empty_2(), empty_2()), this.shapes)
        
        elif not is_empty(match_value.parameters):
            raise InvalidConstructorDefinination(InvalidConstructorDefininationCause(2))
        
    
    def func(_arg1: Option[Any]=None, this: Sigma=this, typename: str=typename, ctor_name: str=ctor_name, t: FSharpList[Tuple[str, monot]]=t) -> Any:
        if _arg1 is not None:
            if contains_key(ctor_name, _arg1):
                cases_1 : Any = _arg1
                raise InvalidConstructorDefinination(InvalidConstructorDefininationCause(3, ctor_name))
            
            elif _arg1 is not None:
                return add(ctor_name, t, _arg1)
            
            else: 
                raise Exception("Match failure")
            
        
        else: 
            class ObjectExpr201:
                @property
                def Compare(self) -> Any:
                    def arrow_200(x: str, y: str) -> int:
                        return compare_primitives(x, y)
                    
                    return arrow_200
                
            return of_array([(ctor_name, t)], ObjectExpr201())
        
    
    adt_cases_0027 : FSharpList[Tuple[str, Any]] = List_replaceWith(typename, func, this.adt_cases)
    this.adt_cases = adt_cases_0027


def Sigma__defineShape(this: Sigma, external: bool, has_fields: bool, typename: str, parameters: FSharpList[str], fields: FSharpList[Tuple[str, monot]]) -> None:
    if contains_key(typename, this.shapes):
        raise DuplicateTypeVariable(typename)
    
    else: 
        match_value : Option[int] = try_find(typename, this.kinds)
        if match_value is None:
            Sigma__registerType(this, typename, length(parameters))
        
        else: 
            kind : int = match_value or 0
            if length(parameters) != kind if (kind >= 0) else (False):
                raise InvalidKind({
                    "expect": kind,
                    "got": length(parameters),
                    "name": typename
                })
            
        
        if external:
            this.external_types = add_1(typename, this.external_types)
        
        elif has_fields:
            def arrow_202(arg0: str, this: Sigma=this, external: bool=external, has_fields: bool=has_fields, typename: str=typename, parameters: FSharpList[str]=parameters, fields: FSharpList[Tuple[str, monot]]=fields) -> monot:
                return monot(4, arg0)
            
            Sigma__registerExistingVariable(this, typename, polyt(1, monot(3, fields, monot(1, typename))) if (is_empty(parameters)) else (polyt(0, parameters, monot(3, fields, monot(2, monot(1, typename), map(arrow_202, parameters))))))
            this.records = cons(typename, this.records)
        
        this.shapes = add(typename, Shape(parameters, fields), this.shapes)
    


def Sigma__lookupField(this: Sigma, t: monot, fieldname: str, tyref: monot) -> monot:
    typename : str = basename(t)
    match_value : Option[Shape] = try_find(typename, this.shapes)
    if match_value is not None:
        shape : Shape = match_value
        match_value_1 : Option[monot] = List_tryLookup(fieldname, shape.fields)
        if match_value_1 is not None:
            ft : monot = match_value_1
            inst_target : monot = TTuple(of_array_1([t, tyref]))
            def mapping(arg0: str, this: Sigma=this, t: monot=t, fieldname: str=fieldname, tyref: monot=tyref) -> monot:
                return monot(4, arg0)
            
            Manager__Unify_Z1D753960(this.UM, inst_target, Manager__Instantiate_Z25E5E15E(this.UM, polyt(0, shape.parameters, TTuple(of_array_1([monot(2, monot(1, typename), map(mapping, shape.parameters)), ft]))))[1])
            Sigma__checkKind__Z25145215(this, inst_target)
            return monot__prune(tyref)
        
        else: 
            raise NoField(t, fieldname)
        
    
    else: 
        raise UnboundTypeVariable(typename)
    


def Sigma__registerExtGVar(this: Sigma, varname: str, t: polyt) -> None:
    if contains_key(varname, this.global_variables):
        raise DuplicateVariable(varname)
    
    else: 
        this.global_variables = add(varname, t, this.global_variables)
    


def Sigma__registerCtorGVar(this: Sigma, varname: str, t: monot) -> None:
    if contains_key(varname, this.global_variables):
        raise DuplicateVariable(varname)
    
    else: 
        this.global_variables = add(varname, polyt(1, t), this.global_variables)
        this.constructors = add_1(varname, this.constructors)
        (pattern_matching_result, args, typename) = (None, None, None)
        if t.tag == 3:
            if t.fields[1].tag == 1:
                pattern_matching_result = 0
                args = t.fields[0]
                typename = t.fields[1].fields[0]
            
            else: 
                pattern_matching_result = 1
            
        
        else: 
            pattern_matching_result = 1
        
        if pattern_matching_result == 0:
            Sigma__addCase(this, typename, varname, args)
        
        elif pattern_matching_result == 1:
            raise InvalidConstructorDefinination(InvalidConstructorDefininationCause(4, t))
        
    


def expr_203() -> TypeInfo:
    return record_type("tbnf.Analysis.Analyzer", [], Analyzer, lambda: [["UM", Manager_reflection()], ["Sigma", Sigma_reflection()], ["currentPos", position_reflection()], ["Omega", class_type("Microsoft.FSharp.Collections.FSharpMap`2", [string_type, monot_reflection()])], ["LiteralTokens", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [string_type])], ["ReferencedNamedTokens", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [string_type])], ["TokenFragments", array_type(string_type)], ["IgnoreSet", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [string_type])]])


class Analyzer(Record):
    def __init__(self, UM: Manager, Sigma: Sigma, current_pos: position, Omega: Any, LiteralTokens: Any, ReferencedNamedTokens: Any, TokenFragments: List[str], IgnoreSet: Any) -> None:
        super().__init__()
        self.UM = UM
        self.Sigma = Sigma
        self.current_pos = current_pos
        self.Omega = Omega
        self.LiteralTokens = LiteralTokens
        self.ReferencedNamedTokens = ReferencedNamedTokens
        self.TokenFragments = TokenFragments
        self.IgnoreSet = IgnoreSet
    

Analyzer_reflection = expr_203

def build_analyzer(stmts: List[definition]) -> Tuple[List[definition], Analyzer]:
    UM : Manager = Manager__ctor()
    Sigma_1 : Sigma = Sigma__ctor_Z57FA2555(UM)
    current_pos : position = None
    class ObjectExpr205:
        @property
        def Compare(self) -> Any:
            def arrow_204(x: str, y: str) -> int:
                return compare_primitives(x, y)
            
            return arrow_204
        
    Omega : Any = empty(ObjectExpr205())
    class ObjectExpr207:
        @property
        def Compare(self) -> Any:
            def arrow_206(x_1: str, y_1: str) -> int:
                return compare_primitives(x_1, y_1)
            
            return arrow_206
        
    LiteralTokens : Any = empty_1(ObjectExpr207())
    class ObjectExpr209:
        @property
        def Compare(self) -> Any:
            def arrow_208(x_2: str, y_2: str) -> int:
                return compare_primitives(x_2, y_2)
            
            return arrow_208
        
    ReferencedNamedTokens : Any = empty_1(ObjectExpr209())
    TokenFragments : FSharpList[str] = empty_2()
    class ObjectExpr211:
        @property
        def Compare(self) -> Any:
            def arrow_210(x_3: str, y_3: str) -> int:
                return compare_primitives(x_3, y_3)
            
            return arrow_210
        
    IgnoreSet : Any = empty_1(ObjectExpr211())
    def infer_e(s_gamma: Any, S: FSharpList[monot], e: expr_1, stmts: List[definition]=stmts) -> expr_1:
        nonlocal current_pos
        S_1 : FSharpList[monot] = S
        current_pos = e.pos
        match_value : node_5 = e.node
        if match_value.tag == 6:
            v_1 : str = match_value.fields[0]
            match_value_1 : Option[polyt] = try_find(v_1, s_gamma)
            if match_value_1 is not None:
                pattern_input : Tuple[FSharpList[monot], monot] = Manager__Instantiate_Z25E5E15E(UM, match_value_1)
                match_value.fields[1].contents = pattern_input[0]
                return expr_1(e.node, e.pos, pattern_input[1])
            
            else: 
                raise UnboundVariable(v_1)
            
        
        elif match_value.tag == 9:
            return expr_1(e.node, e.pos, TConst_str)
        
        elif match_value.tag == 8:
            return expr_1(e.node, e.pos, TConst_int)
        
        elif match_value.tag == 11:
            return expr_1(e.node, e.pos, TConst_bool)
        
        elif match_value.tag == 10:
            return expr_1(e.node, e.pos, TConst_float)
        
        elif match_value.tag == 4:
            name_3 : str = match_value.fields[0]
            value_2 : expr_1 = infer_e(s_gamma, S_1, match_value.fields[1])
            body_1 : expr_1 = infer_e(add(name_3, polyt(1, value_2.t), s_gamma), S_1, match_value.fields[2])
            return expr_1(node_5(4, name_3, value_2, body_1), e.pos, body_1.t)
        
        elif match_value.tag == 2:
            t_r : monot = Manager__NewTyRef_Z721C83C5(UM, "list")
            def mapping_1(elt_1: expr_1, s_gamma: Any=s_gamma, S: FSharpList[monot]=S, e: expr_1=e) -> expr_1:
                return infer_e(s_gamma, S_1, elt_1)
            
            return expr_1(node_5(2, map(mapping_1, match_value.fields[0])), e.pos, TList(monot__prune(t_r)))
        
        elif match_value.tag == 7:
            i : int = match_value.fields[0] or 0
            match_value_2 : Option[monot] = try_item(i - 1, S_1)
            if match_value_2 is None:
                raise ComponentAccessingOutOfBound(i)
            
            else: 
                return expr_1(e.node, e.pos, match_value_2)
            
        
        elif match_value.tag == 0:
            f_1 : expr_1 = infer_e(s_gamma, S_1, match_value.fields[0])
            t_f : monot = f_1.t
            def mapping_2(expr: expr_1, s_gamma: Any=s_gamma, S: FSharpList[monot]=S, e: expr_1=e) -> expr_1:
                return infer_e(s_gamma, S_1, expr)
            
            args_1 : FSharpList[expr_1] = map(mapping_2, match_value.fields[1])
            def arrow_212(i_1: int, x_7: expr_1, s_gamma: Any=s_gamma, S: FSharpList[monot]=S, e: expr_1=e) -> Tuple[str, monot]:
                return (to_text(interpolate("arg%P()", [i_1])), x_7.t)
            
            t_args : FSharpList[Tuple[str, monot]] = map_indexed(arrow_212, args_1)
            t_r_1 : monot = Manager__NewTyRef_Z721C83C5(UM, "@ret")
            Manager__Unify_Z1D753960(UM, monot(3, t_args, t_r_1), t_f)
            Sigma__KindCheckMono_Z25145215(Sigma_1, monot__prune(t_f))
            return expr_1(node_5(0, f_1, args_1), e.pos, monot__prune(t_r_1))
        
        elif match_value.tag == 3:
            fieldname_1 : str = match_value.fields[1]
            value_4 : expr_1 = infer_e(s_gamma, S_1, match_value.fields[0])
            return expr_1(node_5(3, value_4, fieldname_1), e.pos, Sigma__LookupField(Sigma_1, value_4.t, fieldname_1))
        
        elif match_value.tag == 5:
            ann_args : FSharpList[Tuple[str, monot]] = match_value.fields[0]
            def folder(state: Any, tupled_arg_1: Tuple[str, monot], s_gamma: Any=s_gamma, S: FSharpList[monot]=S, e: expr_1=e) -> Any:
                return add(tupled_arg_1[0], polyt(1, Sigma__KindCheck_Z25145215(Sigma_1, tupled_arg_1[1])), state)
            
            body_3 : expr_1 = infer_e(fold(folder, s_gamma, ann_args), S_1, match_value.fields[1])
            return expr_1(node_5(5, ann_args, body_3), e.pos, monot(3, ann_args, body_3.t))
        
        else: 
            def mapping(elt: expr_1, s_gamma: Any=s_gamma, S: FSharpList[monot]=S, e: expr_1=e) -> expr_1:
                return infer_e(s_gamma, S_1, elt)
            
            elts_1 : FSharpList[expr_1] = map(mapping, match_value.fields[0])
            def arrow_213(x_6: expr_1, s_gamma: Any=s_gamma, S: FSharpList[monot]=S, e: expr_1=e) -> monot:
                return x_6.t
            
            return expr_1(node_5(1, elts_1), e.pos, TTuple(map(arrow_213, elts_1)))
        
    
    def check_lexerule(x_8_mut: lexerule, stmts: List[definition]=stmts) -> None:
        while True:
            (x_8,) = (x_8_mut,)
            (pattern_matching_result, seq, l) = (None, None, None)
            if x_8.tag == 10:
                pattern_matching_result = 0
            
            elif x_8.tag == 0:
                pattern_matching_result = 0
            
            elif x_8.tag == 1:
                pattern_matching_result = 0
            
            elif x_8.tag == 3:
                pattern_matching_result = 0
            
            elif x_8.tag == 2:
                pattern_matching_result = 1
                seq = x_8.fields[0]
            
            elif x_8.tag == 4:
                pattern_matching_result = 1
                seq = x_8.fields[0]
            
            elif x_8.tag == 9:
                pattern_matching_result = 2
                l = x_8.fields[0]
            
            elif x_8.tag == 8:
                pattern_matching_result = 2
                l = x_8.fields[0]
            
            elif x_8.tag == 7:
                pattern_matching_result = 2
                l = x_8.fields[0]
            
            elif x_8.tag == 6:
                pattern_matching_result = 2
                l = x_8.fields[0]
            
            elif x_8.tag == 11:
                class ObjectExpr216:
                    @property
                    def Equals(self) -> Any:
                        def arrow_214(x_9: str, y_6: str) -> bool:
                            return x_9 == y_6
                        
                        return arrow_214
                    
                    @property
                    def GetHashCode(self) -> Any:
                        def arrow_215(x_9: str) -> int:
                            return string_hash(x_9)
                        
                        return arrow_215
                    
                if contains_1(x_8.fields[0], TokenFragments, ObjectExpr216()):
                    pattern_matching_result = 3
                
                else: 
                    pattern_matching_result = 4
                
            
            else: 
                pattern_matching_result = 0
            
            if pattern_matching_result == 0:
                pass
            
            elif pattern_matching_result == 1:
                iterate(check_lexerule, seq)
            
            elif pattern_matching_result == 2:
                x_8_mut = l
                continue
            
            elif pattern_matching_result == 3:
                pass
            
            elif pattern_matching_result == 4:
                if x_8.tag == 11:
                    raise UnboundLexer(x_8.fields[0])
                
                else: 
                    raise Exception("Match failure")
                
            
            break
    
    try: 
        def arrow_217(x_10: position) -> None:
            nonlocal current_pos
            current_pos = x_10
        
        stmts_1 : List[definition] = resolve_macro(arrow_217, stmts)
        for idx in range(0, (len(stmts_1) - 1) + 1, 1):
            stmt : definition = stmts_1[idx]
            (pattern_matching_result_1, decl_1, decl_2, decl_3, decl_4, decl_5) = (None, None, None, None, None, None)
            if stmt.tag == 6:
                pattern_matching_result_1 = 0
                decl_1 = stmt.fields[0]
            
            elif stmt.tag == 3:
                pattern_matching_result_1 = 1
                decl_2 = stmt.fields[0]
            
            elif stmt.tag == 4:
                pattern_matching_result_1 = 2
                decl_3 = stmt.fields[0]
            
            elif stmt.tag == 5:
                pattern_matching_result_1 = 3
                decl_4 = stmt.fields[0]
            
            elif stmt.tag == 0:
                pattern_matching_result_1 = 4
            
            elif stmt.tag == 1:
                if contains_key(stmt.fields[0]["lhs"], Omega):
                    pattern_matching_result_1 = 5
                    decl_5 = stmt.fields[0]
                
                else: 
                    pattern_matching_result_1 = 6
                
            
            else: 
                pattern_matching_result_1 = 6
            
            if pattern_matching_result_1 == 0:
                current_pos = decl_1["pos"]
                with get_enumerator(decl_1["ignoreList"]) as enumerator:
                    while enumerator.System_Collections_IEnumerator_MoveNext():
                        each : str = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
                        ReferencedNamedTokens = add_1(each, IgnoreSet)
                        IgnoreSet = add_1(each, IgnoreSet)
            
            elif pattern_matching_result_1 == 1:
                current_pos = decl_2["pos"]
                Sigma__RegisterExtGVar(Sigma_1, decl_2["ident"], Sigma__KindCheck_Z25E5E15E(Sigma_1, decl_2["t"]))
            
            elif pattern_matching_result_1 == 2:
                current_pos = decl_3["pos"]
                Sigma__RegisterCtorGVar(Sigma_1, decl_3["ident"], Sigma__KindCheck_Z25145215(Sigma_1, decl_3["t"]))
            
            elif pattern_matching_result_1 == 3:
                current_pos = decl_4["pos"]
                def arrow_218(tupled_arg: Tuple[str, monot, position]) -> Tuple[str, monot]:
                    return (tupled_arg[0], tupled_arg[1])
                
                Sigma__RegisterType(Sigma_1, decl_4["external"], decl_4["hasFields"], decl_4["ident"], decl_4["parameters"], map(arrow_218, decl_4["fields"]))
                with get_enumerator(decl_4["fields"]) as enumerator_1:
                    while enumerator_1.System_Collections_IEnumerator_MoveNext():
                        for_loop_var : Tuple[str, monot, position] = enumerator_1.System_Collections_Generic_IEnumerator_00601_get_Current()
                        current_pos = for_loop_var[2]
                        ignore(Sigma__KindCheckMono_Z25145215(Sigma_1, for_loop_var[1]))
            
            elif pattern_matching_result_1 == 4:
                raise Exception("macro definition must be processed before type checking")
            
            elif pattern_matching_result_1 == 5:
                raise DuplicateNonterminal(decl_5["lhs"])
            
            elif pattern_matching_result_1 == 6:
                (pattern_matching_result_2, decl_7, decl_8) = (None, None, None)
                if stmt.tag == 1:
                    pattern_matching_result_2 = 0
                    decl_7 = stmt.fields[0]
                
                elif stmt.tag == 2:
                    class ObjectExpr221:
                        @property
                        def Equals(self) -> Any:
                            def arrow_219(x_4: str, y_4: str) -> bool:
                                return x_4 == y_4
                            
                            return arrow_219
                        
                        @property
                        def GetHashCode(self) -> Any:
                            def arrow_220(x_4: str) -> int:
                                return string_hash(x_4)
                            
                            return arrow_220
                        
                    if contains_1(stmt.fields[0]["lhs"], TokenFragments, ObjectExpr221()):
                        pattern_matching_result_2 = 1
                        decl_8 = stmt.fields[0]
                    
                    else: 
                        pattern_matching_result_2 = 2
                    
                
                else: 
                    pattern_matching_result_2 = 2
                
                if pattern_matching_result_2 == 0:
                    nt : monot = Manager__NewTyRef_Z721C83C5(UM, "\u0027" + decl_7["lhs"])
                    Omega = add(decl_7["lhs"], nt, Omega)
                
                elif pattern_matching_result_2 == 1:
                    raise DuplicateLexer(decl_8["lhs"])
                
                elif pattern_matching_result_2 == 2:
                    if stmt.tag == 2:
                        TokenFragments = cons(stmt.fields[0]["lhs"], TokenFragments)
                    
                    else: 
                        raise Exception("Match failure")
                    
                
            
        for idx_1 in range(0, (len(stmts_1) - 1) + 1, 1):
            stmt_2 : definition = stmts_1[idx_1]
            if stmt_2.tag == 1:
                decl_10 : dict[str, Any] = stmt_2.fields[0]
                current_pos = decl_10["pos"]
                tupled_arg_2 : Tuple[str, FSharpList[Tuple[position, production_1]]] = (decl_10["lhs"], decl_10["define"])
                t_6 : monot = FSharpMap__get_Item(Omega, tupled_arg_2[0])
                with get_enumerator(tupled_arg_2[1]) as enumerator_2:
                    while enumerator_2.System_Collections_IEnumerator_MoveNext():
                        for_loop_var_1 : Tuple[position, production_1] = enumerator_2.System_Collections_Generic_IEnumerator_00601_get_Current()
                        production : production_1 = for_loop_var_1[1]
                        current_pos = for_loop_var_1[0]
                        def infer_p(s: symbol) -> monot:
                            nonlocal LiteralTokens, ReferencedNamedTokens
                            if s.tag == 0:
                                n : str = s.fields[0]
                                if s.fields[1]:
                                    LiteralTokens = add_1(n, LiteralTokens)
                                
                                else: 
                                    class ObjectExpr224:
                                        @property
                                        def Equals(self) -> Any:
                                            def arrow_222(x_5: str, y_5: str) -> bool:
                                                return x_5 == y_5
                                            
                                            return arrow_222
                                        
                                        @property
                                        def GetHashCode(self) -> Any:
                                            def arrow_223(x_5: str) -> int:
                                                return string_hash(x_5)
                                            
                                            return arrow_223
                                        
                                    if not contains_1(n, TokenFragments, ObjectExpr224()):
                                        raise UnboundLexer(n)
                                    
                                    else: 
                                        ReferencedNamedTokens = add_1(n, ReferencedNamedTokens)
                                    
                                
                                return TConst_token
                            
                            elif s.tag == 1:
                                if contains_key(s.fields[0], Omega):
                                    return FSharpMap__get_Item(Omega, s.fields[0])
                                
                                elif s.tag == 1:
                                    raise UnboundNonterminal(s.fields[0])
                                
                                else: 
                                    raise Exception("Match failure")
                                
                            
                            else: 
                                def arrow_225(s: symbol=s) -> Exception:
                                    raise Exception("macrocall not processed")
                                
                                raise arrow_225()
                            
                        
                        S_2 : FSharpList[monot] = map(infer_p, production.symbols)
                        action : expr_1 = infer_e(Sigma__get_GlobalVariables(Sigma_1), S_2, production.action)
                        Manager__Unify_Z1D753960(UM, action.t, t_6)
                        production.action = action
            
            elif stmt_2.tag == 2:
                decl_11 : dict[str, Any] = stmt_2.fields[0]
                current_pos = decl_11["pos"]
                check_lexerule(decl_11["define"])
            
        def arrow_226(_unit: Any=None) -> Analyzer:
            TokenFragments_1 : List[str] = reverse_1(to_array(TokenFragments))
            return Analyzer(UM, Sigma_1, current_pos, Omega, LiteralTokens, ReferencedNamedTokens, TokenFragments_1, IgnoreSet)
        
        return (stmts_1, arrow_226())
    
    except Exception as e_1:
        arg30_1 : str = current_pos.filename
        arg20_1 : int = current_pos.col or 0
        arg10_4 : int = current_pos.line or 0
        to_console(printf("line %d, column %d, file: %s\n%A"))(arg10_4)(arg20_1)(arg30_1)(e_1)
        raise Exception("exit with error")
    


