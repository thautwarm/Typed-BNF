"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.mkOperand = exports.mkOperator = exports.mkBinOpSeq = exports.none = exports.some = exports.listMap = exports.appendList = void 0;
function appendList(xs, x) {
    xs.push(x);
    return xs;
}
exports.appendList = appendList;
function listMap(xs, f) {
    return xs.map(f);
}
exports.listMap = listMap;
function some(x) {
    return x;
}
exports.some = some;
function none() {
    return null;
}
exports.none = none;
function mkBinOpSeq(xs, _, f) {
    if (xs.length == 1) {
        if (xs[0][0] !== "operand")
            throw new Error("invalid binary sequence");
        return xs[0][1];
    }
    return f(xs);
}
exports.mkBinOpSeq = mkBinOpSeq;
function mkOperator(x) {
    return ['operator', x];
}
exports.mkOperator = mkOperator;
function mkOperand(x) {
    return ['operand', x];
}
exports.mkOperand = mkOperand;
//# sourceMappingURL=lua-require.js.map