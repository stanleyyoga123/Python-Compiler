:- include('utility.pl').

def -->
    "def".
    


isipar -->
    ((blank;space),variable,(blank;space));(blank;space),variable,(blank;space),koma,isipar.

parameter -->
    bracket1,isipar,bracket2.

titikdua -->
    ":".

fungsi -->
    def,space,variable,(space;blank),parameter,(space;blank),titikdua,(space;blank).


