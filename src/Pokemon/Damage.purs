module Pokemon.Damage where

import Prelude

import Data.Maybe
import Data.Int

import Pokemon.Battler
import Pokemon.Move
import Pokemon.Stats
import Pokemon.Species
import Pokemon.Type

damage :: Battler -> Move -> Battler -> Int -> Int
damage (Battler attacker) (Move move) (Battler defender) roll =
    floor $ ((2.0 * (toNumber attacker.level) + 10.0) / 250.0 * (toNumber attackStat / toNumber defenseStat) * toNumber move.power + 2.0) * modifier
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
        case attacker.species of
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
    modifier = stabModifier * criticalModifier * type1Modifier * type2Modifier * spreadModifier

minDamage :: Battler -> Move -> Battler -> Int
minDamage attacker move defender = damage attacker move defender 0

maxDamage :: Battler -> Move -> Battler -> Int
maxDamage attacker move defender = damage attacker move defender 15

type DamageRange =
    { minRoll :: Int
    , maxRoll :: Int
    , minRollPct :: Number
    , maxRollPct :: Number
    }

damageRange :: Battler -> Move -> Battler -> DamageRange
damageRange (Battler attacker) m (Battler defender) =
    let
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
    { minRoll: minRoll
    , maxRoll: maxRoll
    , minRollPct: toNumber minRoll / toNumber defenderHp * 100.0
    , maxRollPct: toNumber maxRoll / toNumber defenderHp * 100.0
    }
