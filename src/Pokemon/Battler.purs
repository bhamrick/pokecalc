module Pokemon.Battler where

import Data.Maybe

import Pokemon.Species
import Pokemon.Stats
import Pokemon.Move

newtype Battler = Battler
    { species :: Species
    , level :: Int
    , move1 :: Maybe Move
    , move2 :: Maybe Move
    , move3 :: Maybe Move
    , move4 :: Maybe Move
    , ivs :: IVs
    , evs :: EVs
    , nature :: Nature
    , stages :: Stages
    -- , ability :: Ability
    -- , item :: Item
    -- , statues :: Status
    }
