logOp -->
    ">"; "<"; ">="; "<="; "=="; "!="; "<>";
    "and"; "or"; "not"; "in"; "is";
    "is not"; "not in".

variablebracket -->
    variable;
    (blank,variable),
    (space;blank),
    "(",
    (space;blank),
    (variable;variablebracket;(blank;space)),
    (space;blank),
    ")",
    (blank;variable;variablebracket).

insideBracket -->
    (blank;variable;numbers;operator;variablebracket), logOp, (variable;numbers;operator;variablebracket).

operation -->
    insideBracket;
    insideBracket,(space;blank),operation.

bracket -->
    (operation;blank);
    ((operation;variablebracket;"None"),logOp,"(",bracket;operation;variablebracket;None),
    (")",logOp,bracket;")";")",logOp,variablebracket;"None").

conditional -->
    "if", (space;blank), bracket, (space;blank), ":", "\n", (blank;space),anythingButSampah, (blank;("elif";"else"), (space;blank), bracket, (space;blank), ":", (space;blank),"\n", anythingButSampah),conditional.