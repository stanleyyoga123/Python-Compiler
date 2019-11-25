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
    (operation;blank);
    (operation,logOp,"(",bracket;operation),
    (")",logOp,bracket;")").