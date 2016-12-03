module Pokemon.SpeciesData where

import Prelude

import Data.Maybe
import Data.StrMap (StrMap)
import Data.StrMap as StrMap
import Data.Tuple

import Pokemon.Species
import Pokemon.Stats
import Pokemon.Type

allSpecies :: Array Species
allSpecies =
    [ Species
        { name: "Rowlet"
        , baseStats: BaseStats
            { hp: 68
            , atk: 55
            , def: 55
            , spa: 50
            , spd: 50
            , spe: 42
            }
        , type1: Just Grass
        , type2: Just Flying
        }
    , Species
        { name: "Dartrix"
        , baseStats: BaseStats
            { hp: 78
            , atk: 75
            , def: 75
            , spa: 70
            , spd: 70
            , spe: 52
            }
        , type1: Just Grass
        , type2: Just Flying
        }
    , Species
        { name: "Decidueye"
        , baseStats: BaseStats
            { hp: 78
            , atk: 107
            , def: 75
            , spa: 100
            , spd: 100
            , spe: 70
            }
        , type1: Just Grass
        , type2: Just Flying
        }
    ]

speciesByName :: StrMap Species
speciesByName = StrMap.fromFoldable (map (\(Species s) -> Tuple s.name (Species s)) allSpecies)

speciesNames :: Array String
speciesNames = map (\(Species s) -> s.name) allSpecies
