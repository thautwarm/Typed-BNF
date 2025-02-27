// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';
import {
	TBNFSemanticTokensProvider,
	TBNFDefinitionProvider,
	TBNFReferenceProvider,
	TBNFSymbolProvider,
	tokenModifiersLegend
} from './grammar-sh/language';
import { tokenTypesLegend } from './grammar-sh/TBNFRequire';

// This method is called when your extension is activated
// Your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {

	// Register language providers for TypedBNF files
	const selector = { language: 'typedbnf', scheme: 'file' };

	// Register semantic tokens provider
	const semanticTokensProvider = new TBNFSemanticTokensProvider();
	const semanticTokensLegend = new vscode.SemanticTokensLegend(tokenTypesLegend, tokenModifiersLegend);
	context.subscriptions.push(
		vscode.languages.registerDocumentSemanticTokensProvider(
			selector,
			semanticTokensProvider,
			semanticTokensLegend
		)
	);

	// Register definition provider
	const definitionProvider = new TBNFDefinitionProvider();
	context.subscriptions.push(
		vscode.languages.registerDefinitionProvider(
			selector,
			definitionProvider
		)
	);

	// Register reference provider
	const referenceProvider = new TBNFReferenceProvider();
	context.subscriptions.push(
		vscode.languages.registerReferenceProvider(
			selector,
			referenceProvider
		)
	);

	// Register document symbol provider
	const symbolProvider = new TBNFSymbolProvider();
	context.subscriptions.push(
		vscode.languages.registerDocumentSymbolProvider(
			selector,
			symbolProvider
		)
	);
}

// This method is called when your extension is deactivated
export function deactivate() { }
