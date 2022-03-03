import { map, delay, toArray } from "../fable_modules/fable-library.3.7.5/Seq.js";
import { rangeChar } from "../fable_modules/fable-library.3.7.5/Range.js";
import { StringBuilder__Append_244C7CD6, StringBuilder__Append_Z721C83C5, StringBuilder_$ctor_Z721C83C5 } from "../fable_modules/fable-library.3.7.5/System.Text.js";
import { toString } from "../fable_modules/fable-library.3.7.5/Types.js";
import { printf, toText, replace } from "../fable_modules/fable-library.3.7.5/String.js";
import { singleton, cons, tail, head, isEmpty } from "../fable_modules/fable-library.3.7.5/List.js";
import { equals } from "../fable_modules/fable-library.3.7.5/Util.js";
import { some } from "../fable_modules/fable-library.3.7.5/Option.js";

export const lowerChars = toArray(delay(() => map((a) => a, rangeChar("a", "z"))));

export const upperChars = toArray(delay(() => map((a) => a, rangeChar("A", "Z"))));

export const sampleUnicodes = new Int32Array([20320, 26159, 22612, 33778, 21527]);

export const lowerRange = ["a", "z"];

export const upperRange = ["A", "Z"];

export const unicodeRange = ["一", "龥"];

export const digitRange = ["0", "9"];

export function isDigit(c) {
    if ("0" <= c) {
        return c <= "9";
    }
    else {
        return false;
    }
}

export function isUpper(c) {
    if ("A" <= c) {
        return c <= "Z";
    }
    else {
        return false;
    }
}

export function isLower(c) {
    if ("a" <= c) {
        return c <= "z";
    }
    else {
        return false;
    }
}

export function isUnicode(c) {
    if ("一" <= c) {
        return c <= "龥";
    }
    else {
        return false;
    }
}

export function _escapeString(s) {
    let matchValue;
    const sb = StringBuilder_$ctor_Z721C83C5("\"");
    for (let i = 0; i <= (s.length - 1); i++) {
        (matchValue = s[i], (matchValue === "\t") ? StringBuilder__Append_Z721C83C5(sb, "\\t") : ((matchValue === "\n") ? StringBuilder__Append_Z721C83C5(sb, "\\n") : ((matchValue === "\r") ? StringBuilder__Append_Z721C83C5(sb, "\\r") : ((matchValue === "\"") ? StringBuilder__Append_Z721C83C5(sb, "\\\"") : ((matchValue === "\\") ? StringBuilder__Append_Z721C83C5(sb, "\\\\") : StringBuilder__Append_244C7CD6(sb, matchValue))))));
    }
    StringBuilder__Append_Z721C83C5(sb, "\"");
    return toString(sb);
}

export function iToU4(i) {
    return "\\u" + replace(toText(printf("%4X"))(i), " ", "0");
}

export function _escapeStringSingleQuoted(s) {
    let matchValue;
    const sb = StringBuilder_$ctor_Z721C83C5("\u0027");
    for (let i = 0; i <= (s.length - 1); i++) {
        (matchValue = s[i], (matchValue === "\t") ? StringBuilder__Append_Z721C83C5(sb, "\\t") : ((matchValue === "\n") ? StringBuilder__Append_Z721C83C5(sb, "\\n") : ((matchValue === "\r") ? StringBuilder__Append_Z721C83C5(sb, "\\r") : ((matchValue === "\u0027") ? StringBuilder__Append_Z721C83C5(sb, "\\\u0027") : ((matchValue === "\\") ? StringBuilder__Append_Z721C83C5(sb, "\\\\") : StringBuilder__Append_244C7CD6(sb, matchValue))))));
    }
    StringBuilder__Append_Z721C83C5(sb, "\u0027");
    return toString(sb);
}

export function escapeStringSingleQuoted(s) {
    return _escapeStringSingleQuoted(s);
}

export function escapeString(s) {
    return _escapeString(s);
}

export function capitalized(s) {
    if (s === "") {
        return s;
    }
    else {
        return s[0].toUpperCase() + s.slice(1, (s.length - 1) + 1);
    }
}

export function List_tryLookup(key_mut, x_mut) {
    List_tryLookup:
    while (true) {
        const key = key_mut, x = x_mut;
        if (!isEmpty(x)) {
            if (equals(head(x)[0], key)) {
                return some(head(x)[1]);
            }
            else if (!isEmpty(x)) {
                key_mut = key;
                x_mut = tail(x);
                continue List_tryLookup;
            }
            else {
                throw (new Error("Match failure"));
            }
        }
        else {
            return void 0;
        }
        break;
    }
}

export function List_lookup(key_mut, x_mut) {
    List_lookup:
    while (true) {
        const key = key_mut, x = x_mut;
        if (!isEmpty(x)) {
            if (equals(head(x)[0], key)) {
                return head(x)[1];
            }
            else if (!isEmpty(x)) {
                key_mut = key;
                x_mut = tail(x);
                continue List_lookup;
            }
            else {
                throw (new Error("Match failure"));
            }
        }
        else {
            throw (new Error("key not found"));
        }
        break;
    }
}

export function List_replaceWith(key, func, xs) {
    if (!isEmpty(xs)) {
        if (equals(head(xs)[0], key)) {
            return cons([head(xs)[0], func(some(head(xs)[1]))], tail(xs));
        }
        else if (!isEmpty(xs)) {
            return cons(head(xs), List_replaceWith(key, func, tail(xs)));
        }
        else {
            throw (new Error("Match failure"));
        }
    }
    else {
        return singleton([key, func(void 0)]);
    }
}

