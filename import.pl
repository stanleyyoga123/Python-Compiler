:- include('tbfo.pl').  

imports -->
    "import ", (alphabet;numbers;float;string).

check -->
    phrase_from_file(imports,'testing.txt').