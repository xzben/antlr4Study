/*
	语法文件通常以 grammar 关键字开头
	这是一个名为 ArrayInit 的语法，它必须和文件名 ArrayInit.g4 匹配
*/
grammar ArrayInit;

// 一条名为 init 的规则, 它匹配一对花括号中的、逗号分隔的 value
init	: '{' value (',' value)* '}' ; //必须匹配至少一个 value

// 一个value 可以是嵌套的 花括号 init 规则，也可以是一个简单的整数，
value	: init
		| INT
		;

// 语法分析器的规则必须以小写字母开头，词法分析器的规则必须使用大写字母开头
INT : [0-9]+; //定义词法符号 INT，它由一个或多个数字组成
WS 	: [ \t\r\n]+ -> skip; //定义词法规则 ‘空白符号’ 丢弃