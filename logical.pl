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
    ((operation;variablebracket;"None"),logOp,"(",bracket;operation;variablebracket;"None"),
    (")",logOp,bracket;")";")",logOp,variablebracket;"None").

inside -->
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign);
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign),(space;"\n"),inside.

conditionalElse -->
    blank;
    ("elif",(space;blank),bracket,(space;blank),":","\n",inside);
    ("else",(space;blank),":","\n",inside);
    ("elif",(space;blank),bracket,(space;blank),":","\n",inside,conditionalElse);
    ("else",(space;blank),":","\n",inside,conditionalElse).

conditional -->
    blank;
    "if", (space;blank), bracket, (space;blank), ":", "\n", inside,
    (blank;((space;blank),conditionalElse)),
    conditional.