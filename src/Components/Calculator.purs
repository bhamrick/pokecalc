module Components.Calculator where

import Prelude

import Data.Either
import Data.Lens
import Data.Foldable
import Text.Format

import Pokemon.Battler
import Pokemon.SpeciesData
import Pokemon.Matchup
import Pokemon.Move

import Components.Battler

import Thermite as T
import React as R
import React.DOM as R
import React.DOM.Props as RP
import ReactDOM as DOM

type CalculatorState =
    { battler :: Battler
    , opponent :: Battler
    }

data CalculatorAction
    = OnBattler BattlerAction
    | OnOpponent BattlerAction

_battler :: Lens' CalculatorState Battler
_battler = lens _.battler (_ { battler = _ })

_OnBattler :: Prism' CalculatorAction BattlerAction
_OnBattler = prism OnBattler \ca ->
    case ca of
        OnBattler a -> Right a
        _ -> Left ca

_opponent :: Lens' CalculatorState Battler
_opponent = lens _.opponent (_ { opponent = _ })

_OnOpponent :: Prism' CalculatorAction BattlerAction
_OnOpponent = prism OnOpponent \ca ->
    case ca of
        OnOpponent a -> Right a
        _ -> Left ca

_devoid :: forall a. Prism' a Void
_devoid = prism absurd Left

derived :: forall a b c eff props. (a -> b) -> T.Spec eff b props Void -> T.Spec eff a props c
derived f spec =
    T.simpleSpec performAction render
    where
    render :: T.Render a props c
    render dispatch p a =
        view T._render spec absurd p (f a)

    performAction :: T.PerformAction eff a props c
    performAction _ _ _ = pure unit

calculatorSpec :: forall eff props. T.Spec eff CalculatorState props CalculatorAction
calculatorSpec = container $ fold
    [ pokemonList
    , moveList
    , T.focus _battler _OnBattler battlerSpec
    , T.focus _opponent _OnOpponent battlerSpec
    , derived
        (\s -> matchupSummary s.battler s.opponent)
        matchupSpec
    ]
    where
    container :: forall state action. T.Spec eff state props action -> T.Spec eff state props action
    container = over T._render \render d p s c ->
        [ R.div [ RP.className "container" ] (render d p s c) ]

    pokemonList :: T.Spec eff CalculatorState props CalculatorAction
    pokemonList = T.simpleSpec performAction render
        where
        render dispatch _ s _ =
            [ R.datalist
                [ RP._id "species" ]
                (map (\n ->
                    R.option
                        [ RP.value n ]
                        []
                    ) speciesNames
                )
            ]
        performAction _ _ _ = pure unit

    moveList :: T.Spec eff CalculatorState props CalculatorAction
    moveList = T.simpleSpec performAction render
        where
        render dispatch _ s _ =
            [ R.datalist
                [ RP._id "move" ]
                (map (\n ->
                    R.option
                        [ RP.value n ]
                        []
                    ) moveNames
                )
            ]
        performAction _ _ _ = pure unit

matchupSpec :: forall eff props. T.Spec eff MatchupSummary props Void
matchupSpec = T.simpleSpec performAction render
    where
    render :: T.Render MatchupSummary props Void 
    render dispatch _ (MatchupSummary matchup) _ =
        [ R.div
            [ RP.className "speedMatchup" ]
            [ case matchup.speedMatchup of
                Faster -> R.span
                    [ RP.className "green" ]
                    [ R.text "Faster" ]
                Slower -> R.span
                    [ RP.className "red" ]
                    [ R.text "Slower" ]
                SpeedTie -> R.span
                    [ RP.className "yellow" ]
                    [ R.text "Speed Tie" ]
            ]
        , R.table
            [ RP.className "offensiveMatchup" ]
            [ R.tbody'
                [ R.tr'
                    [ R.td'
                        [ R.text (case matchup.offensiveRanges.range1.move of
                            Move m -> m.name)
                        ]
                    , R.td'
                        [ R.text $ fold
                            [ format (precision 2) matchup.offensiveRanges.range1.minRollPct
                            , "% - "
                            , format (precision 2) matchup.offensiveRanges.range1.maxRollPct
                            , "%"
                            ]
                        ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text (case matchup.offensiveRanges.range2.move of
                            Move m -> m.name)
                        ]
                    , R.td'
                        [ R.text $ fold
                            [ format (precision 2) matchup.offensiveRanges.range2.minRollPct
                            , "% - "
                            , format (precision 2) matchup.offensiveRanges.range2.maxRollPct
                            , "%"
                            ]
                        ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text (case matchup.offensiveRanges.range3.move of
                            Move m -> m.name)
                        ]
                    , R.td'
                        [ R.text $ fold
                            [ format (precision 2) matchup.offensiveRanges.range3.minRollPct
                            , "% - "
                            , format (precision 2) matchup.offensiveRanges.range3.maxRollPct
                            , "%"
                            ]
                        ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text (case matchup.offensiveRanges.range4.move of
                            Move m -> m.name)
                        ]
                    , R.td'
                        [ R.text $ fold
                            [ format (precision 2) matchup.offensiveRanges.range4.minRollPct
                            , "% - "
                            , format (precision 2) matchup.offensiveRanges.range4.maxRollPct
                            , "%"
                            ]
                        ]
                    ]
                ]
            ]
        , R.table
            [ RP.className "defensiveMatchup" ]
            [ R.tbody'
                [ R.tr'
                    [ R.td'
                        [ R.text $ fold
                            [ format (precision 2) matchup.defensiveRanges.range1.minRollPct
                            , "% - "
                            , format (precision 2) matchup.defensiveRanges.range1.maxRollPct
                            , "%"
                            ]
                        ]
                    , R.td'
                        [ R.text (case matchup.defensiveRanges.range1.move of
                            Move m -> m.name)
                        ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text $ fold
                            [ format (precision 2) matchup.defensiveRanges.range2.minRollPct
                            , "% - "
                            , format (precision 2) matchup.defensiveRanges.range2.maxRollPct
                            , "%"
                            ]
                        ]
                    , R.td'
                        [ R.text (case matchup.defensiveRanges.range2.move of
                            Move m -> m.name)
                        ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text $ fold
                            [ format (precision 2) matchup.defensiveRanges.range3.minRollPct
                            , "% - "
                            , format (precision 2) matchup.defensiveRanges.range3.maxRollPct
                            , "%"
                            ]
                        ]
                    , R.td'
                        [ R.text (case matchup.defensiveRanges.range3.move of
                            Move m -> m.name)
                        ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text $ fold
                            [ format (precision 2) matchup.defensiveRanges.range4.minRollPct
                            , "% - "
                            , format (precision 2) matchup.defensiveRanges.range4.maxRollPct
                            , "%"
                            ]
                        ]
                    , R.td'
                        [ R.text (case matchup.defensiveRanges.range4.move of
                            Move m -> m.name)
                        ]
                    ]
                ]
            ]
        ]

    performAction :: T.PerformAction eff MatchupSummary props Void
    performAction action _ _ = absurd action
