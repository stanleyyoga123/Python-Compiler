:-include('utility.pl').
operator1 -->
    ignore,(minusPlus;blank),(variable;numbers),(ignore,("+";"-";"/";"*";"**";"//";"%";"&";"|";"^";"~";"<<";">>"),ignore,(minusPlus;blank)),ignore,(operator1;blank),ignore.

operator -->
    operator1,(variable;numbers),ignore.

operatorEqual -->ignore,variable,ignore,("=";"+=";"-=";"*=";"/=";"%=";"**=";"//="),operator.
    
operatorminplus -->
    "-";"+".
minusPlus -->
    operatorminplus;(operatorminplus;space),(minusPlus).

equal -->
    "=".

check:- phrase_from_file(operatorEqual,'testing.txt').