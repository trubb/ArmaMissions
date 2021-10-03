/*
    Modify as needed and put the following line into the unit's init field:
    id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\sad.sqf";
*/
params ["_type", "_unit"];

    _type = _this select 0;
    _unit = _this select 1;

    if (!(local _unit)) exitwith {}; // to make the script not run in some bad way

    #define addItemCountToInventory(item, count, inventory) for "_i" from 1 to count do {_unit inventory item;};
    #define addItemCountToUniform(item, count) addItemCountToInventory(item, count, addItemToUniform);
    #define addItemCountToVest(item, count) addItemCountToInventory(item, count, addItemToVest);
    #define addItemCountToBackpack(item, count) addItemCountToInventory(item, count, addItemToBackpack);

    removeAllWeapons _unit;
    removeAllItems _unit;
    removeAllAssignedItems _unit;
    removeUniform _unit;
    removeVest _unit;
    removeBackpack _unit;
    removeHeadgear _unit;
    removeGoggles _unit;
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemRadio";     // Which radio will be given is defined via TFAR CBA Settings
//  _unit linkItem "ItemWatch";     // give watch or microDAGR
    _unit linkItem "TFAR_microdagr";
//    _unit linkItem "rhsusf_ANPVS_14";

    _headGear = ["H_Watchcap_blk","H_Watchcap_cbr","H_Watchcap_camo","H_Watchcap_khk","H_MilCap_gry"] call BIS_fnc_selectRandom;
    _headGearCrew = "H_HelmetCrew_I";
    _headGearHeli = "H_PilotHelmetHeli_B";

    _backpack = "B_AssaultPack_khk";
    _medpack = "B_AssaultPack_khk";
    _atpack = "B_AssaultPack_khk";
    _ladder = "ACE_TacticalLadder_Pack";
    _parachute = "ACE_NonSteerableParachute";

    _backradio = "TFAR_rt1523g_rhs";
    _backradioLarge = "TFAR_rt1523g_big_rhs";

    _uniform = "rhs_uniform_gorka_r_y";

    _vest = "rhsgref_chestrig";

    _rifle = "rhs_weap_mk18";
    _rifleGL = "arifle_SPAR_01_GL_snd_F";

    _rifleMag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
    _rifleTMag = "30Rnd_556x45_Stanag_Tracer_Red";

    _dmr = "arifle_SPAR_03_snd_F";
    _dmrMag = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";

    _ar = "arifle_SPAR_02_snd_F";
    _arMag = "150Rnd_556x45_Drum_Mag_F";
    _arTMag ="150Rnd_556x45_Drum_Mag_Tracer_F";

    _mmg = "MMG_02_sand_F";
    _mmgMag = "130Rnd_338_Mag";

    _lat = "rhs_weap_m72a7";

    _mat = "launch_MRAWS_green_rail_F";
    _matHE = "MRAWS_HE_F";
    _matHEAT = "MRAWS_HEAT_F";

    _hat = "launch_B_Titan_short_F";
    _hatHE = "Titan_AP";
    _hatHEAT = "Titan_AT";

    _aa = "launch_B_Titan_F";
    _aaMag = "Titan_AA";

    _grenade = "HandGrenade";
    _smoke = "SmokeShell";
    _smokeb = "SmokeShellBlue";
    _smokeg = "SmokeShellGreen";
    _smokeo = "SmokeShellOrange";
    _smokep = "SmokeShellPurple";
    _smoker = "SmokeShellRed";
    _smokey = "SmokeShellYellow";

    _glhe = "1Rnd_HE_Grenade_shell";
    _glflareg = "UGL_FlareGreen_F";
    _glflareir = "UGL_FlareCIR_F";
    _glflarer = "UGL_FlareRed_F";
    _glflarew = "UGL_FlareWhite_F";
    _glflarey = "UGL_FlareYellow_F";
    _glsmokeb = "1Rnd_SmokeBlue_Grenade_shell";
    _glsmokeg = "1Rnd_SmokeGreen_Grenade_shell";
    _glsmokeo = "1Rnd_SmokeOrange_Grenade_shell";
    _glsmokep = "1Rnd_SmokePurple_Grenade_shell";
    _glsmoker = "1Rnd_SmokeRed_Grenade_shell";
    _glsmokew = "1Rnd_Smoke_Grenade_shell";
    _glsmokey = "1Rnd_SmokeYellow_Grenade_shell";

    _laser = "rhsusf_acc_wmx";
    _muzzle = "muzzle_snds_m";
    _sightholo = "rhsusf_acc_eotech_xps3";
    _sightscope = "ace_optic_arco_2d";
    _bipod = "bipod_01_f_snd";
    _sparebarrel = "ACE_SpareBarrel";

    _bandage = "ACE_elasticBandage";
    _tourniquet = "ACE_tourniquet";
    _morphine = "ACE_morphine";
    _adenosine = "ACE_adenosine";
    _splint = "adv_aceSplint_splint";
    _epine = "ACE_epinephrine";
    _blood = "ACE_bloodIV";

    _democharge = "DemoCharge_Remote_Mag";
    _clacker = "ACE_Clacker";
    _defkit = "ACE_DefusalKit";
    _etool = "ACE_EntrenchingTool";
    _wirecutter = "ACE_wirecutter";

    _binocular = "Binocular";
    _vector = "ACE_Vector";
    _designator = "Laserdesignator";
    _designatorBattery = "Laserbatteries";
    _gps = "ItemGPS";
    _dagr = "ACE_DAGR";
    _rtable = "ACE_RangeTable_82mm";
    _maptools = "ACE_MapTools";

    #define ATTACHMENTS \
        _unit addPrimaryWeaponItem _sightholo; \
        _unit addPrimaryWeaponItem _laser;

    #define BACKRADIO \
        _unit addBackpack _backradio; \
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_smoke, 2); \
        addItemCountToBackpack(_smoker, 2); \
        addItemCountToBackpack(_smokeg, 2);

    #define CLOTHES \
        _unit forceAddUniform _uniform; \
        addItemCountToUniform(_bandage, 6); \
        addItemCountToUniform(_morphine, 2); \
        addItemCountToUniform(_tourniquet, 2); \
        _unit addVest _vest; \
        _unit addHeadgear _headGear;

    #define GRENADES \
        addItemCountToVest(_smoke, 2); \
        addItemCountToVest(_grenade, 2);

    #define RIFLEMAGS \
        addItemCountToVest(_rifleTMag, 2); \
        addItemCountToVest(_rifleMag, 8);

    #define RIFLEKIT \
        CLOTHES; \
        GRENADES; \
        RIFLEMAGS; \
        _unit addWeapon _rifle; \
        ATTACHMENTS;

switch (_type) do {

    case "PL": {
        RIFLEKIT;
        BACKRADIO;
        _unit addWeapon _binocular;
    };
    
    case "SL": {
        RIFLEKIT;
        _unit addWeapon _binocular;
    };

    case "CLS": {
        RIFLEKIT;
        _unit addBackpack _medpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_blood, 4);
        addItemCountToBackpack(_epine, 8);
        addItemCountToBackpack(_morphine, 8);
        addItemCountToBackpack(_splint, 8);
        addItemCountToBackpack(_tourniquet, 8);
        addItemCountToBackpack(_bandage, 20);
    };

    case "RIFLE": {
        RIFLEKIT;
    };

    case "LAT": {
        RIFLEKIT;
        _unit addWeapon _lat;
    };

    case "DEMO": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_democharge, 4);
        addItemCountToBackpack(_defkit, 1);
        addItemCountToBackpack(_clacker, 1);
    };

};
