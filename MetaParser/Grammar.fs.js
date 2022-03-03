import { FSharpRef, Union, Record, toString } from "../fable_modules/fable-library.3.7.5/Types.js";
import { anonRecord_type, union_type, bool_type, float64_type, tuple_type, list_type, record_type, string_type, int32_type, class_type } from "../fable_modules/fable-library.3.7.5/Reflection.js";
import { singleton, iterate, exists, map } from "../fable_modules/fable-library.3.7.5/List.js";
import { join } from "../fable_modules/fable-library.3.7.5/String.js";
import { escapeString } from "./Utils.fs.js";
import { some } from "../fable_modules/fable-library.3.7.5/Option.js";

export class Cell$1 {
    constructor() {
        this._cell = null;
    }
    toString() {
        const __ = this;
        if (Cell$1__get_IsNull(__)) {
            return "\u003cnull\u003e";
        }
        else {
            let copyOfStruct = Cell$1__get_Get(__);
            return toString(copyOfStruct);
        }
    }
}

export function Cell$1$reflection(gen0) {
    return class_type("tbnf.Grammar.Cell`1", [gen0], Cell$1);
}

export function Cell$1_$ctor() {
    return new Cell$1();
}

export function Cell$1__Set_2B595(this$, a) {
    this$._cell = a;
}

export function Cell$1__get_Get(this$) {
    return this$._cell;
}

export function Cell$1__get_IsNull(this$) {
    return this$._cell === null;
}

export class position extends Record {
    constructor(line, col, filename) {
        super();
        this.line = (line | 0);
        this.col = (col | 0);
        this.filename = filename;
    }
}

export function position$reflection() {
    return record_type("tbnf.Grammar.position", [], position, () => [["line", int32_type], ["col", int32_type], ["filename", string_type]]);
}

export class node extends Union {
    constructor(tag, ...fields) {
        super();
        this.tag = (tag | 0);
        this.fields = fields;
    }
    cases() {
        return ["EApp", "ETuple", "EList", "EField", "ELet", "EFun", "EVar", "ESlot", "EInt", "EStr", "EFlt", "EBool"];
    }
}

export function node$reflection() {
    return union_type("tbnf.Grammar.node", [], node, () => [[["Item1", expr$reflection()], ["Item2", list_type(expr$reflection())]], [["Item", list_type(expr$reflection())]], [["Item", list_type(expr$reflection())]], [["Item1", expr$reflection()], ["Item2", string_type]], [["Item1", string_type], ["Item2", expr$reflection()], ["Item3", expr$reflection()]], [["Item1", list_type(tuple_type(string_type, monot$reflection()))], ["Item2", expr$reflection()]], [["Item1", string_type], ["Item2", record_type("Microsoft.FSharp.Core.FSharpRef`1", [list_type(monot$reflection())], FSharpRef, () => [["contents", list_type(monot$reflection())]])]], [["Item", int32_type]], [["Item", int32_type]], [["Item", string_type]], [["Item", float64_type]], [["Item", bool_type]]]);
}

export class expr extends Record {
    constructor(node, pos, t) {
        super();
        this.node = node;
        this.pos = pos;
        this.t = t;
    }
}

export function expr$reflection() {
    return record_type("tbnf.Grammar.expr", [], expr, () => [["node", node$reflection()], ["pos", position$reflection()], ["t", monot$reflection()]]);
}

export class monot extends Union {
    constructor(tag, ...fields) {
        super();
        this.tag = (tag | 0);
        this.fields = fields;
    }
    cases() {
        return ["TRef", "TConst", "TApp", "TFun", "TVar"];
    }
}

export function monot$reflection() {
    return union_type("tbnf.Grammar.monot", [], monot, () => [[["Item", Cell$1$reflection(monot$reflection())]], [["Item", string_type]], [["Item1", monot$reflection()], ["Item2", list_type(monot$reflection())]], [["Item1", list_type(tuple_type(string_type, monot$reflection()))], ["Item2", monot$reflection()]], [["Item", string_type]]]);
}

export class polyt extends Union {
    constructor(tag, ...fields) {
        super();
        this.tag = (tag | 0);
        this.fields = fields;
    }
    cases() {
        return ["Poly", "Mono"];
    }
}

export function polyt$reflection() {
    return union_type("tbnf.Grammar.polyt", [], polyt, () => [[["Item1", list_type(string_type)], ["Item2", monot$reflection()]], [["Item", monot$reflection()]]]);
}

export class production extends Record {
    constructor(symbols, action) {
        super();
        this.symbols = symbols;
        this.action = action;
    }
}

export function production$reflection() {
    return record_type("tbnf.Grammar.production", [], production, () => [["symbols", list_type(symbol$reflection())], ["action", expr$reflection()]]);
}

