:- include('utility.pl').

def -->
    "def".
    
bracket1 -->
    "(".

bracket2 -->
    ")".

parameter -->
    bracket1,((space,variable,space);blank;space),bracket2.

titikdua -->
    ":".

fungsi -->
    def,space,variable,(space;blank),parameter,(space;blank),titikdua,(space;blank).



