
struck-->
    (space,struck);
    (variable,(blank;space),sikusiku);
    (variable,(blank;space),behindStruck).

sikusiku -->
    siku1,(blank;isi3;struck;isi;isi1;variable;space),siku2,sikusiku;behindStruck.

behindStruck-->
    blank;
    (".",(blank;space),variable);
    (".",(blank;space),struck);
    (".",(blank;space),variable,(blank;space),bracket1,(blank;space),(blank;isi3;struck;isi;isi1;variable;space),(blank;space),bracket2,(blank;space),behindStruck);
    (".",(blank;space),variable,(blank;space),siku1,(blank;space),(blank;isi3;struck;isi;isi1;variable;space),(blank;space),siku2,(blank;space),behindStruck);
    (".",(blank;space),variable,sikusiku).