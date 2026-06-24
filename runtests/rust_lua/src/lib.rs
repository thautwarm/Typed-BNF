pub mod externs;

use lrlex::lrlex_mod;
use lrpar::lrpar_mod;

lrlex_mod!("lua.l");
lrpar_mod!("lua.y");

#[allow(unused_imports)]
pub use externs::*;
pub use lua_y::*;

#[derive(Debug)]
pub enum ParseFailure {
    Syntax(Vec<String>),
    Action(lua_y::TbnfError),
    NoParse,
}

pub fn parse(input: &str) -> Result<block, ParseFailure> {
    let lexerdef = lua_l::lexerdef();
    let lexer = lexerdef.lexer(input);
    let (result, errors) = lua_y::parse(&lexer);

    if !errors.is_empty() {
        return Err(ParseFailure::Syntax(errors.into_iter().map(|e| format!("{:?}", e)).collect()));
    }

    match result {
        Some(Ok(value)) => Ok(value),
        Some(Err(error)) => Err(ParseFailure::Action(error)),
        None => Err(ParseFailure::NoParse),
    }
}
