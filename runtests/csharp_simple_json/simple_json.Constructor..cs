using Antlr4.Runtime;
using System.Collections.Generic;
using System;

namespace simple_json{
public partial interface JsonValue {  }
public partial record JBool(bool value) : JsonValue;
public partial record JDict(MyList<NameValuePair<string, JsonValue>> value) : JsonValue;
public partial record JFlt(float value) : JsonValue;
public partial record JInt(int value) : JsonValue;
public partial record JList(MyList<JsonValue> elements) : JsonValue;
public partial record JNull() : JsonValue;
public partial record JStr(string value) : JsonValue;

public partial record NameValuePair<_GEN_A, _GEN_B>(_GEN_A name,_GEN_B value);
}
