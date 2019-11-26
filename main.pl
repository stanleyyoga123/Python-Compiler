:- include('utility.pl').
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

run -->
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional;defRet;raise);
    (blank;class;fungsi;imports;importsAs;importsFrom;importsFromAs;input;isitotal;komentar;looptotal;raise;assign;conditional;defRet;raise),(space;"\n"),run.

jalan :-
    phrase_from_file(run,'testing.txt').