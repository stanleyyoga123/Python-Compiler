:- include('arithmetic.pl').
:- include('utility.pl').

logOp -->
    ">"; "<"; ">="; "<="; "=="; "!="; "<>";
    "and"; "or"; "not"; "in"; "is";
    "is not"; "not in".

insideBracket -->
    (blank;variable;numbers;operator), logOp, (variable;numbers;operator).

operation -->
    insideBracket;
    insideBracket,(space;blank),operation.

bracket -->
    operation;
    (operation,logOp,"(",bracket;blank),(")";logOp,operation,bracket).

bracket -->
    (operation;blank);
    (blank;"("),(blank;logOp),operation,(blank;(logOp,bracket)),(blank;")";logOp,bracket).

