siku1 -->
    "[".

siku2 -->
    "]".

untuk -->
    "for".
in -->
    "in".

range -->
    "range".

while1 -->
    "while".

isiloop -->
    ((blank;space),(numbers;variable),(blank;space));(blank;space),(numbers;variable),(blank;space),koma,isiloop.
loop -->
    untuk, (blank;space), (numbers;variable),(blank;space),in, (blank;space),(numbers;variable),(blank;space),titikdua.

loop1 -->
    untuk, (blank;space),isipar,(blank;space),in,(blank;space),range,(blank;space),bracket1,(blank;space),isipar,(blank;space),bracket2,(blank;space),titikdua.

looptotal -->
    loop;loop1.

isiArray -->
    (variable;numbers);
    ((variable;numbers),(blank;space),",",(blank;space),(variable;numbers));
    ((variable;numbers),(blank;space),",",(blank;space),(variable;numbers),(blank;space),",",(blank;space),(variable;numbers)).

array -->
    siku1,(blank;space),(variable;numbers),(blank;space),untuk,(blank;space),(variable;numbers),(blank;space),in,(blank;space),range,(blank;space),(bracket1),(blank;space),isiArray,(blank;space),(bracket2),
    (blank;space),siku2.

a :- phrase_from_file(looptotal,'testing.txt').