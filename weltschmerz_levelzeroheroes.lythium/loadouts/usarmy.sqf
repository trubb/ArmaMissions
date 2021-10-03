/*
    Modify as needed and put the following line into the unit's init field:
    id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\usarmy.sqf";
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
    _unit linkItem "TFAR_rf7800str";     // Which radio will be given is defined via TFAR CBA Settings
//  _unit linkItem "ItemWatch";     // give watch or microDAGR
    _unit linkItem "TFAR_microdagr";
//    _unit linkItem "rhsusf_ANPVS_14";

    _headGear = ["rhsusf_ach_helmet_ucp","rhsusf_ach_helmet_ESS_ucp","rhsusf_ach_helmet_headset_ucp","rhsusf_ach_helmet_headset_ess_ucp","rhsusf_ach_helmet_ucp_norotos"] call BIS_fnc_selectRandom;
    _headGearCrew = "H_HelmetCrew_I";
    _headGearHeli = "H_PilotHelmetHeli_B";

    _backpack = "rhsusf_assault_eagleaiii_ucp";
    _medpack = "rhsusf_assault_eagleaiii_ucp";
    _atpack = "rhsgref_hidf_alicepack";
    _ladder = "ACE_TacticalLadder_Pack";
    _parachute = "ACE_NonSteerableParachute";

    _backradio = "TFAR_rt1523g_rhs";
    _backradioLarge = "TFAR_rt1523g_big_rhs";

    _uniform = "rhs_uniform_acu_ucp";

    _vest = ["rhsusf_spcs_ucp_rifleman_alt","rhsusf_spcs_ucp_rifleman","rhsusf_spcs_ucp_squadleader","rhsusf_spcs_ucp_teamleader_alt","rhsusf_spcs_ucp_teamleader"] call BIS_fnc_selectRandom;
    _vestgr = "rhsusf_spcs_ucp_grenadier";
    _vestmed = "rhsusf_spcs_ucp_medic";
    
    _rifle = ["rhs_weap_m4_carryhandle","rhs_weap_m4_carryhandle_mstock","rhs_weap_m4_mstock"]call BIS_fnc_selectRandom;
    _rifleGL = "rhs_weap_m4_m203";

    _rifleMag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
    _rifleTMag = "30Rnd_556x45_Stanag_Tracer_Red";

    _dmr = "rhs_weap_m14ebrri";
    _dmrMag = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";

    _ar = "rhs_weap_m249_pip_L";
    _arMag = "rhsusf_200rnd_556x45_mixed_box";
    _arTMag ="rhsusf_200rnd_556x45_mixed_box";

    _mmg = "rhs_weap_m240B";
    _mmgMag = "rhsusf_100Rnd_762x51_m80a1epr";

    _lat = "rhs_weap_M136_hedp";

    _mat = "rhs_weap_maaws";
    _matHE = "rhs_mag_maaws_HE";
    _matHEAT = "rhs_mag_maaws_HEDP";

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

    _laser = "rhsusf_acc_anpeq15side";
    _muzzle = "";
    _sightholo = "rhsusf_acc_eotech_552";
    _sightscope = "rhsusf_acc_su230a_c";
    _sightmmg = "rhsusf_acc_elcan";
    _sightmat = "rhs_optic_maaws";
    _bipod = "rhsusf_acc_harris_bipod";
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
        addItemCountToUniform(_bandage, 4); \
        addItemCountToUniform(_morphine, 1); \
        addItemCountToUniform(_tourniquet, 2); \
        _unit addVest _vest; \
        _unit addHeadgear _headGear;

    #define GRENADES \
        addItemCountToVest(_smoke, 2); \
        addItemCountToVest(_grenade, 2);

    #define RIFLEMAGS \
        addItemCountToVest(_rifleMag, 8); \
        addItemCountToVest(_rifleTMag, 2);

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
        addItemCountToVest(_smoker, 1);
        addItemCountToVest(_smokeb, 1);
        _unit addWeapon _binocular;
    };
    
    case "SL": {
        RIFLEKIT;
        BACKRADIO;
        addItemCountToVest(_smoker, 1);
        addItemCountToVest(_smokeb, 1);
        _unit addWeapon _binocular;
    };

    case "MED": {
        CLOTHES;
        _unit addVest _vestmed;
        GRENADES;
        RIFLEMAGS;
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
        _unit addWeapon _rifle;
        ATTACHMENTS;
    };

    case "CLS": {
        RIFLEKIT;
        _unit addBackpack _medpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_morphine, 4);
        addItemCountToBackpack(_splint, 4);
        addItemCountToBackpack(_tourniquet, 4);
        addItemCountToBackpack(_bandage, 10);
    };

    case "TL": {
        CLOTHES;
        _unit addVest _vestgr;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        GRENADES;
        RIFLEMAGS;
        addItemCountToBackpack(_glhe, 11);
        addItemCountToBackpack(_glsmokew, 2);
        addItemCountToBackpack(_glsmoker, 2);
        addItemCountToBackpack(_glsmokeg, 2);
        _unit addWeapon _rifleGL;
        ATTACHMENTS;
    };

    case "RIFLE": {
        RIFLEKIT;
    };

    case "DMR": {
        CLOTHES;
        _unit addVest "rhsusf_spcs_ucp_sniper";
        GRENADES;
        addItemCountToVest(_dmrMag, 10);
        _unit addWeapon _dmr;
        _unit addPrimaryWeaponItem _sightscope;
        _unit addPrimaryWeaponItem _laser;
        _unit addPrimaryWeaponItem _bipod;
    };

    case "AR": {
        CLOTHES;
        _unit addVest "rhsusf_spcs_ucp_saw";
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

    case "ARASS": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_arMag, 2);
        addItemCountToBackpack(_arTMag, 2);
    };

    case "MMG": {
        CLOTHES;
        _unit addVest "rhsusf_spcs_ucp_machinegunner";
        GRENADES;
        _unit addBackpack _backpack;
        addItemCountToVest(_mmgMag, 1);
        addItemCountToBackpack(_mmgMag, 2);
        addItemCountToBackpack(_sparebarrel, 1);
        _unit addWeapon _mmg;
        _unit addWeaponItem [_mmg, _sightmmg];
    };

    case "MMGASS": {
        RIFLEKIT;
        _unit addBackpack _atpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_mmgMag, 8);
        _unit addWeapon _binocular;
    };

    case "LAT": {
        RIFLEKIT;
        _unit addWeapon _lat;
    };

    case "MAT": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_matHEAT, 1);
        _unit addWeapon _mat;
        _unit addWeaponItem [_mat, _sightmat];
    };

    case "MATASS": {
        RIFLEKIT;
        _unit addBackpack _atpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_matHEAT, 2);
        addItemCountToBackpack(_matHE, 2);
        _unit addWeapon _vector;
    };

    case "HAT": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_hatHEAT, 1);
        _unit addWeapon _hat;
    };

    case "HATASS": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_hatHEAT, 2);
        addItemCountToBackpack(_hatHE, 1);
        _unit addWeapon _vector;
    };

    case "SAP": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        addItemCountToUniform(_clacker, 1);
        addItemCountToBackpack(_democharge, 6);
        addItemCountToUniform(_defkit, 1);
        addItemCountToBackpack(_wirecutter, 1);
    };

};
