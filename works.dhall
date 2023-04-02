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
      [ { brief = "Lidded Storage Jar"
        , clay = Clay.Speckled
        , state = { state = State.Working, since = "2023-04-01" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Set of 5 Coasters"
        , clay = Clay.Speckled
        , state = { state = State.Bisque, since = "2023-03-26" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Desert Bowl"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2023-03-19" }
        , note = Some "Trying to work on increasing the size of my works, above just cups. Bitten by not using a bat for this one. Still too small for its intended purpose, but makes a cute desert bowl."
        , img = Some "desert-bowl-2023-04-02.jpg"
        }
      , { brief = "Conical Vase"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2023-01-20" }
        , note = Some "This was meant to be a storage vessel, but the internal volume was a bit too small and the proportions not quite right. But, it makes for a nice weird vase for vines."
        , img = None Text
        }
      ]

in  { State, Clay, Work, works }
