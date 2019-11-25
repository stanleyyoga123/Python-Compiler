
operator1 -->
    (blank,space),(minusPlus;blank),(variable;numbers),((space;blank),("+";"-";"/";"*";"**";"//";"%";"&";"|";"^";"~";"<<";">>"),(blank;space),(minusPlus;blank)),(operator1;blank).

operator -->
    operator1,(variable;numbers),(blank;space).

operatorminplus -->
    "-","+".
minusPlus -->
    operatorminplus;(operatormin;blank;space),(minusPlus;blank).

equal -->
    "=".

check:- phrase_from_file(operator,'testing.txt').