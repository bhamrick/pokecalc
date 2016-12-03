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
    , Species
        { name: "Bonsly"
        , baseStats: BaseStats
            { hp: 50
            , atk: 80
            , def: 95
            , spa: 10
            , spd: 45
            , spe: 10
            }
        , type1: Just Rock
        , type2: Nothing
        }
    , Species
        { name: "Sudowoodo"
        , baseStats: BaseStats
            { hp: 70
            , atk: 100
            , def: 115
            , spa: 30
            , spd: 65
            , spe: 30
            }
        , type1: Just Rock
        , type2: Nothing
        }
    , Species
        { name: "Happiny"
        , baseStats: BaseStats
            { hp: 100
            , atk: 5
            , def: 5
            , spa: 15
            , spd: 65
            , spe: 30
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Chansey"
        , baseStats: BaseStats
            { hp: 250
            , atk: 5
            , def: 5
            , spa: 35
            , spd: 105
            , spe: 50
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Blissey"
        , baseStats: BaseStats
            { hp: 255
            , atk: 10
            , def: 10
            , spa: 75
            , spd: 135
            , spe: 55
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Munchlax"
        , baseStats: BaseStats
            { hp: 135
            , atk: 85
            , def: 40
            , spa: 40
            , spd: 85
            , spe: 5
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Snorlax"
        , baseStats: BaseStats
            { hp: 160
            , atk: 110
            , def: 65
            , spa: 65
            , spd: 110
            , spe: 30
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Slowpoke"
        , baseStats: BaseStats
            { hp: 90
            , atk: 65
            , def: 65
            , spa: 40
            , spd: 40
            , spe: 15
            }
        , type1: Just Water
        , type2: Just Psychic
        }
    , Species
        { name: "Slowbro"
        , baseStats: BaseStats
            { hp: 95
            , atk: 75
            , def: 110
            , spa: 100
            , spd: 80
            , spe: 30
            }
        , type1: Just Water
        , type2: Just Psychic
        }
    , Species
        { name: "Slowking"
        , baseStats: BaseStats
            { hp: 95
            , atk: 75
            , def: 80
            , spa: 100
            , spd: 110
            , spe: 30
            }
        , type1: Just Water
        , type2: Just Psychic
        }
    , Species
        { name: "Wingull"
        , baseStats: BaseStats
            { hp: 40
            , atk: 30
            , def: 30
            , spa: 55
            , spd: 30
            , spe: 85
            }
        , type1: Just Water
        , type2: Just Flying
        }
    , Species
        { name: "Pelipper"
        , baseStats: BaseStats
            { hp: 60
            , atk: 50
            , def: 100
            , spa: 95
            , spd: 70
            , spe: 65
            }
        , type1: Just Water
        , type2: Just Flying
        }
    , Species
        { name: "Abra"
        , baseStats: BaseStats
            { hp: 25
            , atk: 20
            , def: 15
            , spa: 105
            , spd: 55
            , spe: 90
            }
        , type1: Just Psychic
        , type2: Nothing
        }
    , Species
        { name: "Kadabra"
        , baseStats: BaseStats
            { hp: 40
            , atk: 35
            , def: 30
            , spa: 120
            , spd: 70
            , spe: 105
            }
        , type1: Just Psychic
        , type2: Nothing
        }
    , Species
        { name: "Alakazam"
        , baseStats: BaseStats
            { hp: 55
            , atk: 50
            , def: 45
            , spa: 135
            , spd: 95
            , spe: 120
            }
        , type1: Just Psychic
        , type2: Nothing
        }
    , Species
        { name: "Meowth-Alola"
        , baseStats: BaseStats
            { hp: 40
            , atk: 35
            , def: 35
            , spa: 50
            , spd: 40
            , spe: 90
            }
        , type1: Just Dark
        , type2: Nothing
        }
    , Species
        { name: "Persian-Alola"
        , baseStats: BaseStats
            { hp: 65
            , atk: 60
            , def: 60
            , spa: 75
            , spd: 65
            , spe: 115
            }
        , type1: Just Dark
        , type2: Nothing
        }
    , Species
        { name: "Magnemite"
        , baseStats: BaseStats
            { hp: 25
            , atk: 35
            , def: 70
            , spa: 95
            , spd: 55
            , spe: 45
            }
        , type1: Just Electric
        , type2: Just Steel
        }
    , Species
        { name: "Magneton"
        , baseStats: BaseStats
            { hp: 50
            , atk: 60
            , def: 95
            , spa: 120
            , spd: 70
            , spe: 70
            }
        , type1: Just Electric
        , type2: Just Steel
        }
    , Species
        { name: "Magnezone"
        , baseStats: BaseStats
            { hp: 70
            , atk: 70
            , def: 115
            , spa: 130
            , spd: 90
            , spe: 60
            }
        , type1: Just Electric
        , type2: Just Steel
        }
    , Species
        { name: "Grimer-Alola"
        , baseStats: BaseStats
            { hp: 80
            , atk: 80
            , def: 50
            , spa: 40
            , spd: 50
            , spe: 25
            }
        , type1: Just Poison
        , type2: Just Dark
        }
    , Species
        { name: "Muk-Alola"
        , baseStats: BaseStats
            { hp: 105
            , atk: 105
            , def: 75
            , spa: 65
            , spd: 100
            , spe: 50
            }
        , type1: Just Poison
        , type2: Just Dark
        }
    , Species
        { name: "Growlithe"
        , baseStats: BaseStats
            { hp: 55
            , atk: 70
            , def: 45
            , spa: 70
            , spd: 50
            , spe: 60
            }
        , type1: Just Fire
        , type2: Nothing
        }
    , Species
        { name: "Arcanine"
        , baseStats: BaseStats
            { hp: 90
            , atk: 110
            , def: 80
            , spa: 100
            , spd: 80
            , spe: 95
            }
        , type1: Just Fire
        , type2: Nothing
        }
    , Species
        { name: "Drowzee"
        , baseStats: BaseStats
            { hp: 60
            , atk: 48
            , def: 45
            , spa: 43
            , spd: 90
            , spe: 42
            }
        , type1: Just Psychic
        , type2: Nothing
        }
    , Species
        { name: "Hypno"
        , baseStats: BaseStats
            { hp: 85
            , atk: 73
            , def: 70
            , spa: 73
            , spd: 115
            , spe: 67
            }
        , type1: Just Psychic
        , type2: Nothing
        }
    , Species
        { name: "Makuhita"
        , baseStats: BaseStats
            { hp: 72
            , atk: 60
            , def: 30
            , spa: 20
            , spd: 30
            , spe: 25
            }
        , type1: Just Fighting
        , type2: Nothing
        }
    , Species
        { name: "Hariyama"
        , baseStats: BaseStats
            { hp: 144
            , atk: 120
            , def: 60
            , spa: 40
            , spd: 60
            , spe: 50
            }
        , type1: Just Fighting
        , type2: Nothing
        }
    , Species
        { name: "Smeargle"
        , baseStats: BaseStats
            { hp: 55
            , atk: 20
            , def: 35
            , spa: 20
            , spd: 45
            , spe: 75
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Crabrawler"
        , baseStats: BaseStats
            { hp: 47
            , atk: 82
            , def: 57
            , spa: 42
            , spd: 47
            , spe: 63
            }
        , type1: Just Fighting
        , type2: Nothing
        }
    , Species
        { name: "Crabominable"
        , baseStats: BaseStats
            { hp: 97
            , atk: 132
            , def: 77
            , spa: 62
            , spd: 67
            , spe: 43
            }
        , type1: Just Fighting
        , type2: Just Ice
        }
    , Species
        { name: "Gastly"
        , baseStats: BaseStats
            { hp: 30
            , atk: 35
            , def: 30
            , spa: 100
            , spd: 35
            , spe: 80
            }
        , type1: Just Ghost
        , type2: Just Poison
        }
    , Species
        { name: "Haunter"
        , baseStats: BaseStats
            { hp: 45
            , atk: 50
            , def: 45
            , spa: 115
            , spd: 55
            , spe: 95
            }
        , type1: Just Ghost
        , type2: Just Poison
        }
    , Species
        { name: "Gengar"
        , baseStats: BaseStats
            { hp: 60
            , atk: 65
            , def: 60
            , spa: 130
            , spd: 75
            , spe: 110
            }
        , type1: Just Ghost
        , type2: Just Poison
        }
    , Species
        { name: "Drifloon"
        , baseStats: BaseStats
            { hp: 90
            , atk: 50
            , def: 34
            , spa: 60
            , spd: 44
            , spe: 70
            }
        , type1: Just Ghost
        , type2: Just Flying
        }
    , Species
        { name: "Drifblim"
        , baseStats: BaseStats
            { hp: 150
            , atk: 80
            , def: 44
            , spa: 90
            , spd: 54
            , spe: 80
            }
        , type1: Just Ghost
        , type2: Just Flying
        }
    , Species
        { name: "Misdreavus"
        , baseStats: BaseStats
            { hp: 60
            , atk: 60
            , def: 60
            , spa: 85
            , spd: 85
            , spe: 85
            }
        , type1: Just Ghost
        , type2: Nothing
        }
    , Species
        { name: "Mismagius"
        , baseStats: BaseStats
            { hp: 60
            , atk: 60
            , def: 60
            , spa: 105
            , spd: 105
            , spe: 105
            }
        , type1: Just Ghost
        , type2: Nothing
        }
    , Species
        { name: "Zubat"
        , baseStats: BaseStats
            { hp: 40
            , atk: 45
            , def: 35
            , spa: 30
            , spd: 40
            , spe: 55
            }
        , type1: Just Poison
        , type2: Just Flying
        }
    , Species
        { name: "Golbat"
        , baseStats: BaseStats
            { hp: 75
            , atk: 80
            , def: 70
            , spa: 65
            , spd: 75
            , spe: 90
            }
        , type1: Just Poison
        , type2: Just Flying
        }
    , Species
        { name: "Crobat"
        , baseStats: BaseStats
            { hp: 85
            , atk: 90
            , def: 80
            , spa: 70
            , spd: 80
            , spe: 130
            }
        , type1: Just Poison
        , type2: Just Flying
        }
    , Species
        { name: "Diglett-Alola"
        , baseStats: BaseStats
            { hp: 10
            , atk: 55
            , def: 30
            , spa: 35
            , spd: 45
            , spe: 90
            }
        , type1: Just Ground
        , type2: Just Steel
        }
    , Species
        { name: "Dugtrio-Alola"
        , baseStats: BaseStats
            { hp: 35
            , atk: 100
            , def: 60
            , spa: 50
            , spd: 70
            , spe: 110
            }
        , type1: Just Ground
        , type2: Just Steel
        }
    , Species
        { name: "Spearow"
        , baseStats: BaseStats
            { hp: 40
            , atk: 60
            , def: 30
            , spa: 31
            , spd: 31
            , spe: 70
            }
        , type1: Just Normal
        , type2: Just Flying
        }
    , Species
        { name: "Fearow"
        , baseStats: BaseStats
            { hp: 65
            , atk: 90
            , def: 65
            , spa: 61
            , spd: 61
            , spe: 100
            }
        , type1: Just Normal
        , type2: Just Flying
        }
    , Species
        { name: "Rufflet"
        , baseStats: BaseStats
            { hp: 70
            , atk: 83
            , def: 50
            , spa: 37
            , spd: 50
            , spe: 60
            }
        , type1: Just Normal
        , type2: Just Flying
        }
    , Species
        { name: "Braviary"
        , baseStats: BaseStats
            { hp: 100
            , atk: 123
            , def: 75
            , spa: 57
            , spd: 75
            , spe: 90
            }
        , type1: Just Normal
        , type2: Just Flying
        }
    , Species
        { name: "Vullaby"
        , baseStats: BaseStats
            { hp: 70
            , atk: 55
            , def: 75
            , spa: 45
            , spd: 65
            , spe: 60
            }
        , type1: Just Normal
        , type2: Just Flying
        }
    , Species
        { name: "Mandibuzz"
        , baseStats: BaseStats
            { hp: 110
            , atk: 65
            , def: 105
            , spa: 55
            , spd: 95
            , spe: 80
            }
        , type1: Just Normal
        , type2: Just Flying
        }
    , Species
        { name: "Mankey"
        , baseStats: BaseStats
            { hp: 40
            , atk: 80
            , def: 35
            , spa: 35
            , spd: 45
            , spe: 70
            }
        , type1: Just Fighting
        , type2: Nothing
        }
    , Species
        { name: "Primeape"
        , baseStats: BaseStats
            { hp: 65
            , atk: 105
            , def: 60
            , spa: 60
            , spd: 70
            , spe: 95
            }
        , type1: Just Fighting
        , type2: Nothing
        }
    , Species
        { name: "Delibird"
        , baseStats: BaseStats
            { hp: 45
            , atk: 55
            , def: 45
            , spa: 65
            , spd: 45
            , spe: 75
            }
        , type1: Just Ice
        , type2: Just Flying
        }
    , Species
        { name: "Oricorio-Baille"
        , baseStats: BaseStats
            { hp: 75
            , atk: 70
            , def: 70
            , spa: 98
            , spd: 70
            , spe: 93
            }
        , type1: Just Fire
        , type2: Just Flying
        }
    , Species
        { name: "Oricorio-Pom-Pom"
        , baseStats: BaseStats
            { hp: 75
            , atk: 70
            , def: 70
            , spa: 98
            , spd: 70
            , spe: 93
            }
        , type1: Just Electric
        , type2: Just Flying
        }
    , Species
        { name: "Oricorio-P'au"
        , baseStats: BaseStats
            { hp: 75
            , atk: 70
            , def: 70
            , spa: 98
            , spd: 70
            , spe: 93
            }
        , type1: Just Psychic
        , type2: Just Flying
        }
    , Species
        { name: "Oricorio-Sensu"
        , baseStats: BaseStats
            { hp: 75
            , atk: 70
            , def: 70
            , spa: 98
            , spd: 70
            , spe: 93
            }
        , type1: Just Ghost
        , type2: Just Flying
        }
    , Species
        { name: "Cutiefly"
        , baseStats: BaseStats
            { hp: 40
            , atk: 45
            , def: 40
            , spa: 55
            , spd: 40
            , spe: 84
            }
        , type1: Just Bug
        , type2: Just Fairy
        }
    , Species
        { name: "Ribombee"
        , baseStats: BaseStats
            { hp: 60
            , atk: 55
            , def: 60
            , spa: 95
            , spd: 70
            , spe: 124
            }
        , type1: Just Bug
        , type2: Just Fairy
        }
    , Species
        { name: "Petilil"
        , baseStats: BaseStats
            { hp: 45
            , atk: 35
            , def: 50
            , spa: 70
            , spd: 50
            , spe: 30
            }
        , type1: Just Grass
        , type2: Nothing
        }
    , Species
        { name: "Lilligant"
        , baseStats: BaseStats
            { hp: 70
            , atk: 60
            , def: 75
            , spa: 110
            , spd: 75
            , spe: 90
            }
        , type1: Just Grass
        , type2: Nothing
        }
    , Species
        { name: "Cottonee"
        , baseStats: BaseStats
            { hp: 40
            , atk: 27
            , def: 60
            , spa: 37
            , spd: 50
            , spe: 66
            }
        , type1: Just Grass
        , type2: Just Fairy
        }
    , Species
        { name: "Whimsicott"
        , baseStats: BaseStats
            { hp: 60
            , atk: 67
            , def: 85
            , spa: 77
            , spd: 75
            , spe: 116
            }
        , type1: Just Grass
        , type2: Just Fairy
        }
    , Species
        { name: "Psyduck"
        , baseStats: BaseStats
            { hp: 50
            , atk: 52
            , def: 48
            , spa: 65
            , spd: 50
            , spe: 55
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Golduck"
        , baseStats: BaseStats
            { hp: 80
            , atk: 82
            , def: 78
            , spa: 95
            , spd: 80
            , spe: 85
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Magikarp"
        , baseStats: BaseStats
            { hp: 20
            , atk: 10
            , def: 55
            , spa: 15
            , spd: 20
            , spe: 80
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Gyarados"
        , baseStats: BaseStats
            { hp: 95
            , atk: 125
            , def: 79
            , spa: 60
            , spd: 100
            , spe: 81
            }
        , type1: Just Water
        , type2: Just Flying
        }
    , Species
        { name: "Barboach"
        , baseStats: BaseStats
            { hp: 50
            , atk: 48
            , def: 43
            , spa: 46
            , spd: 41
            , spe: 60
            }
        , type1: Just Water
        , type2: Just Ground
        }
    , Species
        { name: "Whiscash"
        , baseStats: BaseStats
            { hp: 110
            , atk: 78
            , def: 73
            , spa: 76
            , spd: 71
            , spe: 60
            }
        , type1: Just Water
        , type2: Just Ground
        }
    , Species
        { name: "Machop"
        , baseStats: BaseStats
            { hp: 70
            , atk: 80
            , def: 50
            , spa: 35
            , spd: 35
            , spe: 35
            }
        , type1: Just Fighting
        , type2: Nothing
        }
    , Species
        { name: "Machoke"
        , baseStats: BaseStats
            { hp: 80
            , atk: 100
            , def: 70
            , spa: 50
            , spd: 60
            , spe: 45
            }
        , type1: Just Fighting
        , type2: Nothing
        }
    , Species
        { name: "Machamp"
        , baseStats: BaseStats
            { hp: 90
            , atk: 130
            , def: 80
            , spa: 65
            , spd: 85
            , spe: 55
            }
        , type1: Just Fighting
        , type2: Nothing
        }
    , Species
        { name: "Roggenrola"
        , baseStats: BaseStats
            { hp: 55
            , atk: 75
            , def: 85
            , spa: 25
            , spd: 25
            , spe: 15
            }
        , type1: Just Rock
        , type2: Nothing
        }
    , Species
        { name: "Boldore"
        , baseStats: BaseStats
            { hp: 70
            , atk: 105
            , def: 105
            , spa: 50
            , spd: 40
            , spe: 20
            }
        , type1: Just Rock
        , type2: Nothing
        }
    , Species
        { name: "Gigalith"
        , baseStats: BaseStats
            { hp: 85
            , atk: 135
            , def: 130
            , spa: 60
            , spd: 80
            , spe: 25
            }
        , type1: Just Rock
        , type2: Nothing
        }
    , Species
        { name: "Carbink"
        , baseStats: BaseStats
            { hp: 50
            , atk: 50
            , def: 150
            , spa: 50
            , spd: 150
            , spe: 50
            }
        , type1: Just Rock
        , type2: Just Fairy
        }
    , Species
        { name: "Sableye"
        , baseStats: BaseStats
            { hp: 50
            , atk: 75
            , def: 75
            , spa: 65
            , spd: 65
            , spe: 50
            }
        , type1: Just Dark
        , type2: Just Ghost
        }
    , Species
        { name: "Rockruff"
        , baseStats: BaseStats
            { hp: 45
            , atk: 65
            , def: 40
            , spa: 30
            , spd: 40
            , spe: 60
            }
        , type1: Just Rock
        , type2: Nothing
        }
    , Species
        { name: "Lycanroc-Midday"
        , baseStats: BaseStats
            { hp: 75
            , atk: 115
            , def: 65
            , spa: 55
            , spd: 65
            , spe: 112
            }
        , type1: Just Rock
        , type2: Nothing
        }
    , Species
        { name: "Lycanroc-Midnight"
        , baseStats: BaseStats
            { hp: 85
            , atk: 115
            , def: 75
            , spa: 55
            , spd: 75
            , spe: 82
            }
        , type1: Just Rock
        , type2: Nothing
        }
    , Species
        { name: "Spinda"
        , baseStats: BaseStats
            { hp: 60
            , atk: 60
            , def: 60
            , spa: 60
            , spd: 60
            , spe: 60
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Tentacool"
        , baseStats: BaseStats
            { hp: 40
            , atk: 40
            , def: 35
            , spa: 50
            , spd: 100
            , spe: 70
            }
        , type1: Just Water
        , type2: Just Poison
        }
    , Species
        { name: "Tentacruel"
        , baseStats: BaseStats
            { hp: 80
            , atk: 70
            , def: 65
            , spa: 80
            , spd: 120
            , spe: 100
            }
        , type1: Just Water
        , type2: Just Poison
        }
    , Species
        { name: "Finneon"
        , baseStats: BaseStats
            { hp: 49
            , atk: 49
            , def: 56
            , spa: 49
            , spd: 61
            , spe: 66
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Lumineon"
        , baseStats: BaseStats
            { hp: 69
            , atk: 69
            , def: 76
            , spa: 69
            , spd: 86
            , spe: 91
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Wishiwashi-Solo"
        , baseStats: BaseStats
            { hp: 45
            , atk: 20
            , def: 20
            , spa: 25
            , spd: 25
            , spe: 40
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Wishiwashi-School"
        , baseStats: BaseStats
            { hp: 45
            , atk: 140
            , def: 130
            , spa: 140
            , spd: 135
            , spe: 30
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Luvdisc"
        , baseStats: BaseStats
            { hp: 43
            , atk: 30
            , def: 55
            , spa: 40
            , spd: 65
            , spe: 97
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Corsola"
        , baseStats: BaseStats
            { hp: 65
            , atk: 55
            , def: 95
            , spa: 65
            , spd: 95
            , spe: 35
            }
        , type1: Just Water
        , type2: Just Rock
        }
    , Species
        { name: "Mareanie"
        , baseStats: BaseStats
            { hp: 50
            , atk: 53
            , def: 62
            , spa: 43
            , spd: 52
            , spe: 45
            }
        , type1: Just Poison
        , type2: Just Water
        }
    , Species
        { name: "Toxapex"
        , baseStats: BaseStats
            { hp: 50
            , atk: 63
            , def: 152
            , spa: 53
            , spd: 142
            , spe: 35
            }
        , type1: Just Poison
        , type2: Just Water
        }
    , Species
        { name: "Shellder"
        , baseStats: BaseStats
            { hp: 30
            , atk: 65
            , def: 100
            , spa: 45
            , spd: 25
            , spe: 40
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Cloyster"
        , baseStats: BaseStats
            { hp: 50
            , atk: 95
            , def: 180
            , spa: 85
            , spd: 45
            , spe: 70
            }
        , type1: Just Water
        , type2: Just Ice
        }
    , Species
        { name: "Bagon"
        , baseStats: BaseStats
            { hp: 45
            , atk: 75
            , def: 60
            , spa: 40
            , spd: 30
            , spe: 50
            }
        , type1: Just Dragon
        , type2: Nothing
        }
    , Species
        { name: "Shelgon"
        , baseStats: BaseStats
            { hp: 65
            , atk: 95
            , def: 100
            , spa: 60
            , spd: 50
            , spe: 50
            }
        , type1: Just Dragon
        , type2: Nothing
        }
    , Species
        { name: "Salamence"
        , baseStats: BaseStats
            { hp: 95
            , atk: 135
            , def: 80
            , spa: 110
            , spd: 80
            , spe: 100
            }
        , type1: Just Dragon
        , type2: Just Flying
        }
    , Species
        { name: "Lillipup"
        , baseStats: BaseStats
            { hp: 45
            , atk: 60
            , def: 45
            , spa: 25
            , spd: 45
            , spe: 55
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Herdier"
        , baseStats: BaseStats
            { hp: 65
            , atk: 80
            , def: 65
            , spa: 35
            , spd: 65
            , spe: 60
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Stoutland"
        , baseStats: BaseStats
            { hp: 85
            , atk: 110
            , def: 90
            , spa: 45
            , spd: 90
            , spe: 80
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Eevee"
        , baseStats: BaseStats
            { hp: 55
            , atk: 55
            , def: 50
            , spa: 45
            , spd: 65
            , spe: 55
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Vaporeon"
        , baseStats: BaseStats
            { hp: 130
            , atk: 65
            , def: 60
            , spa: 110
            , spd: 95
            , spe: 65
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Jolteon"
        , baseStats: BaseStats
            { hp: 65
            , atk: 65
            , def: 60
            , spa: 110
            , spd: 95
            , spe: 130
            }
        , type1: Just Electric
        , type2: Nothing
        }
    , Species
        { name: "Flareon"
        , baseStats: BaseStats
            { hp: 65
            , atk: 130
            , def: 60
            , spa: 95
            , spd: 110
            , spe: 65
            }
        , type1: Just Fire
        , type2: Nothing
        }
    , Species
        { name: "Espeon"
        , baseStats: BaseStats
            { hp: 65
            , atk: 65
            , def: 60
            , spa: 130
            , spd: 95
            , spe: 110
            }
        , type1: Just Psychic
        , type2: Nothing
        }
    , Species
        { name: "Umbreon"
        , baseStats: BaseStats
            { hp: 95
            , atk: 65
            , def: 110
            , spa: 60
            , spd: 130
            , spe: 65
            }
        , type1: Just Dark
        , type2: Nothing
        }
    , Species
        { name: "Leafeon"
        , baseStats: BaseStats
            { hp: 65
            , atk: 110
            , def: 130
            , spa: 60
            , spd: 65
            , spe: 95
            }
        , type1: Just Dark
        , type2: Nothing
        }
    , Species
        { name: "Glaceon"
        , baseStats: BaseStats
            { hp: 65
            , atk: 60
            , def: 110
            , spa: 130
            , spd: 95
            , spe: 65
            }
        , type1: Just Ice
        , type2: Nothing
        }
    , Species
        { name: "Sylveon"
        , baseStats: BaseStats
            { hp: 95
            , atk: 65
            , def: 65
            , spa: 110
            , spd: 130
            , spe: 60
            }
        , type1: Just Fairy
        , type2: Nothing
        }
    , Species
        { name: "Mudbray"
        , baseStats: BaseStats
            { hp: 70
            , atk: 100
            , def: 70
            , spa: 45
            , spd: 55
            , spe: 45
            }
        , type1: Just Ground
        , type2: Nothing
        }
    , Species
        { name: "Mudsdale"
        , baseStats: BaseStats
            { hp: 100
            , atk: 125
            , def: 100
            , spa: 55
            , spd: 85
            , spe: 35
            }
        , type1: Just Ground
        , type2: Nothing
        }
    , Species
        { name: "Igglybuff"
        , baseStats: BaseStats
            { hp: 90
            , atk: 30
            , def: 15
            , spa: 40
            , spd: 20
            , spe: 15
            }
        , type1: Just Normal
        , type2: Just Fairy
        }
    , Species
        { name: "Jigglypuff"
        , baseStats: BaseStats
            { hp: 115
            , atk: 45
            , def: 20
            , spa: 45
            , spd: 25
            , spe: 20
            }
        , type1: Just Normal
        , type2: Just Fairy
        }
    , Species
        { name: "Wigglytuff"
        , baseStats: BaseStats
            { hp: 140
            , atk: 70
            , def: 45
            , spa: 85
            , spd: 50
            , spe: 45
            }
        , type1: Just Normal
        , type2: Just Fairy
        }
    , Species
        { name: "Tauros"
        , baseStats: BaseStats
            { hp: 75
            , atk: 100
            , def: 95
            , spa: 40
            , spd: 70
            , spe: 110
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Miltank"
        , baseStats: BaseStats
            { hp: 95
            , atk: 80
            , def: 105
            , spa: 40
            , spd: 70
            , spe: 100
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Surskit"
        , baseStats: BaseStats
            { hp: 40
            , atk: 30
            , def: 32
            , spa: 50
            , spd: 52
            , spe: 65
            }
        , type1: Just Bug
        , type2: Just Water
        }
    , Species
        { name: "Masquerain"
        , baseStats: BaseStats
            { hp: 70
            , atk: 60
            , def: 62
            , spa: 100
            , spd: 82
            , spe: 80
            }
        , type1: Just Bug
        , type2: Just Flying
        }
    , Species
        { name: "Dewpider"
        , baseStats: BaseStats
            { hp: 38
            , atk: 40
            , def: 52
            , spa: 40
            , spd: 72
            , spe: 27
            }
        , type1: Just Bug
        , type2: Just Water
        }
    , Species
        { name: "Araquanid"
        , baseStats: BaseStats
            { hp: 68
            , atk: 70
            , def: 92
            , spa: 50
            , spd: 132
            , spe: 42
            }
        , type1: Just Bug
        , type2: Just Water
        }
    , Species
        { name: "Fomantis"
        , baseStats: BaseStats
            { hp: 40
            , atk: 55
            , def: 35
            , spa: 50
            , spd: 35
            , spe: 35
            }
        , type1: Just Grass
        , type2: Nothing
        }
    , Species
        { name: "Lurantis"
        , baseStats: BaseStats
            { hp: 70
            , atk: 105
            , def: 90
            , spa: 80
            , spd: 90
            , spe: 45
            }
        , type1: Just Grass
        , type2: Nothing
        }
    , Species
        { name: "Morelull"
        , baseStats: BaseStats
            { hp: 40
            , atk: 35
            , def: 55
            , spa: 65
            , spd: 75
            , spe: 15
            }
        , type1: Just Grass
        , type2: Just Fairy
        }
    , Species
        { name: "Shiinotic"
        , baseStats: BaseStats
            { hp: 60
            , atk: 45
            , def: 80
            , spa: 90
            , spd: 100
            , spe: 30
            }
        , type1: Just Grass
        , type2: Just Fairy
        }
    , Species
        { name: "Paras"
        , baseStats: BaseStats
            { hp: 35
            , atk: 70
            , def: 55
            , spa: 45
            , spd: 55
            , spe: 25
            }
        , type1: Just Bug
        , type2: Just Grass
        }
    , Species
        { name: "Parasect"
        , baseStats: BaseStats
            { hp: 60
            , atk: 95
            , def: 80
            , spa: 60
            , spd: 80
            , spe: 30
            }
        , type1: Just Bug
        , type2: Just Grass
        }
    , Species
        { name: "Poliwag"
        , baseStats: BaseStats
            { hp: 40
            , atk: 50
            , def: 40
            , spa: 40
            , spd: 40
            , spe: 90
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Poliwhirl"
        , baseStats: BaseStats
            { hp: 65
            , atk: 65
            , def: 65
            , spa: 50
            , spd: 50
            , spe: 90
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Poliwrath"
        , baseStats: BaseStats
            { hp: 90
            , atk: 95
            , def: 95
            , spa: 70
            , spd: 90
            , spe: 70
            }
        , type1: Just Water
        , type2: Just Fighting
        }
    , Species
        { name: "Politoed"
        , baseStats: BaseStats
            { hp: 90
            , atk: 75
            , def: 75
            , spa: 90
            , spd: 100
            , spe: 70
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Goldeen"
        , baseStats: BaseStats
            { hp: 45
            , atk: 67
            , def: 60
            , spa: 35
            , spd: 50
            , spe: 63
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Seaking"
        , baseStats: BaseStats
            { hp: 80
            , atk: 92
            , def: 65
            , spa: 65
            , spd: 80
            , spe: 68
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Feebas"
        , baseStats: BaseStats
            { hp: 20
            , atk: 15
            , def: 20
            , spa: 10
            , spd: 55
            , spe: 80
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Milotic"
        , baseStats: BaseStats
            { hp: 95
            , atk: 60
            , def: 79
            , spa: 100
            , spd: 125
            , spe: 81
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Alomomola"
        , baseStats: BaseStats
            { hp: 165
            , atk: 75
            , def: 80
            , spa: 40
            , spd: 45
            , spe: 65
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Fletchling"
        , baseStats: BaseStats
            { hp: 45
            , atk: 50
            , def: 43
            , spa: 40
            , spd: 38
            , spe: 62
            }
        , type1: Just Normal
        , type2: Just Flying
        }
    , Species
        { name: "Fletchinder"
        , baseStats: BaseStats
            { hp: 62
            , atk: 73
            , def: 55
            , spa: 56
            , spd: 52
            , spe: 84
            }
        , type1: Just Fire
        , type2: Just Flying
        }
    , Species
        { name: "Talonflame"
        , baseStats: BaseStats
            { hp: 78
            , atk: 81
            , def: 71
            , spa: 74
            , spd: 69
            , spe: 126
            }
        , type1: Just Fire
        , type2: Just Flying
        }
    , Species
        { name: "Salandit"
        , baseStats: BaseStats
            { hp: 48
            , atk: 44
            , def: 40
            , spa: 71
            , spd: 40
            , spe: 77
            }
        , type1: Just Poison
        , type2: Just Fire
        }
    , Species
        { name: "Salazzle"
        , baseStats: BaseStats
            { hp: 68
            , atk: 64
            , def: 60
            , spa: 111
            , spd: 60
            , spe: 117
            }
        , type1: Just Poison
        , type2: Just Fire
        }
    , Species
        { name: "Cubone"
        , baseStats: BaseStats
            { hp: 50
            , atk: 50
            , def: 95
            , spa: 40
            , spd: 50
            , spe: 35
            }
        , type1: Just Ground
        , type2: Nothing
        }
    , Species
        { name: "Marowak-Alola"
        , baseStats: BaseStats
            { hp: 60
            , atk: 80
            , def: 110
            , spa: 50
            , spd: 80
            , spe: 45
            }
        , type1: Just Fire
        , type2: Just Ghost
        }
    , Species
        { name: "Kangaskhan"
        , baseStats: BaseStats
            { hp: 105
            , atk: 95
            , def: 80
            , spa: 40
            , spd: 80
            , spe: 90
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Magby"
        , baseStats: BaseStats
            { hp: 45
            , atk: 75
            , def: 37
            , spa: 70
            , spd: 55
            , spe: 83
            }
        , type1: Just Fire
        , type2: Nothing
        }
    , Species
        { name: "Magmar"
        , baseStats: BaseStats
            { hp: 65
            , atk: 95
            , def: 57
            , spa: 100
            , spd: 85
            , spe: 93
            }
        , type1: Just Fire
        , type2: Nothing
        }
    , Species
        { name: "Magmortar"
        , baseStats: BaseStats
            { hp: 75
            , atk: 95
            , def: 67
            , spa: 125
            , spd: 95
            , spe: 83
            }
        , type1: Just Fire
        , type2: Nothing
        }
    , Species
        { name: "Stufful"
        , baseStats: BaseStats
            { hp: 70
            , atk: 75
            , def: 50
            , spa: 45
            , spd: 50
            , spe: 50
            }
        , type1: Just Normal
        , type2: Just Fighting
        }
    , Species
        { name: "Bewear"
        , baseStats: BaseStats
            { hp: 120
            , atk: 125
            , def: 80
            , spa: 55
            , spd: 60
            , spe: 60
            }
        , type1: Just Normal
        , type2: Just Fighting
        }
    , Species
        { name: "Bounsweet"
        , baseStats: BaseStats
            { hp: 42
            , atk: 30
            , def: 38
            , spa: 30
            , spd: 38
            , spe: 32
            }
        , type1: Just Grass
        , type2: Nothing
        }
    , Species
        { name: "Steenee"
        , baseStats: BaseStats
            { hp: 52
            , atk: 40
            , def: 48
            , spa: 40
            , spd: 48
            , spe: 62
            }
        , type1: Just Grass
        , type2: Nothing
        }
    , Species
        { name: "Tsareena"
        , baseStats: BaseStats
            { hp: 72
            , atk: 120
            , def: 98
            , spa: 50
            , spd: 98
            , spe: 72
            }
        , type1: Just Grass
        , type2: Nothing
        }
    , Species
        { name: "Comfey"
        , baseStats: BaseStats
            { hp: 51
            , atk: 52
            , def: 90
            , spa: 82
            , spd: 110
            , spe: 100
            }
        , type1: Just Fairy
        , type2: Nothing
        }
    , Species
        { name: "Pinsir"
        , baseStats: BaseStats
            { hp: 65
            , atk: 125
            , def: 100
            , spa: 55
            , spd: 70
            , spe: 85
            }
        , type1: Just Bug
        , type2: Nothing
        }
    , Species
        { name: "Oranguru"
        , baseStats: BaseStats
            { hp: 90
            , atk: 60
            , def: 80
            , spa: 90
            , spd: 110
            , spe: 60
            }
        , type1: Just Normal
        , type2: Just Psychic
        }
    , Species
        { name: "Passimian"
        , baseStats: BaseStats
            { hp: 100
            , atk: 120
            , def: 90
            , spa: 40
            , spd: 60
            , spe: 80
            }
        , type1: Just Fighting
        , type2: Nothing
        }
    , Species
        { name: "Goomy"
        , baseStats: BaseStats
            { hp: 45
            , atk: 50
            , def: 35
            , spa: 55
            , spd: 75
            , spe: 40
            }
        , type1: Just Dragon
        , type2: Nothing
        }
    , Species
        { name: "Sliggoo"
        , baseStats: BaseStats
            { hp: 68
            , atk: 75
            , def: 53
            , spa: 83
            , spd: 113
            , spe: 60
            }
        , type1: Just Dragon
        , type2: Nothing
        }
    , Species
        { name: "Goodra"
        , baseStats: BaseStats
            { hp: 90
            , atk: 100
            , def: 70
            , spa: 110
            , spd: 150
            , spe: 80
            }
        , type1: Just Dragon
        , type2: Nothing
        }
    , Species
        { name: "Castform"
        , baseStats: BaseStats
            { hp: 70
            , atk: 70
            , def: 70
            , spa: 70
            , spd: 70
            , spe: 70
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Wimpod"
        , baseStats: BaseStats
            { hp: 25
            , atk: 35
            , def: 40
            , spa: 20
            , spd: 30
            , spe: 80
            }
        , type1: Just Bug
        , type2: Just Water
        }
    , Species
        { name: "Golisopod"
        , baseStats: BaseStats
            { hp: 75
            , atk: 125
            , def: 140
            , spa: 60
            , spd: 90
            , spe: 40
            }
        , type1: Just Bug
        , type2: Just Water
        }
    , Species
        { name: "Staryu"
        , baseStats: BaseStats
            { hp: 30
            , atk: 45
            , def: 55
            , spa: 70
            , spd: 55
            , spe: 85
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Starmie"
        , baseStats: BaseStats
            { hp: 60
            , atk: 75
            , def: 85
            , spa: 100
            , spd: 85
            , spe: 115
            }
        , type1: Just Water
        , type2: Just Psychic
        }
    , Species
        { name: "Sandyghast"
        , baseStats: BaseStats
            { hp: 55
            , atk: 55
            , def: 80
            , spa: 70
            , spd: 45
            , spe: 15
            }
        , type1: Just Ghost
        , type2: Just Ground
        }
    , Species
        { name: "Palossand"
        , baseStats: BaseStats
            { hp: 85
            , atk: 75
            , def: 110
            , spa: 100
            , spd: 75
            , spe: 35
            }
        , type1: Just Ghost
        , type2: Just Ground
        }
    , Species
        { name: "Cranidos"
        , baseStats: BaseStats
            { hp: 67
            , atk: 125
            , def: 40
            , spa: 30
            , spd: 30
            , spe: 58
            }
        , type1: Just Rock
        , type2: Nothing
        }
    , Species
        { name: "Rampardos"
        , baseStats: BaseStats
            { hp: 97
            , atk: 165
            , def: 60
            , spa: 65
            , spd: 50
            , spe: 58
            }
        , type1: Just Rock
        , type2: Nothing
        }
    , Species
        { name: "Shieldon"
        , baseStats: BaseStats
            { hp: 30
            , atk: 42
            , def: 118
            , spa: 42
            , spd: 88
            , spe: 30
            }
        , type1: Just Rock
        , type2: Just Steel
        }
    , Species
        { name: "Bastiodon"
        , baseStats: BaseStats
            { hp: 60
            , atk: 52
            , def: 168
            , spa: 47
            , spd: 138
            , spe: 30
            }
        , type1: Just Rock
        , type2: Just Steel
        }
    , Species
        { name: "Archen"
        , baseStats: BaseStats
            { hp: 55
            , atk: 112
            , def: 45
            , spa: 74
            , spd: 45
            , spe: 70
            }
        , type1: Just Rock
        , type2: Just Flying
        }
    , Species
        { name: "Archeops"
        , baseStats: BaseStats
            { hp: 75
            , atk: 140
            , def: 65
            , spa: 112
            , spd: 65
            , spe: 110
            }
        , type1: Just Rock
        , type2: Just Flying
        }
    , Species
        { name: "Tirtouga"
        , baseStats: BaseStats
            { hp: 54
            , atk: 78
            , def: 103
            , spa: 53
            , spd: 45
            , spe: 22
            }
        , type1: Just Water
        , type2: Just Rock
        }
    , Species
        { name: "Carracosta"
        , baseStats: BaseStats
            { hp: 74
            , atk: 108
            , def: 133
            , spa: 83
            , spd: 65
            , spe: 32
            }
        , type1: Just Water
        , type2: Just Rock
        }
    , Species
        { name: "Phantump"
        , baseStats: BaseStats
            { hp: 43
            , atk: 70
            , def: 48
            , spa: 50
            , spd: 60
            , spe: 38
            }
        , type1: Just Ghost
        , type2: Just Grass
        }
    , Species
        { name: "Trevenant"
        , baseStats: BaseStats
            { hp: 85
            , atk: 110
            , def: 76
            , spa: 65
            , spd: 82
            , spe: 56
            }
        , type1: Just Ghost
        , type2: Just Grass
        }
    , Species
        { name: "Nosepass"
        , baseStats: BaseStats
            { hp: 30
            , atk: 45
            , def: 135
            , spa: 45
            , spd: 90
            , spe: 30
            }
        , type1: Just Rock
        , type2: Nothing
        }
    , Species
        { name: "Probopass"
        , baseStats: BaseStats
            { hp: 60
            , atk: 55
            , def: 145
            , spa: 75
            , spd: 150
            , spe: 40
            }
        , type1: Just Rock
        , type2: Just Steel
        }
    , Species
        { name: "Pyukumuku"
        , baseStats: BaseStats
            { hp: 55
            , atk: 60
            , def: 130
            , spa: 30
            , spd: 130
            , spe: 5
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Chinchou"
        , baseStats: BaseStats
            { hp: 75
            , atk: 38
            , def: 38
            , spa: 56
            , spd: 56
            , spe: 67
            }
        , type1: Just Water
        , type2: Just Electric
        }
    , Species
        { name: "Lanturn"
        , baseStats: BaseStats
            { hp: 125
            , atk: 58
            , def: 58
            , spa: 76
            , spd: 76
            , spe: 67
            }
        , type1: Just Water
        , type2: Just Electric
        }
    , Species
        { name: "Type: Null"
        , baseStats: BaseStats
            { hp: 95
            , atk: 95
            , def: 95
            , spa: 95
            , spd: 95
            , spe: 59
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Silvally"
        , baseStats: BaseStats
            { hp: 95
            , atk: 95
            , def: 95
            , spa: 95
            , spd: 95
            , spe: 95
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Trubbish"
        , baseStats: BaseStats
            { hp: 50
            , atk: 50
            , def: 62
            , spa: 40
            , spd: 62
            , spe: 65
            }
        , type1: Just Poison
        , type2: Nothing
        }
    , Species
        { name: "Garbodor"
        , baseStats: BaseStats
            { hp: 80
            , atk: 95
            , def: 82
            , spa: 60
            , spd: 82
            , spe: 75
            }
        , type1: Just Poison
        , type2: Nothing
        }
    , Species
        { name: "Skarmory"
        , baseStats: BaseStats
            { hp: 65
            , atk: 80
            , def: 140
            , spa: 40
            , spd: 70
            , spe: 70
            }
        , type1: Just Steel
        , type2: Just Flying
        }
    , Species
        { name: "Ditto"
        , baseStats: BaseStats
            { hp: 48
            , atk: 48
            , def: 48
            , spa: 48
            , spd: 48
            , spe: 48
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Cleffa"
        , baseStats: BaseStats
            { hp: 50
            , atk: 25
            , def: 28
            , spa: 45
            , spd: 55
            , spe: 15
            }
        , type1: Just Fairy
        , type2: Nothing
        }
    , Species
        { name: "Clefairy"
        , baseStats: BaseStats
            { hp: 70
            , atk: 45
            , def: 48
            , spa: 60
            , spd: 65
            , spe: 35
            }
        , type1: Just Fairy
        , type2: Nothing
        }
    , Species
        { name: "Clefable"
        , baseStats: BaseStats
            { hp: 95
            , atk: 70
            , def: 73
            , spa: 95
            , spd: 90
            , spe: 60
            }
        , type1: Just Fairy
        , type2: Nothing
        }
    , Species
        { name: "Minior"
        , baseStats: BaseStats
            { hp: 60
            , atk: 60
            , def: 100
            , spa: 60
            , spd: 100
            , spe: 60
            }
        , type1: Just Rock
        , type2: Just Flying
        }
    , Species
        { name: "Beldum"
        , baseStats: BaseStats
            { hp: 40
            , atk: 55
            , def: 80
            , spa: 35
            , spd: 60
            , spe: 30
            }
        , type1: Just Steel
        , type2: Just Psychic
        }
    , Species
        { name: "Metang"
        , baseStats: BaseStats
            { hp: 60
            , atk: 75
            , def: 100
            , spa: 55
            , spd: 80
            , spe: 50
            }
        , type1: Just Steel
        , type2: Just Psychic
        }
    , Species
        { name: "Metagross"
        , baseStats: BaseStats
            { hp: 80
            , atk: 135
            , def: 130
            , spa: 95
            , spd: 90
            , spe: 70
            }
        , type1: Just Steel
        , type2: Just Psychic
        }
    , Species
        { name: "Porygon"
        , baseStats: BaseStats
            { hp: 65
            , atk: 60
            , def: 70
            , spa: 85
            , spd: 75
            , spe: 40
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Porygon2"
        , baseStats: BaseStats
            { hp: 85
            , atk: 80
            , def: 90
            , spa: 105
            , spd: 95
            , spe: 60
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Porygon-Z"
        , baseStats: BaseStats
            { hp: 85
            , atk: 80
            , def: 70
            , spa: 135
            , spd: 75
            , spe: 90
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Pancham"
        , baseStats: BaseStats
            { hp: 67
            , atk: 82
            , def: 62
            , spa: 46
            , spd: 48
            , spe: 43
            }
        , type1: Just Fighting
        , type2: Nothing
        }
    , Species
        { name: "Pangoro"
        , baseStats: BaseStats
            { hp: 95
            , atk: 124
            , def: 78
            , spa: 69
            , spd: 71
            , spe: 58
            }
        , type1: Just Fighting
        , type2: Just Dark
        }
    , Species
        { name: "Komala"
        , baseStats: BaseStats
            { hp: 65
            , atk: 115
            , def: 65
            , spa: 75
            , spd: 95
            , spe: 65
            }
        , type1: Just Normal
        , type2: Nothing
        }
    , Species
        { name: "Torkoal"
        , baseStats: BaseStats
            { hp: 70
            , atk: 85
            , def: 140
            , spa: 85
            , spd: 70
            , spe: 20
            }
        , type1: Just Fire
        , type2: Nothing
        }
    , Species
        { name: "Turtonator"
        , baseStats: BaseStats
            { hp: 60
            , atk: 78
            , def: 135
            , spa: 91
            , spd: 85
            , spe: 36
            }
        , type1: Just Fire
        , type2: Just Dragon
        }
    , Species
        { name: "Togedemaru"
        , baseStats: BaseStats
            { hp: 65
            , atk: 98
            , def: 63
            , spa: 40
            , spd: 73
            , spe: 96
            }
        , type1: Just Electric
        , type2: Just Steel
        }
    , Species
        { name: "Elekid"
        , baseStats: BaseStats
            { hp: 45
            , atk: 63
            , def: 37
            , spa: 65
            , spd: 55
            , spe: 95
            }
        , type1: Just Electric
        , type2: Nothing
        }
    , Species
        { name: "Electabuzz"
        , baseStats: BaseStats
            { hp: 65
            , atk: 83
            , def: 57
            , spa: 95
            , spd: 85
            , spe: 105
            }
        , type1: Just Electric
        , type2: Nothing
        }
    , Species
        { name: "Electivire"
        , baseStats: BaseStats
            { hp: 75
            , atk: 123
            , def: 67
            , spa: 95
            , spd: 85
            , spe: 95
            }
        , type1: Just Electric
        , type2: Nothing
        }
    , Species
        { name: "Geodude-Alola"
        , baseStats: BaseStats
            { hp: 40
            , atk: 80
            , def: 100
            , spa: 30
            , spd: 30
            , spe: 20
            }
        , type1: Just Rock
        , type2: Just Electric
        }
    , Species
        { name: "Graveler-Alola"
        , baseStats: BaseStats
            { hp: 55
            , atk: 95
            , def: 115
            , spa: 45
            , spd: 45
            , spe: 35
            }
        , type1: Just Rock
        , type2: Just Electric
        }
    , Species
        { name: "Golem-Alola"
        , baseStats: BaseStats
            { hp: 80
            , atk: 120
            , def: 130
            , spa: 55
            , spd: 65
            , spe: 45
            }
        , type1: Just Rock
        , type2: Just Electric
        }
    , Species
        { name: "Sandile"
        , baseStats: BaseStats
            { hp: 50
            , atk: 72
            , def: 35
            , spa: 35
            , spd: 35
            , spe: 65
            }
        , type1: Just Ground
        , type2: Just Dark
        }
    , Species
        { name: "Krokorok"
        , baseStats: BaseStats
            { hp: 60
            , atk: 82
            , def: 45
            , spa: 45
            , spd: 45
            , spe: 74
            }
        , type1: Just Ground
        , type2: Just Dark
        }
    , Species
        { name: "Krookodile"
        , baseStats: BaseStats
            { hp: 95
            , atk: 117
            , def: 80
            , spa: 65
            , spd: 70
            , spe: 92
            }
        , type1: Just Ground
        , type2: Just Dark
        }
    , Species
        { name: "Trapinch"
        , baseStats: BaseStats
            { hp: 45
            , atk: 100
            , def: 45
            , spa: 45
            , spd: 45
            , spe: 10
            }
        , type1: Just Ground
        , type2: Nothing
        }
    , Species
        { name: "Vibrava"
        , baseStats: BaseStats
            { hp: 50
            , atk: 70
            , def: 50
            , spa: 50
            , spd: 50
            , spe: 70
            }
        , type1: Just Ground
        , type2: Just Dragon
        }
    , Species
        { name: "Flygon"
        , baseStats: BaseStats
            { hp: 80
            , atk: 100
            , def: 80
            , spa: 80
            , spd: 80
            , spe: 100
            }
        , type1: Just Ground
        , type2: Just Dragon
        }
    , Species
        { name: "Gible"
        , baseStats: BaseStats
            { hp: 58
            , atk: 70
            , def: 45
            , spa: 40
            , spd: 45
            , spe: 42
            }
        , type1: Just Dragon
        , type2: Just Ground
        }
    , Species
        { name: "Gabite"
        , baseStats: BaseStats
            { hp: 68
            , atk: 90
            , def: 65
            , spa: 50
            , spd: 55
            , spe: 82
            }
        , type1: Just Dragon
        , type2: Just Ground
        }
    , Species
        { name: "Garchomp"
        , baseStats: BaseStats
            { hp: 108
            , atk: 130
            , def: 95
            , spa: 80
            , spd: 85
            , spe: 102
            }
        , type1: Just Dragon
        , type2: Just Ground
        }
    , Species
        { name: "Klefki"
        , baseStats: BaseStats
            { hp: 57
            , atk: 80
            , def: 91
            , spa: 80
            , spd: 87
            , spe: 75
            }
        , type1: Just Steel
        , type2: Just Fairy
        }
    , Species
        { name: "Mimikyu"
        , baseStats: BaseStats
            { hp: 55
            , atk: 90
            , def: 80
            , spa: 50
            , spd: 105
            , spe: 96
            }
        , type1: Just Ghost
        , type2: Just Fairy
        }
    , Species
        { name: "Bruxish"
        , baseStats: BaseStats
            { hp: 68
            , atk: 105
            , def: 70
            , spa: 70
            , spd: 70
            , spe: 92
            }
        , type1: Just Water
        , type2: Just Psychic
        }
    , Species
        { name: "Drampa"
        , baseStats: BaseStats
            { hp: 78
            , atk: 60
            , def: 85
            , spa: 135
            , spd: 91
            , spe: 36
            }
        , type1: Just Normal
        , type2: Just Dragon
        }
    , Species
        { name: "Absol"
        , baseStats: BaseStats
            { hp: 65
            , atk: 130
            , def: 60
            , spa: 75
            , spd: 60
            , spe: 75
            }
        , type1: Just Dark
        , type2: Nothing
        }
    , Species
        { name: "Snorunt"
        , baseStats: BaseStats
            { hp: 50
            , atk: 50
            , def: 50
            , spa: 50
            , spd: 50
            , spe: 50
            }
        , type1: Just Ice
        , type2: Nothing
        }
    , Species
        { name: "Glalie"
        , baseStats: BaseStats
            { hp: 80
            , atk: 80
            , def: 80
            , spa: 80
            , spd: 80
            , spe: 80
            }
        , type1: Just Ice
        , type2: Nothing
        }
    , Species
        { name: "Froslass"
        , baseStats: BaseStats
            { hp: 70
            , atk: 80
            , def: 70
            , spa: 80
            , spd: 70
            , spe: 110
            }
        , type1: Just Ice
        , type2: Just Ghost
        }
    , Species
        { name: "Sneasel"
        , baseStats: BaseStats
            { hp: 55
            , atk: 95
            , def: 55
            , spa: 35
            , spd: 75
            , spe: 115
            }
        , type1: Just Dark
        , type2: Just Ice
        }
    , Species
        { name: "Weavile"
        , baseStats: BaseStats
            { hp: 70
            , atk: 120
            , def: 65
            , spa: 45
            , spd: 85
            , spe: 125
            }
        , type1: Just Dark
        , type2: Just Ice
        }
    , Species
        { name: "Sandshrew-Alola"
        , baseStats: BaseStats
            { hp: 50
            , atk: 75
            , def: 90
            , spa: 10
            , spd: 35
            , spe: 40
            }
        , type1: Just Ice
        , type2: Just Steel
        }
    , Species
        { name: "Sandslash-Alola"
        , baseStats: BaseStats
            { hp: 75
            , atk: 100
            , def: 120
            , spa: 25
            , spd: 65
            , spe: 65
            }
        , type1: Just Ice
        , type2: Just Steel
        }
    , Species
        { name: "Vulpix-Alola"
        , baseStats: BaseStats
            { hp: 38
            , atk: 41
            , def: 40
            , spa: 50
            , spd: 65
            , spe: 65
            }
        , type1: Just Ice
        , type2: Nothing
        }
    , Species
        { name: "Ninetales-Alola"
        , baseStats: BaseStats
            { hp: 73
            , atk: 67
            , def: 75
            , spa: 81
            , spd: 100
            , spe: 109
            }
        , type1: Just Ice
        , type2: Just Fairy
        }
    , Species
        { name: "Vanillite"
        , baseStats: BaseStats
            { hp: 36
            , atk: 50
            , def: 50
            , spa: 65
            , spd: 60
            , spe: 44
            }
        , type1: Just Ice
        , type2: Nothing
        }
    , Species
        { name: "Vanillish"
        , baseStats: BaseStats
            { hp: 51
            , atk: 65
            , def: 65
            , spa: 80
            , spd: 75
            , spe: 59
            }
        , type1: Just Ice
        , type2: Nothing
        }
    , Species
        { name: "Vanilluxe"
        , baseStats: BaseStats
            { hp: 71
            , atk: 95
            , def: 85
            , spa: 110
            , spd: 95
            , spe: 79
            }
        , type1: Just Ice
        , type2: Nothing
        }
    , Species
        { name: "Snubbull"
        , baseStats: BaseStats
            { hp: 60
            , atk: 80
            , def: 50
            , spa: 40
            , spd: 40
            , spe: 30
            }
        , type1: Just Fairy
        , type2: Nothing
        }
    , Species
        { name: "Granbull"
        , baseStats: BaseStats
            { hp: 90
            , atk: 120
            , def: 75
            , spa: 60
            , spd: 60
            , spe: 45
            }
        , type1: Just Fairy
        , type2: Nothing
        }
    , Species
        { name: "Shellos"
        , baseStats: BaseStats
            { hp: 76
            , atk: 48
            , def: 48
            , spa: 57
            , spd: 62
            , spe: 34
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Gastrodon"
        , baseStats: BaseStats
            { hp: 111
            , atk: 83
            , def: 68
            , spa: 92
            , spd: 82
            , spe: 39
            }
        , type1: Just Water
        , type2: Just Ground
        }
    , Species
        { name: "Relicanth"
        , baseStats: BaseStats
            { hp: 100
            , atk: 90
            , def: 130
            , spa: 45
            , spd: 65
            , spe: 55
            }
        , type1: Just Water
        , type2: Just Rock
        }
    , Species
        { name: "Dhelmise"
        , baseStats: BaseStats
            { hp: 70
            , atk: 131
            , def: 100
            , spa: 86
            , spd: 90
            , spe: 40
            }
        , type1: Just Ghost
        , type2: Just Grass
        }
    , Species
        { name: "Carvanha"
        , baseStats: BaseStats
            { hp: 45
            , atk: 90
            , def: 20
            , spa: 65
            , spd: 20
            , spe: 65
            }
        , type1: Just Water
        , type2: Just Dark
        }
    , Species
        { name: "Sharpedo"
        , baseStats: BaseStats
            { hp: 70
            , atk: 120
            , def: 40
            , spa: 95
            , spd: 40
            , spe: 95
            }
        , type1: Just Water
        , type2: Just Dark
        }
    , Species
        { name: "Wailmer"
        , baseStats: BaseStats
            { hp: 130
            , atk: 70
            , def: 35
            , spa: 70
            , spd: 35
            , spe: 60
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Wailord"
        , baseStats: BaseStats
            { hp: 170
            , atk: 90
            , def: 45
            , spa: 90
            , spd: 45
            , spe: 60
            }
        , type1: Just Water
        , type2: Nothing
        }
    , Species
        { name: "Lapras"
        , baseStats: BaseStats
            { hp: 130
            , atk: 85
            , def: 80
            , spa: 85
            , spd: 95
            , spe: 60
            }
        , type1: Just Water
        , type2: Just Ice
        }
    , Species
        { name: "Exeggcute"
        , baseStats: BaseStats
            { hp: 60
            , atk: 40
            , def: 80
            , spa: 60
            , spd: 45
            , spe: 40
            }
        , type1: Just Grass
        , type2: Just Psychic
        }
    , Species
        { name: "Exeggutor-Alola"
        , baseStats: BaseStats
            { hp: 95
            , atk: 105
            , def: 85
            , spa: 125
            , spd: 75
            , spe: 45
            }
        , type1: Just Grass
        , type2: Just Dragon
        }
    , Species
        { name: "Jangmo-o"
        , baseStats: BaseStats
            { hp: 45
            , atk: 55
            , def: 65
            , spa: 45
            , spd: 45
            , spe: 45
            }
        , type1: Just Dragon
        , type2: Nothing
        }
    , Species
        { name: "Hakamo-o"
        , baseStats: BaseStats
            { hp: 55
            , atk: 75
            , def: 90
            , spa: 65
            , spd: 70
            , spe: 65
            }
        , type1: Just Dragon
        , type2: Just Fighting
        }
    , Species
        { name: "Kommo-o"
        , baseStats: BaseStats
            { hp: 75
            , atk: 110
            , def: 125
            , spa: 100
            , spd: 105
            , spe: 85
            }
        , type1: Just Dragon
        , type2: Just Fighting
        }
    , Species
        { name: "Emolga"
        , baseStats: BaseStats
            { hp: 55
            , atk: 75
            , def: 60
            , spa: 75
            , spd: 60
            , spe: 103
            }
        , type1: Just Electric
        , type2: Just Flying
        }
    , Species
        { name: "Scyther"
        , baseStats: BaseStats
            { hp: 70
            , atk: 110
            , def: 80
            , spa: 55
            , spd: 80
            , spe: 105
            }
        , type1: Just Bug
        , type2: Just Flying
        }
    , Species
        { name: "Scizor"
        , baseStats: BaseStats
            { hp: 70
            , atk: 130
            , def: 100
            , spa: 55
            , spd: 80
            , spe: 65
            }
        , type1: Just Bug
        , type2: Just Steel
        }
    , Species
        { name: "Murkrow"
        , baseStats: BaseStats
            { hp: 60
            , atk: 85
            , def: 42
            , spa: 85
            , spd: 42
            , spe: 91
            }
        , type1: Just Dark
        , type2: Just Flying
        }
    , Species
        { name: "Honchkrow"
        , baseStats: BaseStats
            { hp: 100
            , atk: 125
            , def: 52
            , spa: 105
            , spd: 52
            , spe: 71
            }
        , type1: Just Dark
        , type2: Just Flying
        }
    , Species
        { name: "Riolu"
        , baseStats: BaseStats
            { hp: 40
            , atk: 70
            , def: 40
            , spa: 35
            , spd: 40
            , spe: 60
            }
        , type1: Just Fighting
        , type2: Nothing
        }
    , Species
        { name: "Lucario"
        , baseStats: BaseStats
            { hp: 70
            , atk: 110
            , def: 70
            , spa: 115
            , spd: 70
            , spe: 90
            }
        , type1: Just Fighting
        , type2: Just Steel
        }
    , Species
        { name: "Dratini"
        , baseStats: BaseStats
            { hp: 41
            , atk: 64
            , def: 45
            , spa: 50
            , spd: 50
            , spe: 50
            }
        , type1: Just Dragon
        , type2: Nothing
        }
    , Species
        { name: "Dragonair"
        , baseStats: BaseStats
            { hp: 61
            , atk: 84
            , def: 65
            , spa: 70
            , spd: 70
            , spe: 70
            }
        , type1: Just Dragon
        , type2: Nothing
        }
    , Species
        { name: "Dragonite"
        , baseStats: BaseStats
            { hp: 91
            , atk: 134
            , def: 95
            , spa: 100
            , spd: 100
            , spe: 80
            }
        , type1: Just Dragon
        , type2: Just Flying
        }
    , Species
        { name: "Aerodactyl"
        , baseStats: BaseStats
            { hp: 80
            , atk: 105
            , def: 65
            , spa: 60
            , spd: 75
            , spe: 130
            }
        , type1: Just Rock
        , type2: Just Flying
        }
    , Species
        { name: "Tapu Koko"
        , baseStats: BaseStats
            { hp: 70
            , atk: 115
            , def: 85
            , spa: 95
            , spd: 75
            , spe: 130
            }
        , type1: Just Electric
        , type2: Just Fairy
        }
    , Species
        { name: "Tapu Lele"
        , baseStats: BaseStats
            { hp: 70
            , atk: 85
            , def: 75
            , spa: 130
            , spd: 115
            , spe: 95
            }
        , type1: Just Psychic
        , type2: Just Fairy
        }
    , Species
        { name: "Tapu Bulu"
        , baseStats: BaseStats
            { hp: 70
            , atk: 130
            , def: 115
            , spa: 85
            , spd: 95
            , spe: 75
            }
        , type1: Just Grass
        , type2: Just Fairy
        }
    , Species
        { name: "Tapu Fini"
        , baseStats: BaseStats
            { hp: 70
            , atk: 75
            , def: 115
            , spa: 95
            , spd: 130
            , spe: 85
            }
        , type1: Just Water
        , type2: Just Fairy
        }
    , Species
        { name: "Nihilego"
        , baseStats: BaseStats
            { hp: 109
            , atk: 53
            , def: 47
            , spa: 127
            , spd: 131
            , spe: 103
            }
        , type1: Just Rock
        , type2: Just Poison
        }
    , Species
        { name: "Buzzwole"
        , baseStats: BaseStats
            { hp: 107
            , atk: 139
            , def: 139
            , spa: 53
            , spd: 53
            , spe: 79
            }
        , type1: Just Bug
        , type2: Just Fighting
        }
    , Species
        { name: "Pheromosa"
        , baseStats: BaseStats
            { hp: 71
            , atk: 137
            , def: 37
            , spa: 137
            , spd: 37
            , spe: 151
            }
        , type1: Just Bug
        , type2: Just Fighting
        }
    , Species
        { name: "Xurkitree"
        , baseStats: BaseStats
            { hp: 83
            , atk: 89
            , def: 71
            , spa: 173
            , spd: 71
            , spe: 83
            }
        , type1: Just Electric
        , type2: Nothing
        }
    , Species
        { name: "Celesteela"
        , baseStats: BaseStats
            { hp: 97
            , atk: 101
            , def: 103
            , spa: 107
            , spd: 101
            , spe: 61
            }
        , type1: Just Steel
        , type2: Just Flying
        }
    , Species
        { name: "Kartana"
        , baseStats: BaseStats
            { hp: 59
            , atk: 181
            , def: 131
            , spa: 59
            , spd: 31
            , spe: 109
            }
        , type1: Just Grass
        , type2: Just Steel
        }
    , Species
        { name: "Guzzlord"
        , baseStats: BaseStats
            { hp: 223
            , atk: 101
            , def: 53
            , spa: 97
            , spd: 53
            , spe: 43
            }
        , type1: Just Dark
        , type2: Just Dragon
        }
    ]

speciesByName :: StrMap Species
speciesByName = StrMap.fromFoldable (map (\(Species s) -> Tuple (toLower s.name) (Species s)) allSpecies)

speciesNames :: Array String
speciesNames = map (\(Species s) -> s.name) allSpecies
