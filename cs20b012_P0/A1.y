%{
    //C code

    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>

    int yylex(void);
    void yyerror(const char *);

    typedef struct Node
    {
        struct Node *next, *tail;
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

    Node* makeNode(char *data)
    {
        Node *temp = (Node*) malloc(sizeof(Node));
        temp->next = NULL;
        temp->tail = temp;
        temp->data = strdup(data);
        temp->type  = 0;
        return temp;
    }

    void append(Node *list1, Node *list2)
    {
        list1->tail->next = list2;
        list1->tail = list2->tail;
    }

    typedef struct Identifier
    {
        char *name;
        struct Identifier *next;
    } Identifier;

    Identifier* makeId(char *name)
    {
        Identifier *temp = (Identifier*) malloc(sizeof(Identifier));
        temp->name = strdup(name);
        temp->next = NULL;
        return temp;
    }

    typedef struct Macro
    {
        char *name;
        Identifier *params_head, *params_tail;
        Node *replacement;
        struct Macro *next;
    } Macro;

    Macro* makeMacro(char *name)
    {
        Macro *temp = (Macro*) malloc(sizeof(Macro));
        temp->name = strdup(name);
        temp->params_head = temp->params_tail = NULL;
        temp->replacement = NULL;
        temp->next = NULL;
    }

    void addId(Macro *macro, Identifier *id)
    {
        if(macro->params_tail)
        {
            macro->params_tail->next = id;
            macro->params_tail = id;
        }
        else
        {
            macro->params_head = macro->params_tail = id;
        }
    }

    void createReplacement(Macro *macro, Node *replacement)
    {
        Node *head = NULL, *tail = NULL;
        Node *curr = replacement;
        while(curr)
        {
            if(tail)
            {
                append(tail, makeNode(curr->data));
                tail = tail->next;
            }
            else
            {
                head = makeNode(curr->data);
                tail = head;
            }
            curr = curr->next;
        }
        macro->replacement = head;
    }

    typedef struct macroTable
    {
        Macro *head, *tail;
    } macroTable;

    macroTable* makeTable()
    {
        macroTable *table = (macroTable*) (malloc(sizeof(macroTable)));
        table->head = table->tail = NULL;
    }

    macroTable *Macros = NULL;

    void addMacro(macroTable *table, Macro *macro)
    {
        if(table->tail)
        {
            table->tail->next = macro;
            table->tail = macro;
        }
        else
        {
            table->head = table->tail = macro;
        }
    }

    Macro* findMacro(macroTable *table, char *macroName)
    {
        Macro *currMacro = table->head;
        while(currMacro)
        {
            if(!strcmp(currMacro->name, macroName))
                return currMacro;
            currMacro = currMacro->next;
        }
        return NULL;
    }
    
    int tab_count = 0;
    int tab_flag = 0;
%}



%union {
    char *data;
    Node *node;
}



%token <data> INTEGER_T IDENTIFIER_T OPERATOR_T
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

%type <node> INTEGER IDENTIFIER OPERATOR
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
%type <node> macros macroDefinition macroCall expressions extraExps macroDefExp macroDefStmt extraIDs macroStmtBlock

%%


goal: macros mainClass declarations
{
    append($2, $3);
    Node *curr = $2;
    while(curr)
    {
        if(!strcmp(curr->data, "}"))
            tab_count--;
        if(tab_flag)
        {
            for(int i = 0; i < tab_count; i++)
                printf("\t");
            tab_flag = 0;
        }
        if(strcmp(curr->data, "") != 0)
            printf("%s ", curr->data);
        if(!strcmp(curr->data, ";"))
        {
            printf("\n");
            tab_flag = 1;
        }
        else if(!strcmp(curr->data, "{"))
        {
            printf("\n");
            tab_count++;
            tab_flag = 1;
        }
        else if(!strcmp(curr->data, "}"))
        {
            printf("\n");
            tab_flag = 1;
        }
        curr = curr->next;
    }
}
;

macros: 
{   $$ = makeNode("");  }

      | macroDefinition macros
{   append($1, $2);
    $$ = $1;    }
;

declarations:
{   $$ = makeNode("");  }

            | typeDeclaration declarations
{   append($1, $2);
    $$ = $1;    }
;    

mainClass: CLASS IDENTIFIER LCURLY PUBLIC STATIC VOID MAIN LPAREN STRING LSQBR RSQBR IDENTIFIER RPAREN LCURLY PRINT LPAREN expression RPAREN SCOLON RCURLY RCURLY
{   append($20, $21);
    append($19, $20);
    append($18, $19);
    append($17, $18);
    append($16, $17);
    append($15, $16);
    append($14, $15);
    append($13, $14);
    append($12, $13);
    append($11, $12);
    append($10, $11);
    append($9, $10);
    append($8, $9);
    append($7, $8);
    append($6, $7);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }
;

typeDeclaration: CLASS IDENTIFIER LCURLY typeIdentifier method RCURLY
{   append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

               | CLASS IDENTIFIER EXTENDS IDENTIFIER LCURLY typeIdentifier method RCURLY
{   append($7, $8);
    append($6, $7);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }
;

typeIdentifier: 
{   $$ = makeNode("");  }

              | typeIdentifier type IDENTIFIER SCOLON 
{   append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }
;

method: 
{   $$ = makeNode("");  }

      | methodDeclaration method
{   append($1, $2);
    $$ = $1;    }
;

methodDeclaration: PUBLIC type IDENTIFIER LPAREN arguments RPAREN LCURLY typeIdentifier stmt RETURN expression SCOLON RCURLY
{   append($12, $13);
    append($11, $12);
    append($10, $11);
    append($9, $10);
    append($8, $9);
    append($7, $8);
    append($6, $7);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }
;

arguments:
{   $$ = makeNode("");  } 

         | type IDENTIFIER extraArgs
{   append($2, $3);
    append($1, $2);
    $$ = $1;    }
;

extraArgs: 
{   $$ = makeNode("");  }

         | COMMA type IDENTIFIER extraArgs
{   append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }
;

type: INT LSQBR RSQBR
{   append($2, $3);
    append($1, $2);
    $$ = $1;    }

    | BOOL
{   $$ = $1;    }

    | INT
{   $$ = $1;    }

    | IDENTIFIER
{   $$ = $1;    }
;

stmt:
{   $$ = makeNode("");  } 

    | statement stmt
{   append($1, $2);
    $$ = $1;    }
;

statement: LCURLY stmt RCURLY
{   append($2, $3);
    append($1, $2);
    $$ = $1;    }

         | PRINT LPAREN expression RPAREN SCOLON
{   append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    } 

         | IDENTIFIER EQ expression SCOLON
{   append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

         | IDENTIFIER LSQBR expression RSQBR EQ expression SCOLON
{   append($6, $7);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

         | IF LPAREN expression RPAREN statement
{   append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

         | IF LPAREN expression RPAREN statement ELSE statement
{   append($6, $7);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

         | WHILE LPAREN expression RPAREN statement
{   append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

         | macroCall SCOLON
{   append($1, $2);
    $$ = $1;    }
;

macroCall: IDENTIFIER LPAREN expressions RPAREN
{   fprintf(stderr, "\n\n\n\nEntered macro call for %s\n\n\n\n", $1->data);
    Macro *reqMacro = findMacro(Macros, $1->data);
    fprintf(stderr, "\n\n\n\nFound macro %s\n\n\n\n", reqMacro->name);
    //Test for validity (i.e., check if non-NULL)
    Identifier *args = NULL, *curr = NULL;
    Node *exps = $3;
    char* argName = strdup("");
    while(exps)
    {
        if(!strcmp(exps->data, "$"))
        {
            Identifier *nextArg = makeId(argName);
            if(!curr)
            {
                args = curr = nextArg;
            }
            else
            {
                curr->next = nextArg;
                curr = nextArg;
            }
            argName = strdup("");
        }
        else
        {
            strncat(argName, exps->data, strlen(exps->data));
        }
        exps = exps->next;
    }
    if(strcmp(argName, ""))
    {
        Identifier *nextArg = makeId(argName);
        if(!curr)
        {
            args = curr = nextArg;
        }
        else
        {
            curr->next = nextArg;
            curr = nextArg;
        }
    }
    Node *macroText = NULL, *textHead = NULL;
    Node *macroRep = reqMacro->replacement;
    Identifier *macroArgs = reqMacro->params_head;
    while(macroRep)
    {
        Identifier *currMacroArg = macroArgs;
        curr = args;
        while(currMacroArg)
        {
            if(!strcmp(currMacroArg->name, macroRep->data))
                break;
            curr = curr->next;
            currMacroArg = currMacroArg->next;
        }
        Node *nextText;
        if(curr)
        {
            nextText = makeNode(curr->name);
        }
        else
        {
            nextText = makeNode(macroRep->data);
        }
        if(macroText)
        {
            macroText->next = nextText;
            macroText = nextText;
        }
        else
        {
            textHead = macroText = nextText;
        }
        macroRep = macroRep->next;
    }
    $$ = textHead;
}
;

expressions: 
{   $$ = makeNode("");  }
           | expression extraExps
{   append($1, $2);
    $$ = $1;    }
;

extraExps: 
{   $$ = makeNode("");  }
         | COMMA expression extraExps
{   append($2, $3);
    append($1, $2);
    $1->data = strdup("$");
    $$ = $1;    }
;

expression: primaryExp OPERATOR primaryExp
{   append($2, $3);
    append($1, $2);
    $$ = $1;    }
          
          | primaryExp LSQBR primaryExp RSQBR
{   append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }
          
          | primaryExp DOT LENGTH
{   append($2, $3);
    append($1, $2);
    $$ = $1;    }
          
          | primaryExp
{   $$ = $1;    }

          | primaryExp DOT IDENTIFIER LPAREN expressions RPAREN
{   append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

          | macroCall
{   $$ = $1;    }
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
{   append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

          | NEW IDENTIFIER LPAREN RPAREN
{   append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

          | NOT expression
{   append($1, $2);
    $$ = $1;    }

          | LPAREN expression RPAREN
{   append($2, $3);
    append($1, $2);
    $$ = $1;    }
;

macroDefinition: macroDefExp
{   $$ = $1;    }

               | macroDefStmt
{   $$ = $1;    }
;

macroDefStmt: DEFS IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER COMMA IDENTIFIER extraIDs RPAREN macroStmtBlock
{   
    Macro *newMacro = makeMacro($2->data);
    addId(newMacro, makeId($4->data));
    addId(newMacro, makeId($6->data));
    addId(newMacro, makeId($8->data));
    Node *extras = $9;
    while(extras)
    {
        if(strcmp(extras->data, "") && strcmp(extras->data, ","))
            addId(newMacro, makeId(extras->data));
        extras = extras->next;
    }
    createReplacement(newMacro, $11);
    addMacro(Macros, newMacro);
    append($10, $11);
    append($9, $10);
    append($8, $9);
    append($7, $8);
    append($6, $7);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

            | DEFS0 IDENTIFIER LPAREN RPAREN macroStmtBlock
{   Macro *newMacro = makeMacro($2->data);
    createReplacement(newMacro, $5);
    addMacro(Macros, newMacro);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

            | DEFS1 IDENTIFIER LPAREN IDENTIFIER RPAREN macroStmtBlock
{   Macro *newMacro = makeMacro($2->data);
    addId(newMacro, makeId($4->data));
    createReplacement(newMacro, $6);
    addMacro(Macros, newMacro);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

            | DEFS2 IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER RPAREN macroStmtBlock
{   Macro *newMacro = makeMacro($2->data);
    addId(newMacro, makeId($4->data));
    addId(newMacro, makeId($6->data));
    createReplacement(newMacro, $8);
    addMacro(Macros, newMacro);
    append($7, $8);
    append($6, $7);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }
;

macroStmtBlock: LCURLY stmt RCURLY
{   append($2, $3);
    append($1, $2);
    $$ = $1;    }
;

extraIDs: 
{   $$ = makeNode("");  }

        | COMMA IDENTIFIER extraIDs
{   append($2, $3);
    append($1, $2);
    $$ = $1;    }
;

macroDefExp: DEFE IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER COMMA IDENTIFIER extraIDs RPAREN LPAREN expression RPAREN
{   Macro *newMacro = makeMacro($2->data);
    addId(newMacro, makeId($4->data));
    addId(newMacro, makeId($6->data));
    addId(newMacro, makeId($8->data));
    Node *extras = $9;
    while(extras)
    {
        if(strcmp(extras->data, "") && strcmp(extras->data, ","))
            addId(newMacro, makeId(extras->data));
        extras = extras->next;
    }
    createReplacement(newMacro, $12);
    addMacro(Macros, newMacro);
    append($12, $13);
    append($11, $12);
    append($10, $11);
    append($9, $10);
    append($8, $9);
    append($7, $8);
    append($6, $7);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

           | DEFE0 IDENTIFIER LPAREN RPAREN LPAREN expression RPAREN
{   Macro *newMacro = makeMacro($2->data);
    createReplacement(newMacro, $6);
    addMacro(Macros, newMacro);
    append($6, $7);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

           | DEFE1 IDENTIFIER LPAREN IDENTIFIER RPAREN LPAREN expression RPAREN
{   Macro *newMacro = makeMacro($2->data);
    addId(newMacro, makeId($4->data));
    createReplacement(newMacro, $7);
    addMacro(Macros, newMacro);
    append($7, $8);
    append($6, $7);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

           | DEFE2 IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER RPAREN LPAREN expression RPAREN
{   Macro *newMacro = makeMacro($2->data);
    addId(newMacro, makeId($4->data));
    addId(newMacro, makeId($6->data));
    createReplacement(newMacro, $9);
    addMacro(Macros, newMacro);
    append($9, $10);
    append($8, $9);
    append($7, $8);
    append($6, $7);
    append($5, $6);
    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }
;

LPAREN: LPAREN_T
{   $$ = makeNode($1); }
;

RPAREN: RPAREN_T
{   $$ = makeNode($1); }
;

LSQBR: LSQBR_T
{   $$ = makeNode($1); }
;

RSQBR: RSQBR_T
{   $$ = makeNode($1);  }
;

LCURLY: LCURLY_T
{   $$ = makeNode($1);  }
;

RCURLY: RCURLY_T
{   $$ = makeNode($1);  }
;

DEFS0: DEFS0_T
{   $$ = makeNode($1);  }
;

DEFS1: DEFS1_T
{   $$ = makeNode($1);  }
;

DEFS2: DEFS2_T
{   $$ = makeNode($1);  }
;

DEFS: DEFS_T
{   $$ = makeNode($1);  }
;

DEFE0: DEFE0_T
{   $$ = makeNode($1);  }
;

DEFE1: DEFE1_T
{   $$ = makeNode($1);  }
;

DEFE2: DEFE2_T
{   $$ = makeNode($1);  }
;

DEFE: DEFE_T
{   $$ = makeNode($1);  }
;

TRUE: TRUE_T
{   $$ = makeNode($1);  }
;

FALSE: FALSE_T
{   $$ = makeNode($1);  }
;

THIS: THIS_T
{   $$ = makeNode($1);  }
;

IF: IF_T
{   $$ = makeNode($1);  }
;

ELSE: ELSE_T
{   $$ = makeNode($1);  }
;

WHILE: WHILE_T
{   $$ = makeNode($1);  }
;

NEW: NEW_T
{   $$ = makeNode($1);  }
;

LENGTH: LENGTH_T
{   $$ = makeNode($1);  }
;

INT: INT_T
{   $$ = makeNode($1);  }
;

BOOL: BOOL_T
{   $$ = makeNode($1);  }
;

CLASS: CLASS_T
{   $$ = makeNode($1);  }
;

STRING: STRING_T
{   $$ = makeNode($1);  }
;

PUBLIC: PUBLIC_T
{   $$ = makeNode($1);  }
;

STATIC: STATIC_T
{   $$ = makeNode($1);  }
;

VOID: VOID_T
{   $$ = makeNode($1);  }
;

MAIN: MAIN_T
{   $$ = makeNode($1);  }
;

EXTENDS: EXTENDS_T
{   $$ = makeNode($1);  }
;

RETURN: RETURN_T
{   $$ = makeNode($1);  }
;

PRINT: PRINT_T
{   $$ = makeNode($1);  }
;

OPERATOR: OPERATOR_T
{   $$ = makeNode($1);  }
;

NOT: NOT_T
{   $$ = makeNode($1);  }
;

EQ: EQ_T
{   $$ = makeNode($1);  }
;

DOT: DOT_T
{   $$ = makeNode($1);  }
;

SCOLON: SCOLON_T
{   $$ = makeNode($1);  }
;

COMMA: COMMA_T
{   $$ = makeNode($1);  }
;

INTEGER: INTEGER_T
{   $$ = makeNode($1);  }
;

IDENTIFIER: IDENTIFIER_T
{   $$ = makeNode($1);  }
;

%%

//C code

void yyerror (const char *s) {
  printf ("Unexpected syntax\n");
}

int main() {
    // #ifdef YYDEBUG
    // yydebug = 1;
    // #endif

    Macros = makeTable();
    yyparse();
    // Macro *curr = Macros->head;
    // while(curr)
    // {
    //     printf("%s\n", curr->name);
    //     Identifier *currID = curr->params_head;
    //     while(currID)
    //     {
    //         printf("%s ", currID->name);
    //         currID = currID->next;
    //     }
    //     printf("\n");
    //     Node *rep = curr->replacement;
    //     while(rep)
    //     {
    //         printf("%s ", rep->data);
    //         rep = rep->next;
    //     }
    //     printf("\n");
    //     curr = curr->next;
    // }
    return 0;
}

#include "lex.yy.c"