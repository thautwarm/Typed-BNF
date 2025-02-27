"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.appendList = appendList;
exports.listMap = listMap;
exports.some = some;
exports.none = none;
exports.mkBinOpSeq = mkBinOpSeq;
exports.mkOperator = mkOperator;
exports.mkOperand = mkOperand;
function appendList(xs, x) {
    xs.push(x);
    return xs;
}
function listMap(xs, f) {
    return xs.map(f);
}
function some(x) {
    return x;
}
function none() {
    return null;
}
function mkBinOpSeq(xs, _, f) {
    if (xs.length == 1) {
        if (xs[0][0] !== "operand")
            throw new Error("invalid binary sequence");
        return xs[0][1];
    }
    return f(xs);
}
function mkOperator(x) {
    return ['operator', x];
}
function mkOperand(x) {
    return ['operand', x];
}
//# sourceMappingURL=LuaRequire.js.map