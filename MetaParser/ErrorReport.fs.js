import { Union } from "../fable_modules/fable-library.3.7.5/Types.js";
import { union_type } from "../fable_modules/fable-library.3.7.5/Reflection.js";
import { TypeUnexpected, IllFormedType } from "./Exceptions.fs.js";
import { inspectMonoType } from "./Inspect.fs.js";
import { monot__Prune } from "./Grammar.fs.js";

export class result$2 extends Union {
    constructor(tag, ...fields) {
        super();
        this.tag = (tag | 0);
        this.fields = fields;
    }
    cases() {
        return ["Ok", "Err"];
    }
}

export function result$2$reflection(gen0, gen1) {
    return union_type("tbnf.ErrorReport.result`2", [gen0, gen1], result$2, () => [[["Item", gen0]], [["Item", gen1]]]);
}

export function showExpr(e) {
    throw (new Error(""));
}

export function filter_error(errorTrace, action) {
    try {
        return new result$2(0, action());
    }
    catch (matchValue) {
        if (matchValue instanceof IllFormedType) {
            const t1_1 = inspectMonoType(monot__Prune(matchValue.Data0));
            const t2_1 = inspectMonoType(monot__Prune(matchValue.Data1));
            return new result$2(1, `recursive types are invalid: ${t1_1} ~ ${t2_1}`);
        }
        else if (matchValue instanceof TypeUnexpected) {
            const got_1 = inspectMonoType(monot__Prune(matchValue.got));
            const expected_1 = inspectMonoType(monot__Prune(matchValue.expected));
            return new result$2(1, `expected ${got_1} ~ ${expected_1}`);
        }
        else {
            throw matchValue;
        }
    }
}

