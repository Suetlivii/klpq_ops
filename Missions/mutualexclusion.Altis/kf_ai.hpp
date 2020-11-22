class KF_AI {
    class Units {
        class EAST {
            //"sl", "all other units", minimum 2 units
            infantry[] = {"O_Soldier_SL_F", "O_medic_F", "O_engineer_F", "O_soldier_TL_F", "O_Soldier_AT_F", "O_soldier_AA_F", "O_soldier_AR_F", "O_soldier_LAT_F", "O_soldier_GL_F", "O_soldier_M_F", "O_Soldier_F"};
            //"crew", "pilot", should be 2 units
            crew[] = {"O_crew_F", "O_Helipilot_F"};
            wheeled[] = {"O_MRAP_02_F"};
            armored[] = {"O_APC_Wheeled_02_rcws_F", "O_MBT_02_cannon_F"};
            air[] = {"O_Heli_Light_02_F"};
            naval[] = {"O_Boat_Transport_01_F"};
        };

        class WEST {
            infantry[] = {"B_Soldier_SL_F", "B_medic_F", "B_engineer_F", "B_soldier_TL_F", "B_soldier_AT_F", "B_soldier_AA_F", "B_soldier_AR_F", "B_soldier_LAT_F", "B_soldier_GL_F", "B_soldier_M_F", "B_Soldier_F"};
            crew[] = {"B_crew_F", "B_Helipilot_F"};
            wheeled[] = {"B_MRAP_01_F"};
            armored[] = {"B_APC_Wheeled_01_cannon_F", "B_MBT_01_TUSK_F"};
            air[] = {"B_Heli_Transport_01_F"};
            naval[] = {"B_Boat_Transport_01_F"};
        };

        class GUER {
            infantry[] = {"CUP_I_PMC_Soldier_TL", "CUP_I_PMC_Bodygurad_AA12", "CUP_I_PMC_Bodygurad_M4", "CUP_I_PMC_Contractor1", "CUP_I_PMC_Contractor2", "CUP_I_PMC_Sniper", "CUP_I_PMC_Medic", "CUP_I_PMC_Soldier_MG", "CUP_I_PMC_Soldier_MG_PKM", "CUP_I_PMC_Soldier_AT", "CUP_I_PMC_Engeneer", "CUP_I_PMC_Soldier_M4A3", "CUP_I_PMC_Soldier", "CUP_I_PMC_Soldier_GL"};
            crew[] = {"CUP_I_PMC_Crew", "CUP_I_PMC_Pilot"};
            wheeled[] = {"CUP_I_LSV_02_Minigun_ION"};
            armored[] = {"I_APC_Wheeled_03_cannon_F", "I_MBT_03_cannon_F"};
            air[] = {"I_Heli_light_03_F"};
            naval[] = {"I_Boat_Transport_01_F"};
        };
    };

    class Behavior {
        class NORMAL {
            class Infantry {
                //"aimingAccuracy", "aimingShake", "aimingSpeed", "endurance", "spotDistance", "spotTime", "courage", "reloadSpeed", "commanding", "general"
                skill[] = {{0.3, 0.5}, {0.3, 0.5}, {0.03, 0.05}, {0.5, 0.7}, {0.3, 0.5}, {0.3, 0.5}, {0.5, 0.7}, {0.5, 0.7}, {0.5, 0.7}, {0.3, 0.5}};
            };
            class Vehicles {
                skill[] = {{0.2, 0.4}, {0.2, 0.4}, {0.02, 0.04}, {0.4, 0.6}, {0.2, 0.4}, {0.2, 0.4}, {0.4, 0.6}, {0.4, 0.6}, {0.4, 0.6}, {0.2, 0.4}};
            };
        };

        class LOW {
            class Infantry {
                skill[] = {{0.2, 0.4}, {0.2, 0.4}, {0.02, 0.04}, {0.4, 0.6}, {0.2, 0.4}, {0.2, 0.4}, {0.4, 0.6}, {0.4, 0.6}, {0.4, 0.6}, {0.2, 0.4}};
            };
            class Vehicles {
                skill[] = {{0.1, 0.3}, {0.1, 0.3}, {0.01, 0.03}, {0.3, 0.5}, {0.1, 0.3}, {0.1, 0.3}, {0.3, 0.5}, {0.3, 0.5}, {0.3, 0.5}, {0.1, 0.3}};
            };
        };

        class HIGH {
            class Infantry {
                skill[] = {{0.4, 0.6}, {0.4, 0.6}, {0.04, 0.06}, {0.6, 0.8}, {0.4, 0.6}, {0.4, 0.6}, {0.6, 0.8}, {0.6, 0.8}, {0.6, 0.8}, {0.4, 0.6}};
            };
            class Vehicles {
                skill[] = {{0.3, 0.5}, {0.3, 0.5}, {0.03, 0.05}, {0.5, 0.7}, {0.3, 0.5}, {0.3, 0.5}, {0.5, 0.7}, {0.5, 0.7}, {0.5, 0.7}, {0.3, 0.5}};
            };
        };
    };
};

