grammar Solidity;

sourceUnit : program EOF;

program : statement+ ;

statement : variableDeclaration
          | functionDeclaration
          | expressionStatement
          | ifStatement
          | forStatement
          | whileStatement
          | returnStatement
          ;

variableDeclaration : 'var' Identifier '=' expression ';' ;

functionDeclaration : 'function' Identifier '(' parameterList? ')' block ;

parameterList : parameter (',' parameter)* ;

parameter : Identifier ':' typeName ;

expressionStatement : expression ';' ;

ifStatement : 'if' '(' expression ')' statement ('else' statement)? ;

forStatement : 'for' '(' (variableDeclaration | expression)? ';' expression? ';' expression? ')' statement ;

whileStatement : 'while' '(' expression ')' statement ;

returnStatement : 'return' expression? ';' ;

block : '{' statement* '}' ;

expression : literal
           | Identifier
           | '(' expression ')'
           | expression binaryOperator expression
           | unaryOperator expression
           | functionCall
           ;

functionCall : Identifier '(' argumentList? ')' ;

argumentList : expression (',' expression)* ;

literal : IntegerLiteral
        | StringLiteral
        | BooleanLiteral
        ;

binaryOperator : '==' | '!=' | '<' | '>' | '<=' | '>=' | '+' | '-' | '*' | '/' | '%' | '&&' | '||' ;

unaryOperator : '-' | '!' ;

typeName : 'int' | 'string' | 'bool' ;

IntegerLiteral : '0' | [1-9][0-9]* ;

StringLiteral : '"' [a-zA-Z0-9]* '"' ;

BooleanLiteral : 'true' | 'false' ;

Identifier : [a-zA-Z][a-zA-Z0-9]* ;

Whitespace : [ \t\r\n]+ -> skip ;
