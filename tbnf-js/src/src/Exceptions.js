"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.CannotInferField = void 0;
exports.CannotInferField$reflection = CannotInferField$reflection;
exports.ComponentAccessingOutOfBound = void 0;
exports.ComponentAccessingOutOfBound$reflection = ComponentAccessingOutOfBound$reflection;
exports.DuplicateLexer = DuplicateLexer;
exports.DuplicateNonterminal = DuplicateNonterminal;
exports.DuplicateTypeVariable = DuplicateTypeVariable;
exports.DuplicateVariable = DuplicateVariable;
exports.ErrorTrace = void 0;
exports.ErrorTrace$reflection = ErrorTrace$reflection;
exports.IllFormedType = void 0;
exports.IllFormedType$reflection = IllFormedType$reflection;
exports.InvalidConstructorDefinination = void 0;
exports.InvalidConstructorDefinination$reflection = InvalidConstructorDefinination$reflection;
exports.InvalidConstructorDefininationCause = void 0;
exports.InvalidConstructorDefininationCause$reflection = InvalidConstructorDefininationCause$reflection;
exports.InvalidKind = void 0;
exports.InvalidKind$reflection = InvalidKind$reflection;
exports.InvalidTypeApplication = void 0;
exports.InvalidTypeApplication$reflection = InvalidTypeApplication$reflection;
exports.MacroResolveError = void 0;
exports.MacroResolveError$reflection = MacroResolveError$reflection;
exports.NameError = void 0;
exports.NameError$reflection = NameError$reflection;
exports.NameErrorKind = void 0;
exports.NameErrorKind$reflection = NameErrorKind$reflection;
exports.NameErrorScope = void 0;
exports.NameErrorScope$reflection = NameErrorScope$reflection;
exports.NoBaseName = void 0;
exports.NoBaseName$reflection = NoBaseName$reflection;
exports.NoField = void 0;
exports.NoField$reflection = NoField$reflection;
exports.NotGlobalVariable = void 0;
exports.NotGlobalVariable$reflection = NotGlobalVariable$reflection;
exports.TypeMismatch = void 0;
exports.TypeMismatch$reflection = TypeMismatch$reflection;
exports.TypeUnexpected = void 0;
exports.TypeUnexpected$reflection = TypeUnexpected$reflection;
exports.UnboundLexer = UnboundLexer;
exports.UnboundNonterminal = UnboundNonterminal;
exports.UnboundTypeVariable = UnboundTypeVariable;
exports.UnboundVariable = UnboundVariable;
exports.UnsolvedTypeVariable = void 0;
exports.UnsolvedTypeVariable$reflection = UnsolvedTypeVariable$reflection;

var _Types = require("../fable_modules/fable-library.3.7.5/Types.js");

var _Grammar = require("./Grammar.js");

var _Reflection = require("../fable_modules/fable-library.3.7.5/Reflection.js");

var _Util = require("../fable_modules/fable-library.3.7.5/Util.js");

class ErrorTrace extends _Types.Record {
  constructor(whichDef, branch, exprStack, currentPos) {
    super();
    this.whichDef = whichDef;
    this.branch = branch | 0;
    this.exprStack = exprStack;
    this.currentPos = currentPos;
  }

}

exports.ErrorTrace = ErrorTrace;

function ErrorTrace$reflection() {
  return (0, _Reflection.record_type)("tbnf.Exceptions.ErrorTrace", [], ErrorTrace, () => [["whichDef", (0, _Grammar.definition$reflection)()], ["branch", _Reflection.int32_type], ["exprStack", (0, _Reflection.list_type)((0, _Grammar.expr$reflection)())], ["currentPos", (0, _Grammar.position$reflection)()]]);
}

class NameErrorScope extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["TYPE", "VAR", "NONTERM", "LEXER"];
  }

}

exports.NameErrorScope = NameErrorScope;

function NameErrorScope$reflection() {
  return (0, _Reflection.union_type)("tbnf.Exceptions.NameErrorScope", [], NameErrorScope, () => [[], [], [], []]);
}

class NameErrorKind extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["Duplicate", "Unbound"];
  }

}

exports.NameErrorKind = NameErrorKind;

function NameErrorKind$reflection() {
  return (0, _Reflection.union_type)("tbnf.Exceptions.NameErrorKind", [], NameErrorKind, () => [[], []]);
}

class IllFormedType extends _Types.FSharpException {
  constructor(Data0, Data1) {
    super();
    this.Data0 = Data0;
    this.Data1 = Data1;
  }

}

exports.IllFormedType = IllFormedType;

