kembali --> 
    "return".

rtn -->
    kembali,rtn2.

rtn2 -->
    space,rtn2;
    (variable;numbers),(space;"\n");
    (variable;numbers).

defRet -->
    space,defRet;
    fungsi,"\n",defRet1.
    
defRet1 -->
    space,defRet1;
    inside,"\n",defRet2.

defRet2 -->
    space,defRet2;
    rtn.




























conditionalElseRet -->
    ("elif",conditionalElseRet1.

conditionalElseRet1 -->
    space,conditionalElseRet1;
    bracket,

conditionalRet -->
    "if", conditionalRet1.

conditionalRet1 -->
    space,conditionalRet1;
    bracket,conditionalRet2.

conditionalRet2 -->
    space,conditionalRet2;
    ":", "\n", inside,"\n",rtn,"\n";
    ":", "\n", inside,"\n",rtn,"\n",conditionalRet3.

conditionalRet3 -->
    space,conditionalRet3;
    conditionalElseRet,
    conditionalRet.