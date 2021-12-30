module tbnf.Utils

let lowerChars = [|for a = 'a' to 'z' do yield a|]
let upperChars = [|for a = 'A' to 'Z' do yield a|]
let sampleUnicodes = [|20320; 26159; 22612; 33778; 21527|]

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
       support_no_prefix_digit: bool;
       support_unicode : bool;
       support_lower_ascii: bool;
       support_upper_ascii: bool;
       support_underscore: bool;
       support_digit: bool;
    }
    with
        member this.SupportNoPrefixDigits = { this with support_no_prefix_digit = true }
        member this.SupportUnicode = { this with support_unicode = true }
        member this.SupportLowerAscii = { this with support_lower_ascii = true }
        member this.SupportUpperAscii = { this with support_upper_ascii = true }
        member this.SupportUnderscore = { this with support_underscore = true }
        member this.SupportDigit = { this with support_digit = true }

    let isDigit c = '0' <= c && c <= '9'
    let isUpper c = 'A' <= c && c <= 'Z'
    let isLower c = 'a' <= c && c <= 'z'
    (* todo: more complete *)
    let isUnicode c = '\u4e00' <= c && c <= '\u9fa5'
    
    let emptyIdentifierDescriptor = 
        { support_unicode = false;
          support_upper_ascii = false;
          support_lower_ascii = false;
          support_digit = false;
          support_no_prefix_digit = false;
          support_underscore = false;
        }

    let is_valid_character idr c =
        (not idr.support_digit && isDigit c) 
           || (not idr.support_lower_ascii && isLower c)
           || (not idr.support_upper_ascii && isUpper c)
           || (not idr.support_underscore && c = '_')
           || (not idr.support_unicode && isUnicode c)
        |> not

    let is_valid_identifier (idr: IdentifierDescriptor) s =
            if s = "" then true
            else
            if idr.support_no_prefix_digit && isDigit s.[0] then
                false
            else
            let rec loop i =
                if i >= s.Length then true
                else
                let c =  s.[i]
                if not (is_valid_character idr c) then
                    false
                else loop (i+1)
            loop 0
    
    let get_valid_string (idr: IdentifierDescriptor) i =
        if idr.support_underscore then 
            if idr.support_lower_ascii then
                lowerChars.[i % lowerChars.Length]
            elif idr.support_upper_ascii then
                upperChars.[i % upperChars.Length]
            elif idr.support_unicode then
                char sampleUnicodes.[i % sampleUnicodes.Length]
            else '_'
            |> fun c ->
            sprintf "_%c" c
        elif idr.support_lower_ascii then
            string <| lowerChars.[i % lowerChars.Length]
        elif idr.support_upper_ascii then
            string <| upperChars.[i % upperChars.Length]
        elif idr.support_unicode then
            string <| (char sampleUnicodes.[i % sampleUnicodes.Length])
        else
            invalidOp "do not know how to generate valid identifier character"
            
    let to_valid_identifier (idr: IdentifierDescriptor) s =
            if s = "" then s
            else
            let sb = StringBuilder()
            if idr.support_no_prefix_digit && isDigit s.[0] then
                ignore(sb.Append(get_valid_string idr))
            else
                ignore(sb.Append(s.[0]))

            
            for i = 1 to s.Length - 1 do
                let c = s.[i]
                if not (is_valid_character idr c)  then
                    ignore(sb.Append(get_valid_string idr i))
                else
                    ignore(sb.Append(c))
            sb.ToString()

    let mangle (abandoned_names: string Set)
               (nameEnv: nameEnv)
               (idr: IdentifierDescriptor)
               (n: string) =
        
        let mutable s =
            if is_valid_identifier idr n then
                n
            else
                to_valid_identifier idr n
        
        while Set.contains s abandoned_names do
            s <- s + get_valid_string idr s.Length

        while Set.contains s nameEnv.usedNames do
            s <- s + get_valid_string idr s.Length

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