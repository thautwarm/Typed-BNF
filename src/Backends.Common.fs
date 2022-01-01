module tbnf.Backends.Common
open Fable.CodeGen
open tbnf.Analysis
open tbnf.Grammar

type Renamer = string -> string
type Filename = string

type CodeGenOptions = {
        variable_renamer: string -> string // rename global variables
        type_renamer: string -> string // rename types
        lang: string // name of language
    }

type BackendCodeGenerator = Analyzer -> CodeGenOptions -> definition array -> (Filename * Doc) array


module List =
    let rec tryLookup key x =
        match x with
        | [] -> None
        | (key', value)::tl when key' = key -> Some value
        | _::tl -> tryLookup key tl
    
    let rec lookup key x =
        match x with
        | [] -> invalidOp "key not found"
        | (key', value)::tl when key' = key -> value
        | _::tl -> lookup key tl
    
    