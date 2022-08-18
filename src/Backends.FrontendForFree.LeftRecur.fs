module tbnf.Backends.FrontendForFree.LeftRecur
open tbnf.Exceptions

/// <summary>
/// A graph representing the parsing states with left recursions eliminated.
/// </summary>
type DeLRNode = {
    leftRecursionRules: FFFProd list;
    normalRules: FFFProd list
}

let rec reviseSlot (slotSubst: FFFMLang list, mlang: FFFMLang) =
    match mlang with
    | FFFMTerm _ -> mlang
    | FFFMApp (f, args) -> FFFMApp(reviseSlot (slotSubst, f), List.map (fun x -> reviseSlot (slotSubst, x)) args)
    | FFFMSlot i -> slotSubst.[i - 1]

let rec inlineFirst (prodDest: FFFProd, prodFirst: FFFProd) =
    let (FFFProd (n1, FFFCSeq specsDest, langDest, declDest)) = prodDest
    let (FFFProd (n2, FFFCSeq specsSrc, langSrc, declSrc)) = prodFirst
    match specsDest with
    | FFFCNonTerm n' :: _ when n' = n2 -> ()  // fine
    | _ ->
        failwithf "inlineFirst: %s is not the first nonterm in %s" n2 n1
    let slotSubst = [for i = 1 to List.length specsDest - 1 -> FFFMSlot (i + List.length specsSrc)]


let mergeManyDeLRNodes (nodes) =
    let folder (node1: DeLRNode) (node2: DeLRNode) =
        { leftRecursionRules = node1.leftRecursionRules @ node2.leftRecursionRules;
          normalRules = node1.normalRules @ node2.normalRules;
        }
    let node = List.fold folder {leftRecursionRules = []; normalRules = []} nodes
    {leftRecursionRules = List.distinct node.leftRecursionRules; normalRules = List.distinct node.normalRules}

type DeLRGraph(nodes: Map<string, FFFProd list>, sigma: tbnf.Analysis.Sigma) =
    let graphBuilder = System.Collections.Generic.Dictionary<string, DeLRNode>()

    let expandLRItems (specs::FFFSpec list): DeLRNode list =

    let expandLR (prod: FFFProd): DeLRNode list =
        let (FFFProd(_, FFFCSeq specs, _, _)) = prod
        match specs with
        | hd::tl -> 
    let findReferencedRules (prod: FFFProd): string Set =
        let (FFFProd(_, FFFCSeq specs, _, _)) = prod
        Set.ofSeq <| seq {
            for spec in specs do
            match spec with
            | FFFCTerm _ -> ()
            | FFFCNonTerm n -> yield n
        }
    let fixedPoint () =
        let queue = System.Collections.Generic.Queue ["start"]
        let seenRules = System.Collections.Generic.HashSet<string> []
        while queue.Count > 0 do
            let sym = queue.Dequeue()
            if seenRules.Contains sym then ()
            else
            ignore (seenRules.Add sym)
            match Map.tryFind sym nodes with
            | None -> failwith "fatal: impossible: nonterminal not found error"
            | Some prods ->
                graphBuilder.[sym] <- mergeManyDeLRNodes  <| List.collect expandLR prods
                (List.map findReferencedRules prods)
                |> Set.unionMany
                |> Seq.iter (queue.Enqueue >> ignore)

