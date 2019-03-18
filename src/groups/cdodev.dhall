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
    , vector =
        mkPackage
        [ "proxy"
        , "either"
        , "arrays"
        , "extensions"
        , "foldable-traversable"
        , "prelude"
        , "math"
        ]
        "https://github.com/jutaro/purescript-vector.git"
        "v2.0.0"
    }
