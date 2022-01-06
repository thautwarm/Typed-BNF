open Lua_require;;
open Lua_lexer;;

type ___used_t_head_90xasda
and funcname = 
| DotName of { value1 : funcname;value2 : tbnf_token }
| MethodName of { value1 : funcname;value2 : tbnf_token }
| VarName of { value : tbnf_token }

and arguments = 
| PositionalArgs of { value1 : tbnf_token;value2 : (expr) list }
| StringArg of { value : tbnf_token }
| TableArgs of { value : table }

and table = 
| TableConstructor of { value1 : tbnf_token;value2 : (table_field) list }

and table_field = 
| ElementField of { value1 : expr }
| IndexField of { pos : tbnf_token;value : expr;item : expr }
| NameField of { key : tbnf_token;value : expr }

and stmt = 
| Assignment of { value1 : bool;value2 : (expr) list;value3 : ((expr) list) maybe }
| BreakStmt of { value : tbnf_token }
| DoStmt of { value1 : tbnf_token;value2 : block }
| EmptyStmt of { value1 : tbnf_token }
| ExprStmt of { value : expr }
| ForInStmt of { value1 : tbnf_token;value2 : (tbnf_token) list;value3 : (expr) list;value4 : block }
| ForRangeStmt of { value1 : tbnf_token;value2 : tbnf_token;value3 : range;value4 : block }
| GotoStmt of { value1 : tbnf_token;value2 : tbnf_token }
| IfStmt of { value1 : tbnf_token;value2 : expr;value3 : block;value4 : (if_elseif) list;value5 : (if_else) maybe }
| LabelStmt of { value : tbnf_token }
| RepeatStmt of { value1 : tbnf_token;value2 : block;value3 : expr }
| ReturnStmt of { value1 : tbnf_token;value2 : (expr) list }
| WhileStmt of { value1 : tbnf_token;value2 : expr;value3 : block }

and expr = 
| Attr of { value1 : expr;value2 : tbnf_token }
| Bin of { op : tbnf_token;l : expr;r : expr }
| Bool of { value1 : tbnf_token;value2 : bool }
| CallFunc of { value1 : expr;value2 : arguments }
| CallMethod of { value1 : expr;value2 : tbnf_token;value3 : arguments }
| Ellipse of { value1 : tbnf_token }
| Exponent of { value1 : expr;value2 : expr }
| FuncDef of { pos : tbnf_token;is_local : bool;fname : (funcname) maybe;params : (params) maybe;body : block }
| Index of { value1 : expr;value2 : expr }
| Inv of { value1 : tbnf_token;value2 : expr }
| Len of { value1 : tbnf_token;value2 : expr }
| Neg of { value1 : tbnf_token;value2 : expr }
| NestedExp of { value1 : tbnf_token;value2 : expr }
| Nil of { value : tbnf_token }
| Not of { value1 : tbnf_token;value2 : expr }
| Num of { value1 : tbnf_token }
| String of { value1 : tbnf_token }
| TableExpr of { value1 : table }
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
let mk_TableExpr (value1) : expr =
    TableExpr { value1 }
let mk_String (value1) : expr =
    String { value1 }
let mk_Num (value1) : expr =
    Num { value1 }
let mk_Not (value1, value2) : expr =
    Not { value1;value2 }
let mk_Nil (value) : expr =
    Nil { value }
let mk_NestedExp (value1, value2) : expr =
    NestedExp { value1;value2 }
let mk_Neg (value1, value2) : expr =
    Neg { value1;value2 }
let mk_Len (value1, value2) : expr =
    Len { value1;value2 }
let mk_Inv (value1, value2) : expr =
    Inv { value1;value2 }
let mk_Index (value1, value2) : expr =
    Index { value1;value2 }
let mk_FuncDef (pos, is_local, fname, params, body) : expr =
    FuncDef { pos;is_local;fname;params;body }
let mk_Exponent (value1, value2) : expr =
    Exponent { value1;value2 }
let mk_Ellipse (value1) : expr =
    Ellipse { value1 }
let mk_CallMethod (value1, value2, value3) : expr =
    CallMethod { value1;value2;value3 }
let mk_CallFunc (value1, value2) : expr =
    CallFunc { value1;value2 }
let mk_Bool (value1, value2) : expr =
    Bool { value1;value2 }
let mk_Bin (op, l, r) : expr =
    Bin { op;l;r }
let mk_Attr (value1, value2) : expr =
    Attr { value1;value2 }
let mk_WhileStmt (value1, value2, value3) : stmt =
    WhileStmt { value1;value2;value3 }
let mk_ReturnStmt (value1, value2) : stmt =
    ReturnStmt { value1;value2 }
let mk_RepeatStmt (value1, value2, value3) : stmt =
    RepeatStmt { value1;value2;value3 }
let mk_LabelStmt (value) : stmt =
    LabelStmt { value }
let mk_IfStmt (value1, value2, value3, value4, value5) : stmt =
    IfStmt { value1;value2;value3;value4;value5 }
let mk_GotoStmt (value1, value2) : stmt =
    GotoStmt { value1;value2 }
let mk_ForRangeStmt (value1, value2, value3, value4) : stmt =
    ForRangeStmt { value1;value2;value3;value4 }
let mk_ForInStmt (value1, value2, value3, value4) : stmt =
    ForInStmt { value1;value2;value3;value4 }
let mk_ExprStmt (value) : stmt =
    ExprStmt { value }
let mk_EmptyStmt (value1) : stmt =
    EmptyStmt { value1 }
let mk_DoStmt (value1, value2) : stmt =
    DoStmt { value1;value2 }
let mk_BreakStmt (value) : stmt =
    BreakStmt { value }
let mk_Assignment (value1, value2, value3) : stmt =
    Assignment { value1;value2;value3 }
let mk_NameField (key, value) : table_field =
    NameField { key;value }
let mk_IndexField (pos, value, item) : table_field =
    IndexField { pos;value;item }
let mk_ElementField (value1) : table_field =
    ElementField { value1 }
let mk_TableConstructor (value1, value2) : table =
    TableConstructor { value1;value2 }
let mk_TableArgs (value) : arguments =
    TableArgs { value }
let mk_StringArg (value) : arguments =
    StringArg { value }
let mk_PositionalArgs (value1, value2) : arguments =
    PositionalArgs { value1;value2 }
let mk_VarName (value) : funcname =
    VarName { value }
let mk_MethodName (value1, value2) : funcname =
    MethodName { value1;value2 }
let mk_DotName (value1, value2) : funcname =
    DotName { value1;value2 }