class KLPQ_MyDAC: KF_AI {
    class Settings {
        isReduceEnabled = true;
        reduceDistance = 900;
        garbageCollectionTime = 180;
        garbageCollectionRadius = 150;
    };

    class Behavior {
        class NORMAL {
            class Infantry {
                //"aimingAccuracy", "aimingShake", "aimingSpeed", "endurance", "spotDistance", "spotTime", "courage", "reloadSpeed", "commanding", "general"
                skill[] = {{0.3, 0.5}, {0.3, 0.5}, {0.03, 0.05}, {0.5, 0.7}, {0.3, 0.5}, {0.3, 0.5}, {0.5, 0.7}, {0.5, 0.7}, {0.5, 0.7}, {0.3, 0.5}};
                behavior[] = {"SAFE", "AWARE"};
                combatMode[] = {"YELLOW"};
                speed[] = {"LIMITED", "NORMAL", "FULL"};
                formation[] = {"LINE", "VEE", "COLUMN", "WEDGE", "STAG COLUMN", "ECH LEFT", "ECH RIGHT", "FILE", "DIAMOND"};
            };

            class Vehicles {
                class Wheeled {
                    skill[] = {{0.2, 0.4}, {0.2, 0.4}, {0.02, 0.04}, {0.4, 0.6}, {0.2, 0.4}, {0.2, 0.4}, {0.4, 0.6}, {0.4, 0.6}, {0.4, 0.6}, {0.2, 0.4}};
                    behavior[] = {"AWARE"};
                    combatMode[] = {"YELLOW"};
                    speed[] = {"NORMAL"};
                    formation[] = {"LINE", "VEE", "COLUMN", "WEDGE", "STAG COLUMN", "ECH LEFT", "ECH RIGHT", "FILE", "DIAMOND"};
                };
                class Armored: Wheeled {
                    behavior[] = {"AWARE"};
                    speed[] = {"NORMAL"};
                };
                class Air: Wheeled {
                    behavior[] = {"SAFE", "AWARE"};
                    speed[] = {"LIMITED", "NORMAL", "FULL"};
                };
                class Naval: Wheeled {
                    behavior[] = {"SAFE", "AWARE"};
                    speed[] = {"LIMITED", "NORMAL"};
                };
            };
        };

        class LOW: NORMAL {
            class Infantry: Infantry {
                skill[] = {{0.2, 0.4}, {0.2, 0.4}, {0.02, 0.04}, {0.4, 0.6}, {0.2, 0.4}, {0.2, 0.4}, {0.4, 0.6}, {0.4, 0.6}, {0.4, 0.6}, {0.2, 0.4}};
            };

            class Vehicles: Vehicles {
                class Wheeled: Wheeled {
                    skill[] = {{0.1, 0.3}, {0.1, 0.3}, {0.01, 0.03}, {0.3, 0.5}, {0.1, 0.3}, {0.1, 0.3}, {0.3, 0.5}, {0.3, 0.5}, {0.3, 0.5}, {0.1, 0.3}};
                };
            };
        };

        class HIGH: NORMAL {
            class Infantry: Infantry {
                skill[] = {{0.4, 0.6}, {0.4, 0.6}, {0.04, 0.06}, {0.6, 0.8}, {0.4, 0.6}, {0.4, 0.6}, {0.6, 0.8}, {0.6, 0.8}, {0.6, 0.8}, {0.4, 0.6}};
            };

            class Vehicles: Vehicles {
                class Wheeled: Wheeled {
                    skill[] = {{0.3, 0.5}, {0.3, 0.5}, {0.03, 0.05}, {0.5, 0.7}, {0.3, 0.5}, {0.3, 0.5}, {0.5, 0.7}, {0.5, 0.7}, {0.5, 0.7}, {0.3, 0.5}};
                };
            };
        };
    };
};
