module Pokemon.Battler where

import Data.Maybe

import Pokemon.Species
import Pokemon.Stats
import Pokemon.Move

newtype Battler = Battler
    { species :: Species
    , level :: Int
    , move1 :: Move
    , move2 :: Move
    , move3 :: Move
    , move4 :: Move
    , ivs :: IVs
    , evs :: EVs
    , nature :: Nature
    , stages :: Stages
    -- , ability :: Ability
    -- , item :: Item
    -- , statues :: Status
    }
