"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __exportStar = (this && this.__exportStar) || function(m, exports) {
    for (var p in m) if (p !== "default" && !Object.prototype.hasOwnProperty.call(exports, p)) __createBinding(exports, m, p);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.DotName = DotName;
exports.MethodName = MethodName;
exports.VarName = VarName;
exports.PositionalArgs = PositionalArgs;
exports.StringArg = StringArg;
exports.TableArgs = TableArgs;
exports.TableConstructor = TableConstructor;
exports.ElementField = ElementField;
exports.IndexField = IndexField;
exports.NameField = NameField;
exports.Assignment = Assignment;
exports.BreakStmt = BreakStmt;
exports.DoStmt = DoStmt;
exports.EmptyStmt = EmptyStmt;
exports.ExprStmt = ExprStmt;
exports.ForInStmt = ForInStmt;
exports.ForRangeStmt = ForRangeStmt;
exports.GotoStmt = GotoStmt;
exports.IfStmt = IfStmt;
exports.LabelStmt = LabelStmt;
exports.RepeatStmt = RepeatStmt;
exports.ReturnStmt = ReturnStmt;
exports.WhileStmt = WhileStmt;
exports.Attr = Attr;
exports.Bin = Bin;
exports.Bool = Bool;
exports.CallFunc = CallFunc;
exports.CallMethod = CallMethod;
exports.Ellipse = Ellipse;
exports.Exponent = Exponent;
exports.FuncDef = FuncDef;
exports.Index = Index;
exports.Inv = Inv;
exports.Len = Len;
exports.Neg = Neg;
exports.NestedExp = NestedExp;
exports.Nil = Nil;
exports.Not = Not;
exports.Num = Num;
exports.String = String;
exports.TableExpr = TableExpr;
exports.UnsolvedBin = UnsolvedBin;
exports.Var = Var;
exports.block = block;
exports.range = range;
exports.if_elseif = if_elseif;
exports.if_else = if_else;
exports.params = params;
__exportStar(require("./LuaRequire"), exports);
function DotName(value0, value1) {
    return { $type: 'DotName', value0, value1 };
}
function MethodName(value0, value1) {
    return { $type: 'MethodName', value0, value1 };
}
function VarName(value) {
    return { $type: 'VarName', value };
}
function PositionalArgs(value0, value1) {
    return { $type: 'PositionalArgs', value0, value1 };
}
function StringArg(value) {
    return { $type: 'StringArg', value };
}
function TableArgs(value) {
    return { $type: 'TableArgs', value };
}
function TableConstructor(value0, value1) {
    return { $type: 'TableConstructor', value0, value1 };
}
function ElementField(value0) {
    return { $type: 'ElementField', value0 };
}
function IndexField(pos, value, item) {
    return { $type: 'IndexField', pos, value, item };
}
function NameField(key, value) {
    return { $type: 'NameField', key, value };
}
function Assignment(value0, value1, value2) {
    return { $type: 'Assignment', value0, value1, value2 };
}
function BreakStmt(value) {
    return { $type: 'BreakStmt', value };
}
function DoStmt(value0, value1) {
    return { $type: 'DoStmt', value0, value1 };
}
function EmptyStmt(value0) {
    return { $type: 'EmptyStmt', value0 };
}
function ExprStmt(value) {
    return { $type: 'ExprStmt', value };
}
function ForInStmt(value0, value1, value2, value3) {
    return { $type: 'ForInStmt', value0, value1, value2, value3 };
}
function ForRangeStmt(value0, value1, value2, value3) {
    return { $type: 'ForRangeStmt', value0, value1, value2, value3 };
}
function GotoStmt(value0, value1) {
    return { $type: 'GotoStmt', value0, value1 };
}
function IfStmt(value0, value1, value2, value3, value4) {
    return { $type: 'IfStmt', value0, value1, value2, value3, value4 };
}
function LabelStmt(value) {
    return { $type: 'LabelStmt', value };
}
function RepeatStmt(value0, value1, value2) {
    return { $type: 'RepeatStmt', value0, value1, value2 };
}
function ReturnStmt(value0, value1) {
    return { $type: 'ReturnStmt', value0, value1 };
}
function WhileStmt(value0, value1, value2) {
    return { $type: 'WhileStmt', value0, value1, value2 };
}
function Attr(value0, value1) {
    return { $type: 'Attr', value0, value1 };
}
function Bin(op, l, r) {
    return { $type: 'Bin', op, l, r };
}
function Bool(value0, value1) {
    return { $type: 'Bool', value0, value1 };
}
function CallFunc(value0, value1) {
    return { $type: 'CallFunc', value0, value1 };
}
function CallMethod(value0, value1, value2) {
    return { $type: 'CallMethod', value0, value1, value2 };
}
function Ellipse(value0) {
    return { $type: 'Ellipse', value0 };
}
function Exponent(value0, value1) {
    return { $type: 'Exponent', value0, value1 };
}
function FuncDef(pos, is_local, fname, params, body) {
    return { $type: 'FuncDef', pos, is_local, fname, params, body };
}
function Index(value0, value1) {
    return { $type: 'Index', value0, value1 };
}
function Inv(value0, value1) {
    return { $type: 'Inv', value0, value1 };
}
function Len(value0, value1) {
    return { $type: 'Len', value0, value1 };
}
function Neg(value0, value1) {
    return { $type: 'Neg', value0, value1 };
}
function NestedExp(value0, value1) {
    return { $type: 'NestedExp', value0, value1 };
}
function Nil(value) {
    return { $type: 'Nil', value };
}
function Not(value0, value1) {
    return { $type: 'Not', value0, value1 };
}
function Num(value0) {
    return { $type: 'Num', value0 };
}
function String(value0) {
    return { $type: 'String', value0 };
}
function TableExpr(value0) {
    return { $type: 'TableExpr', value0 };
}
function UnsolvedBin(value) {
    return { $type: 'UnsolvedBin', value };
}
function Var(value) {
    return { $type: 'Var', value };
}
function block(suite, ret) {
    return { suite, ret };
}
function range(low, high, step) {
    return { low, high, step };
}
function if_elseif(pos, cond, elif_body) {
    return { pos, cond, elif_body };
}
function if_else(pos, else_body) {
    return { pos, else_body };
}
function params(names, vararg) {
    return { names, vararg };
}
//# sourceMappingURL=LuaConstructor.js.map