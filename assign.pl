
bracketSiku -->
    variable, "[",(variable;blank),"]".

isiAssign1 -->
    space,isiAssign1;
    parameter.

isiAssign -->
    space,isiAssign;
    variable,isiAssign1.

assign2 -->
    space,assign2;
    (variable;numbers;isi1;isi;bracketSiku;array;struck;isiAssign).

assign1 -->
    space,assign1;
     "=", assign2.

assign -->
    variable,assign1.

