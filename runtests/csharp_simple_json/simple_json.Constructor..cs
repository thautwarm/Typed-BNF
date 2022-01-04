using Antlr4.Runtime;
using System.Collections.Generic;
using System;

namespace simple_json{
public partial interface JsonValue {  }
public partial record JBool(bool value) : JsonValue;
public partial record JDict(MyList<JsonPair> value) : JsonValue;
public partial record JFlt(float value) : JsonValue;
public partial record JInt(int value) : JsonValue;
public partial record JList(MyList<JsonValue> elements) : JsonValue;
public partial record JNull() : JsonValue;
public partial record JStr(string value) : JsonValue;

public partial record JsonPair(string name,JsonValue value);
}
