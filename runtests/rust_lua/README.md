# Rust Lua LR fixture

This is the committed `rust-lrpar` Cargo project generated from `runtests/lua_lr.tbnf`, plus the hand-written extern implementations and integration tests needed to run it.

Run it from this directory:

```bash
cargo test --quiet
cargo run --quiet < sample.lua
```

Run it through the repository test wrapper:

```bash
test-scripts/docker-test.sh test rust-lua
```

Regenerate the committed backend output from the repository root:

```bash
deno run -A build.ts aot
./dist/TBNF.CLI.AOT runtests/lua_lr.tbnf \
  -o runtests/rust_lua \
  -lang Lua \
  -be rust-lrpar
```

After regenerating, restore or update `src/externs.rs` and keep `tests/parser.rs` / `sample.lua` as the fixture harness.
