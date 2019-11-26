:-include('utility.pl').
operatorEqual -->
    space,operatorEqual;
    variable,operatorEqual1;
operatorEqual1 -->
    space,operatorEqual1;
    equalOperator,(operator;variable;number).

equalOperator -->
    "=";"+=";"-=";"*=";"/=";"%=";"**=";"//=".

check:- phrase_from_file(operatorEqual,'testing.txt').