module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

import Data.Maybe

import DOM (DOM) as DOM
import DOM.HTML (window) as DOM
import DOM.HTML.Types (htmlDocumentToParentNode) as DOM
import DOM.HTML.Window (document) as DOM
import DOM.Node.ParentNode (querySelector) as DOM
import React as R
import ReactDOM as RDOM
import Thermite as T
import Data.Maybe (fromJust)
import Data.Nullable (toMaybe)
import Partial.Unsafe (unsafePartial)

import Pokemon.Battler
import Pokemon.Species
import Pokemon.Type
import Pokemon.Stats
import Pokemon.Move

import Components.Battler

initialBattler = Battler
    { species: Species
        { name: "Sample"
        , baseStats: BaseStats
            { hp: 80
            , atk: 80
            , def: 80
            , spa: 80
            , spd: 80
            , spe: 80
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , level: 50
    , move1: Nothing
    , move2: Nothing
    , move3: Nothing
    , move4: Nothing
    , ivs: IVs
        { hp: 31
        , atk: 31
        , def: 31
        , spa: 31
        , spd: 31
        , spe: 31
        }
    , evs: EVs
        { hp: 4
        , atk: 252
        , def: 0
        , spa: 252
        , spd: 0
        , spe: 0
        }
    , nature: Quirky
    , stages: Stages
        { atk: 0
        , def: 0
        , spa: 0
        , spd: 0
        , spe: 0
        }
    }

main :: forall e. Eff (dom :: DOM.DOM | e) Unit
main = void do
    let component = T.createClass battlerSpec initialBattler
    document <- DOM.window >>= DOM.document
    container <- unsafePartial (fromJust <<< toMaybe <$> DOM.querySelector "#container" (DOM.htmlDocumentToParentNode document))
    RDOM.render (R.createFactory component {}) container
