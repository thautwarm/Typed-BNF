module fable.Python.Lark
open Fable.Core
open Fable.Sedlex.Compiler

let inline getit x =
  nameof(x)


    
      

[<Import("Token", "lark")>]
type LarkToken =
    member __.``type`` : string = nativeOnly
    member __.``value`` : string = nativeOnly
    member __.``start_pos`` : int = nativeOnly
    member __.``line`` : int = nativeOnly
    member __.``column`` : int = nativeOnly
    member __.``end_line`` : int = nativeOnly
    member __.``end_column`` : int = nativeOnly
    member __.``end_pos`` : int = nativeOnly


        

[<Import("Token", "lark")>]
let _token_cls: obj = nativeOnly
  
[<Emit("$0($1, $2, $3, $4, $5, None, None, $6 + $4)")>]
let _createLarkToken (cls: obj) (ty: string) (value: string) (start_pos: int) (line: int) (column: int) (span: int): LarkToken = nativeOnly

  
type token_constructor = int -> string -> int -> int -> int -> int -> string -> LarkToken

[<Import("Lexer", "lark.lexer")>]
type LarkLexer() = class end

type LarkLexerShape =
    abstract member lex : string -> System.Collections.Generic.IEnumerable<LarkToken> 

[<Emit("{}")>]
let mk_dict _ : obj = nativeOnly

[<Emit("exec($0, $1)")>]
let eval<'a> (s: string) (d: obj): 'a = nativeOnly

type SedlexLexer(
  lexall: lexbuf -> token_constructor -> (LarkToken -> bool) -> System.Collections.Generic.IEnumerable<LarkToken>,
  larkNameMaps : System.Collections.Generic.Dictionary<int, string>) =
  inherit LarkLexer()

  let eof_str = "<EOF>"
  let createLarkToken (token_id) (value: string) (start_pos: int) (line: int) (column: int) (span: int) (file: string) =
    let ty_str = larkNameMaps.[token_id]
    _createLarkToken _token_cls ty_str value start_pos line column span

  
  interface LarkLexerShape with
    override this.lex s =
          lexall (from_ustring s) (createLarkToken) (fun x -> x.``type`` = eof_str)

type IExports =
  member x.larklexer(a, b) = SedlexLexer(a, b)