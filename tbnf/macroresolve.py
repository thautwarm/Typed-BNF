from tbnf.r import *
from tbnf.common import refs
from dataclasses import replace
from copy import deepcopy
def instantiate(new_stmts):
    pass


def to_position_independent(term):
    if isinstance(term, Term):
        return (term._, term.is_lit)
    elif isinstance(term, NonTerm):
        return (term._, ())
    if isinstance(term, MacroCall):
        return (term._, tuple(map(to_position_independent, term.args)))
    raise TypeError(term)

def _to_position_independent_string(term):
    if isinstance(term, NonTerm):
        return term._
    elif isinstance(term, Term):
        p = ('_T', '_L')[term.is_lit]
        return  ''.join(e if e.isidentifier() else p+str(ord(e)) for e in term._)
    if isinstance(term, MacroCall):
        return term._ + "_"  + '__'.join(map(_to_position_independent_string, term.args))
    raise TypeError(term)


def to_position_independent_string(term):
    return "gen__" + _to_position_independent_string(term)


class MacroResolveError(SyntaxError):
    pass

def resolve(stmts):

    def fixed_point(stmts: list):
        final_results = []
        solved: dict[object, str] = {}

        def solve_specialization(prod_def: Prod, scope):
            cases = []
            for case in prod_def.rhs:
                seq = tuple( solve_term(each, scope) for each in case._)
                cases.append(Case(seq, deepcopy(case.action), case.pos))
            return final_results.append(Prod(prod_def.lhs, tuple(cases), prod_def.pos))

        def solve_term(term, scope):
            if isinstance(term, Term):
                return term
            if isinstance(term, NonTerm):
                if term._ in scope:
                    it: NonTerm = scope[term._]
                    refs.discard(term.tag)
                    return replace(it, pos=term.pos)
                return term

            if isinstance(term, (NonTerm, Term)):
                return term

            assert isinstance(term, MacroCall)

            term = MacroCall(term._, [solve_term(arg, scope) for arg in term.args], term.pos)

            key = to_position_independent(term)
            if resolved_name := solved.get(key):
                pass
            else:
                try:
                    macro_def: MacroDef = macro_defs[term._]
                except KeyError:
                    pos = term.pos
                    e = MacroResolveError()
                    e.lineno = pos.lineno
                    e.msg = f"macro definition {term._} not found."
                    e.filename = pos.filename
                    raise e

                params = macro_def.params
                if len(macro_def.params) != len(term.args):
                    pos = term.pos
                    e = MacroResolveError()
                    e.lineno = pos.lineno
                    e.msg = f"macro {term._} expects {len(params)} argument(s): ({params}); got {len(term.args)}."
                    e.filename = pos.filename
                    raise e

                scope = dict(zip(params, term.args))
                resolved_name = to_position_independent_string(term)

                while resolved_name in solved:
                    resolved_name += "_x"

                solved[key] = resolved_name

                stmts.append((
                    Prod(resolved_name, macro_def.rhs, term.pos),
                    scope
                ))

            return NonTerm(None, resolved_name, term.pos)

        while stmts:
             a1, a2 = stmts.pop()
             solve_specialization(a1, a2)

        return final_results

    macro_defs = {}
    stmts_to_solve = []
    fixed_stmts = []
    for each in stmts:
        if isinstance(each, MacroDef):
            macro_defs[each.lhs] = each
        elif isinstance(each, Prod):
            scope = {}
            stmts_to_solve.append((each, scope))
        else:
            fixed_stmts.append(each)

    solved_stmts = fixed_point(stmts_to_solve)
    return fixed_stmts + solved_stmts
