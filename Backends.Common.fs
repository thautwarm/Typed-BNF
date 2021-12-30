module tbnf.Backends.Common
open Fable.CodeGen
open tbnf.Analysis
open tbnf.Grammar

type Renamer = string -> string
type Filename = string

type CodeGenOptions = {
        renamer: string -> string // rename global variables
        lang: string // name of language
    }

type BackendCodeGenerator = Analyzer -> CodeGenOptions -> definition array -> (Filename * Doc) array

let findFstWithSnd (xs: _ array) k =
    let rec loop i =
        if i < xs.Length then
            let (a, b) = xs.[i]
            if b = k then a
            else
            loop (i + 1)
        else
            invalidOp "not found"
    loop 0

let findSndWithFst (xs: _ array) k =
    let rec loop i =
        if i < xs.Length then
            let (a, b) = xs.[i]
            if a = k then b
            else
            loop (i + 1)
        else
            invalidOp "not found"
    loop 0
        
let escapeString (s: string) = 
    "\"" + s.Replace("\"", "\\\"").Replace("\n", "\\n").Replace("\r", "\\r") + "\""