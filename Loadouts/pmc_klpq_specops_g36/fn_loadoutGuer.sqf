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

private _uniform = "CUP_U_B_BDUv2_gloves_dirty_CEU";
private _vest = "CFP_CarrierRig_Breacher_M81";
_riflemanFashion = ["CUP_U_B_BDUv2_gloves_dirty_CEU","CFP_CarrierRig_Breacher_M81","rhsusf_ach_bare","CFP_AssaultPack_Woodland",""];
_specFashion = [_uniform, _vest, "rhsusf_ach_bare", "B_Kitbag_cbr", ""];
_leaderFashion = [_uniform, _vest, "rhsusf_ach_bare", "B_Kitbag_cbr", ""];
_pilotFashion = [_uniform, _vest, "H_PilotHelmetHeli_B", "B_Kitbag_cbr", ""];
_crewFashion = [_uniform, _vest, "rhsusf_ach_bare", "B_Kitbag_cbr", ""];

_ciaFashion = ["U_I_L_Uniform_01_tshirt_skull_F","CUP_V_B_Armatus_BB_Black","H_Cap_blk","","CUP_G_Scarf_Face_Grn"];
_ciaPrimary = ["CUP_arifle_G36CA3_grip",[["hlc_30rnd_556x45_MDIM_G36",10]],["cup_muzzle_mfsup_scar_l","cup_optic_eotech553_black", "CUP_acc_ANPEQ_15_Flashlight_Black_L"]];
_ciaHandgun = ["hgun_Pistol_heavy_01_green_F",[["11Rnd_45ACP_Mag",4]],["muzzle_snds_acp","CUP_acc_CZ_M3X"]];

_riflemanPrimary = ["CUP_arifle_G36CA3_grip",[["hlc_30rnd_556x45_MDIM_G36",10]],["cup_muzzle_mfsup_scar_l","cup_optic_eotech553_black", "CUP_acc_ANPEQ_15_Flashlight_Black_L"]];
_specPrimary = ["CUP_arifle_G36CA3_grip",[["hlc_30rnd_556x45_MDIM_G36", 5]],["cup_muzzle_mfsup_scar_l","cup_optic_g33_hws_blk", "CUP_acc_ANPEQ_15_Flashlight_Black_L"]];
_glRifleWeapon = ["CUP_arifle_G36CA3_grip",[["hlc_30rnd_556x45_MDIM_G36",10]],["cup_muzzle_mfsup_scar_l","cup_optic_eotech553_black", "CUP_acc_ANPEQ_15_Flashlight_Black_L"]];
_leaderPrimary = _glRifleWeapon;
_marksmanPrimary = ["CUP_arifle_G36A3_grip",[["hlc_30rnd_556x45_MDIM_G36",10]],["cup_muzzle_mfsup_scar_l","optic_SOS"]];


private _mgMag = "CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249_Pouch";
_mgWeapon = ["CUP_lmg_m249_pip2",[["CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249_Pouch",3]],["CUP_muzzle_mfsup_Flashhider_556x45_Black","optic_Arco_blk_F"]];
private _mgMags = ["", [[_mgMag, 5]], []];

_handgunWeapon = ["hgun_ACPC2_F",[["9Rnd_45ACP_Mag", 2]],["muzzle_snds_acp","CUP_acc_CZ_M3X"]];
_leaderSecond = _handgunWeapon;

private _atLauncher = "ACE_launch_NLAW_ready_F";

_atLauncherWeapon = ["ACE_launch_NLAW_ready_F",[["NLAW_F",1]],[]];
_atMissileWeapon = ["ACE_launch_NLAW_ready_F",[["NLAW_F",1]],[]];
_aaMissileWeapon = ["ACE_launch_NLAW_ready_F",[["NLAW_F",1]],[]];

_binoculars = ["ACE_VectorDay", [], []];

private _additionGrenade = "SmokeShellBlue";
private _fragGrenade = "HandGrenade";

_items = [["ACE_EarPlugs", 1], ["ACE_Flashlight_XL50", 1], [_additionGrenade, 3],[_fragGrenade,2],["ACE_EntrenchingTool",1],["ACE_MapTools",1], ["ACE_CableTie", 2], ["ACE_microDAGR", 1], ["ACE_Chemlight_HiYellow", 2], ["ACE_Chemlight_HiBlue", 2]];
_linkItems = ["ItemMap", "ItemCompass", "ItemWatch", "ACE_NVG_Wide"];

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
                [_riflemanPrimary, _handgunWeapon, _binoculars]
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
                _ciaFashion,
                [_ciaPrimary, _ciaHandgun]
            ]
        ],
        [
            ["officer"],
            [
                _ciaFashion,
                [_ciaPrimary, _ciaHandgun]
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
