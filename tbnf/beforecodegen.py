from collections import defaultdict
from tbnf import r


def merge_definitions(stmts):
    merge_dict = defaultdict(list)
    fixed = []
    for each in stmts:
        if isinstance(each, r.Prod):
            merge_dict[each.lhs].append(each)
        else:
            fixed.append(each)
    
    ret = []
    for lhs, to_merge in merge_dict.items():
        fst: r.Prod = to_merge[0]
        rhs = sum((each.rhs for each in to_merge), ())
        ret.append(r.Prod(lhs, rhs, fst.pos, fst.user_name))
    return fixed + ret