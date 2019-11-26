def -->
    "def".

isipar -->
    ((blank;space),variable,(blank;space));(blank;space),variable,(blank;space),koma,isipar.

parameter -->
    (bracket1,bracket2);(bracket1,isipar,bracket2).
parameter2 -->
    (bracket1,bracket2);(bracket1,isipar,(space;blank),":",(space;blank),(variable;numbers),(space;blank),bracket2,(space;blank),"->",(space;blank),(variable;numbers)).    

titikdua -->
    ":".

fungsi -->
    def,space,variable,(space;blank),(parameter;parameter2),(space;blank),titikdua,(space;blank).


