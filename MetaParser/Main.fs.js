import { definition, position, node } from "./Grammar.fs.js";
import { empty } from "../fable_modules/fable-library.3.7.5/List.js";
import { printf, toConsole } from "../fable_modules/fable-library.3.7.5/String.js";
import { build_analyzer } from "./Analysis.fs.js";

export const x = new node(8, 5);

export const z = new definition(1, {
    define: empty(),
    lhs: "2",
    pos: new position(0, 0, ""),
});

export function main(a, b, c) {
    const arg10 = (a + (~(~(b / c)))) | 0;
    toConsole(printf("%d"))(arg10);
    const x_1 = build_analyzer([new definition(1, {
        define: empty(),
        lhs: "Float",
        pos: new position(0, 0, ""),
    })]);
    return new Int32Array([1, 2, 3, 4]);
}

