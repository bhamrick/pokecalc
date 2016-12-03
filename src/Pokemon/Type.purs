module Pokemon.Type where

import Data.Eq
import Data.Ord
import Data.Generic

data Type
    = Normal
    | Fighting
    | Flying
    | Poison
    | Ground
    | Rock
    | Bug
    | Ghost
    | Steel
    | Fire
    | Water
    | Grass
    | Electric
    | Psychic
    | Ice
    | Dragon
    | Dark
    | Fairy

derive instance genericType :: Generic Type

instance eqType :: Eq Type where
    eq = gEq

instance ordType :: Ord Type where
    compare = gCompare
