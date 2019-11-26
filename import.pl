insideImport -->
    space,insideImport;
    variable;
    variable,space;
    variable,behindInsideImport.

behindInsideImport-->
    space,behindInsideImport;
    ".",insideImport.
    
imports -->
    space,imports;
    "import", space,afterImports.

afterImports-->
    insideImport;
    insideImport,space.

importsAs -->
    space,importsAs;
    imports, space, "as", space, insideImport.

importsFrom -->
    "from", space, insideImport, space, "import", space, insideImport.

importsFromAs -->
    "from", space, insideImport, space, "import", space, insideImport, space, "as", insideImport.