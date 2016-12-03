module Components.Battler where

import Prelude

import Data.Int as Int
import Data.Maybe
import Data.StrMap as StrMap
import Data.String
import Unsafe.Coerce (unsafeCoerce)

import Pokemon.Battler
import Pokemon.Species
import Pokemon.SpeciesData
import Pokemon.Stats
import Pokemon.Move
import Pokemon.Type

import Thermite as T
import React as R
import React.DOM as R
import React.DOM.Props as RP
import ReactDOM as DOM

data BattlerAction
    = UpdateSpeciesName String
    | UpdateBaseStat Stat Int
    | UpdateType1 (Maybe Type)
    | UpdateType2 (Maybe Type)
    | UpdateLevel Int
    | UpdateMove1 (Maybe Move)
    | UpdateMove2 (Maybe Move)
    | UpdateMove3 (Maybe Move)
    | UpdateMove4 (Maybe Move)
    | UpdateIV Stat Int
    | UpdateEV Stat Int
    | UpdateNature Nature
    | UpdateStage Stat Int

battlerSpec :: forall eff props. T.Spec eff Battler props BattlerAction
battlerSpec = T.simpleSpec performAction render
    where
    render :: T.Render Battler props BattlerAction
    render dispatch _ (Battler b) _ =
        case b.species of
            Species s ->
                [ R.input
                    [ RP.placeholder "Species"
                    , RP.defaultValue s.name
                    , RP.list "species"
                    , RP.onChange \e -> dispatch $ UpdateSpeciesName (unsafeCoerce e).target.value
                    ] []
                , R.input
                    [ RP.placeholder "Level"
                    , RP.value (show b.level)
                    , RP.onChange \e ->
                        let val = (unsafeCoerce e).target.value
                        in
                        if val == ""
                        then dispatch $ UpdateLevel 0
                        else
                            case Int.fromString (unsafeCoerce e).target.value of
                                Nothing -> pure unit
                                Just l -> dispatch $ UpdateLevel l
                    ] []
                , typeDropdown (dispatch <<< UpdateType1) s.type1
                , typeDropdown (dispatch <<< UpdateType2) s.type2
                , natureDropdown (dispatch <<< UpdateNature) b.nature
                -- TODO: moves
                , statTable
                    dispatch
                    s.baseStats
                    b.ivs
                    b.evs
                    (battleStats
                        s.baseStats
                        b.level
                        b.ivs
                        b.evs
                        b.nature
                    )
                ]
    statTable dispatch (BaseStats base) (IVs ivs) (EVs evs) (BattleStats computed) =
        R.table'
            [ R.tbody'
                [ R.tr'
                    [ R.th'
                        []
                    , R.th'
                        [ R.text "Base" ]
                    , R.th'
                        [ R.text "IV" ]
                    , R.th'
                        [ R.text "EV" ]
                    , R.th'
                        [ R.text "Stat" ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text "HP" ]
                    , R.td'
                        [ R.input
                            [ RP.value (show base.hp)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateBaseStat HP 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateBaseStat HP v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show ivs.hp)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateIV HP 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateIV HP v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show evs.hp)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateEV HP 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateEV HP v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.text (show computed.hp) ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text "Atk" ]
                    , R.td'
                        [ R.input
                            [ RP.value (show base.atk)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateBaseStat Atk 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateBaseStat Atk v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show ivs.atk)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateIV Atk 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateIV Atk v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show evs.atk)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateEV Atk 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateEV Atk v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.text (show computed.atk) ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text "Def" ]
                    , R.td'
                        [ R.input
                            [ RP.value (show base.def)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateBaseStat Def 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateBaseStat Def v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show ivs.def)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateIV Def 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateIV Def v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show evs.def)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateEV Def 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateEV Def v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.text (show computed.def) ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text "SpA" ]
                    , R.td'
                        [ R.input
                            [ RP.value (show base.spa)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateBaseStat SpA 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateBaseStat SpA v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show ivs.spa)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateIV SpA 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateIV SpA v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show evs.spa)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateEV SpA 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateEV SpA v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.text (show computed.spa) ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text "SpD" ]
                    , R.td'
                        [ R.input
                            [ RP.value (show base.spd)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateBaseStat SpD 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateBaseStat SpD v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show ivs.spd)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateIV SpD 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateIV SpD v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show evs.spd)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateEV SpD 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateEV SpD v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.text (show computed.spd) ]
                    ]
                , R.tr'
                    [ R.td'
                        [ R.text "Spe" ]
                    , R.td'
                        [ R.input
                            [ RP.value (show base.spe)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateBaseStat Spe 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateBaseStat Spe v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show ivs.spe)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateIV Spe 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateIV Spe v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.input
                            [ RP.value (show evs.spe)
                            , RP.onChange \e ->
                                let
                                contents = (unsafeCoerce e).target.value
                                in
                                if contents == ""
                                then dispatch $ UpdateEV Spe 0
                                else case Int.fromString contents of
                                    Nothing -> pure unit
                                    Just v -> dispatch $ UpdateEV Spe v
                            ]
                            []
                        ]
                    , R.td'
                        [ R.text (show computed.spe) ]
                    ]
                ]
            ]
    
    typeDropdown dispatchType curType =
        R.select
            [ RP.value (case curType of
                Nothing -> "none"
                Just Normal -> "normal"
                Just Fighting -> "fighting"
                Just Flying -> "flying"
                Just Poison -> "poison"
                Just Ground -> "ground"
                Just Rock -> "rock"
                Just Bug -> "bug"
                Just Ghost -> "ghost"
                Just Steel -> "steel"
                Just Fire -> "fire"
                Just Water -> "water"
                Just Grass -> "grass"
                Just Electric -> "electric"
                Just Psychic -> "psychic"
                Just Ice -> "ice"
                Just Dragon -> "dragon"
                Just Dark -> "dark"
                Just Fairy -> "fairy"
                )
            , RP.onChange \e ->
                case (unsafeCoerce e).target.value of
                    "none" -> dispatchType Nothing
                    "normal" -> dispatchType (Just Normal)
                    "fighting" -> dispatchType (Just Fighting)
                    "flying" -> dispatchType (Just Flying)
                    "poison" -> dispatchType (Just Poison)
                    "ground" -> dispatchType (Just Ground)
                    "rock" -> dispatchType (Just Rock)
                    "bug" -> dispatchType (Just Bug)
                    "ghost" -> dispatchType (Just Ghost)
                    "steel" -> dispatchType (Just Steel)
                    "fire" -> dispatchType (Just Fire)
                    "water" -> dispatchType (Just Water)
                    "grass" -> dispatchType (Just Grass)
                    "electric" -> dispatchType (Just Electric)
                    "psychic" -> dispatchType (Just Psychic)
                    "ice" -> dispatchType (Just Ice)
                    "dragon" -> dispatchType (Just Dragon)
                    "dark" -> dispatchType (Just Dark)
                    "fairy" -> dispatchType (Just Fairy)
                    _ -> pure unit
            ]
            [ R.option
                [ RP.value "none" ]
                [ R.text "None" ]
            , R.option
                [ RP.value "normal" ]
                [ R.text "Normal" ]
            , R.option
                [ RP.value "fighting" ]
                [ R.text "Fighting" ]
            , R.option
                [ RP.value "flying" ]
                [ R.text "Flying" ]
            , R.option
                [ RP.value "poison" ]
                [ R.text "Poison" ]
            , R.option
                [ RP.value "ground" ]
                [ R.text "Ground" ]
            , R.option
                [ RP.value "rock" ]
                [ R.text "Rock" ]
            , R.option
                [ RP.value "bug" ]
                [ R.text "Bug" ]
            , R.option
                [ RP.value "ghost" ]
                [ R.text "Ghost" ]
            , R.option
                [ RP.value "steel" ]
                [ R.text "Steel" ]
            , R.option
                [ RP.value "fire" ]
                [ R.text "Fire" ]
            , R.option
                [ RP.value "water" ]
                [ R.text "Water" ]
            , R.option
                [ RP.value "grass" ]
                [ R.text "Grass" ]
            , R.option
                [ RP.value "electric" ]
                [ R.text "Electric" ]
            , R.option
                [ RP.value "psychic" ]
                [ R.text "Psychic" ]
            , R.option
                [ RP.value "ice" ]
                [ R.text "Ice" ]
            , R.option
                [ RP.value "dragon" ]
                [ R.text "Dragon" ]
            , R.option
                [ RP.value "dark" ]
                [ R.text "Dark" ]
            , R.option
                [ RP.value "fairy" ]
                [ R.text "Fairy" ]
            ]

    natureDropdown dispatchNature nature =
        R.select
            [ RP.onChange \e ->
                case (unsafeCoerce e).target.value of
                    "adamant" -> dispatchNature Adamant
                    "bashful" -> dispatchNature Bashful 
                    "bold" -> dispatchNature Bold 
                    "brave" -> dispatchNature Brave 
                    "calm" -> dispatchNature Calm 
                    "careful" -> dispatchNature Careful 
                    "docile" -> dispatchNature Docile 
                    "gentle" -> dispatchNature Gentle 
                    "hardy" -> dispatchNature Hardy 
                    "hasty" -> dispatchNature Hasty 
                    "impish" -> dispatchNature Impish 
                    "jolly" -> dispatchNature Jolly 
                    "lax" -> dispatchNature Lax 
                    "lonely" -> dispatchNature Lonely 
                    "mild" -> dispatchNature Mild
                    "modest" -> dispatchNature Modest 
                    "naive" -> dispatchNature Naive 
                    "naughty" -> dispatchNature Naughty 
                    "quiet" -> dispatchNature Quiet 
                    "quirky" -> dispatchNature Quirky 
                    "rash" -> dispatchNature Rash 
                    "relaxed" -> dispatchNature Relaxed 
                    "sassy" -> dispatchNature Sassy 
                    "serious" -> dispatchNature Serious 
                    "timid" -> dispatchNature Timid 
                    _ -> pure unit
            , RP.value (case nature of
                Adamant -> "adamant"
                Bashful -> "bashful"
                Bold -> "bold"
                Brave -> "brave"
                Calm -> "calm"
                Careful -> "careful"
                Docile -> "docile"
                Gentle -> "gentle"
                Hardy -> "hardy"
                Hasty -> "hasty"
                Impish -> "impish"
                Jolly -> "jolly"
                Lax -> "lax"
                Lonely -> "lonely"
                Mild -> "mild"
                Modest -> "modest"
                Naive -> "naive"
                Naughty -> "naughty"
                Quiet -> "quiet"
                Quirky -> "quirky"
                Rash -> "rash"
                Relaxed -> "relaxed"
                Sassy -> "sassy"
                Serious -> "serious"
                Timid -> "timid"
                )
            ]
            [ R.option
                [ RP.value "adamant" ]
                [ R.text "Adamant (+Atk, -SpA)" ]
            , R.option
                [ RP.value "bashful" ]
                [ R.text "Bashful" ]
            , R.option
                [ RP.value "bold" ]
                [ R.text "Bold (+Def, -Atk)" ]
            , R.option
                [ RP.value "brave" ]
                [ R.text "Brave (+Atk, -Spe)" ]
            , R.option
                [ RP.value "calm" ]
                [ R.text "Calm (+SpD, -Atk)" ]
            , R.option
                [ RP.value "careful" ]
                [ R.text "Careful (+SpD, -SpA)" ]
            , R.option
                [ RP.value "docile" ]
                [ R.text "Docile" ]
            , R.option
                [ RP.value "gentle" ]
                [ R.text "Gentle (+SpD, -Def)" ]
            , R.option
                [ RP.value "hardy" ]
                [ R.text "Hardy" ]
            , R.option
                [ RP.value "hasty" ]
                [ R.text "Hasty (+Spe, -Def)" ]
            , R.option
                [ RP.value "impish" ]
                [ R.text "Impish (+Def, -SpA)" ]
            , R.option
                [ RP.value "jolly" ]
                [ R.text "Jolly (+Spe, -SpA)" ]
            , R.option
                [ RP.value "lax" ]
                [ R.text "Lax (+Def, -SpD)" ]
            , R.option
                [ RP.value "lonely" ]
                [ R.text "Lonely (+Atk, -Def)" ]
            , R.option
                [ RP.value "mild" ]
                [ R.text "Mild (+SpA, -Def)" ]
            , R.option
                [ RP.value "modest" ]
                [ R.text "Modest (+SpA, -Atk)" ]
            , R.option
                [ RP.value "naive" ]
                [ R.text "Naive (+Spe, -SpD)" ]
            , R.option
                [ RP.value "naughty" ]
                [ R.text "Naughty (+Atk, -SpD)" ]
            , R.option
                [ RP.value "quiet" ]
                [ R.text "Quiet (+SpA, -Spe)" ]
            , R.option
                [ RP.value "quirky" ]
                [ R.text "Quirky" ]
            , R.option
                [ RP.value "rash" ]
                [ R.text "Rash (+SpA, -SpD)" ]
            , R.option
                [ RP.value "relaxed" ]
                [ R.text "Relaxed (+Def, -Spe)" ]
            , R.option
                [ RP.value "sassy" ]
                [ R.text "Sassy (+SpD, -Spe)" ]
            , R.option
                [ RP.value "serious" ]
                [ R.text "Serious" ]
            , R.option
                [ RP.value "timid" ]
                [ R.text "Timid (+Spe, -Atk)" ]
            ]

    performAction :: T.PerformAction eff Battler props BattlerAction
    performAction action _ _ =
        case action of
            UpdateSpeciesName n -> do
                void $ T.modifyState \(Battler b) ->
                    case b.species of
                        Species s ->
                            Battler (b { species = Species (s { name = n })})
                case StrMap.lookup (toLower n) speciesByName of
                    Nothing -> pure unit
                    Just species -> do
                        void $ T.modifyState \(Battler b) ->
                            Battler (b { species = species })
            UpdateBaseStat stat v -> do
                void $ T.modifyState \(Battler b) ->
                    case b.species of
                        Species s ->
                            case s.baseStats of
                                BaseStats base ->
                                    let
                                    base' = case stat of
                                        HP -> base { hp = v }
                                        Atk -> base { atk = v }
                                        Def -> base { def = v }
                                        SpA -> base { spa = v }
                                        SpD -> base { spd = v }
                                        Spe -> base { spe = v }
                                    in
                                    Battler (b { species = Species (s { baseStats = BaseStats base' }) })
            UpdateType1 t -> do
                void $ T.modifyState \(Battler b) ->
                    case b.species of
                        Species s ->
                            Battler (b { species = Species (s { type1 = t })})
            UpdateType2 t -> do
                void $ T.modifyState \(Battler b) ->
                    case b.species of
                        Species s ->
                            Battler (b { species = Species (s { type2 = t })})
            UpdateLevel l -> do
                void $ T.modifyState \(Battler b) ->
                    Battler (b { level = max 0 (min 100 l) })
            UpdateMove1 m -> do
                void $ T.modifyState \(Battler b) ->
                    Battler (b { move1 = m })
            UpdateMove2 m -> do
                void $ T.modifyState \(Battler b) ->
                    Battler (b { move1 = m })
            UpdateMove3 m -> do
                void $ T.modifyState \(Battler b) ->
                    Battler (b { move1 = m })
            UpdateMove4 m -> do
                void $ T.modifyState \(Battler b) ->
                    Battler (b { move1 = m })
            UpdateIV stat v -> do
                let v' = min 31 (max 0 v)
                void $ T.modifyState \(Battler b) ->
                    case b.ivs of
                        IVs ivs ->
                            let
                            ivs' = case stat of
                                HP -> ivs { hp = v' }
                                Atk -> ivs { atk = v' }
                                Def -> ivs { def = v' }
                                SpA -> ivs { spa = v' }
                                SpD -> ivs { spd = v' }
                                Spe -> ivs { spe = v' }
                            in
                            Battler (b { ivs = IVs ivs' })
            UpdateEV stat v -> do
                let v' = min 252 (max 0 v)
                void $ T.modifyState \(Battler b) ->
                    case b.evs of
                        EVs evs ->
                            let
                            evs' = case stat of
                                HP -> evs { hp = v' }
                                Atk -> evs { atk = v' }
                                Def -> evs { def = v' }
                                SpA -> evs { spa = v' }
                                SpD -> evs { spd = v' }
                                Spe -> evs { spe = v' }
                            in
                            Battler (b { evs = EVs evs' })
            UpdateNature n -> do
                void $ T.modifyState \(Battler b) ->
                    Battler (b { nature = n })
            -- UpdateStage stat v -> do
            --     void $ T.modifyState \(Battler b) ->
            --         Battler b
            _ -> do
                pure unit
