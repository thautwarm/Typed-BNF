(* this module implements how errors are rendered in Typed BNF *)
module tbnf.ErrorReport

open tbnf.Exceptions
open tbnf.Grammar
open tbnf.Inspect

type result<'a, 'b> =
    | Ok of 'a
    | Err of 'b

let showExpr (e: expr): string = failwith ""

let filter_error<'a> (errorTrace: ErrorTrace) (action: unit -> 'a) =
    try
      Ok (action())
    with
    | IllFormedType(t1, t2) ->
        let t1 = t1.Prune() |> inspectMonoType
        let t2 = t2.Prune() |> inspectMonoType
        Err $"recursive types are invalid: {t1} ~ {t2}"

    | TypeUnexpected(got, expected) ->
        let got = got.Prune() |> inspectMonoType
        let expected = expected.Prune() |> inspectMonoType
        Err $"expected {got} ~ {expected}"


