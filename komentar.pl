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
    "\"\"\"",(blank;petik),(blank;space),anything,"\"\"\"".

komenlagi -->
    "\'".

petik1 -->
    komenlagi;komenlagi,petik1.

komenpls -->
    "\'\'\'",(blank;petik1),(blank;space),anything,"\'\'\'".

komentar -->
    pagar,apapuns;komen1;komenpls.


