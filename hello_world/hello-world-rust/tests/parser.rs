#[test]
fn parses_json_object_with_library_api() {
    let ast = json_rust::parse(r#"{"name":"John","age":30,"admin":false,"items":[1,2,true,null]}"#)
        .expect("JSON example should parse");
    let shown = format!("{ast:?}");

    assert!(shown.contains("JDict"), "unexpected AST: {shown}");
    assert!(shown.contains("JsonPair"), "unexpected AST: {shown}");
    assert!(shown.contains("JBool"), "unexpected AST: {shown}");
    assert!(shown.contains("JNull"), "unexpected AST: {shown}");
}

#[test]
fn rejects_invalid_json() {
    let err = json_rust::parse(r#"{"missing": [1, }"#).expect_err("invalid JSON should fail");
    let shown = format!("{err:?}");

    assert!(shown.contains("Syntax"), "unexpected parse error: {shown}");
}
