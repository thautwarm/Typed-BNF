"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.LuaListener = void 0;
/**
 * This interface defines a complete listener for a parse tree produced by
 * `LuaParser`.
 */
class LuaListener {
    visitTerminal(node) { }
    visitErrorNode(node) { }
    enterEveryRule(node) { }
    exitEveryRule(node) { }
}
exports.LuaListener = LuaListener;
//# sourceMappingURL=LuaListener.js.map