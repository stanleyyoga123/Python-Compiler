number -->
    "1";"2";"3";"4";"5";"6";"7";"8";"9";"0".

char -->
    "a";"b";"c";"d";"e";"f";"g";"h";"i";"j";
    "k";"l";"m";"n";"o";"p";"q";"r";"s";"t";
    "u";"v";"w";"x";"y";"z";"A";"B";"C";"D";
    "E";"F";"G";"H";"I";"J";"K";"L";"M";"N";
    "O";"P";"Q";"R";"S";"T";"U";"V";"W";"X";
    "Y";"Z".
    
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

blanks -->
    blank;blank,blanks.

space -->
    spasi;spasi,space.    


total -->
    (char;spasi;numbers;floats;string).

mark1 -->
    "import".

mark2 -->
    "as".

imports -->
    mark1, space, (chars;char,(numbers;chars)),(blank;space).

importsAs -->
    imports, space, mark2, (chars,(blank;chars;numbers)),(blank;space).

checkingValidity([]):-!.
checkingValidity([H|T]):-nl,
    write(T),nl,nl,
    checkingValidity(T),!.

w:-
    phrase_from_file(total,'testing.txt').