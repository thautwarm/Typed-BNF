module tbnf.Op
open Grammar
open Exceptions

(* get basename of type; use for field accessing *)
let rec basename (t: monot) =
    match t with
    | TConst a -> a
    | TFun _ | TRef _ | TVar _ -> raise <| NoBaseName t
    | TApp(f, _) -> basename f



