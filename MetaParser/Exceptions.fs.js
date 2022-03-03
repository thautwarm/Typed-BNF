import { FSharpException, Union, Record } from "../fable_modules/fable-library.3.7.5/Types.js";
import { monot$reflection, expr$reflection, definition$reflection } from "./Grammar.fs.js";
import { string_type, class_type, union_type, record_type, list_type } from "../fable_modules/fable-library.3.7.5/Reflection.js";
import { equals } from "../fable_modules/fable-library.3.7.5/Util.js";

export class ErrorTrace extends Record {
    constructor(whichDef, exprStack, currentRexpr) {
        super();
        this.whichDef = whichDef;
        this.exprStack = exprStack;
        this.currentRexpr = currentRexpr;
    }
}

export function ErrorTrace$reflection() {
    return record_type("tbnf.Exceptions.ErrorTrace", [], ErrorTrace, () => [["whichDef", definition$reflection()], ["exprStack", list_type(expr$reflection())], ["currentRexpr", expr$reflection()]]);
}

export class NameErrorScope extends Union {
    constructor(tag, ...fields) {
        super();
        this.tag = (tag | 0);
        this.fields = fields;
    }
    cases() {
        return ["TYPE", "VAR", "NONTERM", "LEXER"];
    }
}

export function NameErrorScope$reflection() {
    return union_type("tbnf.Exceptions.NameErrorScope", [], NameErrorScope, () => [[], [], [], []]);
}

export class NameErrorKind extends Union {
    constructor(tag, ...fields) {
        super();
        this.tag = (tag | 0);
        this.fields = fields;
    }
    cases() {
        return ["Duplicate", "Unbound"];
    }
}

export function NameErrorKind$reflection() {
    return union_type("tbnf.Exceptions.NameErrorKind", [], NameErrorKind, () => [[], []]);
}

export class IllFormedType extends FSharpException {
    constructor(Data0, Data1) {
        super();
        this.Data0 = Data0;
        this.Data1 = Data1;
    }
}

export function IllFormedType$reflection() {
    return class_type("tbnf.Exceptions.IllFormedType", void 0, IllFormedType, class_type("System.Exception"));
}

