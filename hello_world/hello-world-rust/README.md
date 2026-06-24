# Rust JSON example

This is the committed `rust-lrpar` output for `hello_world/Json.tbnf`, plus the hand-written Rust extern implementations and integration tests needed to run it.

Committed generated files include:

- `Cargo.toml`
- `build.rs`
- `src/lib.rs`
- `src/main.rs`
- `src/json_rust.l`
- `src/json_rust.y`

Hand-written support files include:

- `src/externs.rs`
- `tests/parser.rs`
- `sample.json`

Run it from this directory:

```bash
cargo test --quiet
cargo run --quiet < sample.json
```

Run it through the repository test wrapper:

```bash
test-scripts/docker-test.sh test rust-json-example
```

Regenerate the committed backend output from the repository root:

```bash
deno run -A build.ts aot
./dist/TBNF.CLI.AOT hello_world/Json.tbnf \
  -o hello_world/hello-world-rust \
  -lang JsonRust \
  -be rust-lrpar
```

After regenerating, restore or update `src/externs.rs` and keep `tests/parser.rs` / `sample.json` as the example harness.
