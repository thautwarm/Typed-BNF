from __future__ import annotations
from typing import (Any, Tuple, Optional, List, Callable)
from fable_modules.fable_library.array import reverse
from fable_modules.fable_library.list import (FSharpList, length, of_array as of_array_1, map, empty as empty_2, try_item, fold, iterate, contains, cons, to_array)
from fable_modules.fable_library.map import (empty, of_array, try_find, contains_key, add, of_seq, FSharpMap__get_Item)
from fable_modules.fable_library.reflection import (TypeInfo, string_type, list_type, class_type, record_type, array_type)
from fable_modules.fable_library.set import (empty as empty_1, add as add_1)
from fable_modules.fable_library.types import Record
from fable_modules.fable_library.util import (compare_primitives, string_hash, get_enumerator, ignore)
from .exceptions import (InvalidKind, UnboundTypeVariable, InvalidTypeApplication, DuplicateTypeVariable, NoField, DuplicateVariable, UnboundVariable, ComponentAccessingOutOfBound, UnboundLexer, DuplicateNonterminal, DuplicateLexer, UnboundNonterminal)
from .grammar import (monot_reflection, _predefined_typenames, monot, polyt, monot__prune, monot__apply_to_children_z6a62bcbf, TTuple, position, position_reflection, node as node_5, expr as expr_1, TConst_str, TConst_int, TConst_bool, TConst_float, TList, lexerule, definition, production as production_1, TConst_token, symbol)
from .macro_resolve import resolve_macro
from .op import basename
from .unification import (Manager, Manager__NewTyRef_Z721C83C5, Manager__Unify, Manager__Instantiate_Z25E5E15E, Manager_reflection, Manager__ctor)

def expr_55() -> TypeInfo:
    return record_type("tbnf.Analysis.Shape", [], Shape, lambda: [["parameters", list_type(string_type)], ["fields", class_type("Microsoft.FSharp.Collections.FSharpMap`2", [string_type, monot_reflection()])]])


class Shape(Record):
    def __init__(self, parameters: FSharpList[str], fields: Any) -> None:
        super().__init__()
        self.parameters = parameters
        self.fields = fields
    

Shape_reflection = expr_55

def expr_59() -> TypeInfo:
    return class_type("tbnf.Analysis.Sigma", None, Sigma)


class Sigma:
    def __init__(self, UM: Manager=None) -> None:
        self.UM = UM
        class ObjectExpr56:
            @property
            def Compare(self) -> Any:
                return lambda x, y: compare_primitives(x, y)
            
        self.shapes = empty(ObjectExpr56())
        class ObjectExpr57:
            @property
            def Compare(self) -> Any:
                return lambda x_1, y_1: compare_primitives(x_1, y_1)
            
        self.kinds = of_array(_predefined_typenames, ObjectExpr57())
        class ObjectExpr58:
            @property
            def Compare(self) -> Any:
                return lambda x_2, y_2: compare_primitives(x_2, y_2)
            
        self.global_variables = empty(ObjectExpr58())
    

Sigma_reflection = expr_59

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
    


def Sigma__RegisterExternalType(__: Sigma, typename: str, parameters: FSharpList[str], fields: FSharpList[Tuple[str, monot]]) -> None:
    Sigma__defineShape(__, typename, parameters, fields)


def Sigma__RegisterExternalVariable(__: Sigma, n: str, t: polyt) -> None:
    Sigma__registerExternalVariable(__, n, t)


def Sigma__LookupField(__: Sigma, t: monot, field: str) -> monot:
    return Sigma__lookupField(__, t, field, Manager__NewTyRef_Z721C83C5(__.UM, "." + field))


def Sigma__get_GlobalVariables(__: Sigma) -> Any:
    return __.global_variables


def Sigma__checkKind__Z25145215(this: Sigma, t: monot) -> None:
    t_1 : monot = monot__prune(t)
    if t_1.tag == 2:
        if t_1.fields[0].tag == 1:
            match_value : Optional[int] = try_find(t_1.fields[0].fields[0], this.kinds)
            if match_value is not None:
                kind : int = match_value or 0
                got : int = length(t_1.fields[1]) or 0
                if kind != got if (kind >= 0) else (False):
                    raise InvalidKind({
                        "expect": kind,
                        "got": got,
                        "name": t_1.fields[0].fields[0]
                    })
                
            
            else: 
                raise UnboundTypeVariable(t_1.fields[0].fields[0])
            
        
        else: 
            raise InvalidTypeApplication(t_1.fields[0])
        
    
    else: 
        def arrow_60(t_2: monot, this=this, t=t) -> None:
            Sigma__checkKind__Z25145215(this, t_2)
        
        monot__apply_to_children_z6a62bcbf(t_1, arrow_60)
    


