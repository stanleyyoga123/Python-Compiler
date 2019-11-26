:-include('utility2.pl').
logOp -->
    ">"; "<"; ">="; "<="; "=="; "!="; "<>";
    "and"; "or"; "not"; "in"; "is";
    "is not"; "not in".

operan1logic -->
    (space,operan1logic);
    (operan1,operatorlogic);
    (variable,operatorlogic);
    (numbers,operatorlogic);
    (signvarnum,operatorlogic).

operatorlogic -->
    (space,operatorlogic);
    (space,variable);
    (space,numbers);
    (space,signvarnum);
    (logOp,variable);
    (logOp,numbers);
    (logOp,signvarnum);
    (logOp,operan1);
    (logOp,operatorlogic);
    (logOp,operan1logic);
    (variable,space);
    (numbers,space);
    (signvarnum,space);
    (operan1logic,space)
    .

variablebracket -->
    variable;
    variable,variablebracket1;
    variablebracket1;
    
variablebracket1 -->
    space,variablebracket1;
    "(",variablebracket2.

variablebracket2 -->
    space,variablebracket2;
    (variable;variablebracket),variablebracket3.

variablebracket3 -->
    space,variablebracket3;
    ")";
    ")",variable;
    ")",variablebracket.

insideBracket -->
    (variable;numbers;operator;struck;variablebracket), insideBracket1.

insideBracket1 -->
    space,insideBracket1;
    logOp, insideBracket11.

insideBracket11 -->
    space,insideBracket11;
    (variable;numbers;struck;operator;variablebracket).

insideBracket2 -->
    (variable;numbers;struck;variablebracket).

operation -->
    insideBracket;
    insideBracket,operation;
    insideBracket,space,operation.

bracket -->
    (operation;insideBracket2);
    (bracketS;operation;variablebracket;"None"), bracket1.
    
bracket1 -->
    space,bracket1;
    (bracketSS1;")",space;")";bracketSS2;"None").

bracketSS2 -->
    ")",bracketSS21.

bracketSS21 -->
    space,bracketSS21;
    logOp,variablebracket;
    logOp,space,variablebracket.

bracketSS1 -->
    ")",bracketSS12.

bracketSS12 -->
    space,bracketSS12;
    logOp,space,bracket;
    logOp,bracket.

bracketS -->
    (operation;variablebracket;"None"),bracketS1.

bracketS1 -->
    space,bracketS1;
    logOp,bracketS2.

bracketS2 -->
    space,bracketS2;
    "(",bracket;
    "(",space,bracket.

inside -->
    (class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign);
    (class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign),(space;"\n");
    (class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign),(space;"\n"),inside.

conditionalElse -->
    space,conditionalElse;
    "elif",(brackerIRCE;nobracketIRCE).
    
nobracketIRCE -->
    space,nobracketIRCE;
    ":","\n",nobracketIRCE1;

nobracketIRCE1 -->
    space,nobracketIRCE1;
    inside;
    inside,conditionalElse;
    rtn,conditionalElse;
    rtn;
    conditionalElse;
    inside,"\n",rtn,conditionalElse;
    inside,"\n",space,rtn,conditionalElse.



brackerIRCE-->
    space,brackerIRCE;
    ":","\n",conditionalElse;
    bracket,bracketIRCE1.

bracketIRCE1-->
    space,bracketIRCE1;
    ":","\n",space,inside;
    ":","\n",inside;
    ":","\n",space,inside,conditionalElse;
    ":","\n",inside,conditionalElse;
    ":","\n",space,rtn;
    ":","\n",rtn;
    ":","\n",space,rtn,conditionalElse;
    ":","\n",rtn,conditionalElse;
    ":","\n",(inside,"\n",space,rtn),conditionalElse;
    ":","\n",(inside,"\n",rtn),conditionalElse.

conditional -->
    space;
    "if", conditional1.

conditional1 -->
    space,conditional1;
    bracket, conditional11.

conditional11 -->
    space,conditional11;
    ":", "\n", (inside;inside,"\n",rtn;inside,"\n",space,rtn;blank,rtn;rtn),conditional;
    ":", "\n", (inside;inside,"\n",rtn;inside,"\n",space,rtn;blank,rtn;rtn),callConditionalElse,conditional.

callConditionalElse -->
    space,callConditionalElse;
    conditionalElse.

    f:-phrase_from_file(operan1logic,'testing.txt').