@noinline function rbnf_named_lr_step_seplist_40__34__44__34__44_json_41_(rbnf_tmp_0,
                                                                          builtin_state,
                                                                          builtin_tokens)
  rbnf_tmp_1 = builtin_match_tk( builtin_tokens, 2 )
  if builtin_is_null( rbnf_tmp_1 )
      builtin_mk_either_right(
          builtin_to_any(
              builtin_cons(
                  (builtin_tokens.offset, "L , not match"),
                  builtin_nil
              )
          )
      )
  else
      rbnf_named__check_2 = rbnf_named_parse_json(
                                builtin_state,
                                builtin_tokens
                            )
      if builtin_chk_is_err( rbnf_named__check_2 )
          rbnf_named__check_2
      else
          rbnf_tmp_2 = builtin_to_result( rbnf_named__check_2 )
          rbnf_tmp_1_ = seplist_40__34__44__34__44_json_41__1(
                            rbnf_tmp_0,
                            rbnf_tmp_1,
                            rbnf_tmp_2
                        )
          builtin_mk_either_left( rbnf_tmp_1_ )
      end
  end
end
@noinline function rbnf_named_lr_loop_seplist_40__34__44__34__44_json_41_(rbnf_tmp_0,
                                                                          builtin_state,
                                                                          builtin_tokens)
  rbnf_named_lr_seplist_40__34__44__34__44_json_41__reduce = rbnf_tmp_0
  rbnf_named__off_0 = builtin_tokens.offset
  rbnf_named_lr_seplist_40__34__44__34__44_json_41__try = rbnf_named_lr_step_seplist_40__34__44__34__44_json_41_(
                                                              rbnf_named_lr_seplist_40__34__44__34__44_json_41__reduce,
                                                              builtin_state,
                                                              builtin_tokens
                                                          )
  while builtin_chk_is_val(
            rbnf_named_lr_seplist_40__34__44__34__44_json_41__try
        )
      rbnf_named__off_0 = builtin_tokens.offset
      rbnf_named_lr_seplist_40__34__44__34__44_json_41__reduce = builtin_to_result(
                                                                     rbnf_named_lr_seplist_40__34__44__34__44_json_41__try
                                                                 )
      rbnf_named_lr_seplist_40__34__44__34__44_json_41__try = rbnf_named_lr_step_seplist_40__34__44__34__44_json_41_(
                                                                  rbnf_named_lr_seplist_40__34__44__34__44_json_41__reduce,
                                                                  builtin_state,
                                                                  builtin_tokens
                                                              )
  end
  if builtin_eq( builtin_tokens.offset, rbnf_named__off_0 )
      builtin_mk_either_left(
          rbnf_named_lr_seplist_40__34__44__34__44_json_41__reduce
      )
  else
      rbnf_named_lr_seplist_40__34__44__34__44_json_41__try
  end
end
@noinline function rbnf_named_lr_step_seplist_40__34__44__34__44_jsonpair_41_(rbnf_tmp_0,
                                                                              builtin_state,
                                                                              builtin_tokens)
  rbnf_tmp_1 = builtin_match_tk( builtin_tokens, 2 )
  if builtin_is_null( rbnf_tmp_1 )
      builtin_mk_either_right(
          builtin_to_any(
              builtin_cons(
                  (builtin_tokens.offset, "L , not match"),
                  builtin_nil
              )
          )
      )
  else
      rbnf_named__check_2 = rbnf_named_parse_jsonpair(
                                builtin_state,
                                builtin_tokens
                            )
      if builtin_chk_is_err( rbnf_named__check_2 )
          rbnf_named__check_2
      else
          rbnf_tmp_2 = builtin_to_result( rbnf_named__check_2 )
          rbnf_tmp_1_ = seplist_40__34__44__34__44_jsonpair_41__1(
                            rbnf_tmp_0,
                            rbnf_tmp_1,
                            rbnf_tmp_2
                        )
          builtin_mk_either_left( rbnf_tmp_1_ )
      end
  end