def Sigma__registerExternalType(this: Sigma, typename: str, kind: int) -> None:
    if contains_key(typename, this.kinds):
        raise DuplicateTypeVariable(typename)
    
    else: 
        this.kinds = add(typename, kind, this.kinds)
    


def Sigma__defineShape(this: Sigma, typename: str, parameters: FSharpList[str], fields: FSharpList[Tuple[str, monot]]) -> None:
    if contains_key(typename, this.shapes):
        raise DuplicateTypeVariable(typename)
    
    else: 
        match_value : Optional[int] = try_find(typename, this.kinds)
        if match_value is None:
            Sigma__registerExternalType(this, typename, length(parameters))
        
        else: 
            kind : int = match_value or 0
            if length(parameters) != kind if (kind >= 0) else (False):
                raise InvalidKind({
                    "expect": kind,
                    "got": length(parameters),
                    "name": typename
                })
            
        
        def arrow_62(this=this, typename=typename, parameters=parameters, fields=fields) -> Any:
            table : Any = this.shapes
            class ObjectExpr61:
                @property
                def Compare(self) -> Any:
                    return lambda x, y: compare_primitives(x, y)
                
            return add(typename, Shape(parameters, of_seq(fields, ObjectExpr61())), table)
        
        this.shapes = arrow_62()
    


def Sigma__lookupField(this: Sigma, t: monot, fieldname: str, tyref: monot) -> monot:
    typename : str = basename(t)
    match_value : Optional[Shape] = try_find(typename, this.shapes)
    if match_value is not None:
        shape : Shape = match_value
        match_value_1 : Optional[monot] = try_find(fieldname, shape.fields)
        if match_value_1 is not None:
            ft : monot = match_value_1
            inst_target : monot = TTuple(of_array_1([t, tyref]))
            Manager__Unify(this.UM, inst_target, Manager__Instantiate_Z25E5E15E(this.UM, polyt(0, shape.parameters, TTuple(of_array_1([monot(2, monot(1, typename), map(lambda arg0, this=this, t=t, fieldname=fieldname, tyref=tyref: monot(4, arg0), shape.parameters)), ft]))))[1])
            Sigma__checkKind__Z25145215(this, inst_target)
            return monot__prune(tyref)
        
        else: 
            raise NoField(t, fieldname)
        
    
    else: 
        raise UnboundTypeVariable(typename)
    


def Sigma__registerExternalVariable(this: Sigma, varname: str, t: polyt) -> None:
    if contains_key(varname, this.global_variables):
        raise DuplicateVariable(varname)
    
    else: 
        this.global_variables = add(varname, t, this.global_variables)
    


def expr_63() -> TypeInfo:
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
    

Analyzer_reflection = expr_63

