:- include('utility.pl').

operator1 -->
    (blank;space),(minusPlus;blank),(variable;numbers),((space;blank),("+";"-";"/";"*";"**";"//";"%";"&";"|";"^";"~";"<<";">>"),(blank;space),(minusPlus;blank)),(blank;space),(operator1;blank),(blank;space).

operator -->
    operator1,(variable;numbers),(blank;space).

operatorminplus -->
    "-";"+".
minusPlus -->
    operatorminplus;(operatorminplus;space),(minusPlus).

equal -->
    "=".

a :- phrase_from_file(operator,'testing.txt').
