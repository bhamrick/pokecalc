module Pokemon.Matchup where

import Data.Maybe
import Data.Ord

import Pokemon.Battler
import Pokemon.Species
import Pokemon.Move
import Pokemon.Stats
import Pokemon.Damage

type DamageRangeSet =
    { range1 :: DamageRange
    , range2 :: DamageRange
    , range3 :: DamageRange
    , range4 :: DamageRange
    }

noDamage :: DamageRange
noDamage =
    { move: noMove
    , minRoll: 0
    , maxRoll: 0
    , minRollPct: 0.0
    , maxRollPct: 0.0
    }

data SpeedMatchup
    = Faster
    | Slower
    | SpeedTie

newtype MatchupSummary = MatchupSummary
    { speedMatchup :: SpeedMatchup
    , offensiveRanges :: DamageRangeSet
    , defensiveRanges :: DamageRangeSet
    }

matchupSummary :: Battler -> Battler -> MatchupSummary
matchupSummary (Battler attacker) (Battler defender) =
    MatchupSummary
        { speedMatchup:
            case compare (attackerSpeed) (defenderSpeed) of
                LT -> Slower
                GT -> Faster
                EQ -> SpeedTie
        , offensiveRanges:
            { range1: damageRange (Battler attacker) attacker.move1 (Battler defender)
            , range2: damageRange (Battler attacker) attacker.move2 (Battler defender)
            , range3: damageRange (Battler attacker) attacker.move3 (Battler defender)
            , range4: damageRange (Battler attacker) attacker.move4 (Battler defender)
            }
        , defensiveRanges:
            { range1: damageRange (Battler defender) defender.move1 (Battler attacker)
            , range2: damageRange (Battler defender) defender.move2 (Battler attacker)
            , range3: damageRange (Battler defender) defender.move3 (Battler attacker)
            , range4: damageRange (Battler defender) defender.move4 (Battler attacker)
            }
        }
    where
    attackerSpecies =
        case attacker.species of
            Species s -> s
    attackerSpeed =
        case battleStats
            attackerSpecies.baseStats
            attacker.level
            attacker.ivs
            attacker.evs
            attacker.nature
        of
            BattleStats s -> s.spe
    defenderSpecies =
        case defender.species of
            Species s -> s
    defenderSpeed =
        case battleStats
            defenderSpecies.baseStats
            defender.level
            defender.ivs
            defender.evs
            defender.nature
        of
            BattleStats s -> s.spe
