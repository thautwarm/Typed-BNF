grammar mylang;
start returns [list<json> result] :
      local__1_start_case0=list { 
        list<json> tmp__1 ; 
        tmp__1 = local__1_start_case0.value ; 
        $result = tmp__1; 
      } 
; 
list returns [list<json> result] :
      { 
        list<json> tmp__2 ; 
        tmp__2 = (list<json>) nil(  ); 
        $result = tmp__2; 
      } 
    | local__1_list_case1=json ',' local__3_list_case1=list { 
        list<json> tmp__5 ; 
        list<json> tmp__4 ; 
        json tmp__3 ; 
        tmp__3 = local__1_list_case1.value ; 
        tmp__4 = local__3_list_case1.value ; 
        tmp__5 = (list<json>) cons( tmp__3, tmp__4 ); 
        $result = tmp__5; 
      } 
; 
str returns [str result] :
      local__1_str_case0=STR_1 { 
        token tmp__6 ; 
        tmp__6 = local__1_str_case0.value ; 
        $result = tmp__6.lexeme; 
      } 
; 
pair returns [(str, json) result] :
      local__1_pair_case0=str ':' local__3_pair_case0=json { 
        json tmp__9 ; 
        str tmp__8 ; 
        (str, json) tmp__7 ; 
        tmp__8 = local__1_pair_case0.value ; 
        tmp__9 = local__3_pair_case0.value ; 
        tmp__7 = new (str, json) ( tmp__8 , tmp__9 ); 
        $result = tmp__7; 
      } 
; 
pair_list returns [list<(str, json)> result] :
      { 
        list<(str, json)> tmp__10 ; 
        tmp__10 = (list<(str, json)>) nil(  ); 
        $result = tmp__10; 
      } 
    | local__1_pair_list_case1=pair ',' local__3_pair_list_case1=pair_list { 
        list<(str, json)> tmp__13 ; 
        list<(str, json)> tmp__12 ; 
        (str, json) tmp__11 ; 
        tmp__11 = local__1_pair_list_case1.value ; 
        tmp__12 = local__3_pair_list_case1.value ; 
        tmp__13 = (list<(str, json)>) cons( tmp__11, tmp__12 ); 
        $result = tmp__13; 
      } 
; 
json returns [json result] :
      '[' local__2_json_case0=list ']' { 
        json tmp__15 ; 
        list<json> tmp__14 ; 
        tmp__14 = local__2_json_case0.value ; 
        tmp__15 = (json) json_list( tmp__14 ); 
        $result = tmp__15; 
      } 
    | '{' local__2_json_case1=pair_list '}' { 
        json tmp__18 ; 
        dict<str, json> tmp__17 ; 
        list<(str, json)> tmp__16 ; 
        tmp__16 = local__2_json_case1.value ; 
        tmp__17 = (dict<str, json>) mk_dict( tmp__16 ); 
        tmp__18 = (json) json_dict( tmp__17 ); 
        $result = tmp__18; 
      } 
    | local__1_json_case2=INT_2 { 
        json tmp__21 ; 
        int tmp__20 ; 
        token tmp__19 ; 
        tmp__19 = local__1_json_case2.value ; 
        tmp__20 = (int) parse_int( tmp__19.lexeme ); 
        tmp__21 = (json) json_int( tmp__20 ); 
        $result = tmp__21; 
      } 
    | local__1_json_case3=FLOAT_3 { 
        json tmp__24 ; 
        float tmp__23 ; 
        token tmp__22 ; 
        tmp__22 = local__1_json_case3.value ; 
        tmp__23 = (float) parse_float( tmp__22.lexeme ); 
        tmp__24 = (json) json_float( tmp__23 ); 
        $result = tmp__24; 
      } 
    | local__1_json_case4=str { 
        json tmp__27 ; 
        str tmp__26 ; 
        str tmp__25 ; 
        tmp__25 = local__1_json_case4.value ; 
        tmp__26 = (str) unesc_string( tmp__25 ); 
        tmp__27 = (json) json_string( tmp__26 ); 
        $result = tmp__27; 
      } 
; 


STR_1 : (('"') ((('\\') .)|~('"')) ('"'));
INT_2 : DIGIT_4+;
fragment DIGIT_4 : [\u0030-\u0039];
FLOAT_3 : (INT_2 ('.') INT_2);


