#![allow(non_snake_case, non_camel_case_types, dead_code)]

use crate::json_rust_y::*;

pub fn toInt(arg0: &String) -> i64 {
    arg0.parse().unwrap()
}

pub fn toFlt(arg0: &String) -> f64 {
    arg0.parse().unwrap()
}

pub fn getStr(arg0: &TbnfToken) -> String {
    arg0.text.clone()
}

pub fn unesc(arg0: &String) -> String {
    let s = arg0
        .strip_prefix('"')
        .and_then(|s| s.strip_suffix('"'))
        .unwrap_or(arg0);

    let mut out = String::new();
    let mut chars = s.chars();

    while let Some(c) = chars.next() {
        if c == '\\' {
            match chars.next() {
                Some('"') => out.push('"'),
                Some('\\') => out.push('\\'),
                Some('/') => out.push('/'),
                Some('n') => out.push('\n'),
                Some('r') => out.push('\r'),
                Some('t') => out.push('\t'),
                Some('b') => out.push('\u{0008}'),
                Some('f') => out.push('\u{000c}'),
                Some(other) => out.push(other),
                None => {}
            }
        } else {
            out.push(c);
        }
    }

    out
}

pub fn appendList<T: Clone>(arg0: &Vec<T>, arg1: &T) -> Vec<T> {
    let mut out = arg0.clone();
    out.push(arg1.clone());
    out
}
