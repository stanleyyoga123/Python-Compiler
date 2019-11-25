
operator1 -->
    (blank,space),(minusPlus;blank),(variable;numbers),((space;blank),("+";"-";"/";"*";"**";"//";"%";"&";"|";"^";"~";"<<";">>"),(blank;space),(minusPlus;blank)),(operator1;blank).

operator -->
    operator1,(variable;numbers),(blank;space).

operatorminplus -->
    "-","+".
minusPlus -->
    operatormin;(operatormin;blank;space),(minusPlus;blank).

equal -->
    "=".
