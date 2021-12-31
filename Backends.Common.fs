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
