using System;
using System.Diagnostics;
using System.IO;
using Acornima;
using Microsoft.FSharp.Core;
using SystemX.Cmd;
using tbnf;
using tbnf.Backends;

namespace TypedBNF;

record CodeGenOptions : Common.CodeGenOptions
{
    public Func<string, string>? RenameVar = null;
    public Func<string, string>? RenameType = null;
    public Func<string, string>? RenameCtor = null;
    public Func<string, string>? RenameField = null;
    public string? StartRuleQualifiedType = null;
    public FSharpOption<FSharpFunc<string, string>> rename_var => RenameVar is null ? FSharpOption<FSharpFunc<string, string>>.None : FSharpOption<FSharpFunc<string, string>>.Some(
        FSharpFunc<string, string>.FromConverter(RenameVar.Invoke));
    public FSharpOption<FSharpFunc<string, string>> rename_type => RenameType is null ? FSharpOption<FSharpFunc<string, string>>.None : FSharpOption<FSharpFunc<string, string>>.Some(
        FSharpFunc<string, string>.FromConverter(RenameType.Invoke));
    public FSharpOption<FSharpFunc<string, string>> rename_ctor => RenameCtor is null ? FSharpOption<FSharpFunc<string, string>>.None : FSharpOption<FSharpFunc<string, string>>.Some(
        FSharpFunc<string, string>.FromConverter(RenameCtor.Invoke));
    public FSharpOption<FSharpFunc<string, string>> rename_field => RenameField is null ? FSharpOption<FSharpFunc<string, string>>.None : FSharpOption<FSharpFunc<string, string>>.Some(
        FSharpFunc<string, string>.FromConverter(RenameField.Invoke));
    public FSharpOption<string> start_rule_qualified_type => StartRuleQualifiedType is null ? FSharpOption<string>.None : FSharpOption<string>.Some(StartRuleQualifiedType);
    string Common.CodeGenOptions.request_resource(string key)
    {
        if (key == ResourceKeys.ocaml_rts_file)
        {
            return Resources.OCamlRTSFileContent;
        }
        return "";
    }
}
public class Program
{
    enum Backend
    {
        csharpANTLR,
        typescriptANTLR,
        pythonLARK,
        ocamlMenhir,
        pureBNF,
    }

    enum ADTEncoding
    {
        taggedUnion,
        caseClass,
    }

    class Options
    {
        public string? OutDir;
        public string? SourceGrammar;
        public Backend? Backend;

