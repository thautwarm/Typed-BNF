using Antlr4.Runtime;
using System.Collections.Generic;
using System;

namespace lua{
public partial interface funcname {  }
public partial record DotName(funcname value1,IToken value2) : funcname;
public partial record MethodName(funcname value1,IToken value2) : funcname;
public partial record VarName(IToken value) : funcname;

public partial interface arguments {  }
public partial record PositionalArgs(IToken value1,MyList<expr> value2) : arguments;
public partial record StringArg(IToken value) : arguments;
public partial record TableArgs(table value) : arguments;

public partial interface table {  }
public partial record TableConstructor(IToken value1,MyList<table_field> value2) : table;

public partial interface table_field {  }
public partial record ElementField(expr value1) : table_field;
public partial record IndexField(IToken pos,expr value,expr item) : table_field;
public partial record NameField(IToken key,expr value) : table_field;

public partial interface stmt {  }
public partial record Assignment(bool value1,MyList<expr> value2,maybe<MyList<expr>> value3) : stmt;
public partial record BreakStmt(IToken value) : stmt;
public partial record DoStmt(IToken value1,block value2) : stmt;
public partial record EmptyStmt(IToken value1) : stmt;
public partial record ExprStmt(expr value) : stmt;
public partial record ForInStmt(IToken value1,MyList<IToken> value2,MyList<expr> value3,block value4) : stmt;
public partial record ForRangeStmt(IToken value1,IToken value2,range value3,block value4) : stmt;
public partial record GotoStmt(IToken value1,IToken value2) : stmt;
public partial record IfStmt(IToken value1,expr value2,block value3,MyList<if_elseif> value4,maybe<if_else> value5) : stmt;
public partial record LabelStmt(IToken value) : stmt;
public partial record RepeatStmt(IToken value1,block value2,expr value3) : stmt;
public partial record ReturnStmt(IToken value1,MyList<expr> value2) : stmt;
public partial record WhileStmt(IToken value1,expr value2,block value3) : stmt;

public partial interface expr {  }
public partial record Attr(expr value1,IToken value2) : expr;
public partial record Bin(IToken op,expr l,expr r) : expr;
public partial record Bool(IToken value1,bool value2) : expr;
public partial record CallFunc(expr value1,arguments value2) : expr;
public partial record CallMethod(expr value1,IToken value2,arguments value3) : expr;
public partial record Ellipse(IToken value1) : expr;
public partial record Exponent(expr value1,expr value2) : expr;
public partial record FuncDef(IToken pos,bool is_local,maybe<funcname> fname,maybe<parameters> parameters,block body) : expr;
public partial record Index(expr value1,expr value2) : expr;
public partial record Inv(IToken value1,expr value2) : expr;
public partial record Len(IToken value1,expr value2) : expr;
public partial record Neg(IToken value1,expr value2) : expr;
public partial record NestedExp(IToken value1,expr value2) : expr;
public partial record Nil(IToken value) : expr;
public partial record Not(IToken value1,expr value2) : expr;
public partial record Num(IToken value1) : expr;
public partial record String(IToken value1) : expr;
public partial record TableExpr(table value1) : expr;
public partial record UnsolvedBin(MyList<Op<expr>> value) : expr;
public partial record Var(IToken value) : expr;

public partial record block(MyList<stmt> suite,maybe<stmt> ret);
public partial record range(expr low,expr high,maybe<expr> step);
public partial record if_elseif(IToken pos,expr cond,block elif_body);
public partial record if_else(IToken pos,block else_body);
public partial record parameters(MyList<IToken> names,maybe<IToken> vararg);
}