end
@noinline function rbnf_named_lr_loop_seplist_40__34__44__34__44_jsonpair_41_(rbnf_tmp_0,
                                                                              builtin_state,
                                                                              builtin_tokens)
  rbnf_named_lr_seplist_40__34__44__34__44_jsonpair_41__reduce = rbnf_tmp_0
  rbnf_named__off_0 = builtin_tokens.offset
  rbnf_named_lr_seplist_40__34__44__34__44_jsonpair_41__try = rbnf_named_lr_step_seplist_40__34__44__34__44_jsonpair_41_(
                                                                  rbnf_named_lr_seplist_40__34__44__34__44_jsonpair_41__reduce,
                                                                  builtin_state,
                                                                  builtin_tokens
                                                              )
  while builtin_chk_is_val(
            rbnf_named_lr_seplist_40__34__44__34__44_jsonpair_41__try
        )
      rbnf_named__off_0 = builtin_tokens.offset
      rbnf_named_lr_seplist_40__34__44__34__44_jsonpair_41__reduce = builtin_to_result(
                                                                         rbnf_named_lr_seplist_40__34__44__34__44_jsonpair_41__try
                                                                     )
      rbnf_named_lr_seplist_40__34__44__34__44_jsonpair_41__try = rbnf_named_lr_step_seplist_40__34__44__34__44_jsonpair_41_(
                                                                      rbnf_named_lr_seplist_40__34__44__34__44_jsonpair_41__reduce,
                                                                      builtin_state,
                                                                      builtin_tokens
                                                                  )
  end
  if builtin_eq( builtin_tokens.offset, rbnf_named__off_0 )
      builtin_mk_either_left(
          rbnf_named_lr_seplist_40__34__44__34__44_jsonpair_41__reduce
      )
  else
      rbnf_named_lr_seplist_40__34__44__34__44_jsonpair_41__try
  end
end
@noinline function rbnf_named_parse_START(builtin_state, builtin_tokens)
  rbnf_named__check_0 = rbnf_named_parse_json( builtin_state, builtin_tokens )
  if builtin_chk_is_err( rbnf_named__check_0 )
      rbnf_named__check_0
  else
      rbnf_tmp_0 = builtin_to_result( rbnf_named__check_0 )
      rbnf_tmp_1_ = start_0( rbnf_tmp_0 )
      builtin_mk_either_left( rbnf_tmp_1_ )
  end
