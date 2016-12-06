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
        { name: "Thunderbolt"
        , power: 90
        , accuracy: 100
        , spread: false
        , type_: Electric
        , class_: Special
        , effect: NoEffect
        }
    ]

moveByName :: StrMap Move 
moveByName = StrMap.fromFoldable (map (\(Move m) -> Tuple (toLower m.name) (Move m)) allMoves)

moveNames :: Array String
moveNames = map (\(Move m) -> m.name) allMoves
