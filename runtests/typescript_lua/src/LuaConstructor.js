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
exports.params_t = exports.if_else_t = exports.if_elseif_t = exports.range_t = exports.block_t = exports.Var_t = exports.UnsolvedBin_t = exports.TableExpr_t = exports.String_t = exports.Num_t = exports.Not_t = exports.Nil_t = exports.NestedExp_t = exports.Neg_t = exports.Len_t = exports.Inv_t = exports.Index_t = exports.FuncDef_t = exports.Exponent_t = exports.Ellipse_t = exports.CallMethod_t = exports.CallFunc_t = exports.Bool_t = exports.Bin_t = exports.Attr_t = exports.WhileStmt_t = exports.ReturnStmt_t = exports.RepeatStmt_t = exports.LabelStmt_t = exports.IfStmt_t = exports.GotoStmt_t = exports.ForRangeStmt_t = exports.ForInStmt_t = exports.ExprStmt_t = exports.EmptyStmt_t = exports.DoStmt_t = exports.BreakStmt_t = exports.Assignment_t = exports.NameField_t = exports.IndexField_t = exports.ElementField_t = exports.TableConstructor_t = exports.TableArgs_t = exports.StringArg_t = exports.PositionalArgs_t = exports.VarName_t = exports.MethodName_t = exports.DotName_t = void 0;
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
class DotName_t {
    constructor(value0, value1) {
        this['$tag'] = 'DotName_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.DotName_t = DotName_t;
function DotName(value0, value1) {
    return new DotName_t(value0, value1);
}
class MethodName_t {
    constructor(value0, value1) {
        this['$tag'] = 'MethodName_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.MethodName_t = MethodName_t;
function MethodName(value0, value1) {
    return new MethodName_t(value0, value1);
}
class VarName_t {
    constructor(value) {
        this['$tag'] = 'VarName_t';
        this.value = value;
    }
}
exports.VarName_t = VarName_t;
function VarName(value) {
    return new VarName_t(value);
}
class PositionalArgs_t {
    constructor(value0, value1) {
        this['$tag'] = 'PositionalArgs_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.PositionalArgs_t = PositionalArgs_t;
function PositionalArgs(value0, value1) {
    return new PositionalArgs_t(value0, value1);
}
class StringArg_t {
    constructor(value) {
        this['$tag'] = 'StringArg_t';
        this.value = value;
    }
}
exports.StringArg_t = StringArg_t;
function StringArg(value) {
    return new StringArg_t(value);
}
class TableArgs_t {
    constructor(value) {
        this['$tag'] = 'TableArgs_t';
        this.value = value;
    }
}
exports.TableArgs_t = TableArgs_t;
function TableArgs(value) {
    return new TableArgs_t(value);
}
class TableConstructor_t {
    constructor(value0, value1) {
        this['$tag'] = 'TableConstructor_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.TableConstructor_t = TableConstructor_t;
function TableConstructor(value0, value1) {
    return new TableConstructor_t(value0, value1);
}
class ElementField_t {
    constructor(value0) {
        this['$tag'] = 'ElementField_t';
        this.value0 = value0;
    }
}
exports.ElementField_t = ElementField_t;
function ElementField(value0) {
    return new ElementField_t(value0);
}
class IndexField_t {
    constructor(pos, value, item) {
        this['$tag'] = 'IndexField_t';
        this.pos = pos;
        this.value = value;
        this.item = item;
    }
}
exports.IndexField_t = IndexField_t;
function IndexField(pos, value, item) {
    return new IndexField_t(pos, value, item);
}
class NameField_t {
    constructor(key, value) {
        this['$tag'] = 'NameField_t';
        this.key = key;
        this.value = value;
    }
}
exports.NameField_t = NameField_t;
function NameField(key, value) {
    return new NameField_t(key, value);
}
class Assignment_t {
    constructor(value0, value1, value2) {
        this['$tag'] = 'Assignment_t';
        this.value0 = value0;
        this.value1 = value1;
        this.value2 = value2;
    }
}
exports.Assignment_t = Assignment_t;
function Assignment(value0, value1, value2) {
    return new Assignment_t(value0, value1, value2);
}
class BreakStmt_t {
    constructor(value) {
        this['$tag'] = 'BreakStmt_t';
        this.value = value;
    }
}
exports.BreakStmt_t = BreakStmt_t;
function BreakStmt(value) {
    return new BreakStmt_t(value);
}
class DoStmt_t {
    constructor(value0, value1) {
        this['$tag'] = 'DoStmt_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.DoStmt_t = DoStmt_t;
function DoStmt(value0, value1) {
    return new DoStmt_t(value0, value1);
}
class EmptyStmt_t {
    constructor(value0) {
        this['$tag'] = 'EmptyStmt_t';
        this.value0 = value0;
    }
}
exports.EmptyStmt_t = EmptyStmt_t;
function EmptyStmt(value0) {
    return new EmptyStmt_t(value0);
}
class ExprStmt_t {
    constructor(value) {
        this['$tag'] = 'ExprStmt_t';
        this.value = value;
    }
}
exports.ExprStmt_t = ExprStmt_t;
function ExprStmt(value) {
    return new ExprStmt_t(value);
}
class ForInStmt_t {
    constructor(value0, value1, value2, value3) {
        this['$tag'] = 'ForInStmt_t';
        this.value0 = value0;
        this.value1 = value1;
        this.value2 = value2;
        this.value3 = value3;
    }
}
exports.ForInStmt_t = ForInStmt_t;
function ForInStmt(value0, value1, value2, value3) {
    return new ForInStmt_t(value0, value1, value2, value3);
}
class ForRangeStmt_t {
    constructor(value0, value1, value2, value3) {
        this['$tag'] = 'ForRangeStmt_t';
        this.value0 = value0;
        this.value1 = value1;
        this.value2 = value2;
        this.value3 = value3;
    }
}
exports.ForRangeStmt_t = ForRangeStmt_t;
function ForRangeStmt(value0, value1, value2, value3) {
    return new ForRangeStmt_t(value0, value1, value2, value3);
}
class GotoStmt_t {
    constructor(value0, value1) {
        this['$tag'] = 'GotoStmt_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.GotoStmt_t = GotoStmt_t;
function GotoStmt(value0, value1) {
    return new GotoStmt_t(value0, value1);
}
class IfStmt_t {
    constructor(value0, value1, value2, value3, value4) {
        this['$tag'] = 'IfStmt_t';
        this.value0 = value0;
        this.value1 = value1;
        this.value2 = value2;
        this.value3 = value3;
        this.value4 = value4;
    }
}
exports.IfStmt_t = IfStmt_t;
function IfStmt(value0, value1, value2, value3, value4) {
    return new IfStmt_t(value0, value1, value2, value3, value4);
}
class LabelStmt_t {
    constructor(value) {
        this['$tag'] = 'LabelStmt_t';
        this.value = value;
    }
}
exports.LabelStmt_t = LabelStmt_t;
function LabelStmt(value) {
    return new LabelStmt_t(value);
}
class RepeatStmt_t {
    constructor(value0, value1, value2) {
        this['$tag'] = 'RepeatStmt_t';
        this.value0 = value0;
        this.value1 = value1;
        this.value2 = value2;
    }
}
exports.RepeatStmt_t = RepeatStmt_t;
function RepeatStmt(value0, value1, value2) {
    return new RepeatStmt_t(value0, value1, value2);
}
class ReturnStmt_t {
    constructor(value0, value1) {
        this['$tag'] = 'ReturnStmt_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.ReturnStmt_t = ReturnStmt_t;
function ReturnStmt(value0, value1) {
    return new ReturnStmt_t(value0, value1);
}
class WhileStmt_t {
    constructor(value0, value1, value2) {
        this['$tag'] = 'WhileStmt_t';
        this.value0 = value0;
        this.value1 = value1;
        this.value2 = value2;
    }
}
exports.WhileStmt_t = WhileStmt_t;
function WhileStmt(value0, value1, value2) {
    return new WhileStmt_t(value0, value1, value2);
}
class Attr_t {
    constructor(value0, value1) {
        this['$tag'] = 'Attr_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Attr_t = Attr_t;
function Attr(value0, value1) {
    return new Attr_t(value0, value1);
}
class Bin_t {
    constructor(op, l, r) {
        this['$tag'] = 'Bin_t';
        this.op = op;
        this.l = l;
        this.r = r;
    }
}
exports.Bin_t = Bin_t;
function Bin(op, l, r) {
    return new Bin_t(op, l, r);
}
class Bool_t {
    constructor(value0, value1) {
        this['$tag'] = 'Bool_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Bool_t = Bool_t;
function Bool(value0, value1) {
    return new Bool_t(value0, value1);
}
class CallFunc_t {
    constructor(value0, value1) {
        this['$tag'] = 'CallFunc_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.CallFunc_t = CallFunc_t;
function CallFunc(value0, value1) {
    return new CallFunc_t(value0, value1);
}
class CallMethod_t {
    constructor(value0, value1, value2) {
        this['$tag'] = 'CallMethod_t';
        this.value0 = value0;
        this.value1 = value1;
        this.value2 = value2;
    }
}
exports.CallMethod_t = CallMethod_t;
function CallMethod(value0, value1, value2) {
    return new CallMethod_t(value0, value1, value2);
}
class Ellipse_t {
    constructor(value0) {
        this['$tag'] = 'Ellipse_t';
        this.value0 = value0;
    }
}
exports.Ellipse_t = Ellipse_t;
function Ellipse(value0) {
    return new Ellipse_t(value0);
}
class Exponent_t {
    constructor(value0, value1) {
        this['$tag'] = 'Exponent_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Exponent_t = Exponent_t;
function Exponent(value0, value1) {
    return new Exponent_t(value0, value1);
}
class FuncDef_t {
    constructor(pos, is_local, fname, params, body) {
        this['$tag'] = 'FuncDef_t';
        this.pos = pos;
        this.is_local = is_local;
        this.fname = fname;
        this.params = params;
        this.body = body;
    }
}
exports.FuncDef_t = FuncDef_t;
function FuncDef(pos, is_local, fname, params, body) {
    return new FuncDef_t(pos, is_local, fname, params, body);
}
class Index_t {
    constructor(value0, value1) {
        this['$tag'] = 'Index_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Index_t = Index_t;
function Index(value0, value1) {
    return new Index_t(value0, value1);
}
class Inv_t {
    constructor(value0, value1) {
        this['$tag'] = 'Inv_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Inv_t = Inv_t;
function Inv(value0, value1) {
    return new Inv_t(value0, value1);
}
class Len_t {
    constructor(value0, value1) {
        this['$tag'] = 'Len_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Len_t = Len_t;
function Len(value0, value1) {
    return new Len_t(value0, value1);
}
class Neg_t {
    constructor(value0, value1) {
        this['$tag'] = 'Neg_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Neg_t = Neg_t;
function Neg(value0, value1) {
    return new Neg_t(value0, value1);
}
class NestedExp_t {
    constructor(value0, value1) {
        this['$tag'] = 'NestedExp_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.NestedExp_t = NestedExp_t;
function NestedExp(value0, value1) {
    return new NestedExp_t(value0, value1);
}
class Nil_t {
    constructor(value) {
        this['$tag'] = 'Nil_t';
        this.value = value;
    }
}
exports.Nil_t = Nil_t;
function Nil(value) {
    return new Nil_t(value);
}
class Not_t {
    constructor(value0, value1) {
        this['$tag'] = 'Not_t';
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Not_t = Not_t;
function Not(value0, value1) {
    return new Not_t(value0, value1);
}
class Num_t {
    constructor(value0) {
        this['$tag'] = 'Num_t';
        this.value0 = value0;
    }
}
exports.Num_t = Num_t;
function Num(value0) {
    return new Num_t(value0);
}
class String_t {
    constructor(value0) {
        this['$tag'] = 'String_t';
        this.value0 = value0;
    }
}
exports.String_t = String_t;
function String(value0) {
    return new String_t(value0);
}
class TableExpr_t {
    constructor(value0) {
        this['$tag'] = 'TableExpr_t';
        this.value0 = value0;
    }
}
exports.TableExpr_t = TableExpr_t;
function TableExpr(value0) {
    return new TableExpr_t(value0);
}
class UnsolvedBin_t {
    constructor(value) {
        this['$tag'] = 'UnsolvedBin_t';
        this.value = value;
    }
}
exports.UnsolvedBin_t = UnsolvedBin_t;
function UnsolvedBin(value) {
    return new UnsolvedBin_t(value);
}
class Var_t {
    constructor(value) {
        this['$tag'] = 'Var_t';
        this.value = value;
    }
}
exports.Var_t = Var_t;
function Var(value) {
    return new Var_t(value);
}
class block_t {
    constructor(suite, ret) {
        this['$tag'] = 'block_t';
        this.suite = suite;
        this.ret = ret;
    }
}
exports.block_t = block_t;
function block(suite, ret) {
    return new block_t(suite, ret);
}
class range_t {
    constructor(low, high, step) {
        this['$tag'] = 'range_t';
        this.low = low;
        this.high = high;
        this.step = step;
    }
}
exports.range_t = range_t;
function range(low, high, step) {
    return new range_t(low, high, step);
}
class if_elseif_t {
    constructor(pos, cond, elif_body) {
        this['$tag'] = 'if_elseif_t';
        this.pos = pos;
        this.cond = cond;
        this.elif_body = elif_body;
    }
}
exports.if_elseif_t = if_elseif_t;
function if_elseif(pos, cond, elif_body) {
    return new if_elseif_t(pos, cond, elif_body);
}
class if_else_t {
    constructor(pos, else_body) {
        this['$tag'] = 'if_else_t';
        this.pos = pos;
        this.else_body = else_body;
    }
}
exports.if_else_t = if_else_t;
function if_else(pos, else_body) {
    return new if_else_t(pos, else_body);
}
class params_t {
    constructor(names, vararg) {
        this['$tag'] = 'params_t';
        this.names = names;
        this.vararg = vararg;
    }
}
exports.params_t = params_t;
function params(names, vararg) {
    return new params_t(names, vararg);
}
//# sourceMappingURL=LuaConstructor.js.map