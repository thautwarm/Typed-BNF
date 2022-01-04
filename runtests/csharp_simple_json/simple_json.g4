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
public static JsonValue JList (MyList<JsonValue> elements)
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
public static JsonValue JDict (MyList<JsonPair> value)
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
: var_0__1=json { 
                $result = _localctx.var_0__1.result;
            }
;
jsonpair returns [JsonPair result]
: var_0__1=STR ':' var_0__3=json { 
                $result = (JsonPair) JsonPair((string) (string) unesc((string) (string) getStr((IToken) _localctx.var_0__1)), (JsonValue) _localctx.var_0__3.result);
            }
;
seplist_o__i__s__i__s_json_p_ returns [MyList<JsonValue> result]
: var_0__1=json { 
                $result = new MyList<JsonValue> { _localctx.var_0__1.result };
            }
| var_1__1=seplist_o__i__s__i__s_json_p_ ',' var_1__3=json { 
                $result = (MyList<JsonValue>) appendList<JsonValue>((MyList<JsonValue>) _localctx.var_1__1.result, (JsonValue) _localctx.var_1__3.result);
            }
;
seplist_o__i__s__i__s_jsonpair_p_ returns [MyList<JsonPair> result]
: var_0__1=jsonpair { 
                $result = new MyList<JsonPair> { _localctx.var_0__1.result };
            }
| var_1__1=seplist_o__i__s__i__s_jsonpair_p_ ',' var_1__3=jsonpair { 
                $result = (MyList<JsonPair>) appendList<JsonPair>((MyList<JsonPair>) _localctx.var_1__1.result, (JsonPair) _localctx.var_1__3.result);
            }
;
json returns [JsonValue result]
: var_0__1=INT { 
                $result = (JsonValue) JInt((int) (int) parseInt((string) (string) getStr((IToken) _localctx.var_0__1)));
            }
| var_1__1=FLOAT { 
                $result = (JsonValue) JFlt((float) (float) parseFlt((string) (string) getStr((IToken) _localctx.var_1__1)));
            }
| 'null' { 
                $result = (JsonValue) JNull();
            }
| var_3__1=STR { 
                $result = (JsonValue) JStr((string) (string) unesc((string) (string) getStr((IToken) _localctx.var_3__1)));
            }
| '[' ']' { 
                $result = (JsonValue) JList((MyList<JsonValue>) new MyList<JsonValue> {  });
            }
| '{' '}' { 
                $result = (JsonValue) JDict((MyList<JsonPair>) new MyList<JsonPair> {  });
            }
| 'true' { 
                $result = (JsonValue) JBool((bool) true);
            }
| 'false' { 
                $result = (JsonValue) JBool((bool) false);
            }
| '[' var_8__2=seplist_o__i__s__i__s_json_p_ ']' { 
                $result = (JsonValue) JList((MyList<JsonValue>) _localctx.var_8__2.result);
            }
| '{' var_9__2=seplist_o__i__s__i__s_jsonpair_p_ '}' { 
                $result = (JsonValue) JDict((MyList<JsonPair>) _localctx.var_9__2.result);
            }
;
fragment DIGIT : [\u0030-\u0039] ;
INT : DIGIT+ ;
FLOAT : DIGIT* '.' INT ;
STR : '"' (('\\' .) | ~'"')* '"' ;
SPACE : ('\t' | '\n' | '\r' | ' ')+ -> skip;
