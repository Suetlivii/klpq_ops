//place all mission related stuff here
//do not overwrite this file when copying framework from mission to mission

private ["_basicMedicine", "_medicine", "_basicMedicMedicine", "_medicMedicine"];
private ["_riflemanFashion", "_specFashion", "_leaderFashion", "_crewFashion", "_pilotFashion", "_medicMedicine"];
private ["_riflemanPrimary", "_specPrimary", "_glRifleWeapon", "_leaderPrimary", "_mgWeapon", "_handgunWeapon", "_leaderSecond", "_atLauncherWeapon", "_atMissileWeapon", "_aaMissileWeapon", "_binoculars"];
private ["_items", "_linkItems", "_boxItems", "_boxMedicine"];

_basicMedicine = [["ACE_fieldDressing", 10], ["ACE_morphine", 2], ["ACE_splint", 2], ["ACE_epinephrine", 2],["ACE_adenosine",2], ["ACE_tourniquet", 2], ["ACE_bloodIV_250", 1]];

_medicine = _basicMedicine;

_basicMedicMedicine = [["ACE_fieldDressing", 40], ["ACE_morphine", 20], ["ACE_splint", 10], ["ACE_tourniquet", 2], ["ACE_epinephrine", 10],["ACE_adenosine",10], ["ACE_bloodIV_250", 4]];

_medicMedicine = _basicMedicMedicine;

private _uniform = selectRandom ["CUP_I_B_PMC_Unit_11", "CUP_I_B_PMC_Unit_7", "CUP_I_B_PMC_Unit_15", "CUP_I_B_PMC_Unit_14"];
private _vest = "MNP_Vest_USMC_Xtreme_A";
_riflemanFashion = [_uniform, _vest,"rhsusf_ach_bare_headset","CFP_AssaultPack_Woodland",""];
_specFashion = [_uniform, _vest, "rhsusf_ach_bare_headset", "B_Kitbag_cbr", ""];
_leaderFashion = [_uniform, _vest, "rhsusf_ach_bare_headset", "B_Kitbag_cbr", ""];
_pilotFashion = [_uniform, _vest, "H_PilotHelmetHeli_B", "B_Kitbag_cbr", ""];
_crewFashion = [_uniform, _vest, "rhsusf_ach_bare_headset", "B_Kitbag_cbr", ""];

_riflemanPrimary = ["rhs_weap_ak74mr",[["rhs_30Rnd_545x39_7N10_AK",10]],["CUP_muzzle_TGPA","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_Eotech553_Black"]];
_specPrimary = ["rhs_weap_ak74mr",[["rhs_30Rnd_545x39_7N10_AK", 5]],["CUP_muzzle_TGPA","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_Eotech553_Black"]];
_glRifleWeapon = ["rhs_weap_ak74mr_gp25",[["rhs_30Rnd_545x39_7N10_AK",10], ["rhs_VOG25", 10]],["CUP_muzzle_TGPA","cup_acc_anpeq_15_black","CUP_optic_Eotech553_Black"]];
_leaderPrimary = _glRifleWeapon;
_marksmanPrimary = ["CUP_srifle_M24_blk",[["CUP_5Rnd_762x51_M24",10]],["muzzle_snds_B","CUP_optic_AN_PVS_10_black","rhsusf_acc_harris_bipod"]];


private _mgMag = "rhs_45Rnd_545X39_7N10_AK";
_mgWeapon = ["hlc_rifle_RPK12",[["rhs_45Rnd_545X39_7N10_AK",10]],["CUP_muzzle_TGPA","cup_acc_anpeq_15_black","CUP_optic_Eotech553_Black"]];
private _mgMags = ["", [[_mgMag, 10]], []];

_handgunWeapon = ["hgun_ACPC2_F",[["9Rnd_45ACP_Mag", 2]],["muzzle_snds_acp","CUP_acc_CZ_M3X"]];
_leaderSecond = _handgunWeapon;

private _atLauncher = "ACE_launch_NLAW_ready_F";

_atLauncherWeapon = ["ACE_launch_NLAW_ready_F",[["NLAW_F",1]],[]];
_atMissileWeapon = ["ACE_launch_NLAW_ready_F",[["NLAW_F",1]],[]];
_aaMissileWeapon = ["ACE_launch_NLAW_ready_F",[["NLAW_F",1]],[]];

_binoculars = ["ACE_VectorDay", [], []];

private _additionGrenade = "SmokeShellBlue";
private _fragGrenade = "HandGrenade";
private _stanGrande = "ACE_M84";

_items = [["ACE_EarPlugs", 1], ["ACE_Flashlight_XL50", 1], [_stanGrande, 2], [_additionGrenade, 3], [_fragGrenade,2],["ACE_EntrenchingTool",1],["ACE_MapTools",1], ["ACE_CableTie", 2], ["ACE_microDAGR", 1], ["ACE_Chemlight_HiYellow", 2], ["ACE_Chemlight_HiBlue", 2]];
_linkItems = ["ItemMap", "ItemCompass", "ItemWatch", "CUP_NVG_GPNVG_black"];