export class symbol extends Union {
    constructor(tag, ...fields) {
        super();
        this.tag = (tag | 0);
        this.fields = fields;
    }
    cases() {
        return ["Term", "Nonterm", "Macrocall"];
    }
}

export function symbol$reflection() {
    return union_type("tbnf.Grammar.symbol", [], symbol, () => [[["Item1", string_type], ["Item2", bool_type]], [["Item", string_type]], [["Item1", string_type], ["Item2", list_type(symbol$reflection())], ["Item3", position$reflection()]]]);
}

export class definition extends Union {
    constructor(tag, ...fields) {
        super();
        this.tag = (tag | 0);
        this.fields = fields;
    }
    cases() {
        return ["Defmacro", "Defrule", "Deflexer", "Declvar", "Declctor", "Decltype", "Defignore"];
    }
}

export function definition$reflection() {
    return union_type("tbnf.Grammar.definition", [], definition, () => [[["Item", anonRecord_type(["define", list_type(tuple_type(position$reflection(), production$reflection()))], ["lhs", string_type], ["parameters", list_type(string_type)], ["pos", position$reflection()])]], [["Item", anonRecord_type(["define", list_type(tuple_type(position$reflection(), production$reflection()))], ["lhs", string_type], ["pos", position$reflection()])]], [["Item", anonRecord_type(["define", lexerule$reflection()], ["lhs", string_type], ["pos", position$reflection()])]], [["Item", anonRecord_type(["ident", string_type], ["pos", position$reflection()], ["t", polyt$reflection()])]], [["Item", anonRecord_type(["ident", string_type], ["pos", position$reflection()], ["t", monot$reflection()])]], [["Item", anonRecord_type(["external", bool_type], ["fields", list_type(tuple_type(string_type, monot$reflection(), position$reflection()))], ["hasFields", bool_type], ["ident", string_type], ["parameters", list_type(string_type)], ["pos", position$reflection()])]], [["Item", anonRecord_type(["ignoreList", list_type(string_type)], ["pos", position$reflection()])]]]);
}

export class lexerule extends Union {
    constructor(tag, ...fields) {
        super();
        this.tag = (tag | 0);
        this.fields = fields;
    }
    cases() {
        return ["LNumber", "LWildcard", "LSeq", "LStr", "LOr", "LNot", "LPlus", "LStar", "LOptional", "LGroup", "LRange", "LRef"];
    }
}

export function lexerule$reflection() {
    return union_type("tbnf.Grammar.lexerule", [], lexerule, () => [[], [], [["Item", list_type(lexerule$reflection())]], [["Item", string_type]], [["Item", list_type(lexerule$reflection())]], [["Item", lexerule$reflection()]], [["Item", lexerule$reflection()]], [["Item", lexerule$reflection()]], [["Item", lexerule$reflection()]], [["Item", lexerule$reflection()]], [["Item1", int32_type], ["Item2", int32_type]], [["Item", string_type]]]);
}

export function position_get_Fake() {
    return new position(0, 0, "");
}

export function expr_WithNode(expr_1, node_1) {
    return new expr(node_1, expr_1.pos, expr_1.t);
}

export function expr__TransformChildren_Z51B8244A(this$, op_Dereference) {
    let matchValue;
    return expr_WithNode(this$, (matchValue = this$.node, (matchValue.tag === 1) ? (new node(1, map(op_Dereference, matchValue.fields[0]))) : ((matchValue.tag === 2) ? (new node(2, map(op_Dereference, matchValue.fields[0]))) : ((matchValue.tag === 3) ? (new node(3, op_Dereference(matchValue.fields[0]), matchValue.fields[1])) : ((matchValue.tag === 4) ? (new node(4, matchValue.fields[0], op_Dereference(matchValue.fields[1]), op_Dereference(matchValue.fields[2]))) : ((matchValue.tag === 5) ? (new node(5, matchValue.fields[0], matchValue.fields[1])) : ((matchValue.tag === 7) ? matchValue : ((matchValue.tag === 6) ? matchValue : ((matchValue.tag === 9) ? matchValue : ((matchValue.tag === 8) ? matchValue : ((matchValue.tag === 10) ? matchValue : ((matchValue.tag === 11) ? matchValue : (new node(0, op_Dereference(matchValue.fields[0]), map(op_Dereference, matchValue.fields[1])))))))))))))));
}

export function expr__DeepCopy(x) {
    const transformer = (x_1) => {
        const matchValue = x_1.node;
        if (matchValue.tag === 6) {
            return expr_WithNode(x_1, new node(6, matchValue.fields[0], new FSharpRef(matchValue.fields[1].contents)));
        }
        else {
            return expr__TransformChildren_Z51B8244A(x_1, transformer);
        }
    };
    return transformer(x);
}

