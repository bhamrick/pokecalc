module Pokemon.Move where

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

allMoves :: Array Move
allMoves =
    [
    ]
