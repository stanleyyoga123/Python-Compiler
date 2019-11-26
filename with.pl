insideTab -->
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional);
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional),(space;"\n"),inside.


insideT -->
    number;char;"!";"@";"#";"%";"^";"&";"*";"(";")";"-";"_";"+";"+";"{";"}";"[";"]";":";";";"<";">";",";".";"/";"?";"\\";"|";space;"=".

insideWith -->
    insideT; insideT,insideWith.

stringInside -->
    ("\"";"\'"), insideWith, ("\"";"\'").

with -->
    "with", space, "open", (space;blank), "(", (space;blank), (stringInside;variable), (space;blank), ",", (space;blank), (stringInside;variable), (space;blank), ")", (space;blank), "as ", (space;blank),variable,":",(space;blank),"\n", insideTab.