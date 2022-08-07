module tbnf.Backends.JuliaFFF.FrontendForFree

open tbnf.Exceptions
open tbnf.Grammar
open tbnf.Backends.Common.ListBuilder

// https://github.com/thautwarm/frontend-for-free/blob/91862a8a2e99edf1b62f469feb8e6e4030b7cdcf/src/RBNF/Constructs.hs#L48
type FFFSpec =
    | FFFCTerm of string
    | FFFCNonTerm of string

type FFFCSeq = FFFCSeq of list<FFFSpec>

let rec isNotDirectRecursive (n: string) (spec: FFFSpec) =
    match spec with
    | FFFCTerm _ -> true
    | FFFCNonTerm n' -> n <> n'

type FFFMLang =
    | FFFMTerm of string
    | FFFMApp of FFFMLang * list<FFFMLang>
    | FFFMSlot of int

type FFFProd = FFFProd of string * FFFCSeq * FFFMLang * definition

// passing Sigma is for generating user-friendly error report
type EpsilonElimination(grammar: FFFProd list, Sigma: tbnf.Analysis.Sigma) =
    let mutable defs =
        grammar
        |> List.groupBy (function
            | FFFProd (name, spec, lang, _) -> name)
        |> Map.ofSeq
        |> System.Collections.Generic.Dictionary


    let rec is_recursive_spec (n: string, prod: FFFSpec) : bool =
        match prod with
        | FFFCTerm _ -> true
        | FFFCNonTerm n' when n = n' -> false
        | FFFCNonTerm _ -> true

    let is_recursive_prod (n: string, prod: FFFProd) : bool =
        let (FFFProd (_, FFFCSeq specs, _, _)) = prod
        List.forall (fun spec -> is_recursive_spec (n, spec)) specs

    let is_recursive (nonterm_name: string) : bool =
        let branches = defs.[nonterm_name]
        List.forall (fun branch -> is_recursive_prod (nonterm_name, branch)) branches

    let is_not_direct_recursive (nonterm_name: string) : bool =
        defs.[nonterm_name]
        |> List.forall (function
            | FFFProd (_, FFFCSeq specs, _, _) -> 
                List.forall (fun spec -> isNotDirectRecursive nonterm_name spec) specs)

    let get_shallow_optional (nonterm_name: string) =
        let mutable optionalSA: (int * FFFMLang) option = None
        let mutable i = 0

        for (FFFProd (_, FFFCSeq specs, lang, decl)) in defs.[nonterm_name] do
            Sigma.SetCurrentDefinition decl
            if List.isEmpty specs then
                match optionalSA with
                | Some _ -> raise <| MultipleEpsilonRules nonterm_name
                | None -> optionalSA <- Some(i, lang)

            i <- i + 1

        optionalSA

    let removeEpsilonBranch (nonterm_name: string, epsId: int) =
        let lst = defs.[nonterm_name]

        match List.removeAt epsId lst with
        | [] -> ignore (defs.Remove(nonterm_name))
        | removed -> defs.[nonterm_name] <- removed

    let rec reviseSlot (slotSubst: FFFMLang list, mlang: FFFMLang) =
        match mlang with
        | FFFMTerm _ -> mlang
        | FFFMApp (f, args) -> FFFMApp(reviseSlot (slotSubst, f), List.map (fun x -> reviseSlot (slotSubst, x)) args)
        | FFFMSlot i -> slotSubst.[i - 1]

    let substituteEpsilonOccurrrencesForProd
        (
            replaces: System.Collections.Generic.Dictionary<string, int * FFFMLang>,
            prod: FFFProd
        ) =
        let (FFFProd (n, FFFCSeq specs, lang, src_def)) = prod
        let computeSubsChance (substs: (int * FFFSpec list * FFFMLang list) list) (spec: FFFSpec) =
            match spec with
            | FFFCNonTerm n when replaces.ContainsKey n ->
                let elimined = snd (replaces.[n])
                substs
                |> List.collect(fun (i, specs, subst) ->
                    if defs.ContainsKey n then
                        [i + 1, spec::specs, FFFMSlot (i + 1) :: subst; i, specs, elimined::subst]
                    else
                        [i, specs, elimined::subst])
            | _ -> List.map (fun (i, specs, subst) -> (i + 1, spec::specs, FFFMSlot (i + 1) :: subst)) substs
        
        let rec computeSubsChances (substs: (int * FFFSpec list * FFFMLang list) list) (specs: FFFSpec list) =
            match specs with
            | [] -> substs
            | hd::tl ->
                computeSubsChances (computeSubsChance substs hd) tl

        let substs = computeSubsChances [(0, [], [])] specs
        [ for (n_hold, new_specs, subst) in substs -> 
            if n_hold = List.length specs then
                FFFProd(n, FFFCSeq specs, lang, src_def)
            else
                FFFProd(n, FFFCSeq(List.rev new_specs), reviseSlot(List.rev subst, lang), src_def) ]

    let substituteEpsilonOccurrrences (replaces: System.Collections.Generic.Dictionary<string, int * FFFMLang>) =
        let iter_defs = Array.ofSeq defs

        for KeyValue (lhs, prods) in iter_defs do
            defs.[lhs] <- 
                tbnf.Backends.Common.uniqueList <|
                    List.collect (fun prod -> substituteEpsilonOccurrrencesForProd (replaces, prod)) prods

    let fixPointSolve () =
        let mutable changed = true

        while changed do
            changed <- false
            printfn "resolving epsilon rules..."
            let replaces = System.Collections.Generic.Dictionary<string, (int * FFFMLang)>()

            for KeyValue (n, _) in defs do
                if is_not_direct_recursive n then
                    match get_shallow_optional n with
                    | None -> ()
                    | Some lang ->
                        replaces.[n] <- lang
                        changed <- true

            for KeyValue (nonterm_name, (epsId, _)) in replaces do
                removeEpsilonBranch (nonterm_name, epsId)

            substituteEpsilonOccurrrences (replaces)

    member this.Solve() =
        fixPointSolve ()
        List.ofSeq <| Seq.collect id defs.Values

let elimEpsilon sigma xs = EpsilonElimination(xs, sigma).Solve()
