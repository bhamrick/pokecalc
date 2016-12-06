module Pokemon.Move where

import Prelude

import Data.StrMap (StrMap)
import Data.StrMap as StrMap
import Data.String
import Data.Tuple

import Pokemon.Type

data MoveClass
    = Physical
    | Special
    | Status

data MoveEffect
    = NoEffect

newtype Move = Move
    { name :: String
    , power :: Int
    , accuracy :: Int
    , spread :: Boolean
    , type_ :: Type
    , class_ :: MoveClass
    , effect :: MoveEffect
    }

noMove = Move
    { name: ""
    , power: 0
    , accuracy: 100
    , spread: false
    , type_: Normal
    , class_: Physical
    , effect: NoEffect
    }

allMoves :: Array Move
allMoves =
    [ noMove
    , Move
        { name: "Brave Bird"
        , power: 120
        , accuracy: 100
        , spread: false
        , type_: Flying
        , class_: Physical
        , effect: NoEffect
        }
    , Move
        { name: "Dazzling Gleam"
        , power: 80
        , accuracy: 100
        , spread: true
        , type_: Fairy
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Discharge"
        , power: 80
        , accuracy: 100
        , spread: true
        , type_: Electric
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Earthquake"
        , power: 100
        , accuracy: 100
        , spread: true
        , type_: Ground
        , class_: Physical
        , effect: NoEffect
        }
    , Move
        { name: "Energy Ball"
        , power: 90
        , accuracy: 100
        , spread: false
        , type_: Grass
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Flamethrower"
        , power: 90
        , accuracy: 100
        , spread: false
        , type_: Fire
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Focus Blast"
        , power: 120
        , accuracy: 70
        , spread: false
        , type_: Fighting
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Normal
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Bug"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Bug
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Dark"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Dark 
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Dragon"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Dragon 
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Electric"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Electric 
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Fighting"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Fighting 
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Fire"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Fire
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Flying"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Flying 
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Ghost"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Ghost
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Grass"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Grass
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Ground"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Ground
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Ice"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Ice
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Poison"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Poison
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Psychic"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Psychic
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Rock"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Rock
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Steel"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Steel
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Hidden Power Water"
        , power: 60
        , accuracy: 100
        , spread: false
        , type_: Water
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Ice Fang"
        , power: 65
        , accuracy: 100
        , spread: false
        , type_: Water
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Moonblast"
        , power: 95
        , accuracy: 100
        , spread: false
        , type_: Fairy
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Psychic"
        , power: 90
        , accuracy: 100
        , spread: false
        , type_: Special
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Rock Slide"
        , power: 75
        , accuracy: 90
        , spread: true
        , type_: Rock
        , class_: Physical
        , effect: NoEffect
        }
    , Move
        { name: "Stone Edge"
        , power: 100
        , accuracy: 80
        , spread: false
        , type_: Rock
        , class_: Physical
        , effect: NoEffect
        }
    , Move
        { name: "Thunder"
        , power: 110
        , accuracy: 70
        , spread: false
        , type_: Electric
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Thunderbolt"
        , power: 90
        , accuracy: 100
        , spread: false
        , type_: Electric
        , class_: Special
        , effect: NoEffect
        }
    , Move
        { name: "Waterfall"
        , power: 80
        , accuracy: 100
        , spread: false
        , type_: Water
        , class_: Physical
        , effect: NoEffect
        }
    , Move
        { name: "Wild Charge"
        , power: 90
        , accuracy: 100
        , spread: false
        , type_: Electric
        , class_: Physical
        , effect: NoEffect
        }
    ]

moveByName :: StrMap Move 
moveByName = StrMap.fromFoldable (map (\(Move m) -> Tuple (toLower m.name) (Move m)) allMoves)

moveNames :: Array String
moveNames = map (\(Move m) -> m.name) allMoves
