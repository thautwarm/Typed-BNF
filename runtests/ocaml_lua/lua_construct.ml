open Lua_require;;
open Lua_lexer;;
type ___used_t_head_90xasda
and funcname = 
| DotName of { value0 : funcname;value1 : tbnf_token }
| MethodName of { value0 : funcname;value1 : tbnf_token }
| VarName of { value : tbnf_token }
and arguments = 
| PositionalArgs of { value0 : tbnf_token;value1 : (expr) list }
| StringArg of { value : tbnf_token }
| TableArgs of { value : table }
and table = 
| TableConstructor of { value0 : tbnf_token;value1 : (table_field) list }
and table_field = 
| ElementField of { value0 : expr }
| IndexField of { pos : tbnf_token;value : expr;item : expr }
| NameField of { key : tbnf_token;value : expr }
and stmt = 
| Assignment of { value0 : bool;value1 : (expr) list;value2 : ((expr) list) maybe }
| BreakStmt of { value : tbnf_token }
| DoStmt of { value0 : tbnf_token;value1 : block }
| EmptyStmt of { value0 : tbnf_token }
| ExprStmt of { value : expr }
| ForInStmt of { value0 : tbnf_token;value1 : (tbnf_token) list;value2 : (expr) list;value3 : block }
| ForRangeStmt of { value0 : tbnf_token;value1 : tbnf_token;value2 : range;value3 : block }
| GotoStmt of { value0 : tbnf_token;value1 : tbnf_token }
| IfStmt of { value0 : tbnf_token;value1 : expr;value2 : block;value3 : (if_elseif) list;value4 : (if_else) maybe }
| LabelStmt of { value : tbnf_token }
| RepeatStmt of { value0 : tbnf_token;value1 : block;value2 : expr }
| ReturnStmt of { value0 : tbnf_token;value1 : (expr) list }
| WhileStmt of { value0 : tbnf_token;value1 : expr;value2 : block }
and expr = 
| Attr of { value0 : expr;value1 : tbnf_token }
| Bin of { op : tbnf_token;l : expr;r : expr }
| Bool of { value0 : tbnf_token;value1 : bool }
| CallFunc of { value0 : expr;value1 : arguments }
| CallMethod of { value0 : expr;value1 : tbnf_token;value2 : arguments }
| Ellipse of { value0 : tbnf_token }
| Exponent of { value0 : expr;value1 : expr }
| FuncDef of { pos : tbnf_token;is_local : bool;fname : (funcname) maybe;params : (params) maybe;body : block }
| Index of { value0 : expr;value1 : expr }
| Inv of { value0 : tbnf_token;value1 : expr }
| Len of { value0 : tbnf_token;value1 : expr }
| Neg of { value0 : tbnf_token;value1 : expr }
| NestedExp of { value0 : tbnf_token;value1 : expr }
| Nil of { value : tbnf_token }
| Not of { value0 : tbnf_token;value1 : expr }
| Num of { value0 : tbnf_token }
| String of { value0 : tbnf_token }
| TableExpr of { value0 : table }
| UnsolvedBin of { value : ((expr) op) list }
| Var of { value : tbnf_token }
and block = {
    suite : (stmt) list;
    ret : (stmt) maybe;
}
and range = {
    low : expr;
    high : expr;
    step : (expr) maybe;
}
and if_elseif = {
    pos : tbnf_token;
    cond : expr;
    elif_body : block;
}
and if_else = {
    pos : tbnf_token;
    else_body : block;
}
and params = {
    names : (tbnf_token) list;
    vararg : (tbnf_token) maybe;
}
let params (names, vararg) : params =
     { names;vararg }
let if_else (pos, else_body) : if_else =
     { pos;else_body }
let if_elseif (pos, cond, elif_body) : if_elseif =
     { pos;cond;elif_body }
let range (low, high, step) : range =
     { low;high;step }
let block (suite, ret) : block =
     { suite;ret }
let mk_Var (value) : expr =
    Var { value }
let mk_UnsolvedBin (value) : expr =
    UnsolvedBin { value }
let mk_TableExpr (value0) : expr =
    TableExpr { value0 }
let mk_String (value0) : expr =
    String { value0 }
let mk_Num (value0) : expr =
    Num { value0 }
let mk_Not (value0, value1) : expr =
    Not { value0;value1 }
let mk_Nil (value) : expr =
    Nil { value }
let mk_NestedExp (value0, value1) : expr =
    NestedExp { value0;value1 }
let mk_Neg (value0, value1) : expr =
    Neg { value0;value1 }
let mk_Len (value0, value1) : expr =
    Len { value0;value1 }
let mk_Inv (value0, value1) : expr =
    Inv { value0;value1 }
let mk_Index (value0, value1) : expr =
    Index { value0;value1 }
let mk_FuncDef (pos, is_local, fname, params, body) : expr =
    FuncDef { pos;is_local;fname;params;body }
let mk_Exponent (value0, value1) : expr =
    Exponent { value0;value1 }
let mk_Ellipse (value0) : expr =
    Ellipse { value0 }
let mk_CallMethod (value0, value1, value2) : expr =
    CallMethod { value0;value1;value2 }
let mk_CallFunc (value0, value1) : expr =
    CallFunc { value0;value1 }
let mk_Bool (value0, value1) : expr =
    Bool { value0;value1 }
let mk_Bin (op, l, r) : expr =
    Bin { op;l;r }
let mk_Attr (value0, value1) : expr =
    Attr { value0;value1 }
let mk_WhileStmt (value0, value1, value2) : stmt =
    WhileStmt { value0;value1;value2 }
let mk_ReturnStmt (value0, value1) : stmt =
    ReturnStmt { value0;value1 }
let mk_RepeatStmt (value0, value1, value2) : stmt =
    RepeatStmt { value0;value1;value2 }
let mk_LabelStmt (value) : stmt =
    LabelStmt { value }
let mk_IfStmt (value0, value1, value2, value3, value4) : stmt =
    IfStmt { value0;value1;value2;value3;value4 }
let mk_GotoStmt (value0, value1) : stmt =
    GotoStmt { value0;value1 }
let mk_ForRangeStmt (value0, value1, value2, value3) : stmt =
    ForRangeStmt { value0;value1;value2;value3 }
let mk_ForInStmt (value0, value1, value2, value3) : stmt =
    ForInStmt { value0;value1;value2;value3 }
let mk_ExprStmt (value) : stmt =
    ExprStmt { value }
let mk_EmptyStmt (value0) : stmt =
    EmptyStmt { value0 }
let mk_DoStmt (value0, value1) : stmt =
    DoStmt { value0;value1 }
let mk_BreakStmt (value) : stmt =
    BreakStmt { value }
let mk_Assignment (value0, value1, value2) : stmt =
    Assignment { value0;value1;value2 }
let mk_NameField (key, value) : table_field =
    NameField { key;value }
let mk_IndexField (pos, value, item) : table_field =
    IndexField { pos;value;item }
let mk_ElementField (value0) : table_field =
    ElementField { value0 }
let mk_TableConstructor (value0, value1) : table =
    TableConstructor { value0;value1 }
let mk_TableArgs (value) : arguments =
    TableArgs { value }
let mk_StringArg (value) : arguments =
    StringArg { value }
let mk_PositionalArgs (value0, value1) : arguments =
    PositionalArgs { value0;value1 }
let mk_VarName (value) : funcname =
    VarName { value }
let mk_MethodName (value0, value1) : funcname =
    MethodName { value0;value1 }
let mk_DotName (value0, value1) : funcname =
    DotName { value0;value1 }
