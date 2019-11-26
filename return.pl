kembali --> 
    "return".

rtn -->
    kembali,(space;blank),(variable;numbers),(space;"\n";blank).

defRet -->
    (space;blank),fungsi,"\n",
    (space;blank),inside,"\n",
    (space;blank),rtn.

conditionalElseRet -->
    blank;
    ("elif",(space;blank),bracket,(space;blank),":","\n",
    inside,"\n",rtn,"\n");
    ("else",(space;blank),":","\n",inside,"\n",rtn,"\n");
    ("elif",(space;blank),bracket,(space;blank),":","\n",inside,"\n",rtn,"\n",(conditionalElseRet;conditionalElse));
    ("else",(space;blank),":","\n",inside,"\n",rtn,"\n",(conditionalElseRet;conditionalElse)).

conditionalRet -->
    blank;
    "if", (space;blank), bracket, (space;blank), ":", "\n", inside,"\n",rtn,"\n",
    (blank;((space;blank),conditionalElseRet)),
    conditionalRet.