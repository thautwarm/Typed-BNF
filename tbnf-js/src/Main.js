"use strict";

var _ParserMain = require("./ParserMain");

var _argparse = require("argparse");

var fs = _interopRequireWildcard(require("fs"));

var path = _interopRequireWildcard(require("path"));

var resource_keys = _interopRequireWildcard(require("./src/ResourceKeys"));

var api = _interopRequireWildcard(require("./src/APIs"));

var codegen_py = _interopRequireWildcard(require("./src/Backends.PythonLark"));

var codegen_ocaml = _interopRequireWildcard(require("./src/Backends.OCamlMenhir"));

var codegen_csharp = _interopRequireWildcard(require("./src/Backends.CSharpAntlr"));

var codegen_ts = _interopRequireWildcard(require("./src/Backends.TypeScriptAntlr"));

var _CodeGen = require("./FableSedlex/CodeGen");

function _getRequireWildcardCache(nodeInterop) { if (typeof WeakMap !== "function") return null; var cacheBabelInterop = new WeakMap(); var cacheNodeInterop = new WeakMap(); return (_getRequireWildcardCache = function (nodeInterop) { return nodeInterop ? cacheNodeInterop : cacheBabelInterop; })(nodeInterop); }

function _interopRequireWildcard(obj, nodeInterop) { if (!nodeInterop && obj && obj.__esModule) { return obj; } if (obj === null || typeof obj !== "object" && typeof obj !== "function") { return { default: obj }; } var cache = _getRequireWildcardCache(nodeInterop); if (cache && cache.has(obj)) { return cache.get(obj); } var newObj = {}; var hasPropertyDescriptor = Object.defineProperty && Object.getOwnPropertyDescriptor; for (var key in obj) { if (key !== "default" && Object.prototype.hasOwnProperty.call(obj, key)) { var desc = hasPropertyDescriptor ? Object.getOwnPropertyDescriptor(obj, key) : null; if (desc && (desc.get || desc.set)) { Object.defineProperty(newObj, key, desc); } else { newObj[key] = obj[key]; } } } newObj.default = obj; if (cache) { cache.set(obj, newObj); } return newObj; }

const backends = {
  "python-lark": codegen_py.codegen,
  "ocaml-menhir": codegen_ocaml.codegen,
  "csharp-antlr": codegen_csharp.codegen,
  "typescript-antlr": codegen_ts.codegen
};
const parser = new _argparse.ArgumentParser({
  description: 'Argparse example'
});
parser.add_argument('-i', '--tbnfSourcePath');
parser.add_argument('-o', '--outDir');
parser.add_argument('-lang', '--language', {
  help: "name of your own language",
  default: "mylang"
});
parser.add_argument('-be', '--backend', {
  help: ""
});
parser.add_argument('-conf', '--configPath', {
  help: "path to a config file",
  default: ""
});

const _resources = new Map();

function getDefaultScope() {
  return {
    request_resource: resource_key => {
      let x = _resources.get(resource_key);

      if (x === undefined) {
        throw new Error("Resource not found: " + resource_key);
      }

      return x;
    },
    start_rule_qualified_type: null,
    rename_var: x => x,
    rename_constructor: x => x,
    rename_type: x => x,
    rename_field: x => x
  };
}

function runcommand() {
  let args = parser.parse_args();
  let srcPath = args.tbnfSourcePath;
  let outDir = args.outDir;
  let language = args.language;
  let backend = args.backend;
  let configPath = args.configPath;
  let sourceCode = fs.readFileSync(srcPath, 'utf8');
  var defs = (0, _ParserMain.parse_tbnf)(sourceCode, srcPath);
  let defaultScope = getDefaultScope();

  if (configPath == "") {
    // if not defined, set 'configPath' to 'srcPath/../tbnf.config.js'
    configPath = path.join(outDir, "tbnf.config.js");
  }

  if (fs.existsSync(configPath)) {
    let rel = path.relative(fs.realpathSync(__dirname), process.cwd());
    let modulepath = path.join(rel, configPath);
    modulepath = "./" + modulepath.replace(/\\/g, "/");

    let mod = require(modulepath); // iterate over all keys in the config file


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
    let sb = [];

    var writeToFile = function (s) {
      if (typeof s == "string") {
        sb.push(s);
        return;
      }

      throw new Error("Expected string, got " + typeof s);
    };

    (0, _CodeGen.genDoc)(doc, writeToFile);
    fs.writeFileSync(outPath, sb.join(""));
  }
}

const _ocaml_rts_file = `
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
`;

_resources.set(resource_keys.ocaml_rts_file, _ocaml_rts_file);

runcommand(); // console.log(parse_tbnf("extern var x : int", "test.tbnf"));