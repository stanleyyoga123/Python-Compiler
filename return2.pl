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
