:- include('utility.pl').  

insideImport -->
    variable;variable,".",insideImport.

imports -->
    "import", space, insideImport, (space;blank).

importsAs -->
    imports, "as", space, variable, (space;blank).

importsFrom -->
    "from", space, insideImport, space, "import", space, insideImport, (space;blank).