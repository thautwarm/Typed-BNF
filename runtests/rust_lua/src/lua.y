%grmtools{yacckind: Grmtools}
%start start
%%
start -> Result<block, TbnfError>:
    block { Ok($1?) }
  ;

nempty_list_28_stat_29_ -> Result<Vec<stmt>, TbnfError>:
    stat { Ok(vec![$1?]) }
  |
    nempty_list_28_stat_29_ stat { Ok(appendList::<stmt>(&($1?), &($2?))) }
  ;

allow_empty_28_nempty_list_28_stat_29__29_ -> Result<Vec<stmt>, TbnfError>:
    /* empty */ { Ok(vec![]) }
  |
    nempty_list_28_stat_29_ { Ok($1?) }
  ;

list_28_stat_29_ -> Result<Vec<stmt>, TbnfError>:
    allow_empty_28_nempty_list_28_stat_29__29_ { Ok($1?) }
  ;

opt_28_retstat_29_ -> Result<maybe<stmt>, TbnfError>:
    retstat { Ok(some::<stmt>(&($1?))) }
  |
    /* empty */ { Ok(none::<stmt>()) }
  ;

block -> Result<block, TbnfError>:
    list_28_stat_29_ opt_28_retstat_29_ { Ok(block($1?, $2?)) }
  ;

opt_28__22__3B__22__29_ -> Result<maybe<TbnfToken>, TbnfError>:
    'T_LIT_0' { Ok(some::<TbnfToken>(&(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?)))) }
  |
    /* empty */ { Ok(none::<TbnfToken>()) }
  ;

retstat -> Result<stmt, TbnfError>:
    'T_LIT_1' seplist_28__22__2C__22__2C_exp_29_ opt_28__22__3B__22__29_ { Ok(ReturnStmt(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?)) }
  ;

nempty_seplist_28__22__2C__22__2C_stmt_prefixexp_29_ -> Result<Vec<expr>, TbnfError>:
    stmt_prefixexp { Ok(vec![$1?]) }
  |
    nempty_seplist_28__22__2C__22__2C_stmt_prefixexp_29_ 'T_LIT_2' stmt_prefixexp { Ok(appendList::<expr>(&($1?), &($3?))) }
  ;

nempty_list_28_elseif_29_ -> Result<Vec<if_elseif>, TbnfError>:
    elseif { Ok(vec![$1?]) }
  |
    nempty_list_28_elseif_29_ elseif { Ok(appendList::<if_elseif>(&($1?), &($2?))) }
  ;

allow_empty_28_nempty_list_28_elseif_29__29_ -> Result<Vec<if_elseif>, TbnfError>:
    /* empty */ { Ok(vec![]) }
  |
    nempty_list_28_elseif_29_ { Ok($1?) }
  ;

list_28_elseif_29_ -> Result<Vec<if_elseif>, TbnfError>:
    allow_empty_28_nempty_list_28_elseif_29__29_ { Ok($1?) }
  ;

opt_28_else_29_ -> Result<maybe<if_else>, TbnfError>:
    else__65_ { Ok(some::<if_else>(&($1?))) }
  |
    /* empty */ { Ok(none::<if_else>()) }
  ;

