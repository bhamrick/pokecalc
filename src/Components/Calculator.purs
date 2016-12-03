module Components.Calculator where

import Prelude

import Data.Either
import Data.Lens
import Data.Foldable

import Pokemon.Battler
import Pokemon.SpeciesData

import Components.Battler

import Thermite as T
import React as R
import React.DOM as R
import React.DOM.Props as RP
import ReactDOM as DOM

type CalculatorState =
    { battler :: Battler
    }

data CalculatorAction
    = OnBattler BattlerAction

_battler :: Lens' CalculatorState Battler
_battler = lens _.battler (_ { battler = _ })

_OnBattler :: Prism' CalculatorAction BattlerAction
_OnBattler = prism OnBattler \ca ->
    case ca of
        OnBattler a -> Right a
        _ -> Left ca

calculatorSpec :: forall eff props. T.Spec eff CalculatorState props CalculatorAction
calculatorSpec = container $ fold
    [ pokemonList
    , T.focus _battler _OnBattler battlerSpec
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