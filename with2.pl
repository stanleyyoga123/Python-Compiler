insideTab -->
    (class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional);
    (class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional),(space;"\n"),insideTab.


insideT -->
    number;char;"!";"@";"#";"%";"^";"&";"*";"(";")";"-";"_";"+";"+";"{";"}";"[";"]";":";";";"<";">";",";".";"/";"?";"\\";"|";space;"=".

insideWith -->
    insideT; insideT,insideWith.

stringInside -->
    ("\"";"\'"), insideWith, ("\"";"\'").

with -->
    "with", space, "open",with2.

with2 -->
    space,with2;
    "(",with3.

with3 -->
    space,with3;
    (stringInside;variable),with4.

with4 -->
    space,with4;
    ",", with5.

with5 -->
    space,with5;
    (stringInside;variable), with6.

with6 -->
    space,with6;
    ")", with7.

with7 -->
    space,with7;
    "as ",with8.

with8 -->
    space,with8;
    variable,with9.

with9 -->
    space,with9;
    ":",with10.

with10 -->
    space,with10;
    "\n", insideTab;
    "\n".
