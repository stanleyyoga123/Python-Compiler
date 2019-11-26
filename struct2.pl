
struck-->
    (space,struck);
    variable,struck2.

struck2 -->
    space,struck2;
    sikusiku;
    behindStruck.
    
sikusiku -->
    siku1,siku2,sikusiku;behindStruck;
    siku1,(isi3;struck;isi;isi1;variable;space;numbers),siku2,sikusiku;
    siku1,(isi3;struck;isi;isi1;variable;space;numbers),siku2;
    behindStruck.

behindStruck-->
    ".",behindStruck1;
    ".",behindStruck3;
    ".",behindStruck4;
    ".",behindStruck2.

behindStruck1-->
    space,behindStruck1;
    variable;struck.

behindStruck2 -->
    space,behindStruck2;
    variable,sikusiku.

behindStruck3 -->
    space,behindStruck3;
    variable,lBehindStruck3.

lBehindStruck3 -->
    space,lBehindStruck3;
    bracket1,lBehindStruck31.

lBehindStruck31 -->
    space,lBehindStruck31;
    lBehindStruck32;
    (isi3;struck;isi;isi1;variable;space),lBehindStruck32.

lBehindStruck32 -->
    space,lBehindStruck32;
    bracket2,behindStruck;
    bracker2,space,behindStruck.    

behindStruck4 -->
    space,behindStruck4;
    variable,lBehindStruck41.

lBehindStruck41 -->
    space,lBehindStruck41;
    siku1,lBehindStruck42.

lBehindStruck42 -->
    space,lBehindStruck42;
    lBehindStruck43;
    (isi3;struck;isi;isi1;variable;space),lBehindStruck43.

lBehindStruck43 -->
    space,lBehindStruck43;
    siku2,lBehindStruck44.

lBehindStruck44 -->
    space,lBehindStruck44;
    behindStruck.