stat -> Result<stmt, TbnfError>:
    'T_LIT_0' { Ok(EmptyStmt(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))) }
  |
    nempty_seplist_28__22__2C__22__2C_stmt_prefixexp_29_ 'T_LIT_3' nempty_seplist_28__22__2C__22__2C_exp_29_ { Ok(Assignment(false, $1?, some::<Vec<expr>>(&($3?)))) }
  |
    stmt_prefixexp { Ok(ExprStmt($1?)) }
  |
    'T_LIT_4' 'NAME' 'T_LIT_4' { Ok(LabelStmt(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?))) }
  |
    'T_LIT_5' { Ok(BreakStmt(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))) }
  |
    'T_LIT_6' 'NAME' { Ok(GotoStmt(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?))) }
  |
    'T_LIT_7' block 'T_LIT_8' { Ok(DoStmt(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?)) }
  |
    'T_LIT_9' exp 'T_LIT_7' block 'T_LIT_8' { Ok(WhileStmt(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?, $4?)) }
  |
    'T_LIT_10' block 'T_LIT_11' exp { Ok(RepeatStmt(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?, $4?)) }
  |
    'T_LIT_12' exp 'T_LIT_13' block list_28_elseif_29_ opt_28_else_29_ 'T_LIT_8' { Ok(IfStmt(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?, $4?, $5?, $6?)) }
  |
    'T_LIT_14' 'NAME' 'T_LIT_3' range 'T_LIT_7' block 'T_LIT_8' { Ok(ForRangeStmt(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $4?, $6?)) }
  |
    'T_LIT_14' nempty_seplist_28__22__2C__22__2C__3C_NAME_3E__29_ 'T_LIT_15' nempty_seplist_28__22__2C__22__2C_exp_29_ 'T_LIT_7' block 'T_LIT_8' { Ok(ForInStmt(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?, $4?, $6?)) }
  |
    'T_LIT_16' nempty_seplist_28__22__2C__22__2C__3C_NAME_3E__29_ opt_assign_rhs { Ok(Assignment(true, listMap::<TbnfToken, expr>(&($2?), &(Box::new(Var) as Box<dyn Fn(TbnfToken) -> expr>)), $3?)) }
  ;

opt_assign_rhs -> Result<maybe<Vec<expr>>, TbnfError>:
    'T_LIT_3' nempty_seplist_28__22__2C__22__2C_exp_29_ { Ok(some::<Vec<expr>>(&($2?))) }
  |
    /* empty */ { Ok(none::<Vec<expr>>()) }
  ;

range -> Result<range, TbnfError>:
    exp 'T_LIT_2' exp range_tail { Ok(range($1?, $3?, $4?)) }
  ;

range_tail -> Result<maybe<expr>, TbnfError>:
    'T_LIT_2' exp { Ok(some::<expr>(&($2?))) }
  |
    /* empty */ { Ok(none::<expr>()) }
  ;

elseif -> Result<if_elseif, TbnfError>:
    'T_LIT_17' exp 'T_LIT_13' block { Ok(if_elseif(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?, $4?)) }
  ;

else__65_ -> Result<if_else, TbnfError>:
    'T_LIT_18' block { Ok(if_else(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?)) }
  ;

exp -> Result<expr, TbnfError>:
    or_exp { Ok($1?) }
  ;

or_exp -> Result<expr, TbnfError>:
    or_exp 'T_LIT_19' and_exp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    and_exp { Ok($1?) }
  ;

and_exp -> Result<expr, TbnfError>:
    and_exp 'T_LIT_20' rel_exp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    rel_exp { Ok($1?) }
  ;

rel_exp -> Result<expr, TbnfError>:
    rel_exp relop bit_or_exp { Ok(Bin($2?, $1?, $3?)) }
  |
    bit_or_exp { Ok($1?) }
  ;

bit_or_exp -> Result<expr, TbnfError>:
    bit_or_exp 'T_LIT_21' bit_xor_exp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    bit_xor_exp { Ok($1?) }
  ;

bit_xor_exp -> Result<expr, TbnfError>:
    bit_xor_exp 'T_LIT_22' bit_and_exp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    bit_and_exp { Ok($1?) }
  ;

bit_and_exp -> Result<expr, TbnfError>:
    bit_and_exp 'T_LIT_23' shift_exp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    shift_exp { Ok($1?) }
  ;

shift_exp -> Result<expr, TbnfError>:
    shift_exp 'T_LIT_24' concat_exp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    shift_exp 'T_LIT_25' concat_exp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    concat_exp { Ok($1?) }
  ;

concat_exp -> Result<expr, TbnfError>:
    add_exp 'T_LIT_26' concat_exp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    add_exp { Ok($1?) }
  ;

add_exp -> Result<expr, TbnfError>:
    add_exp 'T_LIT_27' mul_exp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    add_exp 'T_LIT_28' mul_exp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    mul_exp { Ok($1?) }
  ;

