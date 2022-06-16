"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.parse_tbnf = parse_tbnf;

var api = _interopRequireWildcard(require("./TypedBNF-require"));

var lexer = _interopRequireWildcard(require("./TypedBNFLexer"));

var parser = _interopRequireWildcard(require("./TypedBNFParser"));

var antlr = _interopRequireWildcard(require("antlr4ts"));

function _getRequireWildcardCache(nodeInterop) { if (typeof WeakMap !== "function") return null; var cacheBabelInterop = new WeakMap(); var cacheNodeInterop = new WeakMap(); return (_getRequireWildcardCache = function (nodeInterop) { return nodeInterop ? cacheNodeInterop : cacheBabelInterop; })(nodeInterop); }

function _interopRequireWildcard(obj, nodeInterop) { if (!nodeInterop && obj && obj.__esModule) { return obj; } if (obj === null || typeof obj !== "object" && typeof obj !== "function") { return { default: obj }; } var cache = _getRequireWildcardCache(nodeInterop); if (cache && cache.has(obj)) { return cache.get(obj); } var newObj = {}; var hasPropertyDescriptor = Object.defineProperty && Object.getOwnPropertyDescriptor; for (var key in obj) { if (key !== "default" && Object.prototype.hasOwnProperty.call(obj, key)) { var desc = hasPropertyDescriptor ? Object.getOwnPropertyDescriptor(obj, key) : null; if (desc && (desc.get || desc.set)) { Object.defineProperty(newObj, key, desc); } else { newObj[key] = obj[key]; } } } newObj.default = obj; if (cache) { cache.set(obj, newObj); } return newObj; }

class ExcErrorListener {
  syntaxError(recognizer, offendingSymbol, line, charPositionInLine, msg, e) {
    throw new SyntaxError("Syntax error at line " + line + ":" + charPositionInLine + ": " + msg);
  }

}

function parse_tbnf(text, filename) {
  var fname = api.getfilename();

  try {
    api.setfilename(filename);
    const m_InputStream = antlr.CharStreams.fromString(text);
    const m_Lexer = new lexer.TypedBNFLexer(m_InputStream);
    m_Lexer.removeErrorListeners();
    m_Lexer.addErrorListener(new ExcErrorListener());
    const m_tokenStream = new antlr.CommonTokenStream(m_Lexer);
    const m_Parser = new parser.TypedBNFParser(m_tokenStream);
    m_Parser.removeErrorListeners();
    m_Parser.addErrorListener(new ExcErrorListener());
    var start = m_Parser.start();
    return start.result;
  } finally {
    api.setfilename(fname);
  }
}