:- include('function.pl').

kelas -->
    "class".

param -->
    (space;blank),parameter,(space;blank).
class --> 
    kelas,space,variable,(blank;space;param),titikdua,(space;blank).