mul_exp -> Result<expr, TbnfError>:
    mul_exp 'T_LIT_29' unaryexp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    mul_exp 'T_LIT_30' unaryexp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    mul_exp 'T_LIT_31' unaryexp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    mul_exp 'T_LIT_32' unaryexp { Ok(Bin(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $1?, $3?)) }
  |
    unaryexp { Ok($1?) }
  ;

unaryexp -> Result<expr, TbnfError>:
    'T_LIT_33' unaryexp { Ok(Len(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?)) }
  |
    'T_LIT_28' unaryexp { Ok(Neg(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?)) }
  |
    'T_LIT_22' unaryexp { Ok(Inv(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?)) }
  |
    'T_LIT_34' unaryexp { Ok(Not(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?)) }
  |
    exponent { Ok($1?) }
  ;

exponent -> Result<expr, TbnfError>:
    prefixexp 'T_LIT_35' unaryexp { Ok(Exponent($1?, $3?)) }
  |
    simpleexp { Ok($1?) }
  ;

simpleexp -> Result<expr, TbnfError>:
    prefixexp { Ok($1?) }
  |
    atom { Ok($1?) }
  ;

prefixexp -> Result<expr, TbnfError>:
    'NAME' { Ok(Var(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))) }
  |
    'T_LIT_36' exp 'T_LIT_37' { Ok(NestedExp(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?)) }
  |
    prefixexp 'T_LIT_36' seplist_28__22__2C__22__2C_exp_29_ 'T_LIT_37' { Ok(CallFunc($1?, PositionalArgs(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $3?))) }
  |
    prefixexp 'T_LIT_38' 'NAME' 'T_LIT_36' seplist_28__22__2C__22__2C_exp_29_ 'T_LIT_37' { Ok(CallMethod($1?, tbnf_token($lexer, $3.map_err(|_| TbnfError::InsertedToken)?), PositionalArgs(tbnf_token($lexer, $4.map_err(|_| TbnfError::InsertedToken)?), $5?))) }
  |
    prefixexp 'T_LIT_39' exp 'T_LIT_40' { Ok(Index($1?, $3?)) }
  |
    prefixexp 'T_LIT_41' 'NAME' { Ok(Attr($1?, tbnf_token($lexer, $3.map_err(|_| TbnfError::InsertedToken)?))) }
  ;

nempty_seplist_28__22__2C__22__2C_exp_29_ -> Result<Vec<expr>, TbnfError>:
    exp { Ok(vec![$1?]) }
  |
    nempty_seplist_28__22__2C__22__2C_exp_29_ 'T_LIT_2' exp { Ok(appendList::<expr>(&($1?), &($3?))) }
  ;

allow_empty_28_nempty_seplist_28__22__2C__22__2C_exp_29__29_ -> Result<Vec<expr>, TbnfError>:
    /* empty */ { Ok(vec![]) }
  |
    nempty_seplist_28__22__2C__22__2C_exp_29_ { Ok($1?) }
  ;

seplist_28__22__2C__22__2C_exp_29_ -> Result<Vec<expr>, TbnfError>:
    allow_empty_28_nempty_seplist_28__22__2C__22__2C_exp_29__29_ { Ok($1?) }
  ;

stmt_prefixexp -> Result<expr, TbnfError>:
    'NAME' { Ok(Var(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))) }
  |
    stmt_prefixexp 'T_LIT_36' seplist_28__22__2C__22__2C_exp_29_ 'T_LIT_37' { Ok(CallFunc($1?, PositionalArgs(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?), $3?))) }
  |
    stmt_prefixexp 'T_LIT_38' 'NAME' 'T_LIT_36' seplist_28__22__2C__22__2C_exp_29_ 'T_LIT_37' { Ok(CallMethod($1?, tbnf_token($lexer, $3.map_err(|_| TbnfError::InsertedToken)?), PositionalArgs(tbnf_token($lexer, $4.map_err(|_| TbnfError::InsertedToken)?), $5?))) }
  |
    stmt_prefixexp 'T_LIT_39' exp 'T_LIT_40' { Ok(Index($1?, $3?)) }
  |
    stmt_prefixexp 'T_LIT_41' 'NAME' { Ok(Attr($1?, tbnf_token($lexer, $3.map_err(|_| TbnfError::InsertedToken)?))) }
  ;

