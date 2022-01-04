module tbnf.MacroResolve
open Utils
open Grammar
open Exceptions

let rec toPositionIndependent (term: symbol) =
    match term with
    | Nonterm _ | Term _ -> term
    | Macrocall(name, syms, _) ->
        Macrocall(name, List.map toPositionIndependent syms, position.Fake)
    
let rec toPositionIndependentString (term: symbol) =
    match term with
    | Term(define, true)  -> escapeString define
    | Term(define, false) -> "<" + define + ">"
    | Nonterm n -> n
    | Macrocall(n, syms, _) ->
        sprintf "%s(%s)" n <| String.concat "," (List.map toPositionIndependentString syms)

let resolve_macro(setPos : position -> unit) (stmts: definition array) =
    let mutable macro_defs = Map.empty
    let mutable stmts_to_solve = []
    let mutable fixed_stmts = []
    for each in stmts do
        match each with
        | Defmacro decl ->
            macro_defs <- Map.add decl.lhs decl macro_defs
        | Defrule decl ->
            let scope = Map.empty
            // printfn "adding %s" decl.lhs
            stmts_to_solve <- (decl, scope) :: stmts_to_solve
        | _ ->
            fixed_stmts <- each :: fixed_stmts
    // printfn "solving..."
    // stmts_to_solve 
    // |> List.map (fun (x, _) -> x.lhs)
    // |> printfn "%A"

    let fixedPoint = fun () ->
        let mutable stmts_to_solve = stmts_to_solve
        let mutable final_results = []
        let mutable solved = Map.empty

        
        let rec solve_specialization (decl : {| define: list<position * production> ; lhs : string ; pos: position |}, scope: Map<string, symbol>) =
            let mutable define = 
                [ for (pos, case) in decl.define do
                    setPos pos
                    yield pos, { 
                        symbols = List.map (fun x -> solve_sym x scope) case.symbols;
                        action = case.action.DeepCopy() }
                ]
            // if decl.lhs = "nempty_list[stat]" then
            //     printfn "inst 2"
            //     printfn "%A" scope
            //     for (_, each) in define do
            //         each.symbols
            //         |> List.map (fun x -> x.Inspect())
            //         |> String.concat " "
            //         |> printfn "%s"
            // printfn "adding %s" decl.lhs
            final_results <- Defrule {| decl with define = define |} :: final_results
            
        
        and solve_sym (sym: symbol) (scope: Map<string, symbol>) =
            match sym with
            | Term _ -> sym
            | Nonterm n ->
                match Map.tryFind n scope with
                | Some v -> v
                | None ->
                    // printfn "found no subst for %A" n
                    sym
            | Macrocall(n, args, pos) ->
            
            setPos pos
            
            let args = [for arg in args -> solve_sym arg scope]
            let mutable sym = Macrocall(n, args, pos) 
            let key = toPositionIndependent sym
            
            match Map.tryFind key solved with
            | Some resolved_name -> resolved_name
            | None ->
                match Map.tryFind n macro_defs with
                | None ->
                    let msg = $"macro definition {n} not found."
                    raise <| MacroResolveError msg
                | Some macro_def ->
                    let parameters = macro_def.parameters
                    if List.length parameters <> List.length args then
                        let str_parameters = String.concat ", " parameters
                        let msg = $"macro {n} expects {parameters.Length} argument(s): ({str_parameters}); got {args.Length}"
                        raise <| MacroResolveError msg
                    
                    let scope' =  List.map2 (fun k v -> k, v) parameters args
                                 |> Map.ofList
                    let mutable resolved_name = toPositionIndependentString sym
                    
                    solved <- Map.add key resolved_name solved
                    // if resolved_name = "nempty_list[stat]" then
                    //     printfn "inst 1"
                    //     printfn "%A" args
                    //     printfn "old scope: %A" scope
                    //     printfn "new scope: %A" scope'
                    
                    stmts_to_solve <- ({| lhs = resolved_name; define = macro_def.define; pos = pos |}, scope') :: stmts_to_solve
                    // printfn "%s" resolved_name
                    resolved_name
            |> fun resolved_name -> Nonterm(resolved_name)
            
        
        while not (List.isEmpty stmts_to_solve) do
            let decl = List.head stmts_to_solve
            stmts_to_solve <- List.tail stmts_to_solve
            solve_specialization decl
        
        final_results

    let final_results = fixedPoint ()
    // for each in final_results do
    //     printfn "%s\n" <| each.Inspect()


    let fixed_stmts = List.rev fixed_stmts
    Array.ofList (fixed_stmts @ final_results)