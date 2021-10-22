grammar mylang;
json returns [json result] :
      '[' local__2_json_case0=gen__list_json ']' { 
        json tmp__2 ; 
        list<json> tmp__1 ; 
        tmp__1 = local__2_json_case0.value ; 
        tmp__2 = (json) json_list( tmp__1 ); 
        $result = tmp__2; 
      } 
    | '{' local__2_json_case1=gen__seplist__L44__pair '}' { 
        json tmp__5 ; 
        dict<str, json> tmp__4 ; 
        list<(str, json)> tmp__3 ; 
        tmp__3 = local__2_json_case1.value ; 
        tmp__4 = (dict<str, json>) mk_dict( tmp__3 ); 
        tmp__5 = (json) json_dict( tmp__4 ); 
        $result = tmp__5; 
      } 
    | local__1_json_case2=INT_3 { 
        json tmp__8 ; 
        int tmp__7 ; 
        token tmp__6 ; 
        tmp__6 = local__1_json_case2.value ; 
        tmp__7 = (int) parse_int( tmp__6.lexeme ); 
        tmp__8 = (json) json_int( tmp__7 ); 
        $result = tmp__8; 
      } 
    | local__1_json_case3=FLOAT_4 { 
        json tmp__11 ; 
        float tmp__10 ; 
        token tmp__9 ; 
        tmp__9 = local__1_json_case3.value ; 
        tmp__10 = (float) parse_float( tmp__9.lexeme ); 
        tmp__11 = (json) json_float( tmp__10 ); 
        $result = tmp__11; 
      } 
    | local__1_json_case4=str { 
        json tmp__14 ; 
        str tmp__13 ; 
        str tmp__12 ; 
        tmp__12 = local__1_json_case4.value ; 
        tmp__13 = (str) unesc_string( tmp__12 ); 
        tmp__14 = (json) json_string( tmp__13 ); 
        $result = tmp__14; 
      } 
; 
gen__seplist__L44__pair returns [list<(str, json)> result] :
      { 
        list<(str, json)> tmp__15 ; 
        tmp__15 = (list<(str, json)>) nil(  ); 
        $result = tmp__15; 
      } 
    | local__1_gen__seplist__L44__pair_case1=pair ',' local__3_gen__seplist__L44__pair_case1=gen__seplist__L44__pair { 
        list<(str, json)> tmp__18 ; 
        list<(str, json)> tmp__17 ; 
        (str, json) tmp__16 ; 
        tmp__16 = local__1_gen__seplist__L44__pair_case1.value ; 
        tmp__17 = local__3_gen__seplist__L44__pair_case1.value ; 
        tmp__18 = (list<(str, json)>) cons( tmp__16, tmp__17 ); 
        $result = tmp__18; 
      } 
; 
gen__list_json returns [list<json> result] :
      { 
        list<json> tmp__19 ; 
        tmp__19 = (list<json>) nil(  ); 
        $result = tmp__19; 
      } 
    | local__1_gen__list_json_case1=json ',' local__3_gen__list_json_case1=gen__list_json { 
        list<json> tmp__22 ; 
        list<json> tmp__21 ; 
        json tmp__20 ; 
        tmp__20 = local__1_gen__list_json_case1.value ; 
        tmp__21 = local__3_gen__list_json_case1.value ; 
        tmp__22 = (list<json>) cons( tmp__20, tmp__21 ); 
        $result = tmp__22; 
      } 
; 
pair returns [(str, json) result] :
      local__1_pair_case0=str ':' local__3_pair_case0=json { 
        json tmp__25 ; 
        str tmp__24 ; 
        (str, json) tmp__23 ; 
        tmp__24 = local__1_pair_case0.value ; 
        tmp__25 = local__3_pair_case0.value ; 
        tmp__23 = new (str, json) ( tmp__24 , tmp__25 ); 
        $result = tmp__23; 
      } 
; 
str returns [str result] :
      local__1_str_case0=STR_1 { 
        token tmp__26 ; 
        tmp__26 = local__1_str_case0.value ; 
        $result = tmp__26.lexeme; 
      } 
; 
start returns [list<json> result] :
      local__1_start_case0=gen__list_json { 
        list<json> tmp__27 ; 
        tmp__27 = local__1_start_case0.value ; 
        $result = tmp__27; 
      } 
; 


STR_1 : (('"') ((('\\') .)|~('"')) ('"'));
INT_3 : DIGIT_2+;
fragment DIGIT_2 : [\u0030-\u0039];
FLOAT_4 : (INT_3 ('.') INT_3);


