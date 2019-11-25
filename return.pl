kembali --> 
    "return".

rtn -->
    kembali,(space;blank),(variable;numbers).

defRet -->
    (space;blank),fungsi,"\n",
    (space;blank),inside,"\n",
    (space;blank),rtn.

conditionalElseRet -->
    blank;
    ("elif",(space;blank),bracket,(space;blank),":","\n",
    inside,"\n",rtn,"\n");
    ("else",(space;blank),":","\n",inside,"\n",rtn,"\n");
    ("elif",(space;blank),bracket,(space;blank),":","\n",inside,"\n",rtn,"\n",conditionalElseRet);
    ("else",(space;blank),":","\n",inside,"\n",rtn,"\n",conditionalElseRet).

conditionalRet -->
    blank;
    "if", (space;blank), bracket, (space;blank), ":", "\n", inside,"\n",rtn,"\n",
    (blank;((space;blank),conditionalElseRet)),
    conditionalRet.

