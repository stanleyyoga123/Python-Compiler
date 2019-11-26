:-include('utility.pl').
operatorEqual -->
    ignore,variable,ignore,equalOperator,(operator;variable;number).

equalOperator -->
    "=";"+=";"-=";"*=";"/=";"%=";"**=";"//=".

check:- phrase_from_file(operatorEqual,'testing.txt').