number -->
    "1";"2";"3";"4";"5";"6";"7";"8";"9";"0".

char -->
    "a";"b";"c";"d";"e";"f";"g";"h";"i";"j";
    "k";"l";"m";"n";"o";"p";"q";"r";"s";"t";
    "u";"v";"w";"x";"y";"z";"A";"B";"C";"D";
    "E";"F";"G";"H";"I";"J";"K";"L";"M";"N";
    "O";"P";"Q";"R";"S";"T";"U";"V";"W";"X";
    "Y";"Z";"_".
    
numbers -->
    "1";"2";"3";"4";"5";"6";"7";"8";"9";"0";
    number,numbers.

floats -->
    numbers,behindFloats.

dot -->
    ".".

behindFloats-->
    dot,numbers.

spasi -->
    " ".

space -->
    " ";
    spasi,space.    

helper -->
    "a";"b";"c";"d";"e";"f";"g";"h";"i";"j";
    "k";"l";"m";"n";"o";"p";"q";"r";"s";"t";
    "u";"v";"w";"x";"y";"z";"A";"B";"C";"D";
    "E";"F";"G";"H";"I";"J";"K";"L";"M";"N";
    "O";"P";"Q";"R";"S";"T";"U";"V";"W";"X";
    "Y";"Z";"_";
    "1";"2";"3";"4";"5";"6";"7";"8";"9";"0";
    (char,helper);
    (number,helper).

variable -->
    "a";"b";"c";"d";"e";"f";"g";"h";"i";"j";
    "k";"l";"m";"n";"o";"p";"q";"r";"s";"t";
    "u";"v";"w";"x";"y";"z";"A";"B";"C";"D";
    "E";"F";"G";"H";"I";"J";"K";"L";"M";"N";
    "O";"P";"Q";"R";"S";"T";"U";"V";"W";"X";
    "Y";"Z";"_";
    (char,helper).

operatorminplus -->
    "-";"+".


expression-->
    "+";"-";"/";"*";
    ("*",asterik);
    ("/",slash);
    "%";"&";"|";"^";"~";
    ("<",shiftleft);
    (">",shiftright).

asterik-->
    "*".

slash-->
    "/".

shiftleft-->
    "<".

shiftright-->
    ">".

minusPlus -->
    "-";"+";
    (operatorminplus,minusPlus);
    (space,minusPlus).

signvarnum-->
    (minusPlus,variable);
    (minusPlus,numbers).

operan1 -->
    (space,operan1);
    (variable,operator);
    (numbers,operator);
    (signvarnum,operator).

operator -->
    (space,operator);
    (space,variable);
    (space,numbers);
    (space,signvarnum);
    (expression,variable);
    (expression,numbers);
    (expression,signvarnum);
    (expression,operan1);
    (expression,operator);
    (variable,space);
    (numbers,space);
    (signvarnum,space)
    .

struck-->
    (space,struck);
    (variable,behindStruck).

behindStruck-->
    (".",struck);
    (".",variable);
    (space,behindStruck);
    (".", behindStruck);
    (variable,space).
w:-
    phrase_from_file(struck,'testing.txt').