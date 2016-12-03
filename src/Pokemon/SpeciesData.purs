module Pokemon.SpeciesData where

import Prelude

import Data.Maybe
import Data.StrMap (StrMap)
import Data.StrMap as StrMap
import Data.String
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
        , type2: Just Ghost
        }
    , Species
        { name: "Litten"
        , baseStats: BaseStats
            { hp: 45
            , atk: 65
            , def: 40
            , spa: 60
            , spd: 40
            , spe: 70
            }
        , type1: Just Fire
        , type2: Nothing
        }
    , Species
        { name: "Torracat"
        , baseStats: BaseStats
            { hp: 65
            , atk: 85
            , def: 50
            , spa: 80
            , spd: 50
            , spe: 90
            }
        , type1: Just Fire
        , type2: Nothing
        }
    , Species
        { name: "Incineroar"
        , baseStats: BaseStats
            { hp: 95
            , atk: 115
            , def: 90
            , spa: 80
            , spd: 90
            , spe: 60
            }
        , type1: Just Fire
        , type2: Just Dark
        }
    , Species
        { name: "Popplio"
        , baseStats: BaseStats
            { hp: 50
            , atk: 54
            , def: 54
            , spa: 66
            , spd: 56
            , spe: 40
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Brionne"
        , baseStats: BaseStats
            { hp: 60
            , atk: 69
            , def: 69
            , spa: 91
            , spd: 81
            , spe: 50
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Primarina"
        , baseStats: BaseStats
            { hp: 80
            , atk: 74
            , def: 74
            , spa: 126
            , spd: 116
            , spe: 60
            }
        , type1: Just Water
        , type2: Just Fairy
        }
    , Species
        { name: "Pikipek"
        , baseStats: BaseStats
            { hp: 35
            , atk: 75
            , def: 30
            , spa: 30
            , spd: 30
            , spe: 65
            }
        , type1: Just Normal
        , type2: Just Flying
        }
    , Species
        { name: "Trumbeak"
        , baseStats: BaseStats
            { hp: 55
            , atk: 85
            , def: 50
            , spa: 40
            , spd: 50
            , spe: 75
            }
        , type1: Just Normal
        , type2: Just Flying
        }
    , Species
        { name: "Toucannon"
        , baseStats: BaseStats
            { hp: 80
            , atk: 120
            , def: 75
            , spa: 75
            , spd: 75
            , spe: 60
            }
        , type1: Just Normal
        , type2: Just Flying
        }
    , Species
        { name: "Yungoos"
        , baseStats: BaseStats
            { hp: 48
            , atk: 70
            , def: 30
            , spa: 30
            , spd: 30
            , spe: 45
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Gumshoos"
        , baseStats: BaseStats
            { hp: 88
            , atk: 110
            , def: 60
            , spa: 55
            , spd: 60
            , spe: 45
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Rattata-Alola"
        , baseStats: BaseStats
            { hp: 30
            , atk: 56
            , def: 35
            , spa: 25
            , spd: 35
            , spe: 72
            }
        , type1: Just Normal
        , type2: Just Dark
        }
    , Species
        { name: "Raticate-Alola"
        , baseStats: BaseStats
            { hp: 75
            , atk: 71
            , def: 70
            , spa: 40
            , spd: 80
            , spe: 77
            }
        , type1: Just Normal
        , type2: Just Dark
        }
    , Species
        { name: "Caterpie"
        , baseStats: BaseStats
            { hp: 45
            , atk: 30
            , def: 35
            , spa: 20
            , spd: 20
            , spe: 45
            }
        , type1: Just Bug
        , type2: Nothing
        }
    , Species
        { name: "Metapod"
        , baseStats: BaseStats
            { hp: 50
            , atk: 20
            , def: 55
            , spa: 25
            , spd: 25
            , spe: 30
            }
        , type1: Just Bug
        , type2: Nothing
        }
    , Species
        { name: "Butterfree"
        , baseStats: BaseStats
            { hp: 60
            , atk: 45
            , def: 50
            , spa: 90
            , spd: 80
            , spe: 70
            }
        , type1: Just Bug
        , type2: Just Flying
        }
    , Species
        { name: "Ledyba"
        , baseStats: BaseStats
            { hp: 40
            , atk: 20
            , def: 30
            , spa: 40
            , spd: 80
            , spe: 55
            }
        , type1: Just Bug
        , type2: Just Flying
        }
    , Species
        { name: "Ledian"
        , baseStats: BaseStats
            { hp: 55
            , atk: 35
            , def: 50
            , spa: 55
            , spd: 110
            , spe: 85
            }
        , type1: Just Bug
        , type2: Just Flying
        }
    , Species
        { name: "Spinarak"
        , baseStats: BaseStats
            { hp: 40
            , atk: 60
            , def: 40
            , spa: 40
            , spd: 40
            , spe: 30
            }
        , type1: Just Bug
        , type2: Just Poison
        }
    , Species
        { name: "Ariados"
        , baseStats: BaseStats
            { hp: 70
            , atk: 90
            , def: 70
            , spa: 60
            , spd: 70
            , spe: 40
            }
        , type1: Just Bug
        , type2: Just Poison
        }
    , Species
        { name: "Pichu"
        , baseStats: BaseStats
            { hp: 20
            , atk: 40
            , def: 15
            , spa: 35
            , spd: 35
            , spe: 60
            }
        , type1: Just Electric
        , type2: Nothing
        }
    , Species
        { name: "Pikachu"
        , baseStats: BaseStats
            { hp: 35
            , atk: 55
            , def: 40
            , spa: 50
            , spd: 50
            , spe: 90
            }
        , type1: Just Electric
        , type2: Nothing
        }
    , Species
        { name: "Raichu-Alola"
        , baseStats: BaseStats
            { hp: 60
            , atk: 85
            , def: 50
            , spa: 95
            , spd: 85
            , spe: 110
            }
        , type1: Just Electric
        , type2: Just Psychic
        }
    , Species
        { name: "Grubbin"
        , baseStats: BaseStats
            { hp: 47
            , atk: 62
            , def: 45
            , spa: 55
            , spd: 45
            , spe: 46
            }
        , type1: Just Bug
        , type2: Nothing
        }
    , Species
        { name: "Charjabug"
        , baseStats: BaseStats
            { hp: 57
            , atk: 82
            , def: 95
            , spa: 55
            , spd: 75
            , spe: 36
            }
        , type1: Just Bug
        , type2: Just Electric
        }
    , Species
        { name: "Vikavolt"
        , baseStats: BaseStats
            { hp: 77
            , atk: 70
            , def: 90
            , spa: 145
            , spd: 75
            , spe: 43
            }
        , type1: Just Bug
        , type2: Just Electric
        }
    ]

speciesByName :: StrMap Species
speciesByName = StrMap.fromFoldable (map (\(Species s) -> Tuple (toLower s.name) (Species s)) allSpecies)

speciesNames :: Array String
speciesNames = map (\(Species s) -> s.name) allSpecies
