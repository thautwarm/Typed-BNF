module tbnf.Unification
open Grammar
open Exceptions
type Manager() =
    
    let newTyRef (name: string) =
        let cell = Cell()
        let tref = TRef(cell)
        tref
    
    let rec occur_in (r: Cell<monot>) (other: monot) =
        match other with
        | TRef a when obj.ReferenceEquals(a, r) -> true
        | a ->  a.FindAnyChildren (occur_in r)

    
    // equality by length of list
    let (@=@) a b = List.length a = List.length b
    
    let rec unify (l: monot) (r: monot) =
        let l = l.Prune()
        let r = r.Prune()
        match l, r with
        | TRef cell, _ ->
            if l = r then ()
            elif occur_in cell r then
                raise <| IllFormedType(l, r)
            else
                cell.Set r
        | _, TRef _ -> unify r l
        | TConst a, TConst b when a = b -> ()
        | TVar a, TVar b when a = b -> ()
        | TApp(x, xs), TApp(y, ys) when xs @=@ ys ->
            unify x y
            List.iter2 unify xs ys
        | TFun(xs, x), TFun(ys, y) when xs @=@ ys ->
            List.iter2 unify xs ys
            unify x y
        | _ -> raise <| TypeMismatch(l, r)
    
    
    // instantiate a polytype,
    // return a list of specialized type arguments, and 
    // the instantiated monotype.
    // if the input is of (Mono monot), return ([], monot)
    
    let instantiate (t: polyt): monot list * monot =
        match t with
        | Mono t | Poly([], t) -> [], t
        | Poly(vars, t) -> (* todo: check duplication *)
            vars
            |> List.map (fun var -> var, newTyRef(var))
            |> fun specializationArgs ->
            Map.ofList specializationArgs
            |> fun replaceMap ->
            let rec instantiate t = 
                match t with
                | TVar a ->
                    match Map.tryFind a replaceMap with
                    | None -> raise <| UnboundTypeVariable a
                    | Some t -> t
                | a -> a.TransformChildren instantiate
            let _, specializationArgs = List.unzip specializationArgs
            specializationArgs, instantiate t
                
    
    member __.Instantiate(t: polyt) = instantiate t
    member __.Unify (l: monot) (r:monot) = unify l r
    member __.NewTyRef (s: string) = newTyRef s
    member __.CellRepr (cell: Cell<monot>) =
        // let a = ref ""
        // if tyEnv.TryGetValue(cell, a) then a.Value
        invalidOp <| "access repr of unknown typeref."
