grammar Expr;
//加载另一个 词法规则文件 CommonLexerRules.g4
import CommonLexerRules;

prog: stat+;

// # 是用于打标签，在生成代码时，会生成对饮访问这个标签的独立函数
stat: expr NEWLINE			# printExpr
	| ID '=' expr NEWLINE	# assign
	| NEWLINE				# blank
	;

expr: expr op=( '*' | '/' ) expr # MulDiv
	| expr op=( '+' | '-' ) expr # AddSub
	| INT 						 # int
	| ID						 # id
	| '(' expr ')'				 # parens
	;

MUL :	'*'	;
DIV :	'/'	;
ADD :	'+'	;
SUB :	'-'	;