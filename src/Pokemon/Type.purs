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

effectiveness :: Type -> Type -> Number
effectiveness attackType defenseType =
    case attackType of
        Normal -> case defenseType of
            Rock -> 0.5
            Ghost -> 0.0
            Steel -> 0.5
            _ -> 1.0
        Fighting-> case defenseType of
            Normal -> 2.0
            Flying -> 0.5
            Poison -> 0.5
            Rock -> 2.0
            Bug -> 0.5
            Ghost -> 0.0
            Steel -> 2.0
            Psychic -> 0.5
            Ice -> 2.0
            Dark -> 2.0
            Fairy -> 0.5
            _ -> 1.0
        Flying -> case defenseType of
            Fighting -> 2.0
            Rock -> 0.5
            Bug -> 2.0
            Steel -> 0.5
            Grass -> 2.0
            Electric -> 0.5
            _ -> 1.0
        Poison -> case defenseType of
            Poison -> 0.5
            Ground -> 0.5
            Rock -> 0.5
            Ghost -> 0.5
            Steel -> 0.0
            Grass -> 2.0
            Fairy -> 2.0
            _ -> 1.0
        Ground -> case defenseType of
            Flying -> 0.0
            Poison -> 2.0
            Rock -> 2.0
            Bug -> 0.5
            Steel -> 2.0
            Fire -> 2.0
            Grass -> 0.5
            Electric -> 2.0
            _ -> 1.0
        Rock -> case defenseType of
            Fighting -> 0.5
            Flying -> 2.0
            Ground -> 0.5
            Bug -> 2.0
            Steel -> 0.5
            Fire -> 2.0
            Ice -> 2.0
            _ -> 1.0
        Bug -> case defenseType of
            Fighting -> 0.5
            Flying -> 0.5
            Poison -> 0.5
            Ghost -> 0.5
            Steel -> 0.5
            Fire -> 0.5
            Grass -> 2.0
            Psychic -> 2.0
            Dark -> 2.0
            Fairy -> 0.5
            _ -> 1.0
        Ghost -> case defenseType of
            Normal -> 0.0
            Ghost -> 2.0
            Psychic -> 2.0
            Dark -> 0.5
            _ -> 1.0
        Steel -> case defenseType of
            Rock -> 2.0
            Steel -> 0.5
            Fire -> 0.5
            Water -> 0.5
            Electric -> 0.5
            Ice -> 2.0
            Fairy -> 2.0
            _ -> 1.0
        Fire -> case defenseType of
            Rock -> 0.5
            Bug -> 2.0
            Steel -> 2.0
            Fire -> 0.5
            Water -> 0.5
            Grass -> 2.0
            Ice -> 2.0
            Dragon -> 0.5
            _ -> 1.0
        Water -> case defenseType of
            Ground -> 2.0
            Rock -> 2.0
            Fire -> 2.0
            Water -> 0.5
            Grass -> 0.5
            Dragon -> 0.5
            _ -> 1.0
        Grass-> case defenseType of
            Flying -> 0.5
            Poison -> 0.5
            Ground -> 2.0
            Rock -> 2.0
            Steel -> 0.5
            Fire -> 0.5
            Water -> 2.0
            Grass -> 0.5
            Dragon -> 0.5
            _ -> 1.0
        Electric -> case defenseType of
            Flying -> 2.0
            Ground -> 0.0
            Water -> 2.0
            Grass -> 0.5
            Electric -> 0.5
            Dragon -> 0.5
            _ -> 1.0
        Psychic -> case defenseType of
            Fighting -> 2.0
            Poison -> 2.0
            Steel -> 0.5
            Psychic -> 0.5
            Dark -> 0.0
            _ -> 1.0
        Ice -> case defenseType of
            Flying -> 2.0
            Ground -> 2.0
            Steel -> 0.5
            Fire -> 0.5
            Water -> 0.5
            Grass -> 2.0
            Ice -> 0.5
            Dragon -> 2.0
            _ -> 1.0
        Dragon -> case defenseType of
            Steel -> 0.5
            Dragon -> 2.0
            Fairy -> 0.0
            _ -> 1.0
        Dark -> case defenseType of
            Fighting -> 0.5
            Ghost -> 2.0
            Psychic -> 2.0
            Dark -> 0.5
            Fairy -> 0.5
            _ -> 1.0
        Fairy -> case defenseType of
            Fighting -> 2.0
            Poison -> 0.5
            Steel -> 0.5
            Fire -> 0.5
            Dragon -> 2.0
            Dark -> 2.0
            _ -> 1.0
