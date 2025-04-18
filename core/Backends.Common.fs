module tbnf.Backends.Common

open Fable.Sedlex.PrettyDoc
open tbnf.Analysis
open tbnf.Grammar
open tbnf.Utils

type Filename = string

type CodeGenOptions =
    (* user customized *)
    abstract rename_var: (string -> string) option
    abstract rename_type: (string -> string) option
    abstract rename_ctor: (string -> string) option
    abstract rename_field: (string -> string) option

    // used by ocaml-menhir; specify the **qualified** type of start rule.
    abstract start_rule_qualified_type: string option

    // extensibly registered at python side; for RTS files or other static resources
    abstract request_resource: string -> string


module NameMangling =
    open System.Text
    type nameEnv = { mutable usedNames: string Set }

    type IdentifierDescriptor =
        { isValidChar: int -> char -> bool
          charToValid: int -> char -> string
          nameEnv: nameEnv }

        static member Create(isValidChar, charToValid) =
            { isValidChar = isValidChar
              charToValid = charToValid
              nameEnv = { usedNames = Set.empty } }

        member this.WithNameEnv x = { this with nameEnv = x }


    let maskChar low high i = char (low + i % (high - low + 1))

    let is_valid_identifier (idr: IdentifierDescriptor) s =
        if s = "" then
            true
        else
            let rec loop i =
                if i >= s.Length then
                    true
                else
                    idr.isValidChar i s.[i] && loop (i + 1)

            loop 0

    let to_valid_identifier (idr: IdentifierDescriptor) s =
        if s = "" then
            invalidOp "empty identifier"
        else
            let sb = StringBuilder()

            let rec loop i =
                if i >= s.Length then
                    ()
                else
                    if idr.isValidChar i s.[i] then
                        ignore (sb.Append(s.[i]))
                    else
                        ignore (sb.Append(idr.charToValid i s.[i]))

                    loop (i + 1)

            loop 0
            sb.ToString()

    let mangle (abandoned_names: string Set) (idr: IdentifierDescriptor) (n: string) =

        let mutable s =
            if is_valid_identifier idr n then
                n
            else
                to_valid_identifier idr n

        while Set.contains s abandoned_names do
            let add =
                if idr.isValidChar s.Length '_' then
                    "_" + idr.charToValid (s.Length + 1) (lowerChars.[s.Length % lowerChars.Length])
                else
                    idr.charToValid s.Length (lowerChars.[s.Length % lowerChars.Length])

            s <- s + add

        let nameEnv = idr.nameEnv

        while Set.contains s nameEnv.usedNames do
            let add =
                if idr.isValidChar s.Length '_' then
                    "_" + idr.charToValid (s.Length + 1) (lowerChars.[s.Length % lowerChars.Length])
                else
                    idr.charToValid s.Length (lowerChars.[s.Length % lowerChars.Length])

            s <- s + add

        nameEnv.usedNames <- Set.add s nameEnv.usedNames
        s

let rec mapMOptions (f: 'a -> 'b option) (ops: list<'a>) =
    match ops with
    | [] -> Some []
    | x :: xs ->
        match f x with
        | Some y ->
            match mapMOptions f xs with
            | Some ys -> Some(y :: ys)
            | None -> None
        | None -> None

let uniqueList xs =
    xs
    |> List.fold (fun acc x -> if List.contains x acc then acc else x :: acc) []
    |> List.rev


module ListBuilder =
    type M<'a> = list<'a>

    let rec sequenceA xs =
        match xs with
        | [] -> []
        | x :: xs ->
            [ for head in x do
                  for tail in xs do
                      yield head :: tail ]

    type ListBuilder() =
        member __.Bind<'b, 'c>(m: M<'b>, k: 'b -> M<'c>) : M<'c> = List.collect k m
        member __.Return<'a>(a: 'a) : M<'a> = [ a ]

        member __.Run<'a>(m: M<'a>) = m

        member __.Combine<'a, 'b>(m1: M<'a>, m2: M<'b>) = __.Bind(m1, fun _ -> m2)

        member __.Delay<'a>(x: unit -> M<'a>) = x ()

        member __.Zero() = [ () ]

        member __.For<'t, 'u>(m: seq<'t>, f: 't -> M<'u>) =
            let xs = Seq.map f m |> List.ofSeq
            sequenceA xs

        member __.ReturnFrom(m: M<'a>) = m

    let listM = ListBuilder()

module OptionBuilder =
    type Builder() =
        member __.Bind<'b, 'c>(m: option<'b>, k: 'b -> option<'c>) : option<'c> =
            match m with
            | None -> None
            | Some a -> k a

        member __.Return<'a>(v: 'a) = Some v

        member __.Run<'a>(m: option<'a>) = m

        member __.Combine<'a, 'b>(m1: option<'a>, m2: option<'b>) =
            match m1 with
            | None -> None
            | Some _ -> m2

        member __.Delay<'a>(x: unit -> option<'a>) = x ()


module DocBuilder =
    type block<'b> =
        { suite: Doc list // reverse over!!!
          value: 'b }

    type Builder() =
        member __.Bind<'b, 'c>(m: block<'b>, k: 'b -> block<'c>) : block<'c> =
            let m' = k (m.value)
            { m' with suite = m'.suite @ m.suite }

        member __.Return<'a>(v: 'a) = { suite = []; value = v }

        member __.Run<'a>(m: block<'a>) = m

        member __.Combine<'a, 'b>(m1: block<'a>, m2: block<'b>) = { m2 with suite = m2.suite @ m1.suite }

        member __.Yield(a) = { value = []; suite = [ a ] }

        member __.YieldFrom(a) = { value = (); suite = List.rev a }

        member __.Zero() = { value = (); suite = [] }

        member __.Delay<'a>(x: unit -> block<'a>) = x ()

        member __.For<'t, 'u>(m: seq<'t>, f: 't -> block<'u>) =
            let mutable suite = []

            let value =
                [ for each in m do
                      let m' = f each
                      suite <- m'.suite @ suite
                      yield m'.value ]

            { suite = suite; value = value }

        member __.ReturnFrom(m: block<'a>) = m

    let runCG (m: block<'a>) = (m.value, List.rev m.suite)

    let cg = Builder()
