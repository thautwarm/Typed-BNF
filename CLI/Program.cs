using System;
using System.IO;
using Microsoft.FSharp.Core;
using Microsoft.FSharp.Reflection;
using SystemX.Cmd;
using tbnf;
using tbnf.Backends;

namespace TypedBNF;

record struct CodeGenOptions(
    Func<string, string>? RenameVar,
    Func<string, string>? RenameType,
    Func<string, string>? RenameCtor,
    Func<string, string>? RenameField,
    string? StartRuleQualifiedType,
    Func<string, string> RequestResource
) : Common.CodeGenOptions
{
    public readonly FSharpOption<FSharpFunc<string, string>> rename_var => RenameVar is null ? FSharpOption<FSharpFunc<string, string>>.None : FSharpOption<FSharpFunc<string, string>>.Some(
        FSharpFunc<string, string>.FromConverter(RenameVar.Invoke));
    public readonly FSharpOption<FSharpFunc<string, string>> rename_type => RenameType is null ? FSharpOption<FSharpFunc<string, string>>.None : FSharpOption<FSharpFunc<string, string>>.Some(
        FSharpFunc<string, string>.FromConverter(RenameType.Invoke));
    public readonly FSharpOption<FSharpFunc<string, string>> rename_ctor => RenameCtor is null ? FSharpOption<FSharpFunc<string, string>>.None : FSharpOption<FSharpFunc<string, string>>.Some(
        FSharpFunc<string, string>.FromConverter(RenameCtor.Invoke));
    public readonly FSharpOption<FSharpFunc<string, string>> rename_field => RenameField is null ? FSharpOption<FSharpFunc<string, string>>.None : FSharpOption<FSharpFunc<string, string>>.Some(
        FSharpFunc<string, string>.FromConverter(RenameField.Invoke));
    public readonly FSharpOption<string> start_rule_qualified_type => StartRuleQualifiedType is null ? FSharpOption<string>.None : FSharpOption<string>.Some(StartRuleQualifiedType);
    public string request_resource(string value) => RequestResource.Invoke(value);
}
class Program
{
    enum Backend
    {
        csharpANTLR,
        typescriptANTLR,
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
    }
    static void Main(string[] args)
    {
        CmdParser<Options> parser = new();

        var jsEngine = new Jint.Engine();
        jsEngine.Execute("module = { exports: {} }");

        parser.Flag("help", (Options o) =>
        {
            // TODO
            Console.WriteLine("Usage: tbnf [options]");
            System.Environment.Exit(0);
        });

        parser.Positional("source", static (o, source) =>
        {
            o.SourceGrammar = source;
        });

        parser.Named("outDir", static (o, outDir) =>
        {
            o.OutDir = outDir;
        });

        parser.ShortcutOption("o", static (o, outDir) =>
        {
            o.OutDir = outDir;
        });

        parser.ShortcutOption("be", (o, backend) =>
        {
            switch (backend)
            {
                case "csharp-antlr":
                    o.Backend = Backend.csharpANTLR;
                    break;
                case "typescript-antlr":
                    o.Backend = Backend.typescriptANTLR;
                    break;
                default:
                    throw new Exception($"Invalid backend: {backend}");
            }
        });

        parser.Named("language", static (o, language) =>
        {
            o.Language = language;
        });

        parser.ShortcutOption("lang", static (o, language) =>
        {
            o.Language = language;
        });

        parser.ShortcutOption("conf", static (o, config) =>
        {
            o.ConfigPath = config;
        });

        var options = parser.Parse(args);

        if (options.SourceGrammar is null)
        {
            Console.WriteLine("Error: source grammar is required");
            System.Environment.Exit(1);
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

        // tbnf.config.js
        var defaultScope = new CodeGenOptions();
        var configPath = options.ConfigPath ?? Path.Combine(options.OutDir!, "tbnf.config.js");
        if (File.Exists(configPath))

        {
            jsEngine.Execute(File.ReadAllText(configPath, System.Text.Encoding.UTF8));
            if (jsEngine.Global.HasProperty("rename_var"))
            {
                defaultScope.RenameVar = (string name) => jsEngine.Invoke("rename_var", name).ToString();
            }
            if (jsEngine.Global.HasProperty("rename_type"))
            {
                defaultScope.RenameType = (string name) => jsEngine.Invoke("rename_type", name).ToString();
            }
            if (jsEngine.Global.HasProperty("rename_ctor"))
            {
                defaultScope.RenameCtor = (string name) => jsEngine.Invoke("rename_ctor", name).ToString();
            }
            if (jsEngine.Global.HasProperty("rename_field"))
            {
                defaultScope.RenameField = (string name) => jsEngine.Invoke("rename_field", name).ToString();
            }
            if (jsEngine.Global.HasProperty("start_rule_qualified_type"))
            {
                defaultScope.StartRuleQualifiedType = jsEngine.Invoke("start_rule_qualified_type").ToString();
            }
            if (jsEngine.Global.HasProperty("request_resource"))
            {
                defaultScope.RequestResource = (string name) => jsEngine.Invoke("request_resource", name).ToString();
            }
        }

        Tuple<string, Fable.Sedlex.PrettyDoc.Doc>[] fsOut = options.Backend switch
        {
            Backend.csharpANTLR => tbnf.Backends.CSharpAntlr.codegen(analyzer, defaultScope, options.Language, defs),
            Backend.typescriptANTLR => tbnf.Backends.TypescriptAntlr.codegen(analyzer, defaultScope, options.Language, defs),
            _ => throw new Exception($"Invalid backend: {options.Backend}"),
        };

        foreach (var (name, doc) in fsOut)
        {
            var outPath = Path.Combine(options.OutDir!, name);
            var sb = new System.Text.StringBuilder();
            Fable.Sedlex.PrettyDoc.genDoc(doc, FSharpFunc<string, Unit>.FromConverter((string s) =>
            {
                sb.Append(s);
                return APIs.theUnit;
            }));
            File.WriteAllText(outPath, sb.ToString());
        }
    }
}
