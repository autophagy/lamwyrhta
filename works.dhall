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
      [ { brief = "Vase"
        , clay = Clay.Speckled
        , state = { state = State.Working, since = "2022-07-09" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Vase"
        , clay = Clay.Speckled
        , state = { state = State.Bisque, since = "2022-07-05" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Small Jug"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2022-07-05" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Tea Cup & Saucer"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2022-07-05" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Tea Cup & Saucer"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2022-07-05" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Angular Vase"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2022-06-23" }
        , note = Some "It seems like the toasted look comes about from exposed clay that isn't close to the bototm. For this, and a few following pieces, I tried a new glaze of a single coat of white, where I then sponged it off at the rim. I like the exposed clay aesthetic quite a lot, and might use it more going forward."
        , img = Some "angular-vase-2022-06-23.png"
        }
      , { brief = "Sake/Tea Cup"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2022-06-23" }
        , note = Some "I really flubbed glazing this one. The glaze inside is clumpy and weird and theres a big fingerprint on the outside. It's kinda cute in its own, unintentional way."
        , img = Some "sake-cup-2022-06-23.png"
        }
      , { brief = "Large Cup"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2022-06-23" }
        , note = None Text
        , img = Some "large-cup-2-2022-06-23.png"
        }
      , { brief = "Large Cup"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2022-06-23" }
        , note = None Text
        , img = Some "large-cup-1-2022-06-23.png"
        }
      , { brief = "Storage Bowl"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2022-06-23" }
        , note = Some "This is a food portion bowl for Sophia. Luckily enough, a full bowl is more or less her exact allowance for a meal."
        , img = Some "sophia-food-bowl-2022-06-23.png"
        }
      , { brief = "Cup"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2022-06-23" }
        , note = None Text
        , img = Some "cup-2022-06-23.png"
        }
      , { brief = "Small Jug"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2022-06-23" }
        , note = Some "Yet another jug that ended up being slightly too narrow to use for an aeropress."
        , img = Some "jug-2022-06-23.png"
        }
      , { brief = "Small Vase"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2022-06-23" }
        , note = Some "The proportions of this are a little weird in a way I don't like. I think with something leafy that hides it, like epipremnum aureum, it will look okay."
        , img = Some "small-vase-2022-06-23.png"
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
