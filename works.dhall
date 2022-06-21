let State = < Working | Bisque | Glaze | Finished >

let WorkingState = { state : State, since : Text }

let Clay = < White | Speckled | Red | Black >

let Work =
      { brief : Text
      , clay : Clay
      , state : WorkingState
      , note : Optional Text
      , img : Optional Text
      }

let works =
      [ { brief = "Angular Vase"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2022-06-19" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Sake/Tea Cup"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2022-06-19" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Large Cup"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2022-06-19" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Large Cup"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2022-06-19" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Storage Bowl"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2022-06-19" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Cup"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2022-06-19" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Small Jug"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2022-06-19" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Small Vase"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2022-06-19" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Cup"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2022-06-18" }
        , note = Some "The boundary at the bottom between the edge of the glaze and the clay has a nice, toasted look to it, and I have no idea how I did it."
        , img = Some "cup-2022-06-18.png"
        }
      , { brief = "Side Dish Plate"
        , clay = Clay.White
        , state = { state = State.Finished, since = "2022-05-31" }
        , note = None Text
        , img = Some "side-plate-2022-05-31.png"
        }
      , { brief = "Small Milk Jug"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2022-05-31" }
        , note = Some
            "It was supposed to be a large jug/cup for doing aeropress into. It was too small. It is now a milk jug."
        , img = Some "milk-jug-2022-05-31.png"
        }
      , { brief = "Coffee Cup"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2022-05-31" }
        , note = Some "Made for a friend."
        , img = Some "cup-2022-05-31.png"
        }
      , { brief = "Small Cup"
        , clay = Clay.White
        , state = { state = State.Finished, since = "2022-05-23" }
        , note = Some
            "Also a result of my first solo, non-class batch of thrown pottery."
        , img = Some "cup-2022-05-23.png"
        }
      , { brief = "Small Bowl"
        , clay = Clay.White
        , state = { state = State.Finished, since = "2022-05-23" }
        , note = Some
            "A result of my first solo, non-class batch of thrown pottery."
        , img = Some "bowl-2022-05-23.png"
        }
      , { brief = "Small Bowl"
        , clay = Clay.White
        , state = { state = State.Finished, since = "2022-04-24" }
        , note = Some
            "My first finished thrown piece. Result of a wheel throwing class at Ceramic Kingdom"
        , img = Some "bowl-2022-04-24.png"
        }
      ]

in  { State, Clay, Work, works }
