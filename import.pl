:-include('utility.pl').
insideImport -->
    space,insideImport;
    space,variable;
    variable,space;
    variable,behindInsideImport.

behindInsideImport-->
    space,behindInsideImport;
    dot,insideImport.

kataImport--> "import".

imports -->
    space,imports;
    kataImport, afterImports.

afterImports-->
    space,insideImport;
    insideImport,space.

importsAs -->
    space,importsAs;
    imports, asBehindimport.

asKata-->"as".

asBehindimport-->
    space,asBehindimport;
    asKata,insideImport.

fromKata--> "from".

importsFrom -->
    fromKata, behindFrom.

behindFrom -->
    space,behindFrom;
    insideImport,imports;
    insideImport,importsAs.


allTypeImport -->
    importsFrom;importsAs;imports.

a:-phrase_from_file(allTypeImport,'testing.txt').