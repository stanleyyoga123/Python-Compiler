def -->
    "def".


isipar2 -->
    space,isipar2;
    koma,isipar.


isipar1 -->
    space,isipar1;
    variable;
    variable,space.

isipar -->  
    isipar1;
    space,isipar;
    variable,isipar2.




parameter -->
    (bracket1,bracket2);(bracket1,isipar,bracket2).





parameter7 -->
    space,parameter7;
    variable;numbers.

parameter6 -->
    space,parameter6;
    "->",parameter7.

parameter5 -->
    space,parameter5;
    bracket2,parameter6.

parameter4 -->
    space,parameter4;
    (variable;numbers),parameter5.

parameter3 -->
    space,parameter3;
    ":",parameter4.


parameter2 -->
    (bracket1,bracket2);
    bracket1,isipar,parameter3.

titikdua -->
    ":".

fungsi2 -->
    space,fungsi2;
    titikdua;
    titikdua,space.

fungsi1 -->
    space,fungsi1; 
    (parameter;parameter2),fungsi2.
fungsi -->
    def,space,variable,fungsi1.


