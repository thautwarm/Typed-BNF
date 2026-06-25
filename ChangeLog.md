# 0.4.4

## Highlights

1. Add the Rust `rust-lrpar` backend, generating Cargo projects backed by `grmtools`, `lrlex`, and `lrpar`.
2. Add committed Rust examples and fixtures for JSON and an LR-compatible Lua grammar.
3. Add Docker/Docker Compose based development and test workflow, plus GitHub CI.

## Fixes and improvements

1. Fix type inference/unification regressions around record field access and duplicate type variable checks.
2. Support `module.exports` in `tbnf.config.js`, with fallback to legacy top-level config hooks.
3. Expand grammar regression coverage across C#, TypeScript, and Rust backends.
4. Improve README and documentation for supported features, backend status, Rust limitations, and legacy backend notes.
5. Mark Python Lark and OCaml Menhir as legacy/deprecated; OCaml Menhir is currently broken against the current CLI/toolchain.

# 0.4.3

1. Fix mangling for parameters
2. Format 

# 0.4.2
