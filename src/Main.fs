module tbnf.Main
open Grammar
open Analysis


let x = EInt 5
let z = definition.Defrule {|
    define = []; pos = {line = 0; col=0; filename=""}; lhs="2"

|}

let main (a: int, b: int, c: int) =
    printfn "%d" <| a + b / c
    let x = build_analyzer [|definition.Defrule {| lhs="Float"; define = []; pos = {line = 0; col=0; filename=""} |}|]
    
    [| 1; 2; 3; 4|]

