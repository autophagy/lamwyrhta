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
      [
        { brief = "Set of 2 Coffee Cups"
        , clay = Clay.Speckled
        , state = { state = State.Working, since = "2023-05-06" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Salt Pig/s"
        , clay = Clay.Speckled
        , state = { state = State.Working, since = "2023-05-03" }
        , note = Some "Making on request for a friend. Throwing 2 different sizes to see what works best."
        , img = None Text
        }
      , { brief = "Museli Bowl"
        , clay = Clay.Speckled
        , state = { state = State.Bisque, since = "2023-05-06" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Set of 2 Dinner Plates"
        , clay = Clay.Speckled
        , state = { state = State.Glaze, since = "2023-05-06" }
        , note = None Text
        , img = None Text
        }
      , { brief = "Lidded Storage Jar"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2023-04-30" }
        , note = None Text
        , img = Some "sugar-jar-2023-04-30.jpg"
        }
      , { brief = "Set of 5 Coasters"
        , clay = Clay.Speckled
        , state = { state = State.Finished, since = "2023-04-16" }
        , note = Some "My first use of engobe to inscribe the sigils onto these coasters. The sigils themselves were designed via a collaboration with GPT4 to represent human/machinic intelligence and collaboration."
        , img = Some "set-of-coasters-2023-04-16.png"
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