def build_analyzer(stmts: List[definition]) -> Tuple[List[definition], Analyzer]:
    UM : Manager = Manager__ctor()
    Sigma_1 : Sigma = Sigma__ctor_Z57FA2555(UM)
    current_pos : position = None
    class ObjectExpr64:
        @property
        def Compare(self) -> Any:
            return lambda x, y: compare_primitives(x, y)
        
    Omega : Any = empty(ObjectExpr64())
    class ObjectExpr65:
        @property
        def Compare(self) -> Any:
            return lambda x_1, y_1: compare_primitives(x_1, y_1)
        
    LiteralTokens : Any = empty_1(ObjectExpr65())
    class ObjectExpr66:
        @property
        def Compare(self) -> Any:
            return lambda x_2, y_2: compare_primitives(x_2, y_2)
        
    ReferencedNamedTokens : Any = empty_1(ObjectExpr66())
    TokenFragments : FSharpList[str] = empty_2()
    class ObjectExpr67:
        @property
        def Compare(self) -> Any:
            return lambda x_3, y_3: compare_primitives(x_3, y_3)
        
    IgnoreSet : Any = empty_1(ObjectExpr67())
    def infer_e(s_gamma: Any, S: FSharpList[monot], e: expr_1, stmts=stmts) -> expr_1:
        nonlocal current_pos
        S_1 : FSharpList[monot] = S
        current_pos = e.pos
        match_value : node_5 = e.node
        if match_value.tag == 6:
            v_1 : str = match_value.fields[0]
            match_value_1 : Optional[polyt] = try_find(v_1, s_gamma)
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
            return expr_1(node_5(2, map(lambda elt_1, s_gamma=s_gamma, S=S, e=e: infer_e(s_gamma, S_1, elt_1), match_value.fields[0])), e.pos, TList(monot__prune(t_r)))
        
        elif match_value.tag == 7:
            i : int = match_value.fields[0] or 0
            match_value_2 : Optional[monot] = try_item(i - 1, S_1)
            if match_value_2 is None:
                raise ComponentAccessingOutOfBound(i)
            
            else: 
                return expr_1(e.node, e.pos, match_value_2)
            
        
        elif match_value.tag == 0:
            f_1 : expr_1 = infer_e(s_gamma, S_1, match_value.fields[0])
            t_f : monot = f_1.t
            args_1 : FSharpList[expr_1] = map(lambda expr, s_gamma=s_gamma, S=S, e=e: infer_e(s_gamma, S_1, expr), match_value.fields[1])
            t_args : FSharpList[monot] = map(lambda x_7, s_gamma=s_gamma, S=S, e=e: x_7.t, args_1)
            t_r_1 : monot = Manager__NewTyRef_Z721C83C5(UM, "@ret")
            Manager__Unify(UM, t_f, monot(3, t_args, t_r_1))
            Sigma__KindCheckMono_Z25145215(Sigma_1, monot__prune(t_f))
            return expr_1(node_5(0, f_1, args_1), e.pos, monot__prune(t_r_1))
        
        elif match_value.tag == 3:
            fieldname_1 : str = match_value.fields[1]
            value_4 : expr_1 = infer_e(s_gamma, S_1, match_value.fields[0])
            return expr_1(node_5(3, value_4, fieldname_1), e.pos, Sigma__LookupField(Sigma_1, value_4.t, fieldname_1))
        
        elif match_value.tag == 5:
            ann_args : FSharpList[Tuple[str, monot]] = match_value.fields[0]
            body_3 : expr_1 = infer_e(fold(lambda state, tupled_arg_1, s_gamma=s_gamma, S=S, e=e: add(tupled_arg_1[0], polyt(1, Sigma__KindCheck_Z25145215(Sigma_1, tupled_arg_1[1])), state), s_gamma, ann_args), S_1, match_value.fields[1])
            return expr_1(node_5(5, ann_args, body_3), e.pos, monot(3, map(lambda tuple, s_gamma=s_gamma, S=S, e=e: tuple[1], ann_args), body_3.t))
        
        else: 
            elts_1 : FSharpList[expr_1] = map(lambda elt, s_gamma=s_gamma, S=S, e=e: infer_e(s_gamma, S_1, elt), match_value.fields[0])
            return expr_1(node_5(1, elts_1), e.pos, TTuple(map(lambda x_6, s_gamma=s_gamma, S=S, e=e: x_6.t, elts_1)))
        
    
    def check_lexerule(x_8_mut: lexerule, stmts=stmts) -> None:
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
                class ObjectExpr68:
                    @property
                    def Equals(self) -> Any:
                        return lambda x_9, y_6: x_9 == y_6
                    
                    @property
                    def GetHashCode(self) -> Any:
                        return lambda x_9: string_hash(x_9)
                    
                if contains(x_8.fields[0], TokenFragments, ObjectExpr68()):
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
    
    def arrow_69(x_10: position, stmts=stmts) -> None:
        nonlocal current_pos
        current_pos = x_10
    
    stmts_1 : List[definition] = resolve_macro(arrow_69, stmts)
    for idx in range(0, (len(stmts_1) - 1) + 1, 1):
        stmt : definition = stmts_1[idx]
        (pattern_matching_result_1, decl_1, decl_2, decl_3, decl_4) = (None, None, None, None, None)
        if stmt.tag == 5:
            pattern_matching_result_1 = 0
            decl_1 = stmt.fields[0]
        
        elif stmt.tag == 3:
            pattern_matching_result_1 = 1
            decl_2 = stmt.fields[0]
        
        elif stmt.tag == 4:
            pattern_matching_result_1 = 2
            decl_3 = stmt.fields[0]
        
        elif stmt.tag == 0:
            pattern_matching_result_1 = 3
        
        elif stmt.tag == 1:
            if contains_key(stmt.fields[0]["lhs"], Omega):
                pattern_matching_result_1 = 4
                decl_4 = stmt.fields[0]
            
            else: 
                pattern_matching_result_1 = 5
            
        
        else: 
            pattern_matching_result_1 = 5
        
        if pattern_matching_result_1 == 0:
            current_pos = decl_1["pos"]
            with get_enumerator(decl_1["ignoreList"]) as enumerator:
                while enumerator.System_Collections_IEnumerator_MoveNext():
                    each : str = enumerator.System_Collections_Generic_IEnumerator_00601_get_Current()
                    ReferencedNamedTokens = add_1(each, IgnoreSet)
                    IgnoreSet = add_1(each, IgnoreSet)
        
        elif pattern_matching_result_1 == 1:
            current_pos = decl_2["pos"]
            Sigma__RegisterExternalVariable(Sigma_1, decl_2["ident"], Sigma__KindCheck_Z25E5E15E(Sigma_1, decl_2["t"]))
        
        elif pattern_matching_result_1 == 2:
            current_pos = decl_3["pos"]
            Sigma__RegisterExternalType(Sigma_1, decl_3["ident"], decl_3["parameters"], map(lambda tupled_arg, stmts=stmts: (tupled_arg[0], tupled_arg[1]), decl_3["fields"]))
            with get_enumerator(decl_3["fields"]) as enumerator_1:
                while enumerator_1.System_Collections_IEnumerator_MoveNext():
                    for_loop_var : Tuple[str, monot, position] = enumerator_1.System_Collections_Generic_IEnumerator_00601_get_Current()
                    current_pos = for_loop_var[2]
                    ignore(Sigma__KindCheckMono_Z25145215(Sigma_1, for_loop_var[1]))
        
        elif pattern_matching_result_1 == 3:
            raise Exception("macro definition must be processed before type checking")
        
        elif pattern_matching_result_1 == 4:
            raise DuplicateNonterminal(decl_4["lhs"])
        
        elif pattern_matching_result_1 == 5:
            (pattern_matching_result_2, decl_6, decl_7) = (None, None, None)
            if stmt.tag == 1:
                pattern_matching_result_2 = 0
                decl_6 = stmt.fields[0]
            
            elif stmt.tag == 2:
                class ObjectExpr70:
                    @property
                    def Equals(self) -> Any:
                        return lambda x_4, y_4: x_4 == y_4
                    
                    @property
                    def GetHashCode(self) -> Any:
                        return lambda x_4: string_hash(x_4)
                    
                if contains(stmt.fields[0]["lhs"], TokenFragments, ObjectExpr70()):
                    pattern_matching_result_2 = 1
                    decl_7 = stmt.fields[0]
                
                else: 
                    pattern_matching_result_2 = 2
                
            
            else: 
                pattern_matching_result_2 = 2
            
            if pattern_matching_result_2 == 0:
                nt : monot = Manager__NewTyRef_Z721C83C5(UM, "\u0027" + decl_6["lhs"])
                Omega = add(decl_6["lhs"], nt, Omega)
            
            elif pattern_matching_result_2 == 1:
                raise DuplicateLexer(decl_7["lhs"])
            
            elif pattern_matching_result_2 == 2:
                if stmt.tag == 2:
                    TokenFragments = cons(stmt.fields[0]["lhs"], TokenFragments)
                
                else: 
                    raise Exception("Match failure")
                
            
        
    for idx_1 in range(0, (len(stmts_1) - 1) + 1, 1):
        stmt_2 : definition = stmts_1[idx_1]
        if stmt_2.tag == 1:
            decl_9 : dict = stmt_2.fields[0]
            current_pos = decl_9["pos"]
            tupled_arg_2 : Tuple[str, FSharpList[Tuple[position, production_1]]] = (decl_9["lhs"], decl_9["define"])
            t_6 : monot = FSharpMap__get_Item(Omega, tupled_arg_2[0])
            with get_enumerator(tupled_arg_2[1]) as enumerator_2:
                while enumerator_2.System_Collections_IEnumerator_MoveNext():
                    for_loop_var_1 : Tuple[position, production_1] = enumerator_2.System_Collections_Generic_IEnumerator_00601_get_Current()
                    production : production_1 = for_loop_var_1[1]
                    current_pos = for_loop_var_1[0]
                    def infer_p(s: symbol, stmts=stmts) -> monot:
                        nonlocal LiteralTokens, ReferencedNamedTokens
                        if s.tag == 0:
                            n : str = s.fields[0]
                            if s.fields[1]:
                                LiteralTokens = add_1(n, LiteralTokens)
                            
                            else: 
                                class ObjectExpr71:
                                    @property
                                    def Equals(self) -> Any:
                                        return lambda x_5, y_5: x_5 == y_5
                                    
                                    @property
                                    def GetHashCode(self) -> Any:
                                        return lambda x_5: string_hash(x_5)
                                    
                                if not contains(n, TokenFragments, ObjectExpr71()):
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
                            def arrow_72(s=s) -> Exception:
                                raise Exception("macrocall not processed")
                            
                            raise arrow_72()
                        
                    
                    S_2 : FSharpList[monot] = map(infer_p, production.symbols)
                    action : expr_1 = infer_e(Sigma__get_GlobalVariables(Sigma_1), S_2, production.action)
                    Manager__Unify(UM, action.t, t_6)
                    production.action = action
        
        elif stmt_2.tag == 2:
            decl_10 : dict = stmt_2.fields[0]
            current_pos = decl_10["pos"]
            check_lexerule(decl_10["define"])
        
    def arrow_73(stmts=stmts) -> Analyzer:
        TokenFragments_1 : List[str] = reverse(to_array(TokenFragments))
        return Analyzer(UM, Sigma_1, current_pos, Omega, LiteralTokens, ReferencedNamedTokens, TokenFragments_1, IgnoreSet)
    
    return (stmts_1, arrow_73())


