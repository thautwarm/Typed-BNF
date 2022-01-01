module tbnf.Analysis

open Grammar
open Exceptions
open Utils


type typename = string
type fieldname = string
type identifier = string
type nonterminalName = string

type Shape =
    { parameters: string list
      fields: Map<fieldname, monot> }

type Sigma(UM: Unification.Manager) =
    (* to access field information *)
    let mutable shapes: Map<typename, Shape> = Map.empty

    (* kind information of typename *)
    let mutable kinds: Map<typename, int> = Map.ofArray _predefined_typenames

    (* external global variables *)
    let mutable global_variables: Map<identifier, polyt> = Map.empty
    (* constructor global variables *)
    let mutable constructors: Set<identifier> = Set.empty
    
    let mutable externalTypes : Set<typename> = Set.empty
    
    let mutable adtCases : list<typename * Map<string, (string * monot) list>> = []
        
    let rec checkKind_ (t: monot) =
        let t = t.Prune()
        match t with
        | TConst typename ->
            match Map.tryFind typename kinds with
            | None -> raise <| UnboundTypeVariable(typename)
            | Some 0 -> ()
            | Some kind -> 
                let got = 0
                if kind >= 0 && kind <> got then
                    raise
                    <| InvalidKind
                        {| name = typename
                           got = got
                           expect = kind |}
        | TApp (TConst typename, args) ->
            match Map.tryFind typename kinds with
            | None -> raise <| UnboundTypeVariable(typename)
            | Some kind ->
                let got = List.length args
                if kind >= 0 && kind <> got then
                    raise
                    <| InvalidKind
                        {| name = typename
                           got = got
                           expect = kind |}
                List.iter checkKind_ args
        | TApp (f, _) -> raise <| InvalidTypeApplication(f)
        | a -> a.ApplyToChildren checkKind_
    
    let registerType typename (kind: int) =
        if Map.containsKey typename kinds then
            raise <| DuplicateTypeVariable(typename)
        else
            kinds <- Map.add typename kind kinds
    
    let addCase (typename: typename) ctorName t =
        if Set.contains typename externalTypes then
            raise <| InvalidConstructorDefinination CauseExternalType
        match Map.tryFind typename shapes with
        | Some { fields = fields } when Map.count fields <> 0 ->
            raise <| InvalidConstructorDefinination CauseRecordType
        | Some { parameters = _::_ } ->
            raise <| InvalidConstructorDefinination CauseGenericADTType
        | None ->
            registerType typename 0
            shapes <- Map.add typename {fields = Map.empty; parameters = []} shapes
        | _ -> ()
        
        adtCases <-
            adtCases
            |> List.replaceWith typename (function
                | None -> Map.ofArray [|ctorName, t|]
                | Some cases when Map.containsKey ctorName cases -> 
                    raise <| InvalidConstructorDefinination (CauseDuplicateConstructorName ctorName)
                | Some cases ->
                    Map.add ctorName t cases)
            
    let defineShape external typename parameters (fields: list<fieldname * monot>) =
        if Map.containsKey typename shapes then
            raise <| DuplicateTypeVariable(typename)
        else
            match Map.tryFind typename kinds with
            | Some kind ->
                let got = List.length parameters

                if kind >= 0 && got <> kind then
                    raise
                    <| InvalidKind
                        {| name = typename
                           got = List.length parameters
                           expect = kind |}
            | None -> registerType typename parameters.Length
            if external then
                externalTypes <- Set.add typename externalTypes
            shapes <-
                shapes
                |> Map.add
                    typename
                    { fields = Map.ofSeq fields
                      parameters = parameters }

    // return a pair: (a:polyt, b:monot) such that
    //       INST(a) ~ b
    let lookupField t fieldname (tyref: monot) =
        let typename = Op.basename t

        match Map.tryFind typename shapes with
        | None -> raise <| UnboundTypeVariable(typename)
        | Some shape ->
            match Map.tryFind fieldname shape.fields with
            | None -> raise <| NoField(t, fieldname)
            | Some ft ->
                let inst_target = TTuple([ t; tyref ])

                let gen_sig =
                    TApp(TConst typename, shape.parameters |> List.map TVar)

                let gen_spec =
                    Poly(shape.parameters, TTuple([ gen_sig; ft ]))

                UM.Instantiate(gen_spec)
                |> snd
                |> UM.Unify inst_target

                checkKind_ (inst_target)

                tyref.Prune()
    
    let registerExtGVar varname (t: polyt) =
        if Map.containsKey varname global_variables then
            raise <| DuplicateVariable(varname)
        else
            global_variables <- Map.add varname t global_variables
    
    let registerCtorGVar varname (t: monot) =
        if Map.containsKey varname global_variables then
            raise <| DuplicateVariable(varname)
        else
            global_variables <- Map.add varname (Mono t) global_variables
            constructors <- Set.add varname constructors
            match t with
            | TFun(args, TConst typename) ->
                addCase typename varname args
            | _ -> raise <| InvalidConstructorDefinination (CauseInvalidConstructorType t)
            
    member __.KindCheck(t: monot) =
        checkKind_ t
        t

    member __.KindCheckMono(t: monot) = __.KindCheck(t)

    member __.KindCheck(t: polyt) =
        match t with
        | Poly (_, a) ->
            checkKind_ a
            t
        | Mono a ->
            checkKind_ a
            t

    member __.RegisterType external typename parameters fields = defineShape external typename parameters fields

    member __.RegisterExtGVar ident t = registerExtGVar ident t
        
    member __.RegisterCtorGVar ident t = registerCtorGVar ident t

    member __.LookupField t field =
        let ty_field_ref = UM.NewTyRef("." + field)
        lookupField t field ty_field_ref
    
    member __.GlobalVariables = global_variables
    
    member __.IsGlobalVariableConstructor varname =
            if Map.containsKey varname global_variables then
                Set.contains varname constructors
            else
                raise <| NotGlobalVariable varname

    member __.GetADTCases() = adtCases
    
    member __.GetRecordTypes() =
        shapes
        |> Map.toArray
        |> Array.filter (fst >> (fun x -> Set.contains x externalTypes))