function IllFormedType$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.IllFormedType", void 0, IllFormedType, (0, _Reflection.class_type)("System.Exception"));
}

function IllFormedType__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof IllFormedType) {
        if ((0, _Util.equals)(this$.Data0, obj.Data0)) {
          return (0, _Util.equals)(this$.Data1, obj.Data1);
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class TypeMismatch extends _Types.FSharpException {
  constructor(Data0, Data1) {
    super();
    this.Data0 = Data0;
    this.Data1 = Data1;
  }

}

exports.TypeMismatch = TypeMismatch;

function TypeMismatch$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.TypeMismatch", void 0, TypeMismatch, (0, _Reflection.class_type)("System.Exception"));
}

function TypeMismatch__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof TypeMismatch) {
        if ((0, _Util.equals)(this$.Data0, obj.Data0)) {
          return (0, _Util.equals)(this$.Data1, obj.Data1);
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class TypeUnexpected extends _Types.FSharpException {
  constructor(got, expected) {
    super();
    this.got = got;
    this.expected = expected;
  }

}

exports.TypeUnexpected = TypeUnexpected;

function TypeUnexpected$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.TypeUnexpected", void 0, TypeUnexpected, (0, _Reflection.class_type)("System.Exception"));
}

function TypeUnexpected__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof TypeUnexpected) {
        if ((0, _Util.equals)(this$.got, obj.got)) {
          return (0, _Util.equals)(this$.expected, obj.expected);
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class InvalidTypeApplication extends _Types.FSharpException {
  constructor(Data0) {
    super();
    this.Data0 = Data0;
  }

}

exports.InvalidTypeApplication = InvalidTypeApplication;

function InvalidTypeApplication$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.InvalidTypeApplication", void 0, InvalidTypeApplication, (0, _Reflection.class_type)("System.Exception"));
}

function InvalidTypeApplication__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof InvalidTypeApplication) {
        return (0, _Util.equals)(this$.Data0, obj.Data0);
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class InvalidKind extends _Types.FSharpException {
  constructor(Data0) {
    super();
    this.Data0 = Data0;
  }

}

exports.InvalidKind = InvalidKind;

function InvalidKind$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.InvalidKind", void 0, InvalidKind, (0, _Reflection.class_type)("System.Exception"));
}

function InvalidKind__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof InvalidKind) {
        return (0, _Util.equals)(this$.Data0, obj.Data0);
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class NoField extends _Types.FSharpException {
  constructor(Data0, Data1) {
    super();
    this.Data0 = Data0;
    this.Data1 = Data1;
  }

}

exports.NoField = NoField;

function NoField$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.NoField", void 0, NoField, (0, _Reflection.class_type)("System.Exception"));
}

function NoField__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof NoField) {
        if ((0, _Util.equals)(this$.Data0, obj.Data0)) {
          return this$.Data1 === obj.Data1;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class CannotInferField extends _Types.FSharpException {
  constructor(Data0) {
    super();
    this.Data0 = Data0;
  }

}

exports.CannotInferField = CannotInferField;

function CannotInferField$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.CannotInferField", void 0, CannotInferField, (0, _Reflection.class_type)("System.Exception"));
}

function CannotInferField__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof CannotInferField) {
        return (0, _Util.equals)(this$.Data0, obj.Data0);
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class NoBaseName extends _Types.FSharpException {
  constructor(Data0) {
    super();
    this.Data0 = Data0;
  }

}

exports.NoBaseName = NoBaseName;

function NoBaseName$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.NoBaseName", void 0, NoBaseName, (0, _Reflection.class_type)("System.Exception"));
}

function NoBaseName__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof NoBaseName) {
        return (0, _Util.equals)(this$.Data0, obj.Data0);
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class NameError extends _Types.FSharpException {
  constructor(Data0, Data1, Data2) {
    super();
    this.Data0 = Data0;
    this.Data1 = Data1;
    this.Data2 = Data2;
  }

}

exports.NameError = NameError;

function NameError$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.NameError", void 0, NameError, (0, _Reflection.class_type)("System.Exception"));
}