end
@noinline function rbnf_named_parse_json(builtin_state, builtin_tokens)
  rbnf_named__off_0 = builtin_tokens.offset
  if builtin_peekable( builtin_tokens, 0 )
      let __switch_target__ = builtin_peek( builtin_tokens, 0 ).idint
      if __switch_target__ == 0
        let
        rbnf_tmp_0 = builtin_mv_forward( builtin_tokens )
        rbnf_tmp_1_ = json_3( rbnf_tmp_0 )
        builtin_mk_either_left( rbnf_tmp_1_ )
        end
      elseif __switch_target__ == 3
        let
        rbnf_tmp_0 = builtin_mv_forward( builtin_tokens )
        rbnf_tmp_1_ = json_0( rbnf_tmp_0 )
        builtin_mk_either_left( rbnf_tmp_1_ )
        end
      elseif __switch_target__ == 4
        let
        rbnf_tmp_0 = builtin_mv_forward( builtin_tokens )
        rbnf_tmp_1_ = json_1( rbnf_tmp_0 )
        builtin_mk_either_left( rbnf_tmp_1_ )
        end
      elseif __switch_target__ == 8
        let
        rbnf_tmp_0 = builtin_mv_forward( builtin_tokens )
        rbnf_named__off_1 = builtin_tokens.offset
        if builtin_peekable( builtin_tokens, 0 )
            let __switch_target__ = builtin_peek( builtin_tokens, 0 ).idint
            if __switch_target__ == 0
              let
              rbnf_named__check_1 = rbnf_named_parse_seplist_40__34__44__34__44_jsonpair_41_(
                                        builtin_state,
                                        builtin_tokens
                                    )
              if builtin_chk_is_err( rbnf_named__check_1 )
                  rbnf_named__check_1
              else
                  rbnf_tmp_1 = builtin_to_result( rbnf_named__check_1 )
                  rbnf_tmp_2 = builtin_match_tk( builtin_tokens, 9 )
                  if builtin_is_null( rbnf_tmp_2 )
                      builtin_mk_either_right(
                          builtin_to_any(
                              builtin_cons(
                                  (builtin_tokens.offset, "L } not match"),
                                  builtin_nil
                              )
                          )
                      )
                  else
                      rbnf_tmp_1_ = json_9( rbnf_tmp_0, rbnf_tmp_1, rbnf_tmp_2 )
                      builtin_mk_either_left( rbnf_tmp_1_ )
                  end
              end
              end
            elseif __switch_target__ == 9
              let
              rbnf_tmp_1 = builtin_mv_forward( builtin_tokens )
              rbnf_tmp_1_ = json_5( rbnf_tmp_0, rbnf_tmp_1 )
              builtin_mk_either_left( rbnf_tmp_1_ )
              end
            else
              let
                builtin_mk_either_right(
                    builtin_to_any(
                        builtin_cons(
                            (rbnf_named__off_1, "json lookahead failed"),
                            builtin_nil
                        )
                    )
                )
              end
            end
            end
        else
            builtin_mk_either_right(
                builtin_to_any(
                    builtin_cons(
                        (rbnf_named__off_1, "json got EOF"),
                        builtin_nil
                    )
                )
            )
        end
        end
      elseif __switch_target__ == 10
        let
        rbnf_tmp_0 = builtin_mv_forward( builtin_tokens )
        rbnf_tmp_1_ = json_6( rbnf_tmp_0 )
        builtin_mk_either_left( rbnf_tmp_1_ )
        end
      elseif __switch_target__ == 5
        let
        rbnf_tmp_0 = builtin_mv_forward( builtin_tokens )
        rbnf_tmp_1_ = json_2( rbnf_tmp_0 )
        builtin_mk_either_left( rbnf_tmp_1_ )
        end
      elseif __switch_target__ == 11
        let
        rbnf_tmp_0 = builtin_mv_forward( builtin_tokens )
        rbnf_tmp_1_ = json_7( rbnf_tmp_0 )
        builtin_mk_either_left( rbnf_tmp_1_ )
        end
      elseif __switch_target__ == 6
        let
        rbnf_tmp_0 = builtin_mv_forward( builtin_tokens )
        rbnf_named__off_1 = builtin_tokens.offset
        if builtin_peekable( builtin_tokens, 0 )
            let __switch_target__ = builtin_peek( builtin_tokens, 0 ).idint
            if __switch_target__ == 0
              let
              rbnf_named__check_1 = rbnf_named_parse_seplist_40__34__44__34__44_json_41_(
                                        builtin_state,
                                        builtin_tokens
                                    )
              if builtin_chk_is_err( rbnf_named__check_1 )
                  rbnf_named__check_1
              else
                  rbnf_tmp_1 = builtin_to_result( rbnf_named__check_1 )
                  rbnf_tmp_2 = builtin_match_tk( builtin_tokens, 7 )
                  if builtin_is_null( rbnf_tmp_2 )
                      builtin_mk_either_right(
                          builtin_to_any(
                              builtin_cons(
                                  (builtin_tokens.offset, "L ] not match"),
                                  builtin_nil
                              )
                          )
                      )
                  else
                      rbnf_tmp_1_ = json_8( rbnf_tmp_0, rbnf_tmp_1, rbnf_tmp_2 )
                      builtin_mk_either_left( rbnf_tmp_1_ )
                  end
              end
              end
            elseif __switch_target__ == 3
              let
              rbnf_named__check_1 = rbnf_named_parse_seplist_40__34__44__34__44_json_41_(
                                        builtin_state,
                                        builtin_tokens
                                    )
              if builtin_chk_is_err( rbnf_named__check_1 )
                  rbnf_named__check_1
              else
                  rbnf_tmp_1 = builtin_to_result( rbnf_named__check_1 )
                  rbnf_tmp_2 = builtin_match_tk( builtin_tokens, 7 )
                  if builtin_is_null( rbnf_tmp_2 )
                      builtin_mk_either_right(
                          builtin_to_any(
                              builtin_cons(
                                  (builtin_tokens.offset, "L ] not match"),
                                  builtin_nil
                              )
                          )
                      )
                  else
                      rbnf_tmp_1_ = json_8( rbnf_tmp_0, rbnf_tmp_1, rbnf_tmp_2 )
                      builtin_mk_either_left( rbnf_tmp_1_ )
                  end
              end
              end
            elseif __switch_target__ == 4
              let
              rbnf_named__check_1 = rbnf_named_parse_seplist_40__34__44__34__44_json_41_(
                                        builtin_state,
                                        builtin_tokens
                                    )
              if builtin_chk_is_err( rbnf_named__check_1 )
                  rbnf_named__check_1
              else
                  rbnf_tmp_1 = builtin_to_result( rbnf_named__check_1 )
                  rbnf_tmp_2 = builtin_match_tk( builtin_tokens, 7 )
                  if builtin_is_null( rbnf_tmp_2 )
                      builtin_mk_either_right(
                          builtin_to_any(
                              builtin_cons(
                                  (builtin_tokens.offset, "L ] not match"),
                                  builtin_nil
                              )
                          )
                      )
                  else
                      rbnf_tmp_1_ = json_8( rbnf_tmp_0, rbnf_tmp_1, rbnf_tmp_2 )
                      builtin_mk_either_left( rbnf_tmp_1_ )
                  end
              end
              end
            elseif __switch_target__ == 8
              let
              rbnf_named__check_1 = rbnf_named_parse_seplist_40__34__44__34__44_json_41_(
                                        builtin_state,
                                        builtin_tokens
                                    )
              if builtin_chk_is_err( rbnf_named__check_1 )
                  rbnf_named__check_1
              else
                  rbnf_tmp_1 = builtin_to_result( rbnf_named__check_1 )
                  rbnf_tmp_2 = builtin_match_tk( builtin_tokens, 7 )
                  if builtin_is_null( rbnf_tmp_2 )
                      builtin_mk_either_right(
                          builtin_to_any(
                              builtin_cons(
                                  (builtin_tokens.offset, "L ] not match"),
                                  builtin_nil
                              )
                          )
                      )
                  else
                      rbnf_tmp_1_ = json_8( rbnf_tmp_0, rbnf_tmp_1, rbnf_tmp_2 )
                      builtin_mk_either_left( rbnf_tmp_1_ )
                  end
              end
              end
            elseif __switch_target__ == 10
              let
              rbnf_named__check_1 = rbnf_named_parse_seplist_40__34__44__34__44_json_41_(
                                        builtin_state,
                                        builtin_tokens
                                    )
              if builtin_chk_is_err( rbnf_named__check_1 )
                  rbnf_named__check_1
              else
                  rbnf_tmp_1 = builtin_to_result( rbnf_named__check_1 )
                  rbnf_tmp_2 = builtin_match_tk( builtin_tokens, 7 )
                  if builtin_is_null( rbnf_tmp_2 )
                      builtin_mk_either_right(
                          builtin_to_any(
                              builtin_cons(
                                  (builtin_tokens.offset, "L ] not match"),
                                  builtin_nil
                              )
                          )
                      )
                  else
                      rbnf_tmp_1_ = json_8( rbnf_tmp_0, rbnf_tmp_1, rbnf_tmp_2 )
                      builtin_mk_either_left( rbnf_tmp_1_ )
                  end
              end
              end
            elseif __switch_target__ == 5
              let
              rbnf_named__check_1 = rbnf_named_parse_seplist_40__34__44__34__44_json_41_(
                                        builtin_state,
                                        builtin_tokens
                                    )
              if builtin_chk_is_err( rbnf_named__check_1 )
                  rbnf_named__check_1
              else
                  rbnf_tmp_1 = builtin_to_result( rbnf_named__check_1 )
                  rbnf_tmp_2 = builtin_match_tk( builtin_tokens, 7 )
                  if builtin_is_null( rbnf_tmp_2 )
                      builtin_mk_either_right(
                          builtin_to_any(
                              builtin_cons(
                                  (builtin_tokens.offset, "L ] not match"),
                                  builtin_nil
                              )
                          )
                      )
                  else
                      rbnf_tmp_1_ = json_8( rbnf_tmp_0, rbnf_tmp_1, rbnf_tmp_2 )
                      builtin_mk_either_left( rbnf_tmp_1_ )
                  end
              end
              end
            elseif __switch_target__ == 11
              let
              rbnf_named__check_1 = rbnf_named_parse_seplist_40__34__44__34__44_json_41_(
                                        builtin_state,
                                        builtin_tokens
                                    )
              if builtin_chk_is_err( rbnf_named__check_1 )
                  rbnf_named__check_1
              else
                  rbnf_tmp_1 = builtin_to_result( rbnf_named__check_1 )
                  rbnf_tmp_2 = builtin_match_tk( builtin_tokens, 7 )
                  if builtin_is_null( rbnf_tmp_2 )
                      builtin_mk_either_right(
                          builtin_to_any(
                              builtin_cons(
                                  (builtin_tokens.offset, "L ] not match"),
                                  builtin_nil
                              )
                          )
                      )
                  else
                      rbnf_tmp_1_ = json_8( rbnf_tmp_0, rbnf_tmp_1, rbnf_tmp_2 )
                      builtin_mk_either_left( rbnf_tmp_1_ )
                  end
              end
              end
            elseif __switch_target__ == 7
              let
              rbnf_tmp_1 = builtin_mv_forward( builtin_tokens )
              rbnf_tmp_1_ = json_4( rbnf_tmp_0, rbnf_tmp_1 )
              builtin_mk_either_left( rbnf_tmp_1_ )
              end
            elseif __switch_target__ == 6
              let
              rbnf_named__check_1 = rbnf_named_parse_seplist_40__34__44__34__44_json_41_(
                                        builtin_state,
                                        builtin_tokens
                                    )
              if builtin_chk_is_err( rbnf_named__check_1 )
                  rbnf_named__check_1
              else
                  rbnf_tmp_1 = builtin_to_result( rbnf_named__check_1 )
                  rbnf_tmp_2 = builtin_match_tk( builtin_tokens, 7 )
                  if builtin_is_null( rbnf_tmp_2 )
                      builtin_mk_either_right(
                          builtin_to_any(
                              builtin_cons(
                                  (builtin_tokens.offset, "L ] not match"),
                                  builtin_nil
                              )
                          )
                      )
                  else
                      rbnf_tmp_1_ = json_8( rbnf_tmp_0, rbnf_tmp_1, rbnf_tmp_2 )
                      builtin_mk_either_left( rbnf_tmp_1_ )
                  end
              end
              end
            else
              let
                builtin_mk_either_right(
                    builtin_to_any(
                        builtin_cons(
                            (rbnf_named__off_1, "json lookahead failed"),
                            builtin_nil
                        )
                    )
                )
              end
            end
            end
        else
            builtin_mk_either_right(
                builtin_to_any(
                    builtin_cons(
                        (rbnf_named__off_1, "json got EOF"),
                        builtin_nil
                    )
                )
            )
        end
        end
      else
        let
          builtin_mk_either_right(
              builtin_to_any(
                  builtin_cons(
                      (rbnf_named__off_0, "json lookahead failed"),
                      builtin_nil
                  )
              )
          )
        end
      end
      end
  else
      builtin_mk_either_right(
          builtin_to_any(
              builtin_cons( (rbnf_named__off_0, "json got EOF"), builtin_nil )
          )
      )
  end
