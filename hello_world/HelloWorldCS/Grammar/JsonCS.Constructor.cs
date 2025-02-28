using Antlr4.Runtime;
using System.Collections.Generic;
using System;
namespace JsonCS{
public partial interface Json {  }
public partial record JBool(bool value) : Json;
public partial record JDict(System.Collections.Generic.List<JsonPair> value) : Json;
public partial record JFlt(double value) : Json;
public partial record JInt(int value) : Json;
public partial record JList(System.Collections.Generic.List<Json> elements) : Json;
public partial record JNull() : Json;
public partial record JStr(string value) : Json;
public partial record JsonPair(string name,Json value);
}