function NameError__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof NameError) {
        if (this$.Data0 === obj.Data0) {
          if ((0, _Util.equals)(this$.Data1, obj.Data1)) {
            return (0, _Util.equals)(this$.Data2, obj.Data2);
          } else {
            return false;
          }
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

function UnboundTypeVariable(name) {
  return new NameError(name, new NameErrorScope(0), new NameErrorKind(1));
}

function DuplicateTypeVariable(name) {
  return new NameError(name, new NameErrorScope(0), new NameErrorKind(0));
}

function UnboundVariable(name) {
  return new NameError(name, new NameErrorScope(1), new NameErrorKind(1));
}

function DuplicateVariable(name) {
  return new NameError(name, new NameErrorScope(1), new NameErrorKind(0));
}

function UnboundNonterminal(name) {
  return new NameError(name, new NameErrorScope(2), new NameErrorKind(1));
}

function DuplicateNonterminal(name) {
  return new NameError(name, new NameErrorScope(2), new NameErrorKind(0));
}

function UnboundLexer(name) {
  return new NameError(name, new NameErrorScope(3), new NameErrorKind(1));
}

function DuplicateLexer(name) {
  return new NameError(name, new NameErrorScope(3), new NameErrorKind(0));
}

class ComponentAccessingOutOfBound extends _Types.FSharpException {
  constructor(access, maxsize) {
    super();
    this.access = access | 0;
    this.maxsize = maxsize | 0;
  }

}

exports.ComponentAccessingOutOfBound = ComponentAccessingOutOfBound;

function ComponentAccessingOutOfBound$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.ComponentAccessingOutOfBound", void 0, ComponentAccessingOutOfBound, (0, _Reflection.class_type)("System.Exception"));
}

function ComponentAccessingOutOfBound__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof ComponentAccessingOutOfBound) {
        if (this$.access === obj.access) {
          return this$.maxsize === obj.maxsize;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class MacroResolveError extends _Types.FSharpException {
  constructor(Data0) {
    super();
    this.Data0 = Data0;
  }

}

exports.MacroResolveError = MacroResolveError;

function MacroResolveError$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.MacroResolveError", void 0, MacroResolveError, (0, _Reflection.class_type)("System.Exception"));
}

function MacroResolveError__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof MacroResolveError) {
        return this$.Data0 === obj.Data0;
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class UnsolvedTypeVariable extends _Types.FSharpException {
  constructor() {
    super();
  }

}

exports.UnsolvedTypeVariable = UnsolvedTypeVariable;

function UnsolvedTypeVariable$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.UnsolvedTypeVariable", void 0, UnsolvedTypeVariable, (0, _Reflection.class_type)("System.Exception"));
}

function UnsolvedTypeVariable__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof UnsolvedTypeVariable) {
        return 1;
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class NotGlobalVariable extends _Types.FSharpException {
  constructor(Data0) {
    super();
    this.Data0 = Data0;
  }

}

exports.NotGlobalVariable = NotGlobalVariable;

function NotGlobalVariable$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.NotGlobalVariable", void 0, NotGlobalVariable, (0, _Reflection.class_type)("System.Exception"));
}

function NotGlobalVariable__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof NotGlobalVariable) {
        return this$.Data0 === obj.Data0;
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}

class InvalidConstructorDefininationCause extends _Types.Union {
  constructor(tag, ...fields) {
    super();
    this.tag = tag | 0;
    this.fields = fields;
  }

  cases() {
    return ["CauseExternalType", "CauseRecordType", "CauseGenericADTType", "CauseDuplicateConstructorName", "CauseInvalidConstructorType"];
  }

}

exports.InvalidConstructorDefininationCause = InvalidConstructorDefininationCause;

function InvalidConstructorDefininationCause$reflection() {
  return (0, _Reflection.union_type)("tbnf.Exceptions.InvalidConstructorDefininationCause", [], InvalidConstructorDefininationCause, () => [[["typename", _Reflection.string_type]], [["typename", _Reflection.string_type]], [["typename", _Reflection.string_type], ["parameters", (0, _Reflection.list_type)(_Reflection.string_type)]], [], [["Item", (0, _Grammar.monot$reflection)()]]]);
}

class InvalidConstructorDefinination extends _Types.FSharpException {
  constructor(ctorName, cause) {
    super();
    this.ctorName = ctorName;
    this.cause = cause;
  }

}

exports.InvalidConstructorDefinination = InvalidConstructorDefinination;

function InvalidConstructorDefinination$reflection() {
  return (0, _Reflection.class_type)("tbnf.Exceptions.InvalidConstructorDefinination", void 0, InvalidConstructorDefinination, (0, _Reflection.class_type)("System.Exception"));
}

function InvalidConstructorDefinination__Equals_229D3F39(this$, obj) {
  if (!(0, _Util.equals)(this$, null)) {
    if (!(0, _Util.equals)(obj, null)) {
      if (obj instanceof InvalidConstructorDefinination) {
        if (this$.ctorName === obj.ctorName) {
          return (0, _Util.equals)(this$.cause, obj.cause);
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else if (!(0, _Util.equals)(obj, null)) {
    return false;
  } else {
    return true;
  }
}