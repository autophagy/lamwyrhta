let Prelude =
        env:DHALL_PRELUDE
      ? https://prelude.dhall-lang.org/v20.0.0/package.dhall
          sha256:21754b84b493b98682e73f64d9d57b18e1ca36a118b81b33d0a243de8455814b

let W = ./works.dhall

let State = W.State

let Clay = W.Clay

let Work = W.Work

let compose = Prelude.Function.compose

let not = Prelude.Bool.not

let showOptionalImage
    : Optional Text → Text
    = λ(img : Optional Text) →
        merge { Some = λ(a : Text) → "img/${a}", None = "img/default.png" } img

let showOptionalText
    : Optional Text → Text
    = λ(t : Optional Text) → merge { Some = λ(a : Text) → a, None = "" } t

let showState
    : State → Text
    = λ(s : State) →
        merge
          { Working = "Being worked on"
          , Bisque = "Awaiting bisque firing"
          , Glaze = "Awaiting glaze firing"
          , Finished = "Finished"
          }
          s

let showStateCSS
    : State → Text
    = λ(s : State) →
        merge
          { Working = "working"
          , Bisque = "bisque"
          , Glaze = "glaze"
          , Finished = "finished"
          }
          s

let showClay
    : Clay → Text
    = λ(c : Clay) →
        merge
          { White = "White"
          , Speckled = "Speckled"
          , Red = "Red"
          , Black = "Black"
          }
          c

let showInProgressWork
    : Work → Text
    = λ(work : Work) →
        ''
        <div class="work ${showStateCSS work.state.state}">
          <div class="detail">
            <div class="brief">
              ${work.brief}
            </div>
            <div class="state">
              ${showState work.state.state} since ${work.state.since}
            </div>
          </div>
        </div>
        ''

let showFinishedWork
    : Work → Text
    = λ(work : Work) →
        ''
        <div class="work">
          <div class="image">
            <img src="${showOptionalImage work.img}"/>
          </div>
          <div class="detail">
            <div class="brief">
              ${work.brief}
            </div>
            <div class="state">
              Finished on ${work.state.since}
            </div>
            <div class="note">
              ${showClay work.clay} clay. ${showOptionalText work.note}
            </div>
          </div>
        </div>
        ''

let isInProgress
    : Work → Bool
    = λ(work : Work) →
        merge
          { Working = True, Bisque = True, Glaze = True, Finished = False }
          work.state.state

let show
    : List Work → Text
    = λ(works : List Work) →
        let inProgressWorks = Prelude.List.filter Work isInProgress works

        let finishedWorks =
              Prelude.List.filter
                Work
                (compose Work Bool Bool isInProgress not)
                works

        in  ''
            <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="utf-8">
                <meta http-equiv="x-ua-compatible" content="ie=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
                <meta name="theme-color" content="#000000">
                <link rel="shortcut icon" href="favicon.ico">
                <link rel="stylesheet" href="main.css">
                <link rel="preconnect" href="https://fonts.gstatic.com">
                <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&display=swap" rel="stylesheet">
                <title>lámwyrhta</title>
            </head>
            <body>
                <h1>Lámwyrhta</h1>
                <div id="in-progress-works">
                  <h2>In Progress</h2>
                    ${Prelude.Text.concatMapSep
                        "\n"
                        Work
                        showInProgressWork
                        inProgressWorks}
                </div>
                <div id="finished-works">
                  <h2>Finished</h2>
                    ${Prelude.Text.concatMapSep
                        "\n"
                        Work
                        showFinishedWork
                        finishedWorks}
                </div>
            <footer>
                <a href="https://github.com/autophagy/lamwyrhta">Github</a> // <a href="https://autophagy.io">Autophagy</a>
            </footer>
            </body>
            </html>
            ''

in  show W.works
