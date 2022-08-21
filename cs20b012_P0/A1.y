%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>

    int yylex(void);
    void yyerror(const char *);

    typedef struct Node {   //To keep track of and order terminals seen/parsed
        struct Node *next, *tail;
        char *data;
    } Node;
    
    Node* makeNode(char *data) {
        Node *temp = (Node*) malloc(sizeof(Node));
        temp->next = NULL;
        temp->tail = temp;  //Makes life easier while appending nodes
        temp->data = strdup(data);
        return temp;
    }

    void append(Node *list1, Node *list2) {
        list1->tail->next = list2;
        list1->tail = list2->tail;
    }

    typedef struct Identifier { //To store arguments to a macro call (identifier names in the definition)
        char *name;
        struct Identifier *next;
    } Identifier;

    Identifier* makeId(char *name) {
        Identifier *temp = (Identifier*) malloc(sizeof(Identifier));
        temp->name = strdup(name);
        temp->next = NULL;
        return temp;
    }

    typedef struct Macro {  //We need to store macros seen
        char *name;
        Identifier *params_head, *params_tail;  //Parameters of the macro definition
        Node *replacement;  //The textual replacement to be done
        struct Macro *next;
    } Macro;

    Macro* makeMacro(char *name) {
        Macro *temp = (Macro*) malloc(sizeof(Macro));
        temp->name = strdup(name);
        temp->params_head = temp->params_tail = NULL;
        temp->replacement = NULL;
        temp->next = NULL;
    }

    void addId(Macro *macro, Identifier *id) {  //Adds a parameter to a macro (linked list insertion)
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

    void createReplacement(Macro *macro, Node *replacement) {   //Adds the replacement to the macro
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

    typedef struct macroTable { //To store all macro definitions
        Macro *head, *tail;
    } macroTable;

    macroTable* makeTable() {
        macroTable *table = (macroTable*) (malloc(sizeof(macroTable)));
        table->head = table->tail = NULL;
    }

    macroTable *Macros = NULL;  //The macros seen

    void addMacro(macroTable *table, Macro *macro) {    //When we see a macro definition, we add the macro
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

    Macro* findMacro(macroTable *table, char *macroName) {  //When we see a macro call, we search for the macro
        Macro *currMacro = table->head;
        while(currMacro)
        {
            if(!strcmp(currMacro->name, macroName))
                return currMacro;
            currMacro = currMacro->next;
        }
        return NULL;
    }
    
    /*
     * The following variables were used for formatting the printed (MiniJava) output
     */
    int tab_count = 0;  //How many tabspaces to print
    int tab_flag = 0;   //Whether or not to print tabspaces
    int rcurly_count = 0;   //Helped place new lines after some chunks of code
%}



%union {
    char *data;
    Node *node;
}

%token <data> INTEGER_T IDENTIFIER_T OPERATOR_T TF_THIS_T COMMENT_T
%token <data> NOT_T EQ_T 
%token <data> IF_T ELSE_T WHILE_T 
%token <data> NEW_T LENGTH_T PRINT_T
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
%type <node> IF ELSE WHILE 
%type <node> NEW LENGTH PRINT TF_THIS
%type <node> INT BOOL STRING
%type <node> DOT SCOLON COMMA 
%type <node> CLASS PUBLIC STATIC VOID MAIN EXTENDS RETURN
%type <node> DEFS DEFS0 DEFS1 DEFS2
%type <node> DEFE DEFE0 DEFE1 DEFE2
%type <node> LPAREN RPAREN
%type <node> LSQBR RSQBR
%type <node> LCURLY RCURLY
%type <node> mainClass expression primaryExp declarations typeDeclaration typeIdentifier method type methodDeclaration arguments stmt extraArgs statement statements comments
%type <node> macros macroDefinition macroCall expressions extraExps macroDefExp macroDefStmt extraIDs macroStmtBlock macroDefBlock callExpressions extraCallExps

%%


goal: macros comments mainClass declarations
{
    //All is well, so let's print the output! Macro definitions aren't allowed, so $1 is ignored
    append($2, $3);
    append($3, $4);
    Node *curr = $2;
    while(curr) {
        if(!strcmp(curr->data, "")) {   //The results from empty derivations can mess with format, so those are ignored
            curr = curr->next;
            continue;
        }
        if(!strcmp(curr->data, "}"))    //To indent } with one lesser tabspace
            tab_count--;
        else if(rcurly_count) { //After we've seen multiple }'s continuously, we add a newline to separate code
            printf("\n");
            rcurly_count = 0;
        }
        if(tab_flag) {
            for(int i = 0; i < tab_count; i++)
                printf("\t");
            tab_flag = 0;   //We don't need to print tabs for the next terminal we see!
        }

        printf("%s ", curr->data);  //The core part that actually matters
        /*
         * The following symbols ;{} as well as comments are the ones which are followed by a new line
         * These new lines being inserted required tabspaces to be printed in the next iteration
         */
        if(!strcmp(curr->data, ";")) {
            printf("\n");
            tab_flag = 1;
        }
        else if(!strcmp(curr->data, "{")) {
            printf("\n");
            tab_count++;
            tab_flag = 1;
        }
        else if(!strcmp(curr->data, "}")) {
            rcurly_count++;
            printf("\n");
            tab_flag = 1;
        }
        else if(strlen(curr->data) > 2 && curr->data[0] == '/' && (curr->data[1] == '/') || (curr->data[1] == '*')) {
            printf("\n");
            tab_flag = 1;
        }

        Node *temp = curr;
        curr = curr->next;
        free(temp);
    }
}
;

macros: 
{   $$ = makeNode("");  }   //Empty derivations can't just be left with NULL as they might mess with later derivations

      | macroDefinition macros
{   append($1, $2); //We append all the RHS terms together and give it to our RHS (works for most productions :))
    $$ = $1;    }
;

declarations:
{   $$ = makeNode("");  }

            | comments typeDeclaration declarations
{   append($2, $3);
    append($1, $2);
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

      | comments methodDeclaration method
{   append($2, $3);
    append($1, $2);
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

statement: statements
{   $$ = $1;    }

         | comments statement
{   append($1, $2);
    $$ = $1;    }

statements: LCURLY stmt RCURLY
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
{   $$ = $1;    
    /* 
     * We don't want the semicolon to be including after the macro call post replacement, so we don't append it
     */ }
;

macroCall: IDENTIFIER LPAREN callExpressions RPAREN
{   $$ = NULL;
    Macro *reqMacro = findMacro(Macros, $1->data), *dummyMacro = makeMacro("dummy");
    //dummyMacro is simply to maintain a list of calling parameters/expressions
    Node *exps = $3;
    char* argName = strdup("");
    /*
     *  Obtaining the list of calling parameters:
     */
    while(exps) {   //Whenever we see the delimiter ($), we save our expression as our next parameter, otherwise we keep appending
        if(!strcmp(exps->data, "$")){
            Identifier *nextArg = makeId(argName);
            addId(dummyMacro, nextArg);
            argName = strdup("");
        }
        else
            strncat(argName, exps->data, strlen(exps->data));
        exps = exps->next;
    }
    if(strcmp(argName, "")) {   //The last expression won't be followed by a $, so we need to add it in the end
        Identifier *nextArg = makeId(argName);
        addId(dummyMacro, nextArg);
    }
    /*
     *  Obtaining the text replacement from the macro's definition (parameters and replacement) and the calling parameters
     */
    Node *macroRep = reqMacro->replacement;
    Identifier *macroArgs = reqMacro->params_head;
    Identifier *args = dummyMacro->params_head;
    while(macroRep) {   
        Identifier *currMacroArg = macroArgs;
        Identifier *curr = args;    //Traverse the calling parameter list parallelly to use later
        while(currMacroArg) {   //For every node we see in the replacement, we check if it is a parameter
            if(!strcmp(currMacroArg->name, macroRep->data))
                break;  //It is!
            curr = curr->next;
            currMacroArg = currMacroArg->next;
        }

        Node *nextText = makeNode(macroRep->data);  //If it's not a parameter (default case), we use the node directly
        if(curr)    //It is a parameter, so we substitute it with the calling parameter/expression
            nextText = makeNode(curr->name);
        if($$)
            append($$, nextText);
        else
            $$ = nextText;
        macroRep = macroRep->next;
    }

    free(dummyMacro);
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
    $$ = $1;    }
;

callExpressions: 
{   $$ = makeNode("");  }
           | expression extraCallExps
{   append($1, $2);
    $$ = $1;    }
;

extraCallExps: 
{   $$ = makeNode("");  }
         | COMMA expression extraCallExps
{   append($2, $3);
    append($1, $2);
    $1->data = strdup("$"); //Using $ as a delimiter to separate the expressions in the macro call (comma could be a part of an expression so we can't use it)
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

          | IDENTIFIER
{   $$ = $1;    }

          | TF_THIS
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
    /*
     *  Make macro, add identifiers and then replacement, then add to the table of macros
     */
    Macro *newMacro = makeMacro($2->data);
    addId(newMacro, makeId($4->data));
    addId(newMacro, makeId($6->data));
    addId(newMacro, makeId($8->data));
    Node *extras = $9;
    while(extras) { //Extra identifiers
        if(strcmp(extras->data, "") && strcmp(extras->data, ","))   //Add definition parameters (anything that isn't empty or a comma)
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

macroDefExp: DEFE IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER COMMA IDENTIFIER extraIDs RPAREN macroDefBlock
{   Macro *newMacro = makeMacro($2->data);
    addId(newMacro, makeId($4->data));
    addId(newMacro, makeId($6->data));
    addId(newMacro, makeId($8->data));
    Node *extras = $9;
    while(extras) {
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

           | DEFE0 IDENTIFIER LPAREN RPAREN macroDefBlock
{   Macro *newMacro = makeMacro($2->data);
    createReplacement(newMacro, $5);
    addMacro(Macros, newMacro); 

    append($4, $5);
    append($3, $4);
    append($2, $3);
    append($1, $2);
    $$ = $1;    }

           | DEFE1 IDENTIFIER LPAREN IDENTIFIER RPAREN macroDefBlock
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

           | DEFE2 IDENTIFIER LPAREN IDENTIFIER COMMA IDENTIFIER RPAREN macroDefBlock
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

macroDefBlock: LPAREN expression RPAREN
{   append($2, $3);
    append($1, $2); }
;

comments: 
{   $$ = makeNode("");    }

        | COMMENT comments
{   append($1, $2);
    $$ = $1;    }
;

/*
 *  Non-terminals for every terminal
 *  The tokens returned by the .l file contain only strings, which are made into nodes here
 */

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

TF_THIS: TF_THIS_T
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

COMMENT: COMMENT_T
{   $$ = makeNode($1);  }
;

%%

void yyerror (const char *s) {
  printf ("Unexpected syntax\n");
}

int main() {
    #ifdef YYDEBUG
    yydebug = 1;
    #endif

    Macros = makeTable();

    yyparse();

    Macro *currMacro = Macros->head;
    while(currMacro) {
        Macro *temp = currMacro;
        currMacro = currMacro->next;
        free(currMacro);
    }
    return 0;
}

#include "lex.yy.c"