export function monot__FindAnyChildren_Z23D07CE9(this$, predicate) {
    switch (this$.tag) {
        case 4:
        case 0: {
            return false;
        }
        case 2: {
            if (predicate(this$.fields[0])) {
                return true;
            }
            else {
                return exists(predicate, this$.fields[1]);
            }
        }
        case 3: {
            if (exists((tupledArg) => predicate(tupledArg[1]), this$.fields[0])) {
                return true;
            }
            else {
                return predicate(this$.fields[1]);
            }
        }
        default: {
            return false;
        }
    }
}

export function monot__TransformChildren_Z2CAB662A(this$, ap) {
    let pattern_matching_result, a;
    switch (this$.tag) {
        case 4: {
            pattern_matching_result = 0;
            a = this$;
            break;
        }
        case 0: {
            pattern_matching_result = 0;
            a = this$;
            break;
        }
        case 2: {
            pattern_matching_result = 1;
            break;
        }
        case 3: {
            pattern_matching_result = 2;
            break;
        }
        default: {
            pattern_matching_result = 0;
            a = this$;
        }
    }
    switch (pattern_matching_result) {
        case 0: {
            return a;
        }
        case 1: {
            return new monot(2, ap(this$.fields[0]), map(ap, this$.fields[1]));
        }
        case 2: {
            return new monot(3, map((ab) => [ab[0], ap(ab[1])], this$.fields[0]), ap(this$.fields[1]));
        }
    }
}

export function monot__ApplyToChildren_Z6A62BCBF(this$, op_Dereference) {
    switch (this$.tag) {
        case 4:
        case 0: {
            break;
        }
        case 2: {
            op_Dereference(this$.fields[0]);
            iterate(op_Dereference, this$.fields[1]);
            break;
        }
        case 3: {
            iterate((tupledArg) => {
                op_Dereference(tupledArg[1]);
            }, this$.fields[0]);
            op_Dereference(this$.fields[1]);
            break;
        }
        default: {
        }
    }
}

export function monot__Prune(this$) {
    const prune = (t) => {
        let pattern_matching_result;
        if (t.tag === 0) {
            if (Cell$1__get_IsNull(t.fields[0])) {
                pattern_matching_result = 0;
            }
            else {
                pattern_matching_result = 1;
            }
        }
        else {
            pattern_matching_result = 1;
        }
        switch (pattern_matching_result) {
            case 0: {
                return t;
            }
            case 1: {
                if (t.tag === 0) {
                    const a_2 = t.fields[0];
                    const r = prune(Cell$1__get_Get(a_2));
                    Cell$1__Set_2B595(a_2, r);
                    return r;
                }
                else {
                    return monot__TransformChildren_Z2CAB662A(t, prune);
                }
            }
        }
    };
    return prune(this$);
}

export function symbol__Inspect(this$) {
    if (this$.tag === 1) {
        return this$.fields[0];
    }
    else if (this$.tag === 2) {
        return ((this$.fields[0] + "(") + join(", ", map(symbol__Inspect, this$.fields[1]))) + ")";
    }
    else if (this$.fields[1]) {
        return escapeString(this$.fields[0]);
    }
    else {
        return ("\u003c" + this$.fields[0]) + "\u003e";
    }
}

export function definition__Inspect(this$) {
    if (this$.tag === 1) {
        const decl = this$.fields[0];
        return (decl.lhs + " :\n ") + join("\n| ", map((tupledArg) => join(" ", map(symbol__Inspect, tupledArg[1].symbols)), decl.define));
    }
    else {
        return "omit";
    }
}

export const TConst_token = new monot(1, "token");

export const TConst_tuple = new monot(1, "tuple");

export const TConst_list = new monot(1, "list");

export const TConst_int = new monot(1, "int");

export const TConst_float = new monot(1, "float");

export const TConst_str = new monot(1, "str");

export const TConst_bool = new monot(1, "bool");

export const _predefined_typenames = [["token", 0], ["tuple", -1], ["list", 1], ["int", 0], ["float", 0], ["str", 0], ["bool", 0]];

export function TTuple(xs) {
    return new monot(2, TConst_tuple, xs);
}

export function TList(a) {
    return new monot(2, TConst_list, singleton(a));
}

export function $007CTTuple$007C_$007C(x) {
    let pattern_matching_result;
    if (x.tag === 1) {
        if (x.fields[0] === "tuple") {
            pattern_matching_result = 0;
        }
        else {
            pattern_matching_result = 1;
        }
    }
    else {
        pattern_matching_result = 1;
    }
    switch (pattern_matching_result) {
        case 0: {
            return some(void 0);
        }
        case 1: {
            return void 0;
        }
    }
}

