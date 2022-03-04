using Antlr4.Runtime;
using System.Collections.Generic;
using System;

namespace lua{
public partial interface funcname {  }
public partial record DotName(funcname value0,IToken value1) : funcname;
public partial record MethodName(funcname value0,IToken value1) : funcname;
public partial record VarName(IToken value) : funcname;

public partial interface arguments {  }
public partial record PositionalArgs(IToken value0,MyList<expr> value1) : arguments;
public partial record StringArg(IToken value) : arguments;
public partial record TableArgs(table value) : arguments;

public partial interface table {  }
public partial record TableConstructor(IToken value0,MyList<table_field> value1) : table;

public partial interface table_field {  }
public partial record ElementField(expr value0) : table_field;
public partial record IndexField(IToken pos,expr value,expr item) : table_field;
public partial record NameField(IToken key,expr value) : table_field;

public partial interface stmt {  }
public partial record Assignment(bool value0,MyList<expr> value1,maybe<MyList<expr>> value2) : stmt;
public partial record BreakStmt(IToken value) : stmt;
public partial record DoStmt(IToken value0,block value1) : stmt;
public partial record EmptyStmt(IToken value0) : stmt;
public partial record ExprStmt(expr value) : stmt;
public partial record ForInStmt(IToken value0,MyList<IToken> value1,MyList<expr> value2,block value3) : stmt;
public partial record ForRangeStmt(IToken value0,IToken value1,range value2,block value3) : stmt;
public partial record GotoStmt(IToken value0,IToken value1) : stmt;
public partial record IfStmt(IToken value0,expr value1,block value2,MyList<if_elseif> value3,maybe<if_else> value4) : stmt;
public partial record LabelStmt(IToken value) : stmt;
public partial record RepeatStmt(IToken value0,block value1,expr value2) : stmt;
public partial record ReturnStmt(IToken value0,MyList<expr> value1) : stmt;
public partial record WhileStmt(IToken value0,expr value1,block value2) : stmt;

public partial interface expr {  }
public partial record Attr(expr value0,IToken value1) : expr;
public partial record Bin(IToken op,expr l,expr r) : expr;
public partial record Bool(IToken value0,bool value1) : expr;
public partial record CallFunc(expr value0,arguments value1) : expr;
public partial record CallMethod(expr value0,IToken value1,arguments value2) : expr;
public partial record Ellipse(IToken value0) : expr;
public partial record Exponent(expr value0,expr value1) : expr;
public partial record FuncDef(IToken pos,bool is_local,maybe<funcname> fname,maybe<parameters> parameters,block body) : expr;
public partial record Index(expr value0,expr value1) : expr;
public partial record Inv(IToken value0,expr value1) : expr;
public partial record Len(IToken value0,expr value1) : expr;
public partial record Neg(IToken value0,expr value1) : expr;
public partial record NestedExp(IToken value0,expr value1) : expr;
public partial record Nil(IToken value) : expr;
public partial record Not(IToken value0,expr value1) : expr;
public partial record Num(IToken value0) : expr;
public partial record String(IToken value0) : expr;
public partial record TableExpr(table value0) : expr;
public partial record UnsolvedBin(MyList<Op<expr>> value) : expr;
public partial record Var(IToken value) : expr;

public partial record block(MyList<stmt> suite,maybe<stmt> ret);
public partial record range(expr low,expr high,maybe<expr> step);
public partial record if_elseif(IToken pos,expr cond,block elif_body);
public partial record if_else(IToken pos,block else_body);
public partial record parameters(MyList<IToken> names,maybe<IToken> vararg);
}
