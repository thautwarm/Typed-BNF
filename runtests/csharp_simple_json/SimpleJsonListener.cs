//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     ANTLR Version: 4.13.2
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from ./runtests/csharp_simple_json/SimpleJson.g4 by ANTLR 4.13.2

// Unreachable code detected
#pragma warning disable 0162
// The variable '...' is assigned but its value is never used
#pragma warning disable 0219
// Missing XML comment for publicly visible type or member '...'
#pragma warning disable 1591
// Ambiguous reference in cref attribute
#pragma warning disable 419

namespace SimpleJson {
using Antlr4.Runtime.Misc;
using IParseTreeListener = Antlr4.Runtime.Tree.IParseTreeListener;
using IToken = Antlr4.Runtime.IToken;

/// <summary>
/// This interface defines a complete listener for a parse tree produced by
/// <see cref="SimpleJsonParser"/>.
/// </summary>
[System.CodeDom.Compiler.GeneratedCode("ANTLR", "4.13.2")]
[System.CLSCompliant(false)]
public interface ISimpleJsonListener : IParseTreeListener {
	/// <summary>
	/// Enter a parse tree produced by <see cref="SimpleJsonParser.start"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterStart([NotNull] SimpleJsonParser.StartContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="SimpleJsonParser.start"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitStart([NotNull] SimpleJsonParser.StartContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="SimpleJsonParser.start__y_"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterStart__y_([NotNull] SimpleJsonParser.Start__y_Context context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="SimpleJsonParser.start__y_"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitStart__y_([NotNull] SimpleJsonParser.Start__y_Context context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="SimpleJsonParser.jsonpair"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterJsonpair([NotNull] SimpleJsonParser.JsonpairContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="SimpleJsonParser.jsonpair"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitJsonpair([NotNull] SimpleJsonParser.JsonpairContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="SimpleJsonParser.seplist_o__i__s__i__s_json_p_"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSeplist_o__i__s__i__s_json_p_([NotNull] SimpleJsonParser.Seplist_o__i__s__i__s_json_p_Context context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="SimpleJsonParser.seplist_o__i__s__i__s_json_p_"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSeplist_o__i__s__i__s_json_p_([NotNull] SimpleJsonParser.Seplist_o__i__s__i__s_json_p_Context context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="SimpleJsonParser.seplist_o__i__s__i__s_jsonpair_p_"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSeplist_o__i__s__i__s_jsonpair_p_([NotNull] SimpleJsonParser.Seplist_o__i__s__i__s_jsonpair_p_Context context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="SimpleJsonParser.seplist_o__i__s__i__s_jsonpair_p_"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSeplist_o__i__s__i__s_jsonpair_p_([NotNull] SimpleJsonParser.Seplist_o__i__s__i__s_jsonpair_p_Context context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="SimpleJsonParser.json"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterJson([NotNull] SimpleJsonParser.JsonContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="SimpleJsonParser.json"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitJson([NotNull] SimpleJsonParser.JsonContext context);
}
} // namespace SimpleJson
