module tbnf.Backends.FrontendForFree
open tbnf.Grammar

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
