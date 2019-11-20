:- dynamic(temp/1).
:- dynamic(list/1).
:- dynamic(stringList/1).
:- dynamic(stringProcessed/1).

main:-
    open('houses.txt',read,Str),
    readWord(Str,Houses),
    close(Str).

readWord(InStream,W):-
    get_code(InStream,Char),
    checkCharAndReadRest(Char,Charss,InStream),
    append(Charss,[-999],Chars),
    write(Chars),nl,
    assert(temp([])),
    assert(list([])),
    assert(stringList([])),
    parsing(Chars),nl,
    list(A),
    write(A),nl,
    converter(A),
    stringList(Hasil),
    write(Hasil),nl.

checkCharAndReadRest(-1,[],_):- !.

checkCharAndReadRest(end_of_file,[],_):- !.

checkCharAndReadRest(Char,[Char|Chars],InStream):-
    get_code(InStream,NextChar),
    checkCharAndReadRest(NextChar,Chars,InStream).  

parsing([]) :- !.

parsing([32|Chars]) :-
    temp(A),
    list(B),

    append(B,[A],C),
    retract(list(_)),
    assert(list(C)),
    
    retract(temp(_)),
    assert(temp([])),
    parsing(Chars),!.

parsing([-999|Chars]):-
    temp(A),
    list(B),

    append(B,[A],C),
    retract(list(_)),
    assert(list(C)),
    
    retract(temp(_)),
    assert(temp([])),
    parsing(Chars),!.

parsing([Char|Chars]) :-
    temp(A),
    append(A,[Char],Y),
    retract(temp(_)),
    assert(temp(Y)),
    parsing(Chars).

converter([]) :- !.

converter([ListOfInteger|Sisa]) :-
    atom_codes(Z,ListOfInteger),
    stringList(ZZ),
    append(ZZ,[Z],NewZ),
    retract(stringList(_)),
    assert(stringList(NewZ)),
    converter(Sisa).

copyList([],[]) :- !.
copyList([A|B], [A|C]) :- 
    copyList(B,C).