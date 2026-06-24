%grmtools{yacckind: Grmtools}
%start start
%%
start -> Result<Json, TbnfError>:
    json { Ok($1?) }
  ;

jsonpair -> Result<JsonPair, TbnfError>:
    'STR' 'T_LIT_0' json { Ok(JsonPair(unesc(&(getStr(&(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))))), $3?)) }
  ;

seplist_28__22__2C__22__2C_json_29_ -> Result<Vec<Json>, TbnfError>:
    json { Ok(vec![$1?]) }
  |
    seplist_28__22__2C__22__2C_json_29_ 'T_LIT_1' json { Ok(appendList::<Json>(&($1?), &($3?))) }
  ;

seplist_28__22__2C__22__2C_jsonpair_29_ -> Result<Vec<JsonPair>, TbnfError>:
    jsonpair { Ok(vec![$1?]) }
  |
    seplist_28__22__2C__22__2C_jsonpair_29_ 'T_LIT_1' jsonpair { Ok(appendList::<JsonPair>(&($1?), &($3?))) }
  ;

json -> Result<Json, TbnfError>:
    'INT' { Ok(JInt(toInt(&(getStr(&(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))))))) }
  |
    'FLOAT' { Ok(JFlt(toFlt(&(getStr(&(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))))))) }
  |
    'T_LIT_2' { Ok(JNull()) }
  |
    'STR' { Ok(JStr(unesc(&(getStr(&(tbnf_token($lexer, $1.map_err(|_| TbnfError::InsertedToken)?))))))) }
  |
    'T_LIT_3' 'T_LIT_4' { Ok(JList(vec![])) }
  |
    'T_LIT_5' 'T_LIT_6' { Ok(JDict(vec![])) }
  |
    'T_LIT_7' { Ok(JBool(true)) }
  |
    'T_LIT_8' { Ok(JBool(false)) }
  |
    'T_LIT_3' seplist_28__22__2C__22__2C_json_29_ 'T_LIT_4' { Ok(JList($2?)) }
  |
    'T_LIT_5' seplist_28__22__2C__22__2C_jsonpair_29_ 'T_LIT_6' { Ok(JDict($2?)) }
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
pub enum Json {
    JBool(bool),
    JDict(Vec<JsonPair>),
    JFlt(f64),
    JInt(i64),
    JList(Vec<Json>),
    JNull,
    JStr(String),
}

#[allow(non_snake_case)]
pub fn JBool(value: bool) -> Json { Json::JBool(value) }

#[allow(non_snake_case)]
pub fn JDict(value: Vec<JsonPair>) -> Json { Json::JDict(value) }

#[allow(non_snake_case)]
pub fn JFlt(value: f64) -> Json { Json::JFlt(value) }

#[allow(non_snake_case)]
pub fn JInt(value: i64) -> Json { Json::JInt(value) }

#[allow(non_snake_case)]
pub fn JList(elements: Vec<Json>) -> Json { Json::JList(elements) }

#[allow(non_snake_case)]
pub fn JNull() -> Json { Json::JNull }

#[allow(non_snake_case)]
pub fn JStr(value: String) -> Json { Json::JStr(value) }

#[allow(non_camel_case_types)]
#[derive(Clone, Debug, PartialEq)]
pub struct JsonPair {
    pub name: String,
    pub value: Json,
}

#[allow(non_snake_case)]
pub fn JsonPair(name: String, value: Json) -> JsonPair {
    JsonPair {
        name: name,
        value: value,
    }
}