atom -> Result<expr, TbnfError>:
    'T_LIT_42' { Ok(Nil(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))) }
  |
    'T_LIT_43' { Ok(Bool(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), false)) }
  |
    'T_LIT_44' { Ok(Bool(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), true)) }
  |
    'NUMERAL' { Ok(Num(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))) }
  |
    'STR_LIT' { Ok(String(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))) }
  |
    'NESTED_STR' { Ok(String(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))) }
  |
    'T_LIT_45' { Ok(Ellipse(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))) }
  |
    functiondef { Ok($1?) }
  |
    tableconstructor { Ok(TableExpr($1?)) }
  ;

opt_28_parlist_29_ -> Result<maybe<params>, TbnfError>:
    parlist { Ok(some::<params>(&($1?))) }
  |
    /* empty */ { Ok(none::<params>()) }
  ;

functiondef -> Result<expr, TbnfError>:
    'T_LIT_46' 'T_LIT_36' opt_28_parlist_29_ 'T_LIT_37' block 'T_LIT_8' { Ok(FuncDef(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), false, none::<funcname>(), $3?, $5?)) }
  ;

varargs -> Result<maybe<TbnfToken>, TbnfError>:
    'T_LIT_2' 'T_LIT_45' { Ok(some::<TbnfToken>(&(tbnf_token($lexer, $2.map_err(|_| TbnfError::InsertedToken)?)))) }
  |
    /* empty */ { Ok(none::<TbnfToken>()) }
  ;

nempty_seplist_28__22__2C__22__2C__3C_NAME_3E__29_ -> Result<Vec<TbnfToken>, TbnfError>:
    'NAME' { Ok(vec![tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?)]) }
  |
    nempty_seplist_28__22__2C__22__2C__3C_NAME_3E__29_ 'T_LIT_2' 'NAME' { Ok(appendList::<TbnfToken>(&($1?), &(tbnf_token($lexer, $3.map_err(|_| TbnfError::InsertedToken)?)))) }
  ;

parlist -> Result<params, TbnfError>:
    'T_LIT_45' { Ok(params(vec![], some::<TbnfToken>(&(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))))) }
  |
    nempty_seplist_28__22__2C__22__2C__3C_NAME_3E__29_ varargs { Ok(params($1?, $2?)) }
  ;

nempty_seplist_28_fieldsep_2C_field_29_ -> Result<Vec<table_field>, TbnfError>:
    field { Ok(vec![$1?]) }
  |
    nempty_seplist_28_fieldsep_2C_field_29_ fieldsep field { Ok(appendList::<table_field>(&($1?), &($3?))) }
  ;

opt_28_fieldsep_29_ -> Result<maybe<i64>, TbnfError>:
    fieldsep { Ok(some::<i64>(&($1?))) }
  |
    /* empty */ { Ok(none::<i64>()) }
  ;

tableconstructor -> Result<table, TbnfError>:
    'T_LIT_47' nempty_seplist_28_fieldsep_2C_field_29_ opt_28_fieldsep_29_ 'T_LIT_48' { Ok(TableConstructor(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?)) }
  |
    'T_LIT_47' 'T_LIT_48' { Ok(TableConstructor(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), vec![])) }
  ;

field -> Result<table_field, TbnfError>:
    'T_LIT_39' exp 'T_LIT_40' 'T_LIT_3' exp { Ok(IndexField(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $2?, $5?)) }
  |
    'NAME' 'T_LIT_3' exp { Ok(NameField(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?), $3?)) }
  |
    exp { Ok(ElementField($1?)) }
  ;

fieldsep -> Result<i64, TbnfError>:
    'T_LIT_2' { Ok(0) }
  |
    'T_LIT_0' { Ok(0) }
  ;

