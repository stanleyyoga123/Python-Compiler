untuk -->
    "for".
in -->
    "in".

range -->
    "range".

loop -->
    untuk, (blank;space), variable,(blank;space),in, (blank;space),variable,(blank;space),titikdua.

loop1 -->
    untuk, (blank;space),isipar,(blank;space),in,(blank;space),range,(blank;space),bracket1,(blank;space),isipar,(blank;space),bracket2,(blank;space),titikdua.

looptotal -->
    loop;loop1.

a :- phrase_from_file(looptotal,'testing.txt').