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
    , type_ :: Type
    , class_ :: MoveClass
    , effect :: MoveEffect
    }
