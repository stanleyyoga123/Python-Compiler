:- include('utility2.pl').
:- include('class.pl').
:- include('function.pl').
:- include('import.pl').
:- include('inoutput.pl').
:- include('komentar.pl').
:- include('logical.pl').
:- include('loop.pl').
:- include('raise.pl').
:- include('assign.pl').
:- include('return.pl').
:- include('with2.pl').
:- include('struct2.pl').
:- include('while2.pl').

run -->
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional;defRet;raise;with;struck;loopWhile);
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional;defRet;raise;with;struck;loopWhile),(space;"\n"),run.

jalan :-
<<<<<<< HEAD
    phrase_from_file(input,'testing.txt').
=======
    phrase_from_file(looptotal,'testing.txt').
>>>>>>> 3d193f66b5353baa42a31e835e22cd83158f9438
