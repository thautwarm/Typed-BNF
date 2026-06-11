#![allow(non_snake_case, non_camel_case_types, dead_code, unused_imports)]
use crate::lua_y::*;

#[derive(Clone, Debug, PartialEq)]
pub enum maybe<T> {
    Some(T),
    None,
}

pub fn some<T: Clone>(arg0: &T) -> maybe<T> {
    maybe::Some(arg0.clone())
}

pub fn none<T>() -> maybe<T> {
    maybe::None
}

pub fn appendList<T: Clone>(arg0: &Vec<T>, arg1: &T) -> Vec<T> {
    let mut out = arg0.clone();
    out.push(arg1.clone());
    out
}

pub fn listMap<T: Clone, U>(arg0: &Vec<T>, arg1: &Box<dyn Fn(T) -> U>) -> Vec<U> {
    arg0.iter().cloned().map(|x| arg1(x)).collect()
}