relop -> Result<TbnfToken, TbnfError>:
    'T_LIT_49' { Ok(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?)) }
  |
    'T_LIT_50' { Ok(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?)) }
  |
    'T_LIT_51' { Ok(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?)) }
  |
    'T_LIT_52' { Ok(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?)) }
  |
    'T_LIT_53' { Ok(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?)) }
  |
    'T_LIT_54' { Ok(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?)) }
  ;
%%
#[derive(Clone, Debug, PartialEq)]
pub struct TbnfToken {
    pub text: String,
    pub start: usize,
    pub end: usize,
}

#[derive(Clone, Debug, PartialEq)]
pub enum TbnfError {
    InsertedToken,
}

#[allow(dead_code)]
fn tbnf_token<'input>(lexer: &dyn lrpar::NonStreamingLexer<'input, lrlex::DefaultLexerTypes>, lexeme: lrlex::DefaultLexeme) -> TbnfToken {
    let span = lexeme.span();
    TbnfToken {
        text: lexer.span_str(span).to_string(),
        start: span.start(),
        end: span.end(),
    }
}

#[allow(unused_imports)]

use crate::externs::*;

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub enum funcname {
    DotName(Box<funcname>, TbnfToken),
    MethodName(Box<funcname>, TbnfToken),
    VarName(TbnfToken),
}

#[allow(non_snake_case)]
pub fn DotName(value0: funcname, value1: TbnfToken) -> funcname { funcname::DotName(Box::new(value0), value1) }

#[allow(non_snake_case)]
pub fn MethodName(value0: funcname, value1: TbnfToken) -> funcname { funcname::MethodName(Box::new(value0), value1) }

#[allow(non_snake_case)]
pub fn VarName(value: TbnfToken) -> funcname { funcname::VarName(value) }

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub enum arguments {
    PositionalArgs(TbnfToken, Vec<expr>),
    StringArg(TbnfToken),
    TableArgs(table),
}

#[allow(non_snake_case)]
pub fn PositionalArgs(value0: TbnfToken, value1: Vec<expr>) -> arguments { arguments::PositionalArgs(value0, value1) }

#[allow(non_snake_case)]
pub fn StringArg(value: TbnfToken) -> arguments { arguments::StringArg(value) }

#[allow(non_snake_case)]
pub fn TableArgs(value: table) -> arguments { arguments::TableArgs(value) }

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub enum table {
    TableConstructor(TbnfToken, Vec<table_field>),
}

#[allow(non_snake_case)]
pub fn TableConstructor(value0: TbnfToken, value1: Vec<table_field>) -> table { table::TableConstructor(value0, value1) }

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub enum table_field {
    ElementField(expr),
    IndexField(TbnfToken, expr, expr),
    NameField(TbnfToken, expr),
}

#[allow(non_snake_case)]
pub fn ElementField(value0: expr) -> table_field { table_field::ElementField(value0) }

#[allow(non_snake_case)]
pub fn IndexField(pos: TbnfToken, value: expr, item: expr) -> table_field { table_field::IndexField(pos, value, item) }

#[allow(non_snake_case)]
pub fn NameField(key: TbnfToken, value: expr) -> table_field { table_field::NameField(key, value) }

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub enum stmt {
    Assignment(bool, Vec<expr>, maybe<Vec<expr>>),
    BreakStmt(TbnfToken),
    DoStmt(TbnfToken, Box<block>),
    EmptyStmt(TbnfToken),
    ExprStmt(Box<expr>),
    ForInStmt(TbnfToken, Vec<TbnfToken>, Vec<expr>, Box<block>),
    ForRangeStmt(TbnfToken, TbnfToken, Box<range>, Box<block>),
    GotoStmt(TbnfToken, TbnfToken),
    IfStmt(TbnfToken, Box<expr>, Box<block>, Vec<if_elseif>, maybe<if_else>),
    LabelStmt(TbnfToken),
    RepeatStmt(TbnfToken, Box<block>, Box<expr>),
    ReturnStmt(TbnfToken, Vec<expr>),
    WhileStmt(TbnfToken, Box<expr>, Box<block>),
}