and Gamma = Map<string, polyt>

type Analyzer = {
    mutable UM : Unification.Manager;
    mutable Sigma : Sigma;
    mutable currentPos : position;
    mutable Omega : Map<nonterminalName, monot>;
    mutable LiteralTokens: string Set;
    mutable ReferencedNamedTokens : string Set;
    mutable TokenFragments: string array;
    // mutable FragmentDefinitions: Map<string, lexerule>;
    mutable IgnoreSet: string Set;
}

let build_analyzer(stmts: definition array) =
    let UM = Unification.Manager()
    let Sigma = Sigma(UM)
    let mutable currentPos = Unchecked.defaultof<position>

    (* from grammar nonterminal to monot *)
    let mutable Omega: Map<nonterminalName, monot> = Map.empty

    // [implemention details]
    let mutable LiteralTokens: string Set = Set.empty
    let mutable ReferencedNamedTokens: string Set = Set.empty
    let mutable TokenFragments: string list = []
    let mutable IgnoreSet : string Set = Set.empty

    (* check toplevel definitions, filter out nonterminal rules  *)
    let pre_process (stmt: definition) =
        match stmt with
        | definition.Defignore decl ->
            currentPos <- decl.pos
            for each in decl.ignoreList do
                ReferencedNamedTokens <- Set.add each IgnoreSet
                IgnoreSet <- Set.add each IgnoreSet

        | definition.Declvar decl ->
            currentPos <- decl.pos

            Sigma.KindCheck decl.t
            |> Sigma.RegisterExtGVar decl.ident
        | definition.Declctor decl ->
            currentPos <- decl.pos

            Sigma.KindCheck decl.t
            |> Sigma.RegisterCtorGVar decl.ident
            // |> Sigma.RegisterGlobalVariable true decl.ident
        
        | definition.Decltype decl ->
            currentPos <- decl.pos
            let fields = List.map (fun (k, v, _) -> k, v)  decl.fields
            Sigma.RegisterType decl.external decl.ident decl.parameters fields
            for fieldname, t, pos in decl.fields do
                currentPos <- pos
                ignore(Sigma.KindCheckMono t)
        
        | definition.Defmacro _ -> invalidOp "macro definition must be processed before type checking"
        | definition.Defrule decl when Map.containsKey decl.lhs Omega -> raise <| DuplicateNonterminal(decl.lhs)
        | definition.Defrule decl ->
            let nt = UM.NewTyRef("'" + decl.lhs)
            Omega <- Map.add decl.lhs nt Omega
        | definition.Deflexer decl when List.contains decl.lhs TokenFragments -> raise <| DuplicateLexer(decl.lhs)
        | definition.Deflexer decl -> TokenFragments <- decl.lhs :: TokenFragments

    // see \vdash_p in the paper
    let infer_p (s: symbol) =
        match s with
        | symbol.Macrocall _ -> raise <| invalidOp "macrocall not processed"
        | symbol.Term(define, is_literal) ->
            let n = define
            if is_literal then
                LiteralTokens <- Set.add n LiteralTokens
            else if not <| List.contains n TokenFragments then
                raise <| UnboundLexer(n)
            else
                ReferencedNamedTokens <- Set.add n ReferencedNamedTokens

            TConst_token
        | symbol.Nonterm name when Map.containsKey name Omega -> Omega.[name]
        | symbol.Nonterm name -> raise <| UnboundNonterminal(name)

    let rec infer_e (s_Gamma: Gamma) (S: monot list) (e: expr) =
        currentPos <- e.pos

        match e.node with
        | node.ETuple elts ->
            elts
            |> List.map (fun elt -> infer_e s_Gamma S elt)
            |> fun elts ->
                { node = node.ETuple elts
                  t = TTuple(List.map (fun x -> x.t) elts)
                  pos = e.pos }
        | node.EVar (v, specialization_args_ref) ->
            match Map.tryFind v s_Gamma with
            | None -> raise <| UnboundVariable(v)
            | Some t ->
                let spec_args, t_inst = UM.Instantiate t
                specialization_args_ref.Value <- spec_args
                { e with t = t_inst }
        | node.EStr _ -> { e with t = TConst_str }
        | node.EInt _ -> { e with t = TConst_int }
        | node.EBool _ as n -> { e with t = TConst_bool }
        | node.EFlt _ -> { e with t = TConst_float }
        | node.ELet (name, value, body) ->
            let value = infer_e s_Gamma S value
            let s_Gamma = Map.add name (Mono value.t) s_Gamma
            let body = infer_e s_Gamma S body

            { node = node.ELet(name, value, body)
              t = body.t
              pos = e.pos }
        | node.EList elts ->
            let t_r = UM.NewTyRef("list")

            elts
            |> List.map (fun elt -> infer_e s_Gamma S elt)
            |> fun elts ->
                { node = node.EList elts
                  t = TList(t_r.Prune())
                  pos = e.pos }
        | node.ESlot i ->
            match List.tryItem (i - 1) S with
            | Some t_slot -> { e with t = t_slot }
            | None -> raise <| ComponentAccessingOutOfBound i
        | node.EApp (f, args) ->
            let { t = t_f } as f = infer_e s_Gamma S f
            let args = args |> List.map (fun expr -> infer_e s_Gamma S expr)
            let t_args = List.mapi (fun i x -> $"arg{i}", x.t) args
            let t_r = UM.NewTyRef("@ret")
            UM.Unify t_f <| TFun(t_args, t_r)
            let _ = Sigma.KindCheckMono <| t_f.Prune()

            { node = EApp(f, args)
              pos = e.pos
              t = t_r.Prune() }

        | node.EField (value, fieldname) ->
            let value = infer_e s_Gamma S value
            let t_field = Sigma.LookupField value.t fieldname

            { node = node.EField(value, fieldname)
              t = t_field
              pos = e.pos }

        | node.EFun (ann_args, body) ->
            let s_Gamma =
                ann_args
                |> List.fold
                    (fun state (varname, t_arg: monot) -> Map.add varname (Mono <| Sigma.KindCheck t_arg) state)
                    s_Gamma

            let body = infer_e s_Gamma S body
            let t_args = ann_args

            { node = EFun(ann_args, body)
              t = TFun(t_args, body.t)
              pos = e.pos }

    let check_productions(lhs: string, define: (position * production) list) =
        // assured by preprocessing
        let t = Omega.[lhs]
        for (pos, production) in define do
            currentPos <- pos
            let S = List.map infer_p production.symbols
            let action = infer_e Sigma.GlobalVariables S production.action
            UM.Unify action.t t
            production.action <- action
    
    let rec check_lexerule(x: lexerule) =
        match x with
        | LNot _ | LRange _ | LNumber | LWildcard | LStr _ -> ()
        | LSeq seq | LOr seq -> List.iter check_lexerule seq
        | LGroup l | LOptional l | LStar l | LPlus l -> check_lexerule l
        | LRef n when List.contains n TokenFragments -> ()
        | LRef n -> raise <| UnboundLexer(n)
    
    let main() =
        let stmts = MacroResolve.resolve_macro (fun x -> currentPos <- x) stmts
        
        for stmt in stmts do
            pre_process stmt
        
        for stmt in stmts do
            match stmt with
            | Defrule decl ->
                currentPos <- decl.pos
                check_productions(decl.lhs, decl.define)
            | Deflexer decl ->
                currentPos <- decl.pos
                check_lexerule decl.define
            // | Declvar decl when decl.isConstructor ->
            //     Sigma.KindCheck(decl.t)
            | _ -> ()
        
        stmts, { 
            UM = UM;
            IgnoreSet = IgnoreSet;
            // FragmentDefinitions = FragmentDefinitions;
            TokenFragments = Array.rev (Array.ofList TokenFragments);
            ReferencedNamedTokens = ReferencedNamedTokens;
            LiteralTokens = LiteralTokens;
            Omega = Omega;
            currentPos = currentPos;
            Sigma = Sigma
        }
    
    try
        main()
    with e ->
        printfn "line %d, column %d, file: %s\n%A"
                currentPos.line
                currentPos.col
                currentPos.filename
                e
        invalidOp "exit with error"