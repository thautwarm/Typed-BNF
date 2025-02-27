module Fable.Sedlex.PrettyDoc

open System.Text

type Doc =
    | Concat of Doc * Doc
    | VSep of Doc list
    | Align of Doc
    | Indent of int * Doc
    | Segment of string
    | Empty

    static member (*)(a, b) = Concat(a, b)
    static member (+)(a, b) = a * Segment " " * b
    static member (>>>)(a, b) = Indent(b, a)


type DocPrimitive =
    | DP_PopIndent
    | DP_PushCurrentIndent
    | DP_PushIndent of int
    | DP_Word of string


module Array =
    let drop (i: int) arr = Array.take (Array.length arr - i) arr

let rec compileToPrims: Doc -> DocPrimitive array array =
    fun doc ->
        match doc with
        | Empty -> [||]
        | Concat (l, r) ->
            let l = compileToPrims l
            let r = compileToPrims r

            if Array.isEmpty l then
                r
            elif Array.isEmpty r then
                l
            else
                Array.concat [| Array.drop 1 l
                                [| Array.append (Array.last l) (Array.head r) |]
                                Array.skip 1 r |]
        | Align (seg) ->
            let it = compileToPrims seg

            if Array.isEmpty it then
                it
            else
                it.[0] <- Array.append [| DP_PushCurrentIndent |] it.[0]
                it.[it.Length - 1] <- Array.append it.[it.Length - 1] [| DP_PopIndent |]
                it
        | Indent (i, doc) ->
            let prefix = [| DP_PushIndent i |]
            let it = compileToPrims doc

            if Array.isEmpty it then
                it
            else
                it.[0] <- Array.append prefix it.[0]
                it.[it.Length - 1] <- Array.append it.[it.Length - 1] [| DP_PopIndent |]
                it
        | VSep (segs) -> Array.concat <| Seq.map compileToPrims segs
        | Segment s -> [| [| DP_Word s |] |]

type Stack<'a>(?init: 'a seq) =
    let mutable _content =
        match init with
        | None -> []
        | Some xs -> Seq.toList xs

    member __.Push a = _content <- a :: _content

    member __.Pop() =
        match _content with
        | hd :: tl ->
            _content <- tl
            hd
        | _ ->
            raise
            <| System.IndexOutOfRangeException("negative stacksize")

    member __.Last =
        match _content with
        | hd :: _ -> hd
        | _ ->
            raise
            <| System.IndexOutOfRangeException("negative stacksize")




let render (setences: DocPrimitive array array) (write: string -> unit) =
    let levels = Stack<int>([ 0 ])

    if Array.isEmpty setences then
        ()
    else
        for words in setences do
            let mutable col = 0
            let mutable initialized = false

            let line_init () =
                if not initialized then
                    col <- levels.Last + col
                    write (String.replicate col " ")
                    initialized <- true

            for word in words do
                match word with
                | DP_Word s ->
                    line_init ()
                    write (s)
                    col <- col + s.Length
                | DP_PushCurrentIndent -> levels.Push(col)
                | DP_PopIndent -> ignore (levels.Pop())
                | DP_PushIndent i -> levels.Push(levels.Last + i)

            write ("\n")


let pretty s = Segment(s.ToString())
let seg s = Segment s
let word s = seg s
let vsep lines = VSep lines
let align seg = Align seg
let indent i x = Indent(i, x)
let concat a b = Concat(a, b)
let empty = Empty
let parens (content: Doc) = seg "(" * content * seg ")"
let bracket (content: Doc) = seg "[" * content * seg "]"

let listof lst =
    match lst with
    | [] -> empty
    | hd :: tl ->
        let mutable res = hd

        for each in tl do
            res <- res * each

        res

let seplist sep lst =
    match lst with
    | [] -> empty
    | hd :: tl ->
        let mutable res = hd

        for each in tl do
            res <- res * sep * each

        res

let showDoc (doc: Doc) =
    let sb = new StringBuilder()
    render (compileToPrims doc) (fun x -> ignore (sb.Append(x)))
    sb.ToString()

let genDoc (doc: Doc) (write: string -> unit) = render (compileToPrims doc) (write)
