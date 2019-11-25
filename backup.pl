:- include('arithmetic.pl').
:- include('utility.pl').

logOp -->
    ">"; "<"; ">="; "<="; "=="; "!="; "<>";
    "and"; "or"; "not"; "in"; "is";
    "is not"; "not in".

spaceVariable -->
    variable;
    (variable,space,spaceVariable).

variablebracket -->
    spaceVariable,(space;blank);
    (((blank;space),spaceVariable,(blank;space));(blank;space)),
    "(",
    (space;blank;(space,variablebracket);(blank,variablebracket)),
    ")",
    (blank;space).

insideBracket -->
    (numbers;operator;variablebracket), (space;blank), logOp, (space;blank), (numbers;operator;variablebracket).

operation -->
    insideBracket;
    insideBracket,operation.

bracket -->
    (operation;blank);
    ((space;blank),(operation;variablebracket),logOp,(space;blank),"(",bracket;operation;variablebracket),
    (")",logOp,bracket;")";")",logOp,variablebracket).
