/*
    Modify as needed and put the following line into the unit's init field:
    id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\sfp80.sqf";
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
//    _unit linkItem "ItemWatch";     // give watch or microDAGR
    _unit linkItem "TFAR_microdagr";
//    _unit linkItem "rhsusf_ANPVS_14";

    _headGear = ["sfp_m90w_helmet",
                 "sfp_m90w_helmet_peltor",
                 "sfp_m90w_helmet_nvg"] call BIS_fnc_selectRandom;
    _headGearCrew = "H_HelmetCrew_I";
    _headGearHeli = "H_PilotHelmetHeli_B";

    _backpack = "sfp_backpack_stridssack2000";
    _medpack = "sfp_backpack_sjvv9";
    _atpack = "sfp_backpack_grg_loader";
    _ladder = "ACE_TacticalLadder_Pack";
    _parachute = "ACE_NonSteerableParachute";

    _backradio = "sfp_ra180";
    _backradioLarge = "sfp_lk35_ra145";

    _uniform = ["sfp_m90w_uniform",
                "sfp_m90w_uniform_dirty"] call BIS_fnc_selectRandom;

    _vest = "sfp_stridsbalte_304k";

    _flaregun = "sfp_signpist50";
    _flaremag = "sfp_1rnd_lyspatron7_mag";

    _rifle = "sfp_ak5";
    _rifleGL = "sfp_ak5_m203";

    _rifleMag = "sfp_30Rnd_556x45_Stanag";
    _rifleTMag = "30Rnd_556x45_Stanag_Tracer_Red";

    _dmr = "sfp_ak5b";
    _dmrMag = "sfp_30Rnd_556x45_Stanag";

    _ar = "ZSN_M249_SAW";
    _arMag = "200Rnd_556x45_Box_Red_F";
    _arTMag ="200Rnd_556x45_Box_Tracer_Red_F";

    _mmg = "sfp_ksp58";
    _mmgMag = "sfp_249Rnd_762x51_ksp58";

    _lat = "CUP_launch_M136";

    _mat = "sfp_grg86";
    _matHE = "sfp_grg_he_mag";
    _matHEAT = "sfp_grg_heat_mag";
    _matSMK = "sfp_grg_smoke_mag";
    _matFlare = "sfp_grg_illum_mag";

    _aa = "sfp_rbs69";
    _aaMag = "sfp_rbs69_mag";

    _grenade = "sfp_handgrenade_shgr56";
    _smoke = "SmokeShell";
    _smokeb = "SmokeShellBlue";
    _smokeg = "SmokeShellGreen";
    _smokeo = "SmokeShellOrange";
    _smokep = "SmokeShellPurple";
    _smoker = "SmokeShellRed";
    _smokey = "SmokeShellYellow";
    _smokeinsta = "ZSN_WPShell";

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

    _sightscope = "sfp_optic_susat_4x";
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
    _whistle = "ZSN_Whistle";
    _flashlight = "ACE_Flashlight_MX991";

    #define ATTACHMENTS \
        _unit addPrimaryWeaponItem _sightholo; \
        _unit addPrimaryWeaponItem _laser;

    #define BACKRADIO \
        _unit addBackpack _backradio; \
        addItemCountToBackpack(_smoke, 2); \
        addItemCountToBackpack(_smoker, 2); \
        addItemCountToBackpack(_smokeg, 2);

    #define CLOTHES \
        _unit forceAddUniform _uniform; \
        addItemCountToUniform(_bandage, 6); \
        addItemCountToUniform(_morphine, 2); \
        addItemCountToUniform(_tourniquet, 2); \
        addItemCountToUniform(_flashlight, 1); \
        _unit addVest _vest; \
        _unit addHeadgear _headGear;

    #define GRENADES \
        addItemCountToVest(_smoke, 1); \
        addItemCountToVest(_smokeinsta, 1); \
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
        _unit addBackpack _backpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        _unit addWeapon _binocular;
        _unit addItemToUniform _maptools;
        _unit addItemToUniform _dagr;
        addItemCountToBackpack(_flaremag, 4);
        _unit addWeapon _flaregun;
    };
    
    case "SL": {
        CLOTHES;
        GRENADES;
        RIFLEMAGS;
        _unit addBackpack _backpack;
        addItemCountToBackpack(_glhe, 12);
        addItemCountToBackpack(_glsmokew, 4);
        addItemCountToBackpack(_glsmoker, 4);
        addItemCountToBackpack(_glflareg, 4);
        _unit addItemToUniform _maptools;
        _unit addItemToUniform _dagr;
        _unit addWeapon _rifleGL;
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
        addItemCountToBackpack(_smoker, 2);
        addItemCountToBackpack(_smokeg, 2);
    };

    case "TL": {
        CLOTHES;
        GRENADES;
        RIFLEMAGS;
        _unit addWeapon _dmr;
        _unit addPrimaryWeaponItem _sightscope;
        _unit addItemToUniform _maptools;
    };

    case "RIFLE": {
        RIFLEKIT;
    };

    case "AR": {
        CLOTHES;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        GRENADES;
        addItemCountToVest(_arMag, 3);
        addItemCountToBackpack(_arMag, 2);
        addItemCountToBackpack(_arTMag, 2);
        addItemCountToBackpack(_sparebarrel, 1);
        _unit addWeapon _ar;
        ATTACHMENTS;
    };

    case "MMG": {
        CLOTHES;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToVest(_smoke, 1);
        addItemCountToVest(_smokeinsta, 1);
        addItemCountToUniform(_grenade, 2);
        addItemCountToVest(_mmgMag, 2);
        addItemCountToBackpack(_mmgMag, 2);
        addItemCountToBackpack(_sparebarrel, 1);
        _unit addWeapon _mmg;
    };

    case "MMGASS": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_mmgMag, 4);
        _unit addWeapon _binocular;
    };

    case "LAT": {
        RIFLEKIT;
        _unit addWeapon _lat;
    };

    case "MAT": {
        RIFLEKIT;
        _unit addBackpack _atpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_matHEAT, 1);
        _unit addWeapon _mat;
    };

    case "MATASS": {
        RIFLEKIT;
        _unit addBackpack _atpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_matHEAT, 2);
        addItemCountToBackpack(_matHE, 1);
        addItemCountToBackpack(_matFlare, 1);
        _unit addWeapon _vector;
    };
    
    case "CREW": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 7 do {_unit addItemToVest _rifleMag;};
        _unit addHeadgear _headGearCrew;
        _unit addWeapon _rifle;
    };

    case "HELI": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 7 do {_unit addItemToVest _rifleMag;};
        _unit addHeadgear _headGearHeli;
        _unit addWeapon _rifle;
    };

};
