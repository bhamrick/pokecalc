module Pokemon.Species where

import Data.Maybe

import Pokemon.Stats
import Pokemon.Type

newtype Species = Species
    { name :: String
    , baseStats :: BaseStats
    , type1 :: Maybe Type
    , type2 :: Maybe Type
    -- , possibleAbilities :: Array Ability
    -- , legalMoves :: Array String
    }