_boxItems = [
    ["ToolKit", 10],
    ["ACE_wirecutter", 2],
    ["ACE_SpareBarrel", 10],
    ["ACE_CableTie", 80],
    ["ACE_Clacker", 5],
    ["murshun_cigs_cigpack", 40],
    ["murshun_cigs_matches", 40],
    [_additionGrenade, 200],
    [_fragGrenade, 80],
    [_stanGrande, 80],
    ["DemoCharge_Remote_Mag", 10],
    ["SatchelCharge_Remote_Mag", 4],
    ["ACE_artilleryTable",1],
    ["ACE_Chemlight_HiYellow", 10],
    ["ACE_Chemlight_HiBlue", 10]
]; //content for boxes

_boxMedicine = _medicine apply {[_x select 0, (_x select 1) * 60]};

private _identity = [
    "", //face
    "" //voice
]; //identity, ai only

private _loadoutArray = [
    [
        [
            ["squad leader"],
            [
                _leaderFashion,
                [_leaderPrimary, _leaderSecond, _binoculars]
            ]
        ],
        [
            ["combat life saver"],
            [
                _specFashion,
                [_specPrimary, _handgunWeapon]
            ]
        ],
        [
            ["engineer"],
            [
                _specFashion,
                [_specPrimary, _handgunWeapon]
            ]
        ],
        [
            ["team leader"],
            [
                _riflemanFashion,
                [_leaderPrimary, _leaderSecond, _binoculars]
            ]
        ],
        [
            ["rifleman (at)"],
            [
                _specFashion,
                [_specPrimary, _handgunWeapon, _atMissileWeapon]
            ]
        ],
        [
            ["missile specialist (aa)"],
            [
                _specFashion,
                [_specPrimary, _handgunWeapon,  _aaMissileWeapon]
            ]
        ],
        [
            ["missile specialist (at)"],
            [
                _specFashion,
                [_specPrimary, _handgunWeapon,  _atMissileWeapon]
            ]
        ],
        [
            ["autorifleman"],
            [
                _riflemanFashion,
                [_mgWeapon, _handgunWeapon]
            ]
        ],
        [
            ["asst. autorifleman"],
            [
                _riflemanFashion,
                [_riflemanPrimary, _handgunWeapon,  _mgMags,_binoculars]
            ]
        ],
        [
            ["marksman"],
            [
                _riflemanFashion,
                [_marksmanPrimary, _handgunWeapon, _binoculars]
            ]
        ],
        [
            ["pilot", "helicopter pilot"],
            [
                _pilotFashion,
                [_specPrimary]
            ]
        ],
        [
            ["crewman", "helicopter crew"],
            [
                _crewFashion,
                [_specPrimary]
            ]
        ],
        [
            ["grenadier"],
            [
                _riflemanFashion,
                [_glRifleWeapon]
            ]
        ],
        [
            ["rifleman"],
            [
                _riflemanFashion,
                [_riflemanPrimary, _handgunWeapon]
            ]
        ],
        [
            ["tactical driver"],
            [
                _riflemanFashion,
                [_riflemanPrimary, _handgunWeapon]
            ]
        ],
        [
            ["officer"],
            [
                _riflemanFashion,
                [_riflemanPrimary, _handgunWeapon]
            ]
        ]
    ], //equipment per class
    [
        [
            ["all"],
            [["ACRE_PRC343", 1], ["ACE_IR_Strobe_Item", 1], ["ACE_Flashlight_XL50", 1]],
            []
        ],
        [
            ["officer", "squad leader", "team leader", "pilot", "crewman"],
            [["ACRE_PRC152", 1]],
            []
        ],
        [
            ["all"],
            _items + _medicine, //items
            _linkItems //link items
        ],
        [
            ["officer", "squad leader", "team leader"],
            [["murshun_cigs_lighter", 1]],
            []
        ],
        [
            ["combat life saver"],
            _medicMedicine,
            []
        ],
        [
            ["engineer"],
            [["ACE_M26_Clacker", 1], ["ACE_DefusalKit", 1], ["DemoCharge_Remote_Mag", 2]],
            []
        ],
        [
            ["missile specialist (at)"],
            [],
            []
        ],
        [
            ["missile specialist (aa)"],
            [],
            []
        ],
        [
            ["autorifleman"],
            [],
            []
        ],
        [
            ["asst. autorifleman"],
            [],
            []
        ],
        [
            ["pilot", "helicopter pilot", "crewman", "helicopter crew"],
            [["ToolKit", 1]],
            ["ItemGPS"]
        ],
        [
            ["grenadier"],
            [],
            []
        ],
        [
            ["rifleman"],
            [],
            []
        ]
    ], //personal items per class
    _boxItems + _boxMedicine,
    _identity
];

//output of the function, do not remove or change
_loadoutArray
