"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.errorToReadableString = errorToReadableString;
exports.exitFunc = void 0;
exports.renderTypeKind = renderTypeKind;
exports.setExitFunc = setExitFunc;
exports.withErrorHandler = withErrorHandler;

var _String = require("../fable_modules/fable-library.3.7.9/String.js");

var _List = require("../fable_modules/fable-library.3.7.9/List.js");

var _Exceptions = require("./Exceptions.js");

var _Inspect = require("./Inspect.js");

var _Grammar = require("./Grammar.js");

var _Types = require("../fable_modules/fable-library.3.7.9/Types.js");

var _Option = require("../fable_modules/fable-library.3.7.9/Option.js");

function renderTypeKind(i) {
  if (i === 0) {
    return "type";
  } else {
    const s = (0, _String.join)(", ", (0, _List.replicate)(i, "_"));
    return `type<${s}>`;
  }
}

function errorToReadableString(exc) {
  let covered = true;
  let msg;

  if (exc instanceof _Exceptions.IllFormedType) {
    const t1_1 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(exc.Data0));
    const t2_1 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(exc.Data1));
    msg = `recursive types are invalid: ${t1_1} ~ ${t2_1}`;
  } else if (exc instanceof _Exceptions.TypeMismatch) {
    const t1_3 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(exc.Data0));
    const t2_3 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(exc.Data1));
    msg = `type mismatch: ${t1_3} ~ ${t2_3}`;
  } else if (exc instanceof _Exceptions.TypeUnexpected) {
    const got_1 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(exc.got));
    const expected_1 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(exc.expected));
    msg = `expected ${got_1} ~ ${expected_1}`;
  } else if (exc instanceof _Exceptions.InvalidTypeApplication) {
    const t_8 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(exc.Data0));
    msg = `invalid type application: ${t_8}`;
  } else if (exc instanceof _Exceptions.InvalidKind) {
    const expect = exc.Data0.expect | 0;
    const expectKindRepr = renderTypeKind(expect);
    const got_2 = exc.Data0.got | 0;
    const gotKindRepr = renderTypeKind(got_2);
    msg = `invalid kind: type constructor '${exc.Data0.name}' expects kind ${expect} (${expectKindRepr}) but got kind ${got_2} ('${gotKindRepr}')`;
  } else if (exc instanceof _Exceptions.NoField) {
    const t_11 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(exc.Data0));
    msg = `no field '${exc.Data1}' in type ${t_11}`;
  } else if (exc instanceof _Exceptions.CannotInferField) {
    const t_14 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(exc.Data0));
    msg = `cannot infer field type for type ${t_14}, please give annotations.`;
  } else if (exc instanceof _Exceptions.NoBaseName) {
    const t_17 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(exc.Data0));
    msg = `type ${t_17} has no object base name, and might not take fields.`;
  } else if (exc instanceof _Exceptions.NameError) {
    msg = exc.Data1.tag === 1 ? exc.Data2.tag === 1 ? `unbound variable '${exc.Data0}'` : `duplicate variable '${exc.Data0}'` : exc.Data1.tag === 2 ? exc.Data2.tag === 1 ? `unbound nonterminal '${exc.Data0}'` : `duplicate nonterminal '${exc.Data0}'` : exc.Data1.tag === 3 ? exc.Data2.tag === 1 ? `unbound lexical rule '${exc.Data0}'` : `duplicate lexical rule '${exc.Data0}'` : exc.Data2.tag === 1 ? `unbound type variable '${exc.Data0}'` : `duplicate type variable '${exc.Data0}'`;
  } else if (exc instanceof _Exceptions.ComponentAccessingOutOfBound) {
    const repr_i = exc.access === 1 ? "1-st" : exc.access === 2 ? "2-nd" : exc.access === 3 ? "3-rd" : `${exc.access}-th`;
    msg = `${repr_i} semantic value is out of bound (maxsize: ${exc.maxsize})`;
  } else if (exc instanceof _Exceptions.MacroResolveError) {
    msg = `cannot resolve macro '${exc.Data0}'`;
  } else if (exc instanceof _Exceptions.UnsolvedTypeVariable) {
    msg = "find unsolved type variable";
  } else if (exc instanceof _Exceptions.NotGlobalVariable) {
    msg = `'${exc.Data0}' is not global when checking if it is a constructor.`;
  } else if (exc instanceof _Exceptions.InvalidConstructorDefinination) {
    if (exc.cause.tag === 1) {
      msg = `constructor '${exc.ctorName}' is defined for record type '${exc.cause.fields[0]}'`;
    } else if (exc.cause.tag === 2) {
      const repr_parameters = (0, _String.join)(", ", exc.cause.fields[1]);
      const typename_3 = `${exc.cause.fields[0]}<${repr_parameters}>`;
      msg = `GADT constructor is not supported in Typed BNF, but '${exc.ctorName}' is meant to be a GADT constructor for type '${typename_3}'`;
    } else if (exc.cause.tag === 3) {
      msg = `duplicate constructor name '${exc.ctorName}'`;
    } else if (exc.cause.tag === 4) {
      const t_20 = (0, _Inspect.inspectMonoType)((0, _Grammar.monot__Prune)(exc.cause.fields[0]));
      msg = `invalid constructor type '${t_20}', expect a function type!`;
    } else {
      msg = `constructor '${exc.ctorName}' is defined for external type '${exc.cause.fields[0]}'`;
    }
  } else {
    covered = false;
    msg = `uncognised error (${(0, _Types.toString)(exc)})`;
  }

  return [covered, msg];
}

