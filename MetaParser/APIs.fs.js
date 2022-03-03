import { polyt, symbol, production, definition, lexerule, TList, TTuple, expr, monot as monot_1, node as node_1, position as position_1, Cell$1_$ctor } from "./Grammar.fs.js";
import { empty, ofArray } from "../fable_modules/fable-library.3.7.5/List.js";
import { FSharpRef } from "../fable_modules/fable-library.3.7.5/Types.js";
import { equalsWith } from "../fable_modules/fable-library.3.7.5/Array.js";
import { equals } from "../fable_modules/fable-library.3.7.5/Util.js";
import { build_analyzer as build_analyzer_1 } from "./Analysis.fs.js";

export function mk_Cell() {
    return Cell$1_$ctor();
}

export function mk_position(line, col, filename) {
    return new position_1(line, col, filename);
}

export function mk_EApp(f, args) {
    return new node_1(0, f, ofArray(args));
}

export function mk_ETuple(args) {
    return new node_1(1, ofArray(args));
}

export function mk_EList(args) {
    return new node_1(2, ofArray(args));
}

export function mk_ELet(name, value, body) {
    return new node_1(4, name, value, body);
}

export function mk_EFun(args, body) {
    return new node_1(5, ofArray(args), body);
}

export function mk_EVar(n) {
    return new node_1(6, n, new FSharpRef(empty()));
}

export function mk_ESlot(i) {
    return new node_1(7, i);
}

export function mk_EInt(i) {
    return new node_1(8, i);
}

export function mk_EStr(s) {
    return new node_1(9, s);
}

export function mk_EFlt(s) {
    return new node_1(10, s);
}

export function mk_EBool(b) {
    return new node_1(11, b);
}

export function mk_EField(value, field) {
    return new node_1(3, value, field);
}

export function mk_expr(node, pos) {
    return new expr(node, pos, new monot_1(1, "bot"));
}

export function mk_TConst(n) {
    return new monot_1(1, n);
}

export function mk_TApp(f, args) {
    return new monot_1(2, f, ofArray(args));
}

export function mk_TFun(args, ret) {
    return new monot_1(3, ofArray(args), ret);
}

export function mk_TVar(n) {
    return new monot_1(4, n);
}

export function mk_TTuple(xs) {
    if (xs.length === 1) {
        return xs[0];
    }
    else {
        return TTuple(ofArray(xs));
    }
}

export function mk_TList(a) {
    return TList(a);
}

export function mk_LStr(s) {
    return new lexerule(3, s);
}

export const mk_LNumber = new lexerule(0);

export const mk_LWildcard = new lexerule(1);

export function mk_LSeq(xs) {
    if ((!equalsWith(equals, xs, null)) && (xs.length === 1)) {
        return xs[0];
    }
    else {
        return new lexerule(2, ofArray(xs));
    }
}

export function mk_LOr(xs) {
    if ((!equalsWith(equals, xs, null)) && (xs.length === 1)) {
        return xs[0];
    }
    else {
        return new lexerule(4, ofArray(xs));
    }
}

export function mk_LNot(x) {
    return new lexerule(5, x);
}

export function mk_LPlus(x) {
    return new lexerule(6, x);
}

export function mk_LStar(x) {
    return new lexerule(7, x);
}

export function mk_LOptional(x) {
    return new lexerule(8, x);
}

export function mk_LGroup(x) {
    return new lexerule(9, x);
}

export function mk_LRange(x, y) {
    return new lexerule(10, x, y);
}

export function mk_LRef(x) {
    return new lexerule(11, x);
}

export function mk_Defignore(ignoreList, pos) {
    return new definition(6, {
        ignoreList: ofArray(ignoreList),
        pos: pos,
    });
}

export function mk_Defmacro(lhs, parameters, define, pos) {
    let parameters_1;
    return new definition(0, (parameters_1 = ofArray(parameters), {
        define: ofArray(define),
        lhs: lhs,
        parameters: parameters_1,
        pos: pos,
    }));
}

export function mk_Defrule(lhs, define, pos) {
    return new definition(1, {
        define: ofArray(define),
        lhs: lhs,
        pos: pos,
    });
}

export function mk_Deflexer(lhs, define, pos) {
    return new definition(2, {
        define: define,
        lhs: lhs,
        pos: pos,
    });
}

export function mk_Declvar(ident, t, pos) {
    return new definition(3, {
        ident: ident,
        pos: pos,
        t: t,
    });
}

export function mk_Declctor(ident, t, pos) {
    return new definition(4, {
        ident: ident,
        pos: pos,
        t: t,
    });
}

export function mk_Decltype(external, hasFields, ident, parameters, fields, pos) {
    let parameters_1;
    return new definition(5, (parameters_1 = ofArray(parameters), {
        external: external,
        fields: ofArray(fields),
        hasFields: hasFields,
        ident: ident,
        parameters: parameters_1,
        pos: pos,
    }));
}

export function mk_production(symbols, action) {
    return new production(ofArray(symbols), action);
}

export function mk_Term(define, is_literal) {
    return new symbol(0, define, is_literal);
}

export function mk_Nonterm(define) {
    return new symbol(1, define);
}

export function mk_Macrocall(n, syms, position) {
    return new symbol(2, n, ofArray(syms), position);
}

export function mk_Poly(bounds, monot) {
    return new polyt(0, ofArray(bounds), monot);
}

export function mk_Mono(monot) {
    return new polyt(1, monot);
}

export function build_analyzer(stmts) {
    return build_analyzer_1(stmts);
}

