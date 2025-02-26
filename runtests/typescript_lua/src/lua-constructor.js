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
exports.Bin = exports.Bin_t = exports.Attr = exports.Attr_t = exports.WhileStmt = exports.WhileStmt_t = exports.ReturnStmt = exports.ReturnStmt_t = exports.RepeatStmt = exports.RepeatStmt_t = exports.LabelStmt = exports.LabelStmt_t = exports.IfStmt = exports.IfStmt_t = exports.GotoStmt = exports.GotoStmt_t = exports.ForRangeStmt = exports.ForRangeStmt_t = exports.ForInStmt = exports.ForInStmt_t = exports.ExprStmt = exports.ExprStmt_t = exports.EmptyStmt = exports.EmptyStmt_t = exports.DoStmt = exports.DoStmt_t = exports.BreakStmt = exports.BreakStmt_t = exports.Assignment = exports.Assignment_t = exports.NameField = exports.NameField_t = exports.IndexField = exports.IndexField_t = exports.ElementField = exports.ElementField_t = exports.TableConstructor = exports.TableConstructor_t = exports.TableArgs = exports.TableArgs_t = exports.StringArg = exports.StringArg_t = exports.PositionalArgs = exports.PositionalArgs_t = exports.VarName = exports.VarName_t = exports.MethodName = exports.MethodName_t = exports.DotName = exports.DotName_t = void 0;
exports.params = exports.params_t = exports.if_else = exports.if_else_t = exports.if_elseif = exports.if_elseif_t = exports.range = exports.range_t = exports.block = exports.block_t = exports.Var = exports.Var_t = exports.UnsolvedBin = exports.UnsolvedBin_t = exports.TableExpr = exports.TableExpr_t = exports.String = exports.String_t = exports.Num = exports.Num_t = exports.Not = exports.Not_t = exports.Nil = exports.Nil_t = exports.NestedExp = exports.NestedExp_t = exports.Neg = exports.Neg_t = exports.Len = exports.Len_t = exports.Inv = exports.Inv_t = exports.Index = exports.Index_t = exports.FuncDef = exports.FuncDef_t = exports.Exponent = exports.Exponent_t = exports.Ellipse = exports.Ellipse_t = exports.CallMethod = exports.CallMethod_t = exports.CallFunc = exports.CallFunc_t = exports.Bool = exports.Bool_t = void 0;
__exportStar(require("./lua-require"), exports);
class DotName_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.DotName_t = DotName_t;
function DotName(value0, value1) {
    return new DotName_t(value0, value1);
}
exports.DotName = DotName;
class MethodName_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.MethodName_t = MethodName_t;
function MethodName(value0, value1) {
    return new MethodName_t(value0, value1);
}
exports.MethodName = MethodName;
class VarName_t {
    constructor(value) {
        this.value = value;
    }
}
exports.VarName_t = VarName_t;
function VarName(value) {
    return new VarName_t(value);
}
exports.VarName = VarName;
class PositionalArgs_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.PositionalArgs_t = PositionalArgs_t;
function PositionalArgs(value0, value1) {
    return new PositionalArgs_t(value0, value1);
}
exports.PositionalArgs = PositionalArgs;
class StringArg_t {
    constructor(value) {
        this.value = value;
    }
}
exports.StringArg_t = StringArg_t;
function StringArg(value) {
    return new StringArg_t(value);
}
exports.StringArg = StringArg;
class TableArgs_t {
    constructor(value) {
        this.value = value;
    }
}
exports.TableArgs_t = TableArgs_t;
function TableArgs(value) {
    return new TableArgs_t(value);
}
exports.TableArgs = TableArgs;
class TableConstructor_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.TableConstructor_t = TableConstructor_t;
function TableConstructor(value0, value1) {
    return new TableConstructor_t(value0, value1);
}
exports.TableConstructor = TableConstructor;
class ElementField_t {
    constructor(value0) {
        this.value0 = value0;
    }
}
exports.ElementField_t = ElementField_t;
function ElementField(value0) {
    return new ElementField_t(value0);
}
exports.ElementField = ElementField;
class IndexField_t {
    constructor(pos, value, item) {
        this.pos = pos;
        this.value = value;
        this.item = item;
    }
}
exports.IndexField_t = IndexField_t;
function IndexField(pos, value, item) {
    return new IndexField_t(pos, value, item);
}
exports.IndexField = IndexField;
class NameField_t {
    constructor(key, value) {
        this.key = key;
        this.value = value;
    }
}
exports.NameField_t = NameField_t;
function NameField(key, value) {
    return new NameField_t(key, value);
}
exports.NameField = NameField;
class Assignment_t {
    constructor(value0, value1, value2) {
        this.value0 = value0;
        this.value1 = value1;
        this.value2 = value2;
    }
}
exports.Assignment_t = Assignment_t;
function Assignment(value0, value1, value2) {
    return new Assignment_t(value0, value1, value2);
}
exports.Assignment = Assignment;
class BreakStmt_t {
    constructor(value) {
        this.value = value;
    }
}
exports.BreakStmt_t = BreakStmt_t;
function BreakStmt(value) {
    return new BreakStmt_t(value);
}
exports.BreakStmt = BreakStmt;
class DoStmt_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.DoStmt_t = DoStmt_t;
function DoStmt(value0, value1) {
    return new DoStmt_t(value0, value1);
}
exports.DoStmt = DoStmt;
class EmptyStmt_t {
    constructor(value0) {
        this.value0 = value0;
    }
}
exports.EmptyStmt_t = EmptyStmt_t;
function EmptyStmt(value0) {
    return new EmptyStmt_t(value0);
}
exports.EmptyStmt = EmptyStmt;
class ExprStmt_t {
    constructor(value) {
        this.value = value;
    }
}
exports.ExprStmt_t = ExprStmt_t;
function ExprStmt(value) {
    return new ExprStmt_t(value);
}
exports.ExprStmt = ExprStmt;
class ForInStmt_t {
    constructor(value0, value1, value2, value3) {
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
exports.ForInStmt = ForInStmt;
class ForRangeStmt_t {
    constructor(value0, value1, value2, value3) {
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
exports.ForRangeStmt = ForRangeStmt;
class GotoStmt_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.GotoStmt_t = GotoStmt_t;
function GotoStmt(value0, value1) {
    return new GotoStmt_t(value0, value1);
}
exports.GotoStmt = GotoStmt;
class IfStmt_t {
    constructor(value0, value1, value2, value3, value4) {
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
exports.IfStmt = IfStmt;
class LabelStmt_t {
    constructor(value) {
        this.value = value;
    }
}
exports.LabelStmt_t = LabelStmt_t;
function LabelStmt(value) {
    return new LabelStmt_t(value);
}
exports.LabelStmt = LabelStmt;
class RepeatStmt_t {
    constructor(value0, value1, value2) {
        this.value0 = value0;
        this.value1 = value1;
        this.value2 = value2;
    }
}
exports.RepeatStmt_t = RepeatStmt_t;
function RepeatStmt(value0, value1, value2) {
    return new RepeatStmt_t(value0, value1, value2);
}
exports.RepeatStmt = RepeatStmt;
class ReturnStmt_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.ReturnStmt_t = ReturnStmt_t;
function ReturnStmt(value0, value1) {
    return new ReturnStmt_t(value0, value1);
}
exports.ReturnStmt = ReturnStmt;
class WhileStmt_t {
    constructor(value0, value1, value2) {
        this.value0 = value0;
        this.value1 = value1;
        this.value2 = value2;
    }
}
exports.WhileStmt_t = WhileStmt_t;
function WhileStmt(value0, value1, value2) {
    return new WhileStmt_t(value0, value1, value2);
}
exports.WhileStmt = WhileStmt;
class Attr_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Attr_t = Attr_t;
function Attr(value0, value1) {
    return new Attr_t(value0, value1);
}
exports.Attr = Attr;
class Bin_t {
    constructor(op, l, r) {
        this.op = op;
        this.l = l;
        this.r = r;
    }
}
exports.Bin_t = Bin_t;
function Bin(op, l, r) {
    return new Bin_t(op, l, r);
}
exports.Bin = Bin;
class Bool_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Bool_t = Bool_t;
function Bool(value0, value1) {
    return new Bool_t(value0, value1);
}
exports.Bool = Bool;
class CallFunc_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.CallFunc_t = CallFunc_t;
function CallFunc(value0, value1) {
    return new CallFunc_t(value0, value1);
}
exports.CallFunc = CallFunc;
class CallMethod_t {
    constructor(value0, value1, value2) {
        this.value0 = value0;
        this.value1 = value1;
        this.value2 = value2;
    }
}
exports.CallMethod_t = CallMethod_t;
function CallMethod(value0, value1, value2) {
    return new CallMethod_t(value0, value1, value2);
}
exports.CallMethod = CallMethod;
class Ellipse_t {
    constructor(value0) {
        this.value0 = value0;
    }
}
exports.Ellipse_t = Ellipse_t;
function Ellipse(value0) {
    return new Ellipse_t(value0);
}
exports.Ellipse = Ellipse;
class Exponent_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Exponent_t = Exponent_t;
function Exponent(value0, value1) {
    return new Exponent_t(value0, value1);
}
exports.Exponent = Exponent;
class FuncDef_t {
    constructor(pos, is_local, fname, params, body) {
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
exports.FuncDef = FuncDef;
class Index_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Index_t = Index_t;
function Index(value0, value1) {
    return new Index_t(value0, value1);
}
exports.Index = Index;
class Inv_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Inv_t = Inv_t;
function Inv(value0, value1) {
    return new Inv_t(value0, value1);
}
exports.Inv = Inv;
class Len_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Len_t = Len_t;
function Len(value0, value1) {
    return new Len_t(value0, value1);
}
exports.Len = Len;
class Neg_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Neg_t = Neg_t;
function Neg(value0, value1) {
    return new Neg_t(value0, value1);
}
exports.Neg = Neg;
class NestedExp_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.NestedExp_t = NestedExp_t;
function NestedExp(value0, value1) {
    return new NestedExp_t(value0, value1);
}
exports.NestedExp = NestedExp;
class Nil_t {
    constructor(value) {
        this.value = value;
    }
}
exports.Nil_t = Nil_t;
function Nil(value) {
    return new Nil_t(value);
}
exports.Nil = Nil;
class Not_t {
    constructor(value0, value1) {
        this.value0 = value0;
        this.value1 = value1;
    }
}
exports.Not_t = Not_t;
function Not(value0, value1) {
    return new Not_t(value0, value1);
}
exports.Not = Not;
class Num_t {
    constructor(value0) {
        this.value0 = value0;
    }
}
exports.Num_t = Num_t;
function Num(value0) {
    return new Num_t(value0);
}
exports.Num = Num;
class String_t {
    constructor(value0) {
        this.value0 = value0;
    }
}
exports.String_t = String_t;
function String(value0) {
    return new String_t(value0);
}
exports.String = String;
class TableExpr_t {
    constructor(value0) {
        this.value0 = value0;
    }
}
exports.TableExpr_t = TableExpr_t;
function TableExpr(value0) {
    return new TableExpr_t(value0);
}
exports.TableExpr = TableExpr;
class UnsolvedBin_t {
    constructor(value) {
        this.value = value;
    }
}
exports.UnsolvedBin_t = UnsolvedBin_t;
function UnsolvedBin(value) {
    return new UnsolvedBin_t(value);
}
exports.UnsolvedBin = UnsolvedBin;
class Var_t {
    constructor(value) {
        this.value = value;
    }
}
exports.Var_t = Var_t;
function Var(value) {
    return new Var_t(value);
}
exports.Var = Var;
class block_t {
    constructor(suite, ret) {
        this.suite = suite;
        this.ret = ret;
    }
}
exports.block_t = block_t;
function block(suite, ret) {
    return new block_t(suite, ret);
}
exports.block = block;
class range_t {
    constructor(low, high, step) {
        this.low = low;
        this.high = high;
        this.step = step;
    }
}
exports.range_t = range_t;
function range(low, high, step) {
    return new range_t(low, high, step);
}
exports.range = range;
class if_elseif_t {
    constructor(pos, cond, elif_body) {
        this.pos = pos;
        this.cond = cond;
        this.elif_body = elif_body;
    }
}
exports.if_elseif_t = if_elseif_t;
function if_elseif(pos, cond, elif_body) {
    return new if_elseif_t(pos, cond, elif_body);
}
exports.if_elseif = if_elseif;
class if_else_t {
    constructor(pos, else_body) {
        this.pos = pos;
        this.else_body = else_body;
    }
}
exports.if_else_t = if_else_t;
function if_else(pos, else_body) {
    return new if_else_t(pos, else_body);
}
exports.if_else = if_else;
class params_t {
    constructor(names, vararg) {
        this.names = names;
        this.vararg = vararg;
    }
}
exports.params_t = params_t;
function params(names, vararg) {
    return new params_t(names, vararg);
}
exports.params = params;
//# sourceMappingURL=lua-constructor.js.map