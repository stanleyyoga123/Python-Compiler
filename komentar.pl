apapun -->
    number;char;"\'";"\"";"!";"@";"#";"%";"^";"&";"*";"(";")";"-";"_";"+";"+";"{";"}";"[";"]";":";";";"<";">";",";".";"/";"?";"\\";"|";space;"=".

apapuns -->
    apapun;apapun,apapuns.

any -->
    number;char;"\'";"\"";"!";"@";"#";"%";"^";"&";"*";"(";")";"-";"_";"+";"+";"{";"}";"[";"]";":";";";"<";">";",";".";"/";"?";"\\";"|";space;"\n";"=".

anything -->
    any;any,anything.

komen -->
    "#".

pagar -->
    komen;komen,pagar.

komen2 -->
    "\"".

petik -->
    komen2;komen2,petik.

komen1 -->
    "\"\"\"",anything,"\"\"\"";
    "\"\"\"",petik,anything,"\"\"\"";
    "\"\"\"",space,anything,"\"\"\"";
    "\"\"\"",petik,space,anything,"\"\"\"".

komenlagi -->
    "\'".

petik1 -->
    komenlagi;komenlagi,petik1.

komenpls -->
    "\'\'\'",anything,"\'\'\'";
    "\'\'\'",petik1,anything,"\'\'\'";
    "\'\'\'",space,anything,"\'\'\'";
    "\'\'\'",petik1,space,anything,"\'\'\'".

komentar -->
    (space;blank),((pagar,apapuns);komen1;komenpls).


