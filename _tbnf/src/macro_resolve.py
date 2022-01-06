from __future__ import annotations
from typing import (Callable, List, Any, Tuple, TypeVar, Iterable, Optional)
from ..fable_modules.fable_library.list import (map, empty as empty_1, FSharpList, cons, length, map2, is_empty, head, tail, to_array, append, reverse)
from ..fable_modules.fable_library.map import (empty, add, try_find, of_list)
from ..fable_modules.fable_library.seq import (to_list, delay, collect, singleton, map as map_1)
from ..fable_modules.fable_library.string import (join, to_text, printf, interpolate)
from ..fable_modules.fable_library.util import (compare_primitives, compare)
from .exceptions import MacroResolveError
from .grammar import (symbol, position_get_fake, position, definition, production, expr__deep_copy)
from .utils import escape_string

a_ = TypeVar("a_")

def to_position_independent(term: symbol) -> symbol:
    if term.tag == 0:
        return term
    
    elif term.tag == 2:
        return symbol(2, term.fields[0], map(lambda term_1, term=term: to_position_independent(term_1), term.fields[1]), position_get_fake())
    
    else: 
        return term
    


def to_position_independent_string(term: symbol) -> str:
    if term.tag == 1:
        return term.fields[0]
    
    elif term.tag == 2:
        arg20 : str = join(",", map(lambda term_1, term=term: to_position_independent_string(term_1), term.fields[1]))
        return to_text(printf("%s(%s)"))(term.fields[0])(arg20)
    
    elif term.fields[1]:
        return escape_string(term.fields[0])
    
    else: 
        return ("\u003c" + term.fields[0]) + "\u003e"
    


def resolve_macro(set_pos: Callable[[position], None], stmts: List[definition]) -> List[definition]:
    class ObjectExpr23:
        @property
        def Compare(self) -> Any:
            return lambda x, y: compare_primitives(x, y)
        
    macro_defs : Any = empty(ObjectExpr23())
    stmts_to_solve : FSharpList[Tuple[dict[str, Any], Any]] = empty_1()
    fixed_stmts : FSharpList[definition] = empty_1()
    for idx in range(0, (len(stmts) - 1) + 1, 1):
        each : definition = stmts[idx]
        if each.tag == 0:
            decl : dict[str, Any] = each.fields[0]
            macro_defs = add(decl["lhs"], decl, macro_defs)
        
        elif each.tag == 1:
            class ObjectExpr29:
                @property
                def Compare(self) -> Any:
                    return lambda x_1, y_1=None: compare(x_1, y_1)
                
            scope : Any = empty(ObjectExpr29())
            stmts_to_solve = cons((each.fields[0], scope), stmts_to_solve)
        
        else: 
            fixed_stmts = cons(each, fixed_stmts)
        
    final_results_1 = None
    stmts_to_solve_1 : FSharpList[Tuple[dict[str, Any], Any]] = stmts_to_solve
    final_results : FSharpList[definition] = empty_1()
    class ObjectExpr30:
        @property
        def Compare(self) -> Any:
            return lambda x_2, y_2: compare(x_2, y_2)
        
    solved : Any = empty(ObjectExpr30())
    def solve_specialization(tupled_arg: Tuple[dict[str, Any], Any], set_pos: Callable[[position], None]=set_pos, stmts: List[definition]=stmts) -> None:
        nonlocal final_results
        decl_2 : dict[str, Any] = tupled_arg[0]
        def arrow_34(tupled_arg: Tuple[dict[str, Any], Any]=tupled_arg) -> Iterable[Tuple[position, production]]:
            def arrow_32(match_value: Tuple[position, production]) -> Iterable[Tuple[position, production]]:
                pos : position = match_value[0]
                case : production = match_value[1]
                set_pos(pos)
                return singleton((pos, production(map(lambda x_3: solve_sym(x_3)(tupled_arg[1]), case.symbols), expr__deep_copy(case.action))))
            
            return collect(arrow_32, decl_2["define"])
        
        define : FSharpList[Tuple[position, production]] = to_list(delay(arrow_34))
        final_results = cons(definition(1, {
            "define": define,
            "lhs": decl_2["lhs"],
            "pos": decl_2["pos"]
        }), final_results)
    
    def solve_sym(sym: symbol, set_pos: Callable[[position], None]=set_pos, stmts: List[definition]=stmts) -> Callable[[Any], symbol]:
        def arrow_41(scope_2: Any, sym: symbol=sym) -> symbol:
            if sym.tag == 1:
                match_value_1 : Optional[symbol] = try_find(sym.fields[0], scope_2)
                return sym if (match_value_1 is None) else (match_value_1)
            
            elif sym.tag == 2:
                pos_1 : position = sym.fields[2]
                n_1 : str = sym.fields[0]
                set_pos(pos_1)
                args_1 : FSharpList[symbol] = to_list(delay(lambda _unit=None: map_1(lambda arg: solve_sym(arg)(scope_2), sym.fields[1])))
                sym_1 : symbol = symbol(2, n_1, args_1, pos_1)
                key : symbol = to_position_independent(sym_1)
                def arrow_40(_unit=None) -> str:
                    nonlocal solved, stmts_to_solve_1
                    match_value_2 : Optional[str] = try_find(key, solved)
                    if match_value_2 is None:
                        match_value_3 : Optional[dict[str, Any]] = try_find(n_1, macro_defs)
                        if match_value_3 is not None:
                            macro_def : dict[str, Any] = match_value_3
                            parameters : FSharpList[str] = macro_def["parameters"]
                            if length(parameters) != length(args_1):
                                raise MacroResolveError(to_text(interpolate("macro %P() expects %P() argument(s): (%P()); got %P()", [n_1, length(parameters), join(", ", parameters), length(args_1)])))
                            
                            class ObjectExpr39:
                                @property
                                def Compare(self) -> Any:
                                    return lambda x_4, y_3: compare_primitives(x_4, y_3)
                                
                            scope_0027 : Any = of_list(map2(lambda k, v_1: (k, v_1), parameters, args_1), ObjectExpr39())
                            resolved_name_1 : str = to_position_independent_string(sym_1)
                            solved = add(key, resolved_name_1, solved)
                            stmts_to_solve_1 = cons(({
                                "define": macro_def["define"],
                                "lhs": resolved_name_1,
                                "pos": pos_1
                            }, scope_0027), stmts_to_solve_1)
                            return resolved_name_1
                        
                        else: 
                            raise MacroResolveError(to_text(interpolate("macro definition %P() not found.", [n_1])))
                        
                    
                    else: 
                        return match_value_2
                    
                
                return symbol(1, arrow_40())
            
            else: 
                return sym
            
        
        return arrow_41
    
    while not is_empty(stmts_to_solve_1):
        decl_3 : Tuple[dict[str, Any], Any] = head(stmts_to_solve_1)
        stmts_to_solve_1 = tail(stmts_to_solve_1)
        solve_specialization(decl_3)
    final_results_1 = final_results
    return to_array(append(reverse(fixed_stmts), final_results_1))


