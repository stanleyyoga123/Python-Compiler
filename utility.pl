
number -->
    "1";"2";"3";"4";"5";"6";"7";"8";"9";"0".

char -->
    "a";"b";"c";"d";"e";"f";"g";"h";"i";"j";
    "k";"l";"m";"n";"o";"p";"q";"r";"s";"t";
    "u";"v";"w";"x";"y";"z";"A";"B";"C";"D";
    "E";"F";"G";"H";"I";"J";"K";"L";"M";"N";
    "O";"P";"Q";"R";"S";"T";"U";"V";"W";"X";
    "Y";"Z";"_".
    
bracket1 --> "(".
bracket2 --> ")".
koma --> ",".
numbers -->
    number;number,numbers.

floats -->
    numbers,".",numbers.

chars -->
    char;char,(chars;numbers).

string -->
    "\"",chars,"\"".

spasi -->
    " ".

blank -->
    "".

space -->
    spasi;spasi,space.    


helper -->
    char;
    number;((char,helper);(number,helper));blank.

variable -->
    char;
    char,((number,helper);(char,helper)).

total -->
    chars.

spaceVariable -->
    variable;
    (variable,space,spaceVariable).

variablebracket -->
    variable,(space;blank);
    (((blank;space),variable,(blank;space));(blank;space)),
    "(",
    (space;blank;(space,variablebracket);(blank,variablebracket)),
    ")",
    (blank;space).

w:-
    phrase_from_file(variablebracket,'testing.txt').
ignore -->
    space;blank.

operatorminplus -->
    "-";"+".
minusPlus -->
    operatorminplus;(operatorminplus;space),(minusPlus).

expression-->
    "+";"-";"/";"*";"**";"//";"%";"&";"|";"^";"~";"<<";">>".

operator1 -->
    ignore,(minusPlus;blank),(variable;numbers),(ignore,expression,ignore,(minusPlus;blank)),ignore,(operator1;blank),ignore.

operator -->
    operator1,(variable;numbers),ignore.

struck-->
    ignore,variable,ignore,(".",struck;blank),ignore.
w:-
    phrase_from_file(struck,'testing.txt').