function IllFormedType__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof IllFormedType) {
                if (equals(this$.Data0, obj.Data0)) {
                    return equals(this$.Data1, obj.Data1);
                }
                else {
                    return false;
                }
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class TypeMismatch extends FSharpException {
    constructor(Data0, Data1) {
        super();
        this.Data0 = Data0;
        this.Data1 = Data1;
    }
}

export function TypeMismatch$reflection() {
    return class_type("tbnf.Exceptions.TypeMismatch", void 0, TypeMismatch, class_type("System.Exception"));
}

function TypeMismatch__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof TypeMismatch) {
                if (equals(this$.Data0, obj.Data0)) {
                    return equals(this$.Data1, obj.Data1);
                }
                else {
                    return false;
                }
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class TypeUnexpected extends FSharpException {
    constructor(got, expected) {
        super();
        this.got = got;
        this.expected = expected;
    }
}

export function TypeUnexpected$reflection() {
    return class_type("tbnf.Exceptions.TypeUnexpected", void 0, TypeUnexpected, class_type("System.Exception"));
}

function TypeUnexpected__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof TypeUnexpected) {
                if (equals(this$.got, obj.got)) {
                    return equals(this$.expected, obj.expected);
                }
                else {
                    return false;
                }
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class InvalidTypeApplication extends FSharpException {
    constructor(Data0) {
        super();
        this.Data0 = Data0;
    }
}

export function InvalidTypeApplication$reflection() {
    return class_type("tbnf.Exceptions.InvalidTypeApplication", void 0, InvalidTypeApplication, class_type("System.Exception"));
}

function InvalidTypeApplication__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof InvalidTypeApplication) {
                return equals(this$.Data0, obj.Data0);
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class InvalidKind extends FSharpException {
    constructor(Data0) {
        super();
        this.Data0 = Data0;
    }
}

export function InvalidKind$reflection() {
    return class_type("tbnf.Exceptions.InvalidKind", void 0, InvalidKind, class_type("System.Exception"));
}

function InvalidKind__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof InvalidKind) {
                return equals(this$.Data0, obj.Data0);
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class NoField extends FSharpException {
    constructor(Data0, Data1) {
        super();
        this.Data0 = Data0;
        this.Data1 = Data1;
    }
}

export function NoField$reflection() {
    return class_type("tbnf.Exceptions.NoField", void 0, NoField, class_type("System.Exception"));
}

function NoField__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof NoField) {
                if (equals(this$.Data0, obj.Data0)) {
                    return this$.Data1 === obj.Data1;
                }
                else {
                    return false;
                }
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class CannotInferField extends FSharpException {
    constructor(Data0) {
        super();
        this.Data0 = Data0;
    }
}

export function CannotInferField$reflection() {
    return class_type("tbnf.Exceptions.CannotInferField", void 0, CannotInferField, class_type("System.Exception"));
}

function CannotInferField__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof CannotInferField) {
                return equals(this$.Data0, obj.Data0);
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class NoBaseName extends FSharpException {
    constructor(Data0) {
        super();
        this.Data0 = Data0;
    }
}

export function NoBaseName$reflection() {
    return class_type("tbnf.Exceptions.NoBaseName", void 0, NoBaseName, class_type("System.Exception"));
}

function NoBaseName__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof NoBaseName) {
                return equals(this$.Data0, obj.Data0);
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class NameError extends FSharpException {
    constructor(Data0, Data1, Data2) {
        super();
        this.Data0 = Data0;
        this.Data1 = Data1;
        this.Data2 = Data2;
    }
}

export function NameError$reflection() {
    return class_type("tbnf.Exceptions.NameError", void 0, NameError, class_type("System.Exception"));
}

function NameError__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof NameError) {
                if (this$.Data0 === obj.Data0) {
                    if (equals(this$.Data1, obj.Data1)) {
                        return equals(this$.Data2, obj.Data2);
                    }
                    else {
                        return false;
                    }
                }
                else {
                    return false;
                }
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export function UnboundTypeVariable(name) {
    return new NameError(name, new NameErrorScope(0), new NameErrorKind(1));
}

export function DuplicateTypeVariable(name) {
    return new NameError(name, new NameErrorScope(0), new NameErrorKind(0));
}

export function UnboundVariable(name) {
    return new NameError(name, new NameErrorScope(1), new NameErrorKind(1));
}

export function DuplicateVariable(name) {
    return new NameError(name, new NameErrorScope(1), new NameErrorKind(0));
}

export function UnboundNonterminal(name) {
    return new NameError(name, new NameErrorScope(2), new NameErrorKind(1));
}

export function DuplicateNonterminal(name) {
    return new NameError(name, new NameErrorScope(2), new NameErrorKind(0));
}

export function UnboundLexer(name) {
    return new NameError(name, new NameErrorScope(3), new NameErrorKind(1));
}

export function DuplicateLexer(name) {
    return new NameError(name, new NameErrorScope(3), new NameErrorKind(0));
}

export class ComponentAccessingOutOfBound extends FSharpException {
    constructor(Data0) {
        super();
        this.Data0 = (Data0 | 0);
    }
}

export function ComponentAccessingOutOfBound$reflection() {
    return class_type("tbnf.Exceptions.ComponentAccessingOutOfBound", void 0, ComponentAccessingOutOfBound, class_type("System.Exception"));
}

function ComponentAccessingOutOfBound__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof ComponentAccessingOutOfBound) {
                return this$.Data0 === obj.Data0;
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class MacroResolveError extends FSharpException {
    constructor(Data0) {
        super();
        this.Data0 = Data0;
    }
}

export function MacroResolveError$reflection() {
    return class_type("tbnf.Exceptions.MacroResolveError", void 0, MacroResolveError, class_type("System.Exception"));
}

function MacroResolveError__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof MacroResolveError) {
                return this$.Data0 === obj.Data0;
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class UnsolvedTypeVariable extends FSharpException {
    constructor() {
        super();
    }
}

export function UnsolvedTypeVariable$reflection() {
    return class_type("tbnf.Exceptions.UnsolvedTypeVariable", void 0, UnsolvedTypeVariable, class_type("System.Exception"));
}

function UnsolvedTypeVariable__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof UnsolvedTypeVariable) {
                return 1;
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class NotGlobalVariable extends FSharpException {
    constructor(Data0) {
        super();
        this.Data0 = Data0;
    }
}

export function NotGlobalVariable$reflection() {
    return class_type("tbnf.Exceptions.NotGlobalVariable", void 0, NotGlobalVariable, class_type("System.Exception"));
}

function NotGlobalVariable__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof NotGlobalVariable) {
                return this$.Data0 === obj.Data0;
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class MalformedConstructor extends FSharpException {
    constructor(Data0, Data1) {
        super();
        this.Data0 = Data0;
        this.Data1 = Data1;
    }
}

export function MalformedConstructor$reflection() {
    return class_type("tbnf.Exceptions.MalformedConstructor", void 0, MalformedConstructor, class_type("System.Exception"));
}

function MalformedConstructor__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof MalformedConstructor) {
                if (this$.Data0 === obj.Data0) {
                    return equals(this$.Data1, obj.Data1);
                }
                else {
                    return false;
                }
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

export class InvalidConstructorDefininationCause extends Union {
    constructor(tag, ...fields) {
        super();
        this.tag = (tag | 0);
        this.fields = fields;
    }
    cases() {
        return ["CauseExternalType", "CauseRecordType", "CauseGenericADTType", "CauseDuplicateConstructorName", "CauseInvalidConstructorType"];
    }
}

export function InvalidConstructorDefininationCause$reflection() {
    return union_type("tbnf.Exceptions.InvalidConstructorDefininationCause", [], InvalidConstructorDefininationCause, () => [[], [], [], [["Item", string_type]], [["Item", monot$reflection()]]]);
}

export class InvalidConstructorDefinination extends FSharpException {
    constructor(Data0) {
        super();
        this.Data0 = Data0;
    }
}

export function InvalidConstructorDefinination$reflection() {
    return class_type("tbnf.Exceptions.InvalidConstructorDefinination", void 0, InvalidConstructorDefinination, class_type("System.Exception"));
}

function InvalidConstructorDefinination__Equals_229D3F39(this$, obj) {
    if (!equals(this$, null)) {
        if (!equals(obj, null)) {
            if (obj instanceof InvalidConstructorDefinination) {
                return equals(this$.Data0, obj.Data0);
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    else if (!equals(obj, null)) {
        return false;
    }
    else {
        return true;
    }
}

