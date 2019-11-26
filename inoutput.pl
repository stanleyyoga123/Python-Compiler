prt -->
    "print".

semua -->
    number;char;"\'";"!";"@";"#";"%";"^";"&";"*";"(";")";"-";"_";"+";"+";"{";"}";"[";"]";":";";";"<";">";",";".";"/";"?";"\\";"|";space;"=".

all -->
    semua;semua,all.

isi -->
    "\"",all,"\"".

isi1 -->
    "\'",all,"\'".



isinya2 -->
    space,isinya2;
    koma;isinya.

isinya1 -->
    space,isinya1;
    variable;
    variable,space.

isinya -->
    variable;
    space,isinya;
    isinya1;
    variable,isinya2.

isi3 -->
    isinya;
    isinya,bracket1,isi3,bracket2;
    isinya,koma,bracket1,isi3,bracket2;
    isinya,koma,isinya;
    bracket1,isi3,bracket2.

isiprt2 -->
    space,isiprt2;
    bracket2.

isiprt1 -->
    space,isiprt1;
    (isi;isi1),isiprt2.

isiprt -->
    bracket1,isiprt1.

isitotal -->
    prt,(isiprt;bracket1,isi3,bracket2;bracket1,bracket2).

ipt -->
    "input".

isipt -->
    isi;isi1;isi3.

input2 -->
    space,input2;
    isipt,space,bracket2;
    isipt,bracket2;
    bracket2.

input1 -->
    space,input1;
    bracket1,input2.

isiinput -->
    ipt,input1.

ipt2 -->
    space,ipt2;
    ((variable;numbers),bracket1,isiinput,bracket2);
    isiinput.

ipt1 -->
    space,ipt1;
    "=",ipt2.

input -->
    variable,ipt1.
