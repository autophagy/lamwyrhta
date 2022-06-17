let Template = ./template.dhall

let S = Template.State

let C = Template.Clay

let works =
      [ { brief = "Angular Vase"
        , clay = C.Speckled
        , state = { state = S.Bisque, since = "2022-06-07" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Sake/Tea Cup"
        , clay = C.Speckled
        , state = { state = S.Bisque, since = "2022-06-07" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Large Cup"
        , clay = C.Speckled
        , state = { state = S.Bisque, since = "2022-06-07" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Large Cup"
        , clay = C.Speckled
        , state = { state = S.Bisque, since = "2022-06-07" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Storage Bowl"
        , clay = C.Speckled
        , state = { state = S.Bisque, since = "2022-05-31" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Cup"
        , clay = C.Speckled
        , state = { state = S.Bisque, since = "2022-05-31" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Small Jug"
        , clay = C.Speckled
        , state = { state = S.Bisque, since = "2022-05-31" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Small Vase"
        , clay = C.Speckled
        , state = { state = S.Bisque, since = "2022-05-31" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Cup"
        , clay = C.Speckled
        , state = { state = S.Glaze, since = "2022-05-31" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Side Dish Plate"
        , clay = C.White
        , state = { state = S.Finished, since = "2022-05-31" }
        , note = None Text
        , img = Some "side-plate-2022-05-31.png"
        }
      , { brief = "Small Milk Jug"
        , clay = C.Speckled
        , state = { state = S.Finished, since = "2022-05-31" }
        , note = Some
            "It was supposed to be a large jug/cup for doing aeropress into. It was too small. It is now a milk jug."
        , img = Some "milk-jug-2022-05-31.png"
        }
      , { brief = "Coffee Cup"
        , clay = C.Speckled
        , state = { state = S.Finished, since = "2022-05-31" }
        , note = Some "Made for a friend."
        , img = Some "cup-2022-05-31.png"
        }
      , { brief = "Small Cup"
        , clay = C.White
        , state = { state = S.Finished, since = "2022-05-23" }
        , note = Some
            "Also a result of my first solo, non-class batch of thrown pottery."
        , img = Some "cup-2022-05-23.png"
        }
      , { brief = "Small Bowl"
        , clay = C.White
        , state = { state = S.Finished, since = "2022-05-23" }
        , note = Some
            "A result of my first solo, non-class batch of thrown pottery."
        , img = Some "bowl-2022-05-23.png"
        }
      , { brief = "Small Bowl"
        , clay = C.White
        , state = { state = S.Finished, since = "2022-04-24" }
        , note = Some
            "My first finished thrown piece. Result of a wheel throwing class at Ceramic Kingdom"
        , img = Some "bowl-2022-04-24.png"
        }
      ]

in  Template.show works
