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
    }
