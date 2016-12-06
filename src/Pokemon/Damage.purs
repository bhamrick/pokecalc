module Pokemon.Damage where

import Prelude

import Data.Maybe
import Data.Int

import Pokemon.Battler
import Pokemon.Move
import Pokemon.Stats
import Pokemon.Species
import Pokemon.Type

-- This damage formula is merely an approximation at the moment.
-- Intermediate rounding will cause the numbers to be different
-- and it is difficult to find a definitive source on how the
-- gen 7 games round (it appears the latest sources are from gen 5).
damage :: Battler -> Move -> Battler -> Int -> Int
damage (Battler attacker) (Move move) (Battler defender) roll =
    floor $ ((((2.0 * (toNumber attacker.level) + 10.0) / 250.0) * (toNumber attackStat / toNumber defenseStat) * toNumber move.power) + 2.0) * modifier
    where
    attackerSpecies =
        case attacker.species of
            Species s -> s
    attackerStats =
        case battleStats
            attackerSpecies.baseStats
            attacker.level
            attacker.ivs
            attacker.evs
            attacker.nature
        of
            BattleStats s -> s
    defenderSpecies =
        case defender.species of
            Species s -> s
    defenderStats =
        case battleStats
            defenderSpecies.baseStats
            defender.level
            defender.ivs
            defender.evs
            defender.nature
        of
            BattleStats s -> s
    attackStat =
        case move.class_ of
            Physical -> attackerStats.atk
            Special -> attackerStats.spa
            Status -> 0
    defenseStat =
        case move.class_ of
            Physical -> defenderStats.def
            Special -> defenderStats.spd
            Status -> 1000
    hasStab =
        attackerSpecies.type1 == Just move.type_ || attackerSpecies.type2 == Just move.type_
    stabModifier = if hasStab then 1.5 else 1.0
    isCritical = false
    criticalModifier = if isCritical then 1.5 else 1.0
    type1Modifier =
        case defenderSpecies.type1 of
            Nothing -> 1.0
            Just t -> effectiveness (move.type_) t
    type2Modifier =
        case defenderSpecies.type2 of
            Nothing -> 1.0
            Just t -> effectiveness (move.type_) t
    spreadModifier =
        if move.spread then 0.75 else 1.0
    rollModifier = (85.0 + toNumber roll) / 100.0
    modifier = stabModifier * criticalModifier * type1Modifier * type2Modifier * spreadModifier * rollModifier

minDamage :: Battler -> Move -> Battler -> Int
minDamage attacker move defender = damage attacker move defender 0

maxDamage :: Battler -> Move -> Battler -> Int
maxDamage attacker move defender = damage attacker move defender 15

type DamageRange =
    { move :: Move
    , minRoll :: Int
    , maxRoll :: Int
    , minRollPct :: Number
    , maxRollPct :: Number
    }

damageRange :: Battler -> Move -> Battler -> DamageRange
damageRange (Battler attacker) m (Battler defender) =
    let
    realMove = 0 /= (case m of
        Move dat -> dat.power)
    minRoll = minDamage (Battler attacker) m (Battler defender)
    maxRoll = maxDamage (Battler attacker) m (Battler defender)
    defenderSpecies = case defender.species of
        Species s -> s
    defenderHp =
        case battleStats
            defenderSpecies.baseStats
            defender.level
            defender.ivs
            defender.evs
            defender.nature
        of
            BattleStats s -> s.hp
    in
    if realMove
    then
        { move: m
        , minRoll: minRoll
        , maxRoll: maxRoll
        , minRollPct: toNumber minRoll / toNumber defenderHp * 100.0
        , maxRollPct: toNumber maxRoll / toNumber defenderHp * 100.0
        }
    else
        { move: m
        , minRoll: 0
        , maxRoll: 0
        , minRollPct: 0.0
        , maxRollPct: 0.0
        }