end
@noinline function rbnf_named_parse_jsonpair(builtin_state, builtin_tokens)
  rbnf_tmp_0 = builtin_match_tk( builtin_tokens, 0 )
  if builtin_is_null( rbnf_tmp_0 )
      builtin_mk_either_right(
          builtin_to_any(
              builtin_cons(
                  (builtin_tokens.offset, "N str not match"),
                  builtin_nil
              )
          )
      )
  else
      rbnf_tmp_1 = builtin_match_tk( builtin_tokens, 1 )
      if builtin_is_null( rbnf_tmp_1 )
          builtin_mk_either_right(
              builtin_to_any(
                  builtin_cons(
                      (builtin_tokens.offset, "L : not match"),
                      builtin_nil
                  )
              )
          )
      else
          rbnf_named__check_2 = rbnf_named_parse_json(
                                    builtin_state,
                                    builtin_tokens
                                )
          if builtin_chk_is_err( rbnf_named__check_2 )
              rbnf_named__check_2
          else
              rbnf_tmp_2 = builtin_to_result( rbnf_named__check_2 )
              rbnf_tmp_1_ = jsonpair_0( rbnf_tmp_0, rbnf_tmp_1, rbnf_tmp_2 )
              builtin_mk_either_left( rbnf_tmp_1_ )
          end
      end
  end