#[allow(non_snake_case)]
pub fn Assignment(value0: bool, value1: Vec<expr>, value2: maybe<Vec<expr>>) -> stmt { stmt::Assignment(value0, value1, value2) }

#[allow(non_snake_case)]
pub fn BreakStmt(value: TbnfToken) -> stmt { stmt::BreakStmt(value) }

#[allow(non_snake_case)]
pub fn DoStmt(value0: TbnfToken, value1: block) -> stmt { stmt::DoStmt(value0, Box::new(value1)) }

#[allow(non_snake_case)]
pub fn EmptyStmt(value0: TbnfToken) -> stmt { stmt::EmptyStmt(value0) }

#[allow(non_snake_case)]
pub fn ExprStmt(value: expr) -> stmt { stmt::ExprStmt(Box::new(value)) }

#[allow(non_snake_case)]
pub fn ForInStmt(value0: TbnfToken, value1: Vec<TbnfToken>, value2: Vec<expr>, value3: block) -> stmt { stmt::ForInStmt(value0, value1, value2, Box::new(value3)) }

#[allow(non_snake_case)]
pub fn ForRangeStmt(value0: TbnfToken, value1: TbnfToken, value2: range, value3: block) -> stmt { stmt::ForRangeStmt(value0, value1, Box::new(value2), Box::new(value3)) }

#[allow(non_snake_case)]
pub fn GotoStmt(value0: TbnfToken, value1: TbnfToken) -> stmt { stmt::GotoStmt(value0, value1) }

#[allow(non_snake_case)]
pub fn IfStmt(value0: TbnfToken, value1: expr, value2: block, value3: Vec<if_elseif>, value4: maybe<if_else>) -> stmt { stmt::IfStmt(value0, Box::new(value1), Box::new(value2), value3, value4) }

#[allow(non_snake_case)]
pub fn LabelStmt(value: TbnfToken) -> stmt { stmt::LabelStmt(value) }

#[allow(non_snake_case)]
pub fn RepeatStmt(value0: TbnfToken, value1: block, value2: expr) -> stmt { stmt::RepeatStmt(value0, Box::new(value1), Box::new(value2)) }

#[allow(non_snake_case)]
pub fn ReturnStmt(value0: TbnfToken, value1: Vec<expr>) -> stmt { stmt::ReturnStmt(value0, value1) }

#[allow(non_snake_case)]
pub fn WhileStmt(value0: TbnfToken, value1: expr, value2: block) -> stmt { stmt::WhileStmt(value0, Box::new(value1), Box::new(value2)) }

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub enum expr {
    Attr(Box<expr>, TbnfToken),
    Bin(TbnfToken, Box<expr>, Box<expr>),
    Bool(TbnfToken, bool),
    CallFunc(Box<expr>, arguments),
    CallMethod(Box<expr>, TbnfToken, arguments),
    Ellipse(TbnfToken),
    Exponent(Box<expr>, Box<expr>),
    FuncDef(TbnfToken, bool, maybe<funcname>, maybe<params>, Box<block>),
    Index(Box<expr>, Box<expr>),
    Inv(TbnfToken, Box<expr>),
    Len(TbnfToken, Box<expr>),
    Neg(TbnfToken, Box<expr>),
    NestedExp(TbnfToken, Box<expr>),
    Nil(TbnfToken),
    Not(TbnfToken, Box<expr>),
    Num(TbnfToken),
    String(TbnfToken),
    TableExpr(table),
    Var(TbnfToken),
}

#[allow(non_snake_case)]
pub fn Attr(value0: expr, value1: TbnfToken) -> expr { expr::Attr(Box::new(value0), value1) }

#[allow(non_snake_case)]
pub fn Bin(op: TbnfToken, l: expr, r: expr) -> expr { expr::Bin(op, Box::new(l), Box::new(r)) }

#[allow(non_snake_case)]
pub fn Bool(value0: TbnfToken, value1: bool) -> expr { expr::Bool(value0, value1) }

