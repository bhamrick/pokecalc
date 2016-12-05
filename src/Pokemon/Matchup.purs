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
    { minRoll: 0
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
            { range1: case attacker.move1 of
                Nothing -> noDamage
                Just m -> damageRange (Battler attacker) m (Battler defender)
            , range2: case attacker.move2 of
                Nothing -> noDamage
                Just m -> damageRange (Battler attacker) m (Battler defender)
            , range3: case attacker.move3 of
                Nothing -> noDamage
                Just m -> damageRange (Battler attacker) m (Battler defender)
            , range4: case attacker.move4 of
                Nothing -> noDamage
                Just m -> damageRange (Battler attacker) m (Battler defender)
            }
        , defensiveRanges:
            { range1: case defender.move1 of
                Nothing -> noDamage
                Just m -> damageRange (Battler defender) m (Battler attacker)
            , range2: case defender.move2 of
                Nothing -> noDamage
                Just m -> damageRange (Battler defender) m (Battler attacker)
            , range3: case defender.move3 of
                Nothing -> noDamage
                Just m -> damageRange (Battler defender) m (Battler attacker)
            , range4: case defender.move4 of
                Nothing -> noDamage
                Just m -> damageRange (Battler defender) m (Battler attacker)
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
