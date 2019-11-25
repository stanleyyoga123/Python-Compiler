:- include('function.pl').

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

isinya -->
    blank;((blank;space),variable,(blank;space));(blank;space),variable,(blank;space),koma,isinya.

isinya3 -->
    isinya;blank.

isi3 -->
    (isinya3;blank),(blank;koma),bracket1,isi3,bracket2;isinya3.

isiprt -->
    bracket1,(blank;space),(isi;isi1),(blank;space),bracket2.

isitotal -->
    prt,(isiprt;bracket1,isi3,bracket2).

ipt -->
    "input".

isipt -->
    isiprt;isi3.

isiinput -->
    ipt,(blank;space),bracket1,(blank;space),(isipt;blank),(blank;space),bracket2.
    
input -->
    variable,(blank;space),"=",(blank;space),(((variable;numbers),bracket1,isiinput,bracket2);isiinput).