#[allow(non_snake_case)]
pub fn CallFunc(value0: expr, value1: arguments) -> expr { expr::CallFunc(Box::new(value0), value1) }

#[allow(non_snake_case)]
pub fn CallMethod(value0: expr, value1: TbnfToken, value2: arguments) -> expr { expr::CallMethod(Box::new(value0), value1, value2) }

#[allow(non_snake_case)]
pub fn Ellipse(value0: TbnfToken) -> expr { expr::Ellipse(value0) }

#[allow(non_snake_case)]
pub fn Exponent(value0: expr, value1: expr) -> expr { expr::Exponent(Box::new(value0), Box::new(value1)) }

#[allow(non_snake_case)]
pub fn FuncDef(pos: TbnfToken, is_local: bool, fname: maybe<funcname>, params: maybe<params>, body: block) -> expr { expr::FuncDef(pos, is_local, fname, params, Box::new(body)) }

#[allow(non_snake_case)]
pub fn Index(value0: expr, value1: expr) -> expr { expr::Index(Box::new(value0), Box::new(value1)) }

#[allow(non_snake_case)]
pub fn Inv(value0: TbnfToken, value1: expr) -> expr { expr::Inv(value0, Box::new(value1)) }

#[allow(non_snake_case)]
pub fn Len(value0: TbnfToken, value1: expr) -> expr { expr::Len(value0, Box::new(value1)) }

#[allow(non_snake_case)]
pub fn Neg(value0: TbnfToken, value1: expr) -> expr { expr::Neg(value0, Box::new(value1)) }

#[allow(non_snake_case)]
pub fn NestedExp(value0: TbnfToken, value1: expr) -> expr { expr::NestedExp(value0, Box::new(value1)) }

#[allow(non_snake_case)]
pub fn Nil(value: TbnfToken) -> expr { expr::Nil(value) }

#[allow(non_snake_case)]
pub fn Not(value0: TbnfToken, value1: expr) -> expr { expr::Not(value0, Box::new(value1)) }

#[allow(non_snake_case)]
pub fn Num(value0: TbnfToken) -> expr { expr::Num(value0) }

#[allow(non_snake_case)]
pub fn String(value0: TbnfToken) -> expr { expr::String(value0) }

#[allow(non_snake_case)]
pub fn TableExpr(value0: table) -> expr { expr::TableExpr(value0) }

#[allow(non_snake_case)]
pub fn Var(value: TbnfToken) -> expr { expr::Var(value) }

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub struct block {
    pub suite: Vec<stmt>,
    pub ret: Box<maybe<stmt>>,
}

#[allow(non_snake_case)]
pub fn block(suite: Vec<stmt>, ret: maybe<stmt>) -> block {
    block {
        suite: suite,
        ret: Box::new(ret),
    }
}

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub struct range {
    pub low: Box<expr>,
    pub high: Box<expr>,
    pub step: maybe<expr>,
}

#[allow(non_snake_case)]
pub fn range(low: expr, high: expr, step: maybe<expr>) -> range {
    range {
        low: Box::new(low),
        high: Box::new(high),
        step: step,
    }
}

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub struct if_elseif {
    pub pos: TbnfToken,
    pub cond: expr,
    pub elif_body: block,
}

#[allow(non_snake_case)]
pub fn if_elseif(pos: TbnfToken, cond: expr, elif_body: block) -> if_elseif {
    if_elseif {
        pos: pos,
        cond: cond,
        elif_body: elif_body,
    }
}

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub struct if_else {
    pub pos: TbnfToken,
    pub else_body: block,
}

#[allow(non_snake_case)]
pub fn if_else(pos: TbnfToken, else_body: block) -> if_else {
    if_else {
        pos: pos,
        else_body: else_body,
    }
}

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub struct params {
    pub names: Vec<TbnfToken>,
    pub vararg: maybe<TbnfToken>,
}

#[allow(non_snake_case)]
pub fn params(names: Vec<TbnfToken>, vararg: maybe<TbnfToken>) -> params {
    params {
        names: names,
        vararg: vararg,
    }
}
