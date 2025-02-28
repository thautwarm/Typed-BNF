grammar Json;
@parser::header {
import { JBool, JDict, JFlt, JInt, JList, JNull, JStr, Json_t, JsonPair_t, JsonPair, appendList, unesc, getStr, toFlt, toInt } from "./JsonConstructor"
}
start returns [result: Json_t]: v=start__y_ EOF { $result = localContext._v.result; };
start__y_ returns [Json_t result]
: start__y__0__1=json { $result = localContext._start__y__0__1.result;
            }
;
jsonpair returns [JsonPair_t result]
: jsonpair_0__1=STR ':' jsonpair_0__3=json { $result = <JsonPair_t> JsonPair(<string> <string> unesc(<string> <string> getStr(<antlr.Token> localContext._jsonpair_0__1)), <Json_t> localContext._jsonpair_0__3.result);
            }
;
seplist_o__i__s__i__s_json_p_ returns [Array<Json_t> result]
: seplist_o__i__s__i__s_json_p__0__1=json { $result = <Array<Json_t>>[ localContext._seplist_o__i__s__i__s_json_p__0__1.result ];
            }
| seplist_o__i__s__i__s_json_p__2__1=seplist_o__i__s__i__s_json_p_ ',' seplist_o__i__s__i__s_json_p__2__3=json { $result = <Array<Json_t>> appendList<Json_t>(<Array<Json_t>> localContext._seplist_o__i__s__i__s_json_p__2__1.result, <Json_t> localContext._seplist_o__i__s__i__s_json_p__2__3.result);
            }
;
seplist_o__i__s__i__s_jsonpair_p_ returns [Array<JsonPair_t> result]
: seplist_o__i__s__i__s_jsonpair_p__0__1=jsonpair { $result = <Array<JsonPair_t>>[ localContext._seplist_o__i__s__i__s_jsonpair_p__0__1.result ];
            }
| seplist_o__i__s__i__s_jsonpair_p__2__1=seplist_o__i__s__i__s_jsonpair_p_ ',' seplist_o__i__s__i__s_jsonpair_p__2__3=jsonpair { $result = <Array<JsonPair_t>> appendList<JsonPair_t>(<Array<JsonPair_t>> localContext._seplist_o__i__s__i__s_jsonpair_p__2__1.result, <JsonPair_t> localContext._seplist_o__i__s__i__s_jsonpair_p__2__3.result);
            }
;
json returns [Json_t result]
: json_0__1=INT { $result = <Json_t> JInt(<number> <number> toInt(<string> <string> getStr(<antlr.Token> localContext._json_0__1)));
            }
| json_2__1=FLOAT { $result = <Json_t> JFlt(<number> <number> toFlt(<string> <string> getStr(<antlr.Token> localContext._json_2__1)));
            }
| 'null' { $result = <Json_t> JNull();
            }
| json_6__1=STR { $result = <Json_t> JStr(<string> <string> unesc(<string> <string> getStr(<antlr.Token> localContext._json_6__1)));
            }
| '[' ']' { $result = <Json_t> JList(<Array<Json_t>> <Array<Json_t>>[  ]);
            }
| '{' '}' { $result = <Json_t> JDict(<Array<JsonPair_t>> <Array<JsonPair_t>>[  ]);
            }
| 'true' { $result = <Json_t> JBool(<boolean> true);
            }
| 'false' { $result = <Json_t> JBool(<boolean> false);
            }
| '[' json_16__2=seplist_o__i__s__i__s_json_p_ ']' { $result = <Json_t> JList(<Array<Json_t>> localContext._json_16__2.result);
            }
| '{' json_18__2=seplist_o__i__s__i__s_jsonpair_p_ '}' { $result = <Json_t> JDict(<Array<JsonPair_t>> localContext._json_18__2.result);
            }
;
fragment DIGIT : [\u0030-\u0039] ;
INT : DIGIT+ ;
FLOAT : DIGIT* '.' INT ;
STR : '"' (('\\' .) | ~'"')* '"' ;
SPACE : ('\t' | '\n' | '\r' | ' ')+ -> channel(HIDDEN);