        /// <summary>
        /// the name of the language to generate
        /// </summary>
        public string? Language;
        public string? ConfigPath;
        /// <summary>
        /// the encoding of ADTs
        /// </summary>
        public ADTEncoding? ADTEncoding;
    }
    public static void Main(string[] args)
    {
        CmdParser<Options> parser = new();

        parser.Flag("help", (Options o) =>
        {
            // TODO
            Console.WriteLine("Usage: tbnf [options] <source-grammar-file>");
            Console.WriteLine("Options:");
            Console.WriteLine("  -h, --help                Show this help message and exit");
            Console.WriteLine("  -o, --outDir DIR          Specify output directory (default: same as source file)");
            Console.WriteLine("  -be, --backend TYPE       Backend to use");
            Console.WriteLine("     Possible TYPE values:");
            Console.WriteLine("       csharp-antlr         C# backend using ANTLR");
            Console.WriteLine("       typescript-antlr     TypeScript backend using ANTLR");
            Console.WriteLine("       pure-bnf             PureBNF backend");
            Console.WriteLine();
            Console.WriteLine("  -ae, --adt-encoding TYPE  ADT encoding");
            Console.WriteLine("     Possible TYPE values:");
            Console.WriteLine("       tagged-union         ADT encoding via tagged unions (default for TypeScript)");
            Console.WriteLine("       case-class           ADT encoding via case classes (default for C#)");
            Console.WriteLine("  -lang, --language NAME    Language name to generate (default: \"mylang\")");
            Console.WriteLine("  -conf, --config PATH      Path to the 'tbnf.config.js' file (default: <outDir>/tbnf.config.js)");
            Console.WriteLine();
            Console.WriteLine("Examples:");
            Console.WriteLine("  tbnf -lang mylanguage mygrammar.tbnf -be typescript-antlr -ae tagged-union");
            Console.WriteLine("  tbnf -lang mylanguage mygrammar.tbnf -be csharp-antlr -conf tbnf.config.js");
            System.Environment.Exit(0);
        });

        parser.Positional("source", (Options o, string source) =>
        {
            o.SourceGrammar = source;
        });

        static void setOutDir(Options o, string outDir)
        {
            o.OutDir = outDir;
        }

        parser.Named("outDir", setOutDir);
        parser.ShortcutOption("o", setOutDir);

        static void setBackend(Options o, string backend)
        {
            o.Backend = backend.ToLowerInvariant() switch
            {
                "csharp-antlr" => (Backend?)Backend.csharpANTLR,
                "typescript-antlr" => (Backend?)Backend.typescriptANTLR,
                "python-lark" => (Backend?)Backend.pythonLARK,
                "ocaml-menhir" => (Backend?)Backend.ocamlMenhir,
                "pure-bnf" => (Backend?)Backend.pureBNF,
                _ => throw new Exception($"Invalid backend: {backend}"),
            };

        }

        static void setADTEncoding(Options o, string adtEncoding)
        {
            o.ADTEncoding = adtEncoding.ToLowerInvariant() switch
            {
                "tagged-union" => ADTEncoding.taggedUnion,
                "case-class" => ADTEncoding.caseClass,
                _ => throw new Exception($"Invalid ADT encoding: {adtEncoding}"),
            };
        }

        parser.Named("adt-encoding", setADTEncoding);
        parser.ShortcutOption("ae", setADTEncoding);

        parser.ShortcutOption("be", setBackend);
        parser.Named("backend", setBackend);

        static void setLanguage(Options o, string language)
        {
            o.Language = language;
        }

        parser.Named("language", setLanguage);
        parser.ShortcutOption("lang", setLanguage);

        static void setConfigPath(Options o, string config)
        {
            o.ConfigPath = config;
        }

        parser.ShortcutOption("conf", setConfigPath);
        parser.Named("config", setConfigPath);

        var options = parser.Parse(args);

        if (options.SourceGrammar is null)
        {
            Console.WriteLine("Error: source grammar is required");
            System.Environment.Exit(1);
            throw new UnreachableException();
        }

        var source = File.ReadAllText(options.SourceGrammar, System.Text.Encoding.UTF8);

        var (defs, analyzer) = APIs.build_analyzer(
            TypedBNFParser.ParseTBNF(
                source,
                options.SourceGrammar
            )
        );

        if (string.IsNullOrEmpty(options.OutDir))
        {
            options.OutDir = Path.GetDirectoryName(options.SourceGrammar);
        }

        if (string.IsNullOrEmpty(options.Language))
        {
            options.Language = "mylang";
        }

        // loading tbnf.config.js
        var defaultScope = new CodeGenOptions();
        var configPath = options.ConfigPath ?? Path.Combine(options.OutDir!, "tbnf.config.js");

        var jsEngine = new Jint.Engine();
        jsEngine.Execute("module = { exports: {} }");
        if (File.Exists(configPath))
        {
            jsEngine.Execute(File.ReadAllText(configPath, System.Text.Encoding.UTF8));
            if (jsEngine.Global.HasProperty("rename_var"))
            {
                defaultScope.RenameVar = name => jsEngine.Invoke("rename_var", name).ToString();
            }
            if (jsEngine.Global.HasProperty("rename_type"))
            {
                defaultScope.RenameType = name => jsEngine.Invoke("rename_type", name).ToString();
            }
            if (jsEngine.Global.HasProperty("rename_ctor"))
            {
                defaultScope.RenameCtor = name => jsEngine.Invoke("rename_ctor", name).ToString();
            }
            if (jsEngine.Global.HasProperty("rename_field"))
            {
                defaultScope.RenameField = name => jsEngine.Invoke("rename_field", name).ToString();
            }
            if (jsEngine.Global.HasProperty("start_rule_qualified_type"))
            {
                defaultScope.StartRuleQualifiedType = jsEngine.GetValue("start_rule_qualified_type").ToString();
            }
        }

        // select the backend
        Tuple<string, Fable.Sedlex.PrettyDoc.Doc>[] fsOut;

        switch (options.Backend)
        {
            case null:
            {
                Console.WriteLine("Error: backend is required");
                System.Environment.Exit(1);
                throw new UnreachableException();
            }
            case Backend.csharpANTLR:
            {
                if (options.ADTEncoding == ADTEncoding.taggedUnion)
                {
                    Console.WriteLine("Warning: tagged union ADT encoding is not supported for C# backend, using case class instead");
                }
                fsOut = tbnf.Backends.CSharpAntlr.codegen(analyzer, defaultScope, options.Language, defs);
                break;
            }
            case Backend.typescriptANTLR:
            {
                if (options.ADTEncoding == ADTEncoding.taggedUnion || options.ADTEncoding is null)
                {
                    // default to tagged union for TypeScript backend
                    fsOut = tbnf.Backends.TypescriptAntlrTaggedUnion.codegen(analyzer, defaultScope, options.Language, defs);
                }
                else
                {
                    fsOut = tbnf.Backends.TypescriptAntlrCaseClass.codegen(analyzer, defaultScope, options.Language, defs);
                }
                break;
            }
            case Backend.pythonLARK:
            {
                fsOut = tbnf.Backends.PythonLark.codegen(analyzer, defaultScope, options.Language, defs);
                break;
            }
            case Backend.ocamlMenhir:
            {
                fsOut = tbnf.Backends.OCamlMenhir.codegen(analyzer, defaultScope, options.Language, defs);
                break;
            }
            case Backend.pureBNF:
            {
                fsOut = tbnf.Backends.PureBNF.codegen(analyzer, defaultScope, options.Language, defs);
                break;
            }
            default:
            {
                throw new Exception($"Invalid backend: {options.Backend}");
            }
        }

        // write the generated code to the output directory
        foreach (var (name, doc) in fsOut)
        {
            var outPath = Path.Combine(options.OutDir!, name);
            var sb = new System.Text.StringBuilder();
            Fable.Sedlex.PrettyDoc.genDoc(doc, FSharpFunc<string, Unit>.FromConverter(str =>
            {
                sb.Append(str);
                return APIs.theUnit;
            }));
            File.WriteAllText(outPath, sb.ToString());
        }
    }
}
