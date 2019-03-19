let mkPackage = ./../mkPackage.dhall

in  { flare =
        mkPackage
        [ "canvas"
        , "datetime"
        , "drawing"
        , "foldable-traversable"
        , "nonempty"
        , "prelude"
        , "signal"
        , "smolder"
        , "tuples"
        , "web-dom"
        ]
        "https://github.com/sharkdp/purescript-flare.git"
        "v5.0.0"
    , drawing =
        mkPackage
        [ "integers", "canvas", "math", "colors", "lists" ]
        "https://github.com/paf31/purescript-drawing.git"
        "v4.0.0"
    , linear-algebra =
        mkPackage
        [ "prelude", "arrays", "globals", "tuples" ]
        "https://github.com/klangner/purescript-linear-algebra.git"
        "v0.5.0"
    , p5 =
       mkPackage
       [ "prelude"
       , "console"
       , "effect"
       , "functions"
       , "node-fs"
       , "foreign"
       , "foreign-generic"
       , "debug"
       , "stringutils"
       , "quickcheck"
       , "canvas"
       , "aff"
       ]
       "https://github.com/parenparen/purescript-p5.git"
       "v0.8.0"
    }
