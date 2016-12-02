module Components.Battler where

import Prelude

import Data.Maybe

import Pokemon.Battler
import Pokemon.Species
import Pokemon.Stats
import Pokemon.Move
import Pokemon.Type

import Thermite as T
import React as R
import React.DOM as R
import React.DOM.Props as R
import ReactDOM as DOM

data BattlerAction
    = UpdateSpeciesName String
    | UpdateBaseStat Stat Int
    | UpdateType1 (Maybe Type)
    | UpdateType2 (Maybe Type)
    | UpdateLevel Int
    | UpdateMove1 (Maybe Move)
    | UpdateMove2 (Maybe Move)
    | UpdateMove3 (Maybe Move)
    | UpdateMove4 (Maybe Move)
    | UpdateIV Stat Int
    | UpdateEV Stat Int
    | UpdateNature Nature
    | UpdateStage Stat Int

battlerSpec :: forall eff props. T.Spec eff Battler props BattlerAction
battlerSpec = T.simpleSpec performAction render
    where
    render :: T.Render Battler props BattlerAction
    render dispatch _ b _ =
        [ R.text "Testing"
        ]

    performAction :: T.PerformAction eff Battler props BattlerAction
    performAction action _ _ =
        case action of
            _ -> do
                pure unit
