pub mod externs;

use lrlex::lrlex_mod;
use lrpar::lrpar_mod;

lrlex_mod!("json_rust.l");
lrpar_mod!("json_rust.y");

#[allow(unused_imports)]
pub use externs::*;
pub use json_rust_y::*;

#[derive(Debug)]
pub enum ParseFailure {
    Syntax(Vec<String>),
    Action(json_rust_y::TbnfError),
    NoParse,
}

pub fn parse(input: &str) -> Result<Json, ParseFailure> {
    let lexerdef = json_rust_l::lexerdef();
    let lexer = lexerdef.lexer(input);
    let (result, errors) = json_rust_y::parse(&lexer);

    if !errors.is_empty() {
        return Err(ParseFailure::Syntax(errors.into_iter().map(|e| format!("{:?}", e)).collect()));
    }

    match result {
        Some(Ok(value)) => Ok(value),
        Some(Err(error)) => Err(ParseFailure::Action(error)),
        None => Err(ParseFailure::NoParse),
    }
}
