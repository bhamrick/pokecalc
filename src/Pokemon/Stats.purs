module Pokemon.Stats where

import Prelude
import Data.Int (floor, toNumber)

data Stat
    = HP
    | Atk
    | Def
    | SpA
    | SpD
    | Spe

newtype BaseStats = BaseStats
    { hp :: Int
    , atk :: Int
    , def :: Int
    , spa :: Int
    , spd :: Int
    , spe :: Int
    }

newtype BattleStats = BattleStats
    { hp :: Int
    , atk :: Int
    , def :: Int
    , spa :: Int
    , spd :: Int
    , spe :: Int
    }

newtype EVs = EVs
    { hp :: Int
    , atk :: Int
    , def :: Int
    , spa :: Int
    , spd :: Int
    , spe :: Int
    }

newtype IVs = IVs
    { hp :: Int
    , atk :: Int
    , def :: Int
    , spa :: Int
    , spd :: Int
    , spe :: Int
    }

newtype Stages = Stages
    { atk :: Int
    , def :: Int
    , spa :: Int
    , spd :: Int
    , spe :: Int
    }

data Nature
    = Adamant
    | Bashful
    | Bold
    | Brave
    | Calm
    | Careful
    | Docile
    | Gentle
    | Hardy
    | Hasty
    | Impish
    | Jolly
    | Lax
    | Lonely
    | Mild
    | Modest
    | Naive
    | Naughty
    | Quiet
    | Quirky
    | Rash
    | Relaxed
    | Sassy
    | Serious
    | Timid

battleStats :: BaseStats -> Int -> IVs -> EVs -> Nature -> Stages -> BattleStats
battleStats (BaseStats base) level (IVs ivs) (EVs evs) nature (Stages stages) =
    let
    -- pre-nature stats
    preHP = floor $ ((toNumber ivs.hp) + 2.0 * (toNumber base.hp) + ((toNumber evs.hp) / 4.0)) * toNumber level / 100.0 + 10.0 + toNumber level
    preAtk = ((toNumber ivs.atk) + 2.0 * (toNumber base.atk) + ((toNumber evs.atk) / 4.0)) * toNumber level / 100.0 + 5.0
    preDef = ((toNumber ivs.def) + 2.0 * (toNumber base.def) + ((toNumber evs.def) / 4.0)) * toNumber level / 100.0 + 5.0
    preSpa = ((toNumber ivs.spa) + 2.0 * (toNumber base.spa) + ((toNumber evs.spa) / 4.0)) * toNumber level / 100.0 + 5.0
    preSpd = ((toNumber ivs.spd) + 2.0 * (toNumber base.spd) + ((toNumber evs.spd) / 4.0)) * toNumber level / 100.0 + 5.0
    preSpe = ((toNumber ivs.spe) + 2.0 * (toNumber base.spe) + ((toNumber evs.spe) / 4.0)) * toNumber level / 100.0 + 5.0
    in
    case nature of
        Lonely -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk * 1.1
            , def: floor $ preDef * 0.9
            , spa: floor $ preSpa
            , spd: floor $ preSpd
            , spe: floor $ preSpe
            }
        Adamant -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk * 1.1
            , def: floor $ preDef
            , spa: floor $ preSpa * 0.9
            , spd: floor $ preSpd
            , spe: floor $ preSpe
            }
        Naughty -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk * 1.1
            , def: floor $ preDef
            , spa: floor $ preSpa
            , spd: floor $ preSpd * 0.9
            , spe: floor $ preSpe
            }
        Brave -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk * 1.1
            , def: floor $ preDef
            , spa: floor $ preSpa
            , spd: floor $ preSpd
            , spe: floor $ preSpe * 0.9
            }
        Bold -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk * 0.9
            , def: floor $ preDef * 1.1
            , spa: floor $ preSpa
            , spd: floor $ preSpd
            , spe: floor $ preSpe
            }
        Impish -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef * 1.1
            , spa: floor $ preSpa * 0.9
            , spd: floor $ preSpd
            , spe: floor $ preSpe
            }
        Lax -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef * 1.1
            , spa: floor $ preSpa
            , spd: floor $ preSpd * 0.9
            , spe: floor $ preSpe
            }
        Relaxed -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef * 1.1
            , spa: floor $ preSpa
            , spd: floor $ preSpd
            , spe: floor $ preSpe * 0.9
            }
        Modest -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk * 0.9
            , def: floor $ preDef
            , spa: floor $ preSpa * 1.1
            , spd: floor $ preSpd
            , spe: floor $ preSpe
            }
        Mild -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef * 0.9
            , spa: floor $ preSpa * 1.1
            , spd: floor $ preSpd
            , spe: floor $ preSpe
            }
        Rash -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef
            , spa: floor $ preSpa * 1.1
            , spd: floor $ preSpd * 0.9
            , spe: floor $ preSpe
            }
        Quiet -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef
            , spa: floor $ preSpa * 1.1
            , spd: floor $ preSpd
            , spe: floor $ preSpe * 0.9
            }
        Calm -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk * 0.9
            , def: floor $ preDef
            , spa: floor $ preSpa
            , spd: floor $ preSpd * 1.1
            , spe: floor $ preSpe
            }
        Gentle -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef * 0.9
            , spa: floor $ preSpa
            , spd: floor $ preSpd * 1.1
            , spe: floor $ preSpe
            }
        Careful -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef
            , spa: floor $ preSpa * 0.9
            , spd: floor $ preSpd * 1.1
            , spe: floor $ preSpe
            }
        Sassy -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef
            , spa: floor $ preSpa
            , spd: floor $ preSpd * 1.1
            , spe: floor $ preSpe * 0.9
            }
        Timid -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk * 0.9
            , def: floor $ preDef
            , spa: floor $ preSpa
            , spd: floor $ preSpd
            , spe: floor $ preSpe * 1.1
            }
        Hasty -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef * 0.9
            , spa: floor $ preSpa
            , spd: floor $ preSpd
            , spe: floor $ preSpe * 1.1
            }
        Jolly -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef
            , spa: floor $ preSpa * 0.9
            , spd: floor $ preSpd
            , spe: floor $ preSpe * 1.1
            }
        Naive -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef
            , spa: floor $ preSpa
            , spd: floor $ preSpd * 0.9
            , spe: floor $ preSpe * 1.1
            }
        _ -> BattleStats
            { hp: preHP
            , atk: floor $ preAtk
            , def: floor $ preDef
            , spa: floor $ preSpa
            , spd: floor $ preSpd
            , spe: floor $ preSpe
            }
