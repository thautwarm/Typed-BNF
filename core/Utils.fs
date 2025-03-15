module tbnf.Utils

open System.Text

let lowerChars =
    [| for a = 'a' to 'z' do
           yield a |]

let upperChars =
    [| for a = 'A' to 'Z' do
           yield a |]

let sampleUnicodes = [| 20320; 26159; 22612; 33778; 21527 |]

let lowerRange = ('a', 'z')
let upperRange = ('A', 'Z')
let unicodeRange = ('\u4e00', '\u9fa5')
let digitRange = ('0', '9')

let isDigit c = '0' <= c && c <= '9'
let isUpper c = 'A' <= c && c <= 'Z'
let isLower c = 'a' <= c && c <= 'z'
(* todo: more complete *)
let isUnicode c = '\u4e00' <= c && c <= '\u9fa5'

let _escapeString (s: string) =
    let sb = StringBuilder("\"")

    for i = 0 to s.Length - 1 do
        match s.[i] with
        | '"' -> sb.Append("\\\"")
        | '\\' -> sb.Append("\\\\")
        | '\t' -> sb.Append("\\t")
        | '\n' -> sb.Append("\\n")
        | '\r' -> sb.Append("\\r")
        | a -> sb.Append(a)
        |> ignore

    ignore (sb.Append("\""))
    sb.ToString()

let iToU4 (i: int) =
    "\\u" + (i.ToString("X4")).Replace(" ", "0")

let _escapeStringSingleQuoted (s: string) =
    let sb = StringBuilder("'")

    for i = 0 to s.Length - 1 do
        match s.[i] with
        | ''' -> sb.Append("\\'")
        | '\\' -> sb.Append("\\\\")
        | '\t' -> sb.Append("\\t")
        | '\n' -> sb.Append("\\n")
        | '\r' -> sb.Append("\\r")
        | a -> sb.Append(a)
        |> ignore

    ignore (sb.Append("'"))
    sb.ToString()

let escapeStringSingleQuoted (s: string) = _escapeStringSingleQuoted s
let escapeString (s: string) = _escapeString s

let capitalized (s: string) =
    if s = "" then
        s
    else
        string (System.Char.ToUpperInvariant(s.[0])) + s.[1 .. s.Length - 1]

module List =
    let rec tryLookup key x =
        match x with
        | [] -> None
        | (key', value) :: tl when key' = key -> Some value
        | _ :: tl -> tryLookup key tl

    let rec lookup key x =
        match x with
        | [] -> invalidOp "key not found"
        | (key', value) :: tl when key' = key -> value
        | _ :: tl -> lookup key tl

    let rec replaceWith key func xs =
        match xs with
        | [] -> [ key, func None ]
        | (key', value) :: tl when key' = key -> (key', func (Some value)) :: tl
        | hd :: tl -> hd :: replaceWith key func tl