const exitFunc = new _Types.FSharpRef(_arg1 => {
  throw new Error("exit function not set");
});
exports.exitFunc = exitFunc;

function setExitFunc(f) {
  exitFunc.contents = f;
}

function withErrorHandler(getErrorTrace, action) {
  try {
    return action();
  } catch (exc) {
    const patternInput = errorToReadableString(exc);
    const errorMsg = patternInput[1];
    const errorTrace = getErrorTrace();
    const currentPostion = errorTrace.currentPos;
    const currentDef = errorTrace.whichDef;
    const currentDefBranch = errorTrace.branch | 0;
    let exprStack;

    const _arg1 = (0, _Option.map)(_Inspect.showExpr, (0, _List.tryHead)(errorTrace.exprStack));

    if (_arg1 != null) {
      const str = _arg1;
      exprStack = `  in '${str}'
`;
    } else {
      exprStack = "";
    }

    let stackTrace;
    const file = currentPostion.filename;
    const line = currentPostion.line | 0;
    const col = currentPostion.col | 0;
    let patternInput_1;

    switch (currentDef.tag) {
      case 0:
        {
          const decl_1 = currentDef.fields[0];
          const prod_1 = (0, _List.item)(currentDefBranch, decl_1.define)[1];
          const str_Params = (0, _String.join)(", ", decl_1.parameters);
          const str_Symbols_1 = (0, _String.join)(" ", (0, _List.map)(_Grammar.symbol__Inspect, prod_1.symbols));
          const str_Action_1 = (0, _Inspect.showExpr)(prod_1.action);
          patternInput_1 = [decl_1.lhs, `${decl_1.lhs}(${str_Params}) : ${str_Symbols_1} { ${str_Action_1} }`];
          break;
        }

      case 5:
        {
          patternInput_1 = [`type declaration for ${currentDef.fields[0].ident}`, ""];
          break;
        }

      case 3:
        {
          patternInput_1 = [`variable declaration for ${currentDef.fields[0].ident}`, ""];
          break;
        }

      case 4:
        {
          patternInput_1 = [`constructor declaration for ${currentDef.fields[0].ident}`, ""];
          break;
        }

      case 2:
        {
          patternInput_1 = [`lexer declaration for ${currentDef.fields[0].lhs}`, ""];
          break;
        }

      case 6:
        {
          patternInput_1 = [`ignore declaration for ${currentDef.fields[0].ignoreList}`, ""];
          break;
        }

      default:
        {
          const decl = currentDef.fields[0];
          const prod = (0, _List.item)(currentDefBranch, decl.define)[1];
          const str_Action = (0, _Inspect.showExpr)(prod.action);
          const str_Symbols = (0, _String.join)(" ", (0, _List.map)(_Grammar.symbol__Inspect, prod.symbols));
          patternInput_1 = [decl.lhs, `${decl.lhs}: ${str_Symbols} { ${str_Action} }`];
        }
    }

    const repr = patternInput_1[1];
    const indicator = patternInput_1[0];
    stackTrace = repr === "" ? `File '${file}', line ${line}, character ${col}
` + `  at '${indicator}'
` + `  ${errorMsg}
` : `File '${file}', line ${line}, character ${col}
` + `  at rule '${indicator}':
  '${repr}'
` + exprStack + `  ${errorMsg}
`;

    if (patternInput[0]) {
      (0, _String.toConsole)((0, _String.printf)("%s"))(stackTrace);
      exitFunc.contents(1);
      throw new Error("exit function not set");
    } else {
      throw new Error(stackTrace);
    }
  }
}