end
@noinline function rbnf_named_parse_seplist_40__34__44__34__44_json_41_(builtin_state,
                                                                        builtin_tokens)
  rbnf_named__check_0 = rbnf_named_parse_json( builtin_state, builtin_tokens )
  if builtin_chk_is_err( rbnf_named__check_0 )
      rbnf_named__check_0
  else
      rbnf_tmp_0 = builtin_to_result( rbnf_named__check_0 )
      rbnf_tmp_1_ = seplist_40__34__44__34__44_json_41__0( rbnf_tmp_0 )
      rbnf_named_lr_loop_seplist_40__34__44__34__44_json_41_(
          rbnf_tmp_1_,
          builtin_state,
          builtin_tokens
      )
  end
end
@noinline function rbnf_named_parse_seplist_40__34__44__34__44_jsonpair_41_(builtin_state,
                                                                            builtin_tokens)
  rbnf_named__check_0 = rbnf_named_parse_jsonpair(
                            builtin_state,
                            builtin_tokens
                        )
  if builtin_chk_is_err( rbnf_named__check_0 )
      rbnf_named__check_0
  else
      rbnf_tmp_0 = builtin_to_result( rbnf_named__check_0 )
      rbnf_tmp_1_ = seplist_40__34__44__34__44_jsonpair_41__0( rbnf_tmp_0 )
      rbnf_named_lr_loop_seplist_40__34__44__34__44_jsonpair_41_(
          rbnf_tmp_1_,
          builtin_state,
          builtin_tokens
      )
  end
end