//place all mission related stuff here
//do not overwrite this file when copying framework from mission to mission

private ["_basicMedicine", "_medicine", "_basicMedicMedicine", "_medicMedicine"];
private ["_riflemanFashion", "_specFashion", "_leaderFashion", "_crewFashion", "_pilotFashion", "_medicMedicine"];
private ["_riflemanPrimary", "_specPrimary", "_glRifleWeapon", "_leaderPrimary", "_mgWeapon", "_handgunWeapon", "_leaderSecond", "_atLauncherWeapon", "_atMissileWeapon", "_aaMissileWeapon", "_binoculars"];
private ["_items", "_linkItems", "_boxItems", "_boxMedicine"];

_basicMedicine = [["ACE_fieldDressing", 10], ["ACE_morphine", 2], ["ACE_splint", 2], ["ACE_epinephrine", 2],["ACE_adenosine",1], ["ACE_tourniquet", 2], ["ACE_bloodIV_250", 1]];

_medicine = _basicMedicine;

_basicMedicMedicine = [["ACE_fieldDressing", 40], ["ACE_morphine", 20], ["ACE_splint", 10], ["ACE_tourniquet", 2], ["ACE_epinephrine", 10],["ACE_adenosine",10], ["ACE_bloodIV_250", 4]];

_medicMedicine = _basicMedicMedicine;

private _uniform = "U_B_CombatUniform_mcam";
private _vest = "V_BandollierB_rgr";
_riflemanFashion = ["CFP_RAID_M81_DCU_2","CFP_CarrierRig_Operator_M81","rhsusf_ach_bare_headset_ess","",""];
_specFashion = ["CFP_RAID_M81_DCU_2","CFP_CarrierRig_Operator_M81","rhsusf_ach_bare_headset_ess","CFP_AssaultPack_Woodland",""];
_leaderFashion = ["CFP_RAID_M81_DCU_2","CFP_CarrierRig_Operator_M81","rhsusf_ach_bare_headset_ess","",""];
_pilotFashion = ["CFP_RAID_M81_DCU_2","CFP_CarrierRig_Operator_M81","rhsusf_ach_bare_headset_ess","CFP_AssaultPack_Woodland",""];
_crewFashion = ["CFP_RAID_M81_DCU_2","CFP_CarrierRig_Operator_M81","rhsusf_ach_bare_headset_ess","CFP_AssaultPack_Woodland",""];

_riflemanPrimary = ["CUP_arifle_ACR_wdl_556",[["CUP_30Rnd_556x45_Stanag",10]],["CUP_muzzle_mfsup_Flashhider_556x45_OD","optic_MRCO"]];
_riflemanSecondary = ["CUP_hgun_Phantom",[["CUP_18Rnd_9x19_Phantom",4]],["hlc_acc_DBALPL_FL"]];
_specPrimary = ["CUP_arifle_ACR_wdl_556",[["CUP_30Rnd_556x45_Stanag",10]],["CUP_muzzle_mfsup_Flashhider_556x45_OD","optic_MRCO"]];
_glRifleWeapon = ["CUP_arifle_ACR_wdl_556",[["CUP_30Rnd_556x45_Stanag",10]],["CUP_muzzle_mfsup_Flashhider_556x45_OD","optic_MRCO"]];
_marksmanPrimary = ["CUP_arifle_ACR_DMR_wdl_556",[["CUP_30Rnd_556x45_Stanag",10]],["RH_Saker_wdl","RH_accupoint","RH_HBLM_wdl"]];

_leaderPrimary = _glRifleWeapon;

private _mgMag = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch";
_mgWeapon = ["CUP_lmg_m249_pip2",[["CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch", 3]],["CUP_muzzle_mfsup_Flashhider_556x45_OD","optic_MRCO"]];
private _mgMags = ["", [[_mgMag, 3]], []];

_handgunWeapon = ["CUP_hgun_Phantom",[["CUP_18Rnd_9x19_Phantom",4]],[]];
_leaderSecond = _handgunWeapon;

private _atLauncher = "rhs_weap_m72a7";

_atLauncherWeapon = [_atLauncher, [], []];
_atMissileWeapon = ["rhs_weap_m72a7", [[]], []];
_aaMissileWeapon = ["rhs_weap_m72a7", [[]], []];

_binoculars = ["ACE_VectorDay", [], []];

private _additionGrenade = "SmokeShellBlue";
private _fragGrenade = "HandGrenade";

_items = [["ACE_EarPlugs", 1], ["ACE_Flashlight_XL50", 1], [_additionGrenade, 3],[_fragGrenade,2],["ACE_EntrenchingTool",1],["ACE_MapTools",1], ["ACE_CableTie", 2], ["ACE_DAGR", 1]];
_linkItems = ["ItemMap", "ItemCompass", "ItemWatch"];

_boxItems = [
    ["ToolKit", 10],
    ["ACE_wirecutter", 2],
    ["ACE_SpareBarrel", 10],
    ["ACE_CableTie", 80],
    ["ACE_Clacker", 10],
    ["murshun_cigs_cigpack", 40],
    ["murshun_cigs_matches", 40],
    [_additionGrenade, 200],
    [_fragGrenade, 80],
    ["DemoCharge_Remote_Mag", 20],
    ["SatchelCharge_Remote_Mag", 4],
    ["ACE_artilleryTable",1]
]; //content for boxes

_boxMedicine = _medicine apply {[_x select 0, (_x select 1) * 60]};

private _identity = [
    "", //face
    "" //voice
]; //identity, ai only

private _loadoutArray = [
    [
        [
            ["officer", "squad leader"],
            [
                _leaderFashion,
                [_leaderPrimary, _leaderSecond, _binoculars]
            ]
        ],
        [
            ["marksman"],
            [
                _leaderFashion,
                [_marksmanPrimary, _leaderSecond, _binoculars]
            ]
        ],
        [
            ["combat life saver"],
            [
                _specFashion,
                [_specPrimary, _riflemanSecondary]
            ]
        ],
        [
            ["engineer"],
            [
                _specFashion,
                [_specPrimary, _riflemanSecondary]
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
            ["missile specialist (at)"],
            [
                _specFashion,
                [_specPrimary, _riflemanSecondary, _atMissileWeapon]
            ]
        ],
        [
            ["missile specialist (aa)"],
            [
                _specFashion,
                [_specPrimary, _riflemanSecondary, _aaMissileWeapon]
            ]
        ],
        [
            ["autorifleman"],
            [
                _specFashion,
                [_mgWeapon, _riflemanSecondary]
            ]
        ],
        [
            ["asst. autorifleman"],
            [
                _specFashion,
                [_riflemanPrimary, _riflemanSecondary, _mgMags,_binoculars]
            ]
        ],
        [
            ["pilot", "helicopter pilot"],
            [
                _pilotFashion,
                [_specPrimary, _riflemanSecondary]
            ]
        ],
        [
            ["crewman", "helicopter crew"],
            [
                _crewFashion,
                [_specPrimary, _riflemanSecondary]
            ]
        ],
        [
            ["grenadier"],
            [
                _riflemanFashion,
                [_glRifleWeapon, _riflemanSecondary]
            ]
        ],
        [
            ["rifleman"],
            [
                _riflemanFashion,
                [_riflemanPrimary, _riflemanSecondary]
            ]
        ]
    ], //equipment per class
    [
        [
            ["all"],
            [["ACRE_PRC343", 1]],
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
