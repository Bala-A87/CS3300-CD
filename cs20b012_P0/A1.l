%{
    //C Code
%}

DIGIT [0-9]
INTEGER {DIGIT}+
LETTER [a-zA-Z_]
IDENTIFIER {LETTER}({LETTER}|{DIGIT})*
WHITESPACE [ \t\n\r]
COMMENT "//".*

%%

"(" { yylval.data = strdup(yytext); return LPAREN_T; }

")" { yylval.data = strdup(yytext); return RPAREN_T; }

"[" { yylval.data = strdup(yytext); return LSQBR_T; }

"]" { yylval.data = strdup(yytext); return RSQBR_T; }

"{" { yylval.data = strdup(yytext); return LCURLY_T; }

"}" { yylval.data = strdup(yytext); return RCURLY_T; }

"#defineStmt0" { yylval.data = strdup(yytext); return DEFS0_T; }

"#defineStmt1" { yylval.data = strdup(yytext); return DEFS1_T; }

"#defineStmt2" { yylval.data = strdup(yytext); return DEFS2_T; }

"#defineStmt" { yylval.data = strdup(yytext); return DEFS_T; }

"#defineExpr0" { yylval.data = strdup(yytext); return DEFE0_T; }

"#defineExpr1" { yylval.data = strdup(yytext); return DEFE1_T; }

"#defineExpr2" { yylval.data = strdup(yytext); return DEFE2_T; }

"#defineExpr" { yylval.data = strdup(yytext); return DEFE_T; }

"true" { yylval.data = strdup(yytext); return TF_THIS_T; }

"false" { yylval.data = strdup(yytext); return TF_THIS_T; }

"this" { yylval.data = strdup(yytext); return TF_THIS_T; }

"if" { yylval.data = strdup(yytext); return IF_T; }

"else" { yylval.data = strdup(yytext); return ELSE_T; }

"while" { yylval.data = strdup(yytext); return WHILE_T; }

"new" { yylval.data = strdup(yytext); return NEW_T; }

"length" { yylval.data = strdup(yytext); return LENGTH_T; }

"int" { yylval.data = strdup(yytext); return INT_T; }

"boolean" { yylval.data = strdup(yytext); return BOOL_T; }

"class" { yylval.data = strdup(yytext); return CLASS_T; }

"String" { yylval.data = strdup(yytext); return STRING_T; }

"public" { yylval.data = strdup(yytext); return PUBLIC_T; }

"static" { yylval.data = strdup(yytext); return STATIC_T; }

"void" { yylval.data = strdup(yytext); return VOID_T; }

"main" { yylval.data = strdup(yytext); return MAIN_T; }

"extends" { yylval.data = strdup(yytext); return EXTENDS_T; }

"return" { yylval.data = strdup(yytext); return RETURN_T; }

"System.out.println" { yylval.data = strdup(yytext); return PRINT_T; }

"!=" { yylval.data = strdup(yytext); return OPERATOR_T; }

"!" { yylval.data = strdup(yytext); return NOT_T; }

"<=" { yylval.data = strdup(yytext); return OPERATOR_T; }

"=" { yylval.data = strdup(yytext); return EQ_T; }

"&&" { yylval.data = strdup(yytext); return OPERATOR_T; }

"||" { yylval.data = strdup(yytext); return OPERATOR_T; }

"+" { yylval.data = strdup(yytext); return OPERATOR_T; }

"-" { yylval.data = strdup(yytext); return OPERATOR_T; }

"*" { yylval.data = strdup(yytext); return OPERATOR_T; }

"/" { yylval.data = strdup(yytext); return OPERATOR_T; }

"." { yylval.data = strdup(yytext); return DOT_T; }

";" { yylval.data = strdup(yytext); return SCOLON_T; }

"," { yylval.data = strdup(yytext); return COMMA_T; }

{WHITESPACE} { } 

{INTEGER} {
    yylval.data = strdup(yytext); return INTEGER_T;
}

{IDENTIFIER} {
    yylval.data = strdup(yytext); return IDENTIFIER_T;
}

{COMMENT} { }

. { printf("Lexer error\n"); exit(1); }

%%

//C code, main