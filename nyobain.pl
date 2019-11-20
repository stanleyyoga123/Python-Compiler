alphabet -->
    "a";"b";"c";"d";"e";"f";"g";" ";alphabet.

myPhrase -->
    alphabet;alphabet,alphabet.

test :-
    phrase_from_file(myPhrase, 'houses.txt').