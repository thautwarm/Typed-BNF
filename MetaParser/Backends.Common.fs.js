import { toString, Record } from "../fable_modules/fable-library.3.7.5/Types.js";
import { list_type, lambda_type, bool_type, char_type, int32_type, record_type, class_type, string_type } from "../fable_modules/fable-library.3.7.5/Reflection.js";
import { add as add_2, contains, empty } from "../fable_modules/fable-library.3.7.5/Set.js";
import { comparePrimitives } from "../fable_modules/fable-library.3.7.5/Util.js";
import { StringBuilder__Append_Z721C83C5, StringBuilder__Append_244C7CD6, StringBuilder_$ctor } from "../fable_modules/fable-library.3.7.5/System.Text.js";
import { lowerChars } from "./Utils.fs.js";
import { Doc$reflection } from "../FableSedlex/CodeGen.fs.js";
import { reverse, singleton, empty as empty_1, append } from "../fable_modules/fable-library.3.7.5/List.js";
import { singleton as singleton_1, collect, delay, toList } from "../fable_modules/fable-library.3.7.5/Seq.js";

export class NameMangling_nameEnv extends Record {
    constructor(usedNames) {
        super();
        this.usedNames = usedNames;
    }
}

export function NameMangling_nameEnv$reflection() {
    return record_type("tbnf.Backends.Common.NameMangling.nameEnv", [], NameMangling_nameEnv, () => [["usedNames", class_type("Microsoft.FSharp.Collections.FSharpSet`1", [string_type])]]);
}

export class NameMangling_IdentifierDescriptor extends Record {
    constructor(isValidChar, charToValid, nameEnv) {
        super();
        this.isValidChar = isValidChar;
        this.charToValid = charToValid;
        this.nameEnv = nameEnv;
    }
}

export function NameMangling_IdentifierDescriptor$reflection() {
    return record_type("tbnf.Backends.Common.NameMangling.IdentifierDescriptor", [], NameMangling_IdentifierDescriptor, () => [["isValidChar", lambda_type(int32_type, lambda_type(char_type, bool_type))], ["charToValid", lambda_type(int32_type, lambda_type(char_type, string_type))], ["nameEnv", NameMangling_nameEnv$reflection()]]);
}

export function NameMangling_IdentifierDescriptor_Create_Z48C5CCEF(isValidChar, charToValid) {
    return new NameMangling_IdentifierDescriptor(isValidChar, charToValid, new NameMangling_nameEnv(empty({
        Compare: comparePrimitives,
    })));
}

export function NameMangling_IdentifierDescriptor__WithNameEnv_Z7613F24B(this$, x) {
    return new NameMangling_IdentifierDescriptor(this$.isValidChar, this$.charToValid, x);
}

export function NameMangling_maskChar(low, high, i) {
    return String.fromCharCode(low + (i % ((high - low) + 1)));
}

export function NameMangling_is_valid_identifier(idr, s) {
    if (s === "") {
        return true;
    }
    else {
        const loop = (i_mut) => {
            loop:
            while (true) {
                const i = i_mut;
                if (i >= s.length) {
                    return true;
                }
                else if (idr.isValidChar(i, s[i])) {
                    i_mut = (i + 1);
                    continue loop;
                }
                else {
                    return false;
                }
                break;
            }
        };
        return loop(0);
    }
}

export function NameMangling_to_valid_identifier(idr, s) {
    if (s === "") {
        throw (new Error("empty identifier"));
    }
    else {
        const sb = StringBuilder_$ctor();
        const loop = (i_mut) => {
            loop:
            while (true) {
                const i = i_mut;
                if (i >= s.length) {
                }
                else {
                    if (idr.isValidChar(i, s[i])) {
                        StringBuilder__Append_244C7CD6(sb, s[i]);
                    }
                    else {
                        StringBuilder__Append_Z721C83C5(sb, idr.charToValid(i, s[i]));
                    }
                    i_mut = (i + 1);
                    continue loop;
                }
                break;
            }
        };
        loop(0);
        return toString(sb);
    }
}

export function NameMangling_mangle(abandoned_names, idr, n) {
    let s = NameMangling_is_valid_identifier(idr, n) ? n : NameMangling_to_valid_identifier(idr, n);
    while (contains(s, abandoned_names)) {
        const add = idr.isValidChar(s.length, "_") ? ("_" + idr.charToValid(s.length + 1, lowerChars[s.length % lowerChars.length])) : idr.charToValid(s.length, lowerChars[s.length % lowerChars.length]);
        s = (s + add);
    }
    const nameEnv = idr.nameEnv;
    while (contains(s, nameEnv.usedNames)) {
        const add_1 = idr.isValidChar(s.length, "_") ? ("_" + idr.charToValid(s.length + 1, lowerChars[s.length % lowerChars.length])) : idr.charToValid(s.length, lowerChars[s.length % lowerChars.length]);
        s = (s + add_1);
    }
    nameEnv.usedNames = add_2(s, nameEnv.usedNames);
    return s;
}

export class DocBuilder_block$1 extends Record {
    constructor(suite, value) {
        super();
        this.suite = suite;
        this.value = value;
    }
}

export function DocBuilder_block$1$reflection(gen0) {
    return record_type("tbnf.Backends.Common.DocBuilder.block`1", [gen0], DocBuilder_block$1, () => [["suite", list_type(Doc$reflection())], ["value", gen0]]);
}

export class DocBuilder_Builder {
    constructor() {
    }
}

export function DocBuilder_Builder$reflection() {
    return class_type("tbnf.Backends.Common.DocBuilder.Builder", void 0, DocBuilder_Builder);
}

export function DocBuilder_Builder_$ctor() {
    return new DocBuilder_Builder();
}

export function DocBuilder_Builder__Bind_30A200B3(__, m, k) {
    const m$0027 = k(m.value);
    return new DocBuilder_block$1(append(m$0027.suite, m.suite), m$0027.value);
}

export function DocBuilder_Builder__Return_1505(__, v) {
    return new DocBuilder_block$1(empty_1(), v);
}

export function DocBuilder_Builder__Run_ZD0BB270(__, m) {
    return m;
}

export function DocBuilder_Builder__Combine_Z5C764E00(__, m1, m2) {
    return new DocBuilder_block$1(append(m2.suite, m1.suite), m2.value);
}

export function DocBuilder_Builder__Yield_417FD60(__, a) {
    return new DocBuilder_block$1(singleton(a), empty_1());
}

export function DocBuilder_Builder__YieldFrom_38ABB44A(__, a) {
    return new DocBuilder_block$1(reverse(a), void 0);
}

export function DocBuilder_Builder__Zero(__) {
    return new DocBuilder_block$1(empty_1(), void 0);
}

export function DocBuilder_Builder__Delay_Z3A9C5A06(__, x) {
    return x();
}

export function DocBuilder_Builder__For_2B96F4AF(__, m, f) {
    let suite = empty_1();
    const value = toList(delay(() => collect((each) => {
        const m$0027 = f(each);
        suite = append(m$0027.suite, suite);
        return singleton_1(m$0027.value);
    }, m)));
    return new DocBuilder_block$1(suite, value);
}

export function DocBuilder_Builder__ReturnFrom_ZD0BB270(__, m) {
    return m;
}

export function DocBuilder_runCG(m) {
    return [m.value, reverse(m.suite)];
}

export const DocBuilder_cg = DocBuilder_Builder_$ctor();

