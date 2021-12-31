module tbnf.Utils

let lowerChars = [|for a = 'a' to 'z' do yield a|]
let upperChars = [|for a = 'A' to 'Z' do yield a|]
let sampleUnicodes = [|20320; 26159; 22612; 33778; 21527|]

let lowerRange = ('a', 'z')
let upperRange = ('A', 'Z')
let unicodeRange = ('\u4e00', '\u9fa5')
let digitRange = ('0', '9')

let isDigit c = '0' <= c && c <= '9'
let isUpper c = 'A' <= c && c <= 'Z'
let isLower c = 'a' <= c && c <= 'z'
(* todo: more complete *)
let isUnicode c = '\u4e00' <= c && c <= '\u9fa5'


module IdHelper =
    open System.Text
    let uniqueIntToCapitalizedString i =
        let sb = StringBuilder()
        let mutable I = i
        while I > 0 do
            ignore(sb.Append(upperChars.[I &&& 0b1111]))
            I <- I >>> 4;
        sb.ToString()

    type idEnv = {  mutable usedNames : Map<string, int>  }
    let newIdEnv() = { usedNames = Map.empty }
    let getId (idEnv: idEnv) s =
        match Map.tryFind s idEnv.usedNames with
        | Some v -> v
        | None ->
            let i = Map.count idEnv.usedNames
            idEnv.usedNames <- Map.add s i idEnv.usedNames
            i
        
module NameMangling =
    open System.Text
    type nameEnv = {  mutable usedNames : string Set }
    
    type IdentifierDescriptor = {
       isValidChar : int -> char -> bool
       charToValid : int -> char -> string
       nameEnv: nameEnv
    }
    with
        static member Create(isValidChar, charToValid) =
            {
                isValidChar = isValidChar
                charToValid = charToValid
                nameEnv = { usedNames = Set.empty }
            }
        member this.WithNameEnv x = { this with nameEnv = x }

    
    let maskChar low high i = char (low + i % (high - low + 1))

    let is_valid_identifier (idr: IdentifierDescriptor) s =
            if s = "" then true
            else
            let rec loop i =
                if i >= s.Length then true
                else
                idr.isValidChar i s.[i] && loop (i + 1)
            loop 0                    
    
    let to_valid_identifier (idr: IdentifierDescriptor) s =
            if s = "" then invalidOp "empty identifier"
            else
            let sb = StringBuilder()
            let rec loop i =
                if i >= s.Length then ()
                else
                if idr.isValidChar i s.[i] then
                    ignore(sb.Append(s.[i]))
                else
                    ignore(sb.Append(idr.charToValid i s.[i]))
                loop (i + 1)
            loop 0
            sb.ToString()

    let mangle (abandoned_names: string Set)
               (idr: IdentifierDescriptor)
               (n: string) =
        
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

module DocBuilder =
    open Fable.CodeGen
    type block<'b> = {
       suite : Doc list // reverse over!!!
       value : 'b
    }
    type Builder() =
        member __.Bind<'b, 'c>(m: block<'b>, k : 'b -> block<'c>): block<'c> =
            let m' = k(m.value)
            { m' with suite = m'.suite @ m.suite }
        
        member __.Return<'a>(v: 'a) =
             { suite = [];  value = v }

        member __.Run<'a>(m: block<'a>) = m

        member __.Combine<'a, 'b>(m1: block<'a>, m2: block<'b>) =
            { m2 with suite = m2.suite @ m1.suite }
        
        member __.Yield(a) =
            { value = []; suite = [a] }
        
        member __.YieldFrom(a) =
            { value = (); suite = List.rev a }
        
        member __.Zero() = { value = (); suite = [] }
        
        member __.Delay<'a>(x: unit -> block<'a>) = x()

        member __.For<'t, 'u>(m: seq<'t>, f: 't -> block<'u>) =
            let mutable suite = []
            let value = [
                    for each in m do
                    let m' = f each
                    suite <- m'.suite @ suite
                    yield m'.value
            ]
            { suite = suite; value = value }
       
        member __.ReturnFrom (m: block<'a>) = m
        
    let runCG(m: block<'a>) = (m.value, List.rev m.suite)

    let cg = Builder()