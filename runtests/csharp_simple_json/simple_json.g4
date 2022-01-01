grammar simple_json;
options { language = CSharp; }
@members {
public static JsonPair JsonPair (string name,JsonValue value)
{
    return (JsonPair) new JsonPair(name,value);
}
public static JsonValue JStr (string value)
{
    return (JsonValue) new JStr(value);
}
public static JsonValue JNull ()
{
    return (JsonValue) new JNull();
}
public static JsonValue JList (System.Collections.Generic.List<JsonValue> elements)
{
    return (JsonValue) new JList(elements);
}
public static JsonValue JInt (int value)
{
    return (JsonValue) new JInt(value);
}
public static JsonValue JFlt (float value)
{
    return (JsonValue) new JFlt(value);
}
public static JsonValue JDict (System.Collections.Generic.List<JsonPair> value)
{
    return (JsonValue) new JDict(value);
}
public static JsonValue JBool (bool value)
{
    return (JsonValue) new JBool(value);
}
}
start returns [JsonValue result]: v=start__y_ EOF { $result = _localctx.v.result; };





start__y_ returns [JsonValue result]
: start__y__0__1=json { 
                $result = _localctx.start__y__0__1.result;
            }
;
jsonpair returns [JsonPair result]
: jsonpair_0__1=STR ':' jsonpair_0__3=json { 
                $result = JsonPair(unesc(getStr(_localctx.jsonpair_0__1)), _localctx.jsonpair_0__3.result);
            }
;
seplist_n__i__s__i__s_json_p_ returns [System.Collections.Generic.List<JsonValue> result]
: seplist_n__i__s__i__s_json_p__0__1=json { 
                $result = new System.Collections.Generic.List<JsonValue> { _localctx.seplist_n__i__s__i__s_json_p__0__1.result };
            }
| seplist_n__i__s__i__s_json_p__1__1=seplist_n__i__s__i__s_json_p_ ',' seplist_n__i__s__i__s_json_p__1__3=json { 
                $result = appendList<JsonValue>(_localctx.seplist_n__i__s__i__s_json_p__1__1.result, _localctx.seplist_n__i__s__i__s_json_p__1__3.result);
            }
;
seplist_n__i__s__i__s_jsonpair_p_ returns [System.Collections.Generic.List<JsonPair> result]
: seplist_n__i__s__i__s_jsonpair_p__0__1=jsonpair { 
                $result = new System.Collections.Generic.List<JsonPair> { _localctx.seplist_n__i__s__i__s_jsonpair_p__0__1.result };
            }
| seplist_n__i__s__i__s_jsonpair_p__1__1=seplist_n__i__s__i__s_jsonpair_p_ ',' seplist_n__i__s__i__s_jsonpair_p__1__3=jsonpair { 
                $result = appendList<JsonPair>(_localctx.seplist_n__i__s__i__s_jsonpair_p__1__1.result, _localctx.seplist_n__i__s__i__s_jsonpair_p__1__3.result);
            }
;
json returns [JsonValue result]
: json_0__1=INT { 
                $result = JInt(parseInt(getStr(_localctx.json_0__1)));
            }
| json_1__1=FLOAT { 
                $result = JFlt(parseFlt(getStr(_localctx.json_1__1)));
            }
| 'null' { 
                $result = JNull();
            }
| json_3__1=STR { 
                $result = JStr(unesc(getStr(_localctx.json_3__1)));
            }
| '[' ']' { 
                $result = JList(new System.Collections.Generic.List<JsonValue> {  });
            }
| '{' '}' { 
                $result = JDict(new System.Collections.Generic.List<JsonPair> {  });
            }
| 'true' { 
                $result = JBool(true);
            }
| 'false' { 
                $result = JBool(false);
            }
| '[' json_8__2=seplist_n__i__s__i__s_json_p_ ']' { 
                $result = JList(_localctx.json_8__2.result);
            }
| '{' json_9__2=seplist_n__i__s__i__s_jsonpair_p_ '}' { 
                $result = JDict(_localctx.json_9__2.result);
            }
;
fragment DIGIT : [\u0030-\u0039] ;
INT : DIGIT+ ;
FLOAT : DIGIT* '.' INT ;
STR : '"' (('\\' .) | ~'"')* '"' ;
SPACE : ('\t' | '\n' | '\r' | ' ')+ -> skip;
