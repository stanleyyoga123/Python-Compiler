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
    (blank;variable;numbers;operator;variablebracket), (space;blank), logOp, (space;blank), (variable;numbers;operator;variablebracket).

operation -->
    insideBracket;
    insideBracket,(space;blank),operation.

bracket -->
    (operation;blank);
    ((operation;variablebracket;"None"),(space;blank),logOp,(space;blank),"(",(space;blank),bracket;operation;variablebracket;"None"),
    (space;blank),
    (")",(space;blank),logOp,(space;blank),bracket;")",(space;blank);")",(space;blank),logOp,(space;blank),variablebracket;"None").

inside -->
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;struck);
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;struck),(space;"\n"),inside.

conditionalElse -->
    (space;blank);
    (space;blank),("elif",(space;blank),bracket,(space;blank),":","\n",(space;blank),inside);
    (space;blank),("elif",(space;blank),bracket,(space;blank),":","\n",(space;blank),rtn);
    
    (space;blank),("else",(space;blank),":","\n",(space;blank),inside);
    (space;blank),("else",(space;blank),":","\n",(space;blank),rtn);
    
    (space;blank),("elif",(space;blank),bracket,":","\n",conditionalElse);
    (space;blank),("elif",(space;blank),bracket,(space;blank),":","\n",(space;blank),inside,conditionalElse);
    (space;blank),("elif",(space;blank),bracket,(space;blank),":","\n",(space;blank),rtn,conditionalElse);
    (space;blank),("elif",(space;blank),bracket,(space;blank),":","\n",(inside,"\n",(space;blank),rtn),conditionalElse);
    
    (space;blank),("else",(space;blank),":","\n",conditionalElse);
    (space;blank),("else",(space;blank),":","\n",(space;blank),inside,conditionalElse);
    (space;blank),("else",(space;blank),":","\n",(space;blank),rtn,conditionalElse);
    (space;blank),("else",(space;blank),":","\n",(inside,"\n",(space;blank),rtn),conditionalElse).

conditional -->
    blank;
    "if", (space;blank), bracket, (space;blank), ":", "\n", (inside;inside,"\n",(space;blank),rtn;(space;blank),rtn;blank),
    (blank;((space;blank),conditionalElse)),
    conditional.