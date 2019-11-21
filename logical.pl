:- include('arithmetic.pl').
:- include('utility.pl').

logOp -->
    ">"; "<"; ">="; "<="; "=="; "!="; "<>";
    "and"; "or"; "not"; "in"; "is";
    "is not"; "not in".

insideBracket -->
    (blank;variable;numbers;operator), logOp, (blank;variable;numbers;operator).

operation -->
    insideBracket;
    insideBracket,(space;blank),operation.

bracket -->
    (operation;blank);
    "(",bracket,(blank;logOp),p.

p -->
    ")";
    ")",p.
