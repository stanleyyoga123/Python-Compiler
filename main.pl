:- include('utility2.pl').
:- include('class.pl').
:- include('function.pl').
:- include('import.pl').
:- include('inoutput.pl').
:- include('komentar.pl').
:- include('logical2.pl').
:- include('loop.pl').
:- include('raise2.pl').
:- include('assign.pl').
:- include('return2.pl').
:- include('with2.pl').
:- include('struct2.pl').
:- include('while2.pl').

run -->
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional;defRet;raise;with;struck;loopWhile);
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional;defRet;raise;with;struck;loopWhile),(space;"\n"),run.

jalan :-
    phrase_from_file(looptotal,'testing.txt').