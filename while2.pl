insideWhile -->
    (class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional;with);
    (class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional;with),(space;"\n"),insideWhile.

loopWhile -->
    space,loopWhile;
    "while", loopWhile1.
    
loopWhile1-->
    space,loopWhile1;
    numbers;variable;bracket), loopWhile2.

loopWhile2 -->
    space,loopWhile2;
    ":",loopWhile3.

loopWhile3 -->
    space,loopWhile3;
    "\n";
    "\n",insideWhile.