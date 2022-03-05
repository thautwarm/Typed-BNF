import { parse_tbnf } from "./ParserMain";
import { ArgumentParser } from 'argparse';
import * as fs from 'fs';
import * as path from 'path';
import * as resource_keys from "./src/ResourceKeys";
import * as api from "./src/APIs";

import * as codegen_py from "./src/Backends.PythonLark"
import * as codegen_ocaml from "./src/Backends.OCamlMenhir"
import * as codegen_csharp from "./src/Backends.CSharpAntlr"
import * as codegen_ts from "./src/Backends.TypeScriptAntlr"
import * as codegen_bnf from "./src/Backends.PureBNF"
import { genDoc } from "./FableSedlex/CodeGen"
import { setExitFunc } from "./src/ErrorReport"

const backends = {
  "python-lark": codegen_py.codegen,
  "ocaml-menhir": codegen_ocaml.codegen,
  "csharp-antlr": codegen_csharp.codegen,
  "purebnf": codegen_bnf.codegen,
};

{
  let setExitFuncTyped = <(f: (i: number) => void) => void> setExitFunc
  setExitFuncTyped((i: number) => process.exit(i));
}

const parser = new ArgumentParser({
  description: 'Argparse example'
});

parser.add_argument('tbnfSourcePath');
parser.add_argument('-o', '--outDir', { default: "" });
parser.add_argument('-lang', '--language', { help: "name of your own language", default: "mylang" });
parser.add_argument('-be', '--backend', { choices: Object.keys(backends), default: "python-lark" });
parser.add_argument('-conf', '--configPath', { help: "path to a config file", default: "" });


const _resources = new Map<string, any>();

function getDefaultScope() {

  return {
    request_resource: (resource_key: string) => {
      let x = _resources.get(resource_key)
      if (x === undefined) {
        throw new Error("Resource not found: " + resource_key);
      }
      return x;
    },
    start_rule_qualified_type: null,
    rename_var: (x: string) => x,
    rename_constructor: (x: string) => x,
    rename_type: (x: string) => x,
    rename_field: (x: string) => x,
  }
}

function runcommand() {
  let args = parser.parse_args();
  let srcPath: string = args.tbnfSourcePath;
  let outDir: string = args.outDir;
  let language: string = args.language;
  let backend: string = args.backend;
  let configPath: string = args.configPath;
  let sourceCode = fs.readFileSync(srcPath, 'utf8');
  var defs = parse_tbnf(sourceCode, srcPath);
  let defaultScope = getDefaultScope();
  if (outDir == "") {
    outDir = path.dirname(srcPath);
  }
  if (configPath == "") {
    // if not defined, set 'configPath' to 'srcPath/../tbnf.config.js'
    configPath = path.join(outDir, "tbnf.config.js");
  }
  if (fs.existsSync(configPath)) {
    let rel = path.relative(fs.realpathSync(__dirname), process.cwd())
    let modulepath = path.join(rel, configPath);
    modulepath = "./" + modulepath.replace(/\\/g, "/");
    let mod: object = require(modulepath);
    // iterate over all keys in the config file
    for (let key in mod) {
      defaultScope[key] = mod[key];
    }
  }
  var [defs, analyzer] = api.build_analyzer(defs);
  let call_backend = backends[backend];
  if (call_backend == undefined) {
    throw new Error("Backend not found: " + backend);
  }
  let fs_out = call_backend(analyzer, defaultScope, language, defs);

  for (let [filename, doc] of fs_out) {
    let outPath = path.join(outDir, filename);
    let sb: string[] = []
    var writeToFile = function (s: string) {
      if (typeof (s) == "string") {
        sb.push(s);
        return;
      }

      throw new Error("Expected string, got " + typeof (s));
    }
    genDoc(doc, writeToFile);
    fs.writeFileSync(outPath, sb.join(""));
  }
}

const _ocaml_rts_file: string = `
module TBNF_Utf8 = struct
exception UnicodeEncodeError of int
let uft8_encode_unchecked : (int * Buffer.t) -> unit = fun (code, buffer) ->
    if (code <= 0x7F) then
        Buffer.add_int8 buffer code
    else if code > 0x10FFFF then begin
      Buffer.add_int8 buffer 0xEF;
      Buffer.add_int8 buffer 0xBF;
      Buffer.add_int8 buffer 0xBD;
      Buffer.add_int8 buffer 0;
      end
    else
    let count =
      if code <= 0x7FF then 1
      else if code <= 0xFFFF then 2
      else 3;
    in
    let chars = Bytes.make (count + 1) @@ Char.chr 0 in
    let code = ref code in
    let _  = for i = 0 to count - 1 do
        Bytes.set chars (count - i) @@ Char.chr @@  0x80 lor (!code land 0x3F);
        code := !code lsr 6;
      done
    in
    let first_code = (0x1E lsl (6-count)) lor (!code land (0x3F lsr count)) in
    let first_code = first_code land 0xFF in
    let _ = Bytes.set chars 0 @@ Char.chr first_code   in Buffer.add_bytes buffer chars

let utf8_encode (code, buffer) =
  if code > 0xd7ff && code < 0xe000 then
    raise @@ UnicodeEncodeError code
  else uft8_encode_unchecked (code, buffer)


let to_out (io: out_channel) (unicode: Uchar.t array) =
    let buffer = Buffer.create 1024 in
    let n = Array.length unicode in
    let _ = for i = 0 to n - 1 do
      utf8_encode (Uchar.to_int (Array.get unicode i), buffer);
      if i mod 512 = 511 then
          begin
            Buffer.output_buffer io buffer;
            Buffer.clear buffer
          end;
    done in
    Buffer.output_buffer io buffer

let to_string (unicode: Uchar.t array) =
  let buffer = Buffer.create 80 in
  let n = Array.length unicode in
  let _ = for i = 0 to n - 1 do
    utf8_encode (Uchar.to_int (Array.get unicode i), buffer);
  done in
  Buffer.contents buffer

end

let _unknown_token lexbuf =
    let start, _ = Sedlexing.lexing_positions lexbuf in
    let m = TBNF_Utf8.to_string (Sedlexing.lexeme lexbuf) in
    raise (Invalid_argument (Printf.sprintf "%s:%d:%d: codepoints %s not recognised" start.pos_fname start.pos_lnum start.pos_cnum m))


type tbnf_token = {
    lexeme : string;
    line: int;
    col: int;
    offset : int;
    span: int;
    file : string;
}

let mktoken (buf: Sedlexing.lexbuf): tbnf_token =
  let open Sedlexing in
  let start_pos, _ = Sedlexing.lexing_positions buf in
  { lexeme = TBNF_Utf8.to_string (Sedlexing.lexeme buf);
    line = start_pos.pos_lnum;
    col = start_pos.pos_cnum - start_pos.pos_bol;
    offset = Sedlexing.lexeme_start buf;
    span = lexeme_end buf - lexeme_start buf;
    file = start_pos.pos_fname }
`
_resources.set(
  resource_keys.ocaml_rts_file,
  _ocaml_rts_file
);


runcommand();
// console.log(parse_tbnf("extern var x : int", "test.tbnf"));