%{
    //C code

    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>

    int yylex(void);
    void yyerror(const char *);

    typedef struct Node
    {
        struct Node *next;
        // struct Node *prev;
        char *data;
        int type;
        /*
         * 0 for NA
         * 1 for int
         * 2 for bool
         * 3 for array
         * What about other types??
         */
    } Node;

    Node* makeNode()
    {
        Node *temp = (Node*) malloc(sizeof(Node));
        temp->next = NULL;
        temp->type  = 0;
        return temp;
    }
%}



%union {
    char *data;
    Node *node;
}



%token <data> INTEGER_T IDENTIFIER_T OPERATOR_T COMMENT_T
%token <data> NOT_T EQ_T 
%token <data> TRUE_T FALSE_T 
%token <data> IF_T ELSE_T WHILE_T 
%token <data> NEW_T LENGTH_T PRINT_T THIS_T
%token <data> INT_T BOOL_T STRING_T
%token <data> DOT_T SCOLON_T COMMA_T 
%token <data> CLASS_T PUBLIC_T STATIC_T VOID_T MAIN_T EXTENDS_T RETURN_T
%token <data> DEFS_T DEFS0_T DEFS1_T DEFS2_T
%token <data> DEFE_T DEFE0_T DEFE1_T DEFE2_T
%token <data> LPAREN_T RPAREN_T
%token <data> LSQBR_T RSQBR_T
%token <data> LCURLY_T RCURLY_T

%type <node> INTEGER IDENTIFIER OPERATOR COMMENT
%type <node> NOT EQ 
%type <node> TRUE FALSE 
%type <node> IF ELSE WHILE 
%type <node> NEW LENGTH PRINT THIS
%type <node> INT BOOL STRING
%type <node> DOT SCOLON COMMA 
%type <node> CLASS PUBLIC STATIC VOID MAIN EXTENDS RETURN
%type <node> DEFS DEFS0 DEFS1 DEFS2
%type <node> DEFE DEFE0 DEFE1 DEFE2
%type <node> LPAREN RPAREN
%type <node> LSQBR RSQBR
%type <node> LCURLY RCURLY
%type <node> mainClass expression primaryExp declarations typeDeclaration typeIdentifier method type methodDeclaration arguments stmt extraArgs statement

%%


goal: mainClass declarations
{
    Node *curr = $1;
    while(curr)
    {
        printf("%s\n", curr->data);
        curr = curr->next;
    }
}
;

declarations:
{   $$ = makeNode();
    $$->data = strdup("");  }

            | typeDeclaration declarations
{   Node *last = $1;
    while(last->next)
        last = last->next;
    last->next = $2;
    $$ = $1;    }

mainClass: CLASS IDENTIFIER LCURLY PUBLIC STATIC VOID MAIN LPAREN STRING LSQBR RSQBR IDENTIFIER RPAREN LCURLY PRINT LPAREN expression RPAREN SCOLON RCURLY RCURLY
{   $1->next = $2;
    $2->next = $3;
    $3->next = $4;
    $4->next = $5;
    $5->next = $6;
    $6->next = $7;
    $7->next = $8;
    $8->next = $9;
    $9->next = $10;
    $10->next = $11;
    $11->next = $12;
    $12->next = $13;
    $13->next = $14;
    $14->next = $15;
    $15->next = $16;
    $16->next = $17;
    Node *last = $17;
    while(last->next)
        last = last->next;
    last->next = $18;
    $18->next = $19;
    $19->next = $20;
    $20->next = $21;
    $$ = $1;    }
;

typeDeclaration: CLASS IDENTIFIER LCURLY typeIdentifier method RCURLY
{   $1->next = $2;
    $2->next = $3;
    $3->next = $4;
    Node *last = $4;
    while(last->next)
        last = last->next;
    last->next = $5;
    last = $5;
    while(last->next)
        last = last->next;
    last->next = $6;
    $$ = $1;    }

               | CLASS IDENTIFIER EXTENDS IDENTIFIER LCURLY typeIdentifier method RCURLY
{   $1->next = $2;
    $2->next = $3;
    $3->next = $4;
    $4->next = $5;
    $5->next = $6;
    Node *last = $6;
    while(last->next)
        last = last->next;
    last->next = $7;
    last = $7;
    while(last->next)
        last = last->next;
    last->next = $8;
    $$ = $1;    }
;

typeIdentifier: 
{   $$ = makeNode();
    $$->data = strdup("");  }

              | typeIdentifier type IDENTIFIER SCOLON 
{   Node *last = $1;
    while(last->next)
        last = last->next;
    last->next = $2;
    last = $2;
    while(last->next)
        last = last->next;
    last->next = $3;
    $3->next = $4;
    $$ = $1;    }
;

method: 
{   $$ = makeNode();
    $$->data = strdup("");  }

      | methodDeclaration method
{   Node *last = $1;
    while(last->next)
        last = last->next;
    last->next = $2;
    $$ = $1;    }
;

methodDeclaration: PUBLIC type IDENTIFIER LPAREN arguments RPAREN LCURLY typeIdentifier stmt RETURN expression SCOLON RCURLY
{   $1->next = $2;
    Node *last = $2;
    while(last->next)
        last = last->next;
    last->next = $3;
    $3->next = $4;
    $4->next = $5;
    last = $5;
    while(last->next)
        last = last->next;
    last->next = $6;
    $6->next = $7;
    $7->next = $8;
    last = $8;
    while(last->next)
        last->next = last;
    last->next = $9;
    last = $9;
    while(last->next)
        last->next = last;
    last->next = $10;
    $10->next = $11;
    last = $11;
    while(last->next)
        last = last->next;
    last->next = $12;
    $12->next = $13;
    $$ = $1;    }
;

arguments:
{   $$ = makeNode();
    $$->data = strdup("");  } 

         | type IDENTIFIER extraArgs
{   Node *last = $1;
    while(last->next)
        last = last->next;
    last->next = $2;
    $2->next = $3;
    $$ = $1;    }
;

extraArgs: 
{   $$ = makeNode();
    $$->data = strdup("");  }

         | COMMA type IDENTIFIER extraArgs
{   $1->next = $2;
    Node *last = $2;
    while(last->next)
        last = last->next;
    last->next = $3;
    $3->next = $4;
    $$ = $1;    }
;

type: INT LSQBR RSQBR
{   $1->next = $2;
    $2->next = $3;
    $$ = $1;    }

    | BOOL
{   $$ = $1;    }

    | INT
{   $$ = $1;    }

    | IDENTIFIER
{   $$ = $1;    }
;

stmt:
{   $$ = makeNode();
    $$->data = strdup("");  } 

    | statement stmt
{   Node *last = $1;
    while(last->next)
        last = last->next;
    last->next = $2;
    $$ = $1;    }
;

statement: LCURLY stmt RCURLY
{   $1->next = $2;
    Node *last = $2;
    while(last->next)
        last = last->next;
    last->next = $3;
    $$ = $1;    }

         | PRINT LPAREN expression RPAREN SCOLON
{   $1->next = $2;
    $2->next = $3;
    Node *last = $3;
    while(last->next)
        last = last->next;
    last->next = $4;
    $4->next = $5;
    $$ = $1;    } 

         | IDENTIFIER EQ expression SCOLON
{   $1->next = $2;
    $2->next = $3;
    Node *last = $3;
    while(last->next)
        last = last->next;
    last->next = $4;
    $$ = $1;    }

         | IDENTIFIER LSQBR expression RSQBR EQ expression SCOLON
{   $1->next = $2;
    $2->next = $3;
    Node *last = $3;
    while(last->next)
        last = last->next;
    last->next = $4;
    $4->next = $5;
    $5->next = $6;
    last = $6;
    while(last->next)
        last = last->next;
    last->next = $7;
    $$ = $1;    }

         | IF LPAREN expression RPAREN statement
{   $1->next = $2;
    $2->next = $3;
    Node *last = $3;
    while(last->next)
        last = last->next;
    last->next = $4;
    $4->next = $5;
    $$ = $1;    }

         | IF LPAREN expression RPAREN statement ELSE statement
{   $1->next = $2;
    $2->next = $3;
    Node *last = $3;
    while(last->next)
        last = last->next;
    last->next = $4;
    $4->next = $5;
    last = $5;
    while(last->next)
        last = last->next;
    last->next = $6;
    $6->next = $7;
    $$ = $1;    }

         | WHILE LPAREN expression RPAREN statement
{   $1->next = $2;
    $2->next = $3;
    Node *last = $3;
    while(last->next)
        last = last->next;
    last->next = $4;
    $4->next = $5;
    $$ = $1;    }
;

expression: primaryExp OPERATOR primaryExp
{   Node *last = $1;
    while(last->next)
        last = last->next;
    last->next = $2;
    $2->next = $3;
    $$ = $1;    }
          
          | primaryExp LSQBR primaryExp RSQBR
{   Node *last = $1;
    while(last->next)
        last = last->next;
    last->next = $2;
    $2->next = $3;
    last = $3;
    while(last->next)
        last = last->next;
    last->next = $4;
    $$ = $1;    }
          
          | primaryExp DOT LENGTH
{   Node *last = $1;
    while(last->next)
        last = last->next;
    last->next = $2;
    $2->next = $3;
    $$ = $1;    }
          
          | primaryExp
{   $$ = $1;    }

          | //One more to implement!!
;

primaryExp: INTEGER
{   $$ = $1;    }
          
          | TRUE
{   $$ = $1;    }

          | FALSE
{   $$ = $1;    }

          | IDENTIFIER
{   $$ = $1;    }

          | THIS
{   $$ = $1;    }

          | NEW INT LSQBR expression RSQBR
{   $1->next = $2;
    $2->next = $3;
    $3->next = $4;
    Node *last = $4;
    while(last->next)
        last = last->next;
    last->next = $5;
    $$ = $5;    }

          | NEW IDENTIFIER LPAREN RPAREN
{   $1->next = $2;
    $2->next = $3;
    $3->next = $4;
    $$ = $1;    }

          | NOT expression
{   $1->next = $2;
    $$ = $1;    }

          | LPAREN expression RPAREN
{   $1->next = $2;
    Node *last = $2;
    while(last->next)
        last = last->next;
    last->next = $3;
    $$ = $1;    }
;


COMMENT: COMMENT_T
{   printf("%s\n", $$); }
;

LPAREN: LPAREN_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

RPAREN: RPAREN_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

LSQBR: LSQBR_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

RSQBR: RSQBR_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

LCURLY: LCURLY_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

RCURLY: RCURLY_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

DEFS0: DEFS0_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

DEFS1: DEFS1_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

DEFS2: DEFS2_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

DEFS: DEFS_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

DEFE0: DEFE0_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

DEFE1: DEFE1_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

DEFE2: DEFE2_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

DEFE: DEFE_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

TRUE: TRUE_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

FALSE: FALSE_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

THIS: THIS_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

IF: IF_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

ELSE: ELSE_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

WHILE: WHILE_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

NEW: NEW_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

LENGTH: LENGTH_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

INT: INT_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

BOOL: BOOL_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

CLASS: CLASS_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

STRING: STRING_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

PUBLIC: PUBLIC_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

STATIC: STATIC_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

VOID: VOID_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

MAIN: MAIN_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

EXTENDS: EXTENDS_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

RETURN: RETURN_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

PRINT: PRINT_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

OPERATOR: OPERATOR_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

NOT: NOT_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

EQ: EQ_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

DOT: DOT_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

SCOLON: SCOLON_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

COMMA: COMMA_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

INTEGER: INTEGER_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

IDENTIFIER: IDENTIFIER_T
{   $$ = makeNode(); $$->data = strdup($1); }
;

%%

//C code

void yyerror (const char *s) {
  printf ("Unexpected syntax\n");
}

int main() {
    yyparse();
    return 0;
}

#include "lex.yy.c"