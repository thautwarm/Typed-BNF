#[test]
fn parses_lua_lr_sample_with_library_api() {
    let ast = lua::parse("local x = 1 + 2 * 3\nf(x)\nreturn x\n")
        .expect("Lua LR sample should parse");
    let shown = format!("{ast:?}");

    assert!(shown.contains("Assignment"), "unexpected AST: {shown}");
    assert!(shown.contains("CallFunc"), "unexpected AST: {shown}");
    assert!(shown.contains("ReturnStmt"), "unexpected AST: {shown}");
    assert!(shown.contains("Bin"), "unexpected AST: {shown}");
}

#[test]
fn rejects_invalid_lua() {
    let err = lua::parse("local =").expect_err("invalid Lua should fail");
    let shown = format!("{err:?}");

    assert!(shown.contains("Syntax"), "unexpected parse error: {shown}");
}
