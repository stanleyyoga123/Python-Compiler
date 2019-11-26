siku1 -->
    "[".

siku2 -->
    "]".

untuk -->
    "for".
in -->
    "in".

range -->
    "range".

isiloop3 -->
    space,isiloop3;
    koma,isiloop.

isiloop2 -->
    space,isiloop2;
    (numbers;variable),isiloop3.

isiloop1 -->
    space,isiloop1;
    (numbers;variable);
    (numbers;variable),space.

isiloop -->
    space,isiloop;
    (isiloop1;isiloop2).

looping3 -->
    space,looping3;
    titikdua.

looping2 -->
    space,looping2;
    (numbers;variable),looping3.

looping1 -->
    space,looping1;
    in, looping2.

looping -->
    space,looping;
    (numbers;variable),looping1.
loop -->
    untuk,looping .


loop8 -->
    space,loop8;
    titikdua.

loop7 -->
    space,loop7;
    bracket2,loop8.

loop6 -->
    space,loop6;
    isiloop,loop7.

loop5 -->
    space,loop5;
    bracket1,loop6.

loop4 -->
    space,loop4;
    range,loop5.

loop3 -->
    space,loop3;
    in,loop4.

loop2 -->
    space,loop2;
    isiloop,loop3.

loop1 -->
    untuk, loop2.

looptotal -->
    loop;loop1.

isiArray3 -->
    space,isiArray3;
    (variable;numbers).

isiArray2 -->
    space,isiArray2;
    ",",isiArray3.

isiArray1 -->
    (variable;numbers),isiArray2.




isiArray8 -->
    space,isiArray8;
    (variable;numbers).

isiArray7 -->
    space,isiArray7;
    ",",isiArray8.

isiArray6 -->
    space,isiArray6;
    (variable;numbers),isiArray7.


isiArray5 -->
    space,isiArray5;
    ",",isiArray6.


isiArray4 -->
    (variable;numbers),isiArray5.


isiArray -->
    (variable;numbers);
    isiArray1;
    isiArray4.

array9 -->
    space,array9;
    siku2.


array8 -->
    space,array8;
    (bracket2),array9.

array7 -->
    space,array7;
    isiArray,array8.

array6 -->
    space,array6;
    (bracket1),array7.

array5 -->
    space,array5;
    range,array6.

array4 -->
    space,array4;
    in,array5.

array3 -->
    space,array3;
    (variable;numbers),array4.


array2 -->
    space,array2;
    untuk,array3.


array1 -->
    space,array1;
    (variable;numbers),array2.

array -->
    
    siku1,array1.
