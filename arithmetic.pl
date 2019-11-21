
operator1 -->
    (blank,space),(variable;numbers),((space;blank),("+";"-";"/";"*";"**";"//"),(blank;space),(minus;blank)),(operator1;blank).

operator -->
    operator1,(variable;numbers),(blank;space).

operatormin -->
    "-".
minus -->
    operatormin;(operatormin;blank;space),(minus,blank).

equal -->
    "=".
