/*
    Modify as needed and put the following line into the unit's init field:
    id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\blufor.sqf";
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
    _unit linkItem "TFAR_fadak";     // Which radio will be given is defined via TFAR CBA Settings
//  _unit linkItem "ItemWatch";     // give watch or microDAGR
    _unit linkItem "TFAR_microdagr";
    _unit linkItem "rhsusf_ANPVS_14";

    _headGear = ["CUP_H_TK_Lungee","CUP_H_TKI_Lungee_Open_01","CUP_H_TKI_Lungee_Open_05","CUP_H_TKI_Lungee_01","CUP_H_TKI_Pakol_2_04","CUP_H_TKI_Lungee_06","CUP_H_TKI_Pakol_2_05",""] call BIS_fnc_selectRandom;
    _headGearCrew = "H_HelmetCrew_I";
    _headGearHeli = "H_PilotHelmetHeli_B";

    _backpack = "CUP_B_CivPack_WDL";
    _medpack = "CUP_B_CivPack_WDL";
    _atpack = "CUP_B_CivPack_WDL";
    _ladder = "ACE_TacticalLadder_Pack";
    _parachute = "ACE_NonSteerableParachute";

    _backradio = "CUP_B_CivPack_WDL";
    _backradioLarge = "CUP_B_CivPack_WDL";

    _uniform = ["CUP_U_I_GUE_Woodland1","CUP_U_C_Woodlander_03","CUP_U_B_CZ_DST_TShirt","CUP_U_B_CDF_DST_1"] call BIS_fnc_selectRandom;

    _vest = ["CUP_V_O_Ins_Carrier_Rig_Com","CUP_V_O_Ins_Carrier_Rig_Light","CUP_V_O_Ins_Carrier_Rig_MG"] call BIS_fnc_selectRandom;

    _rifle = "CUP_arifle_AKM";
    _rifleGL = "CUP_arifle_AKM_GL";

    _rifleMag = "30Rnd_762x39_Mag_F";
    _rifleTMag = "30Rnd_762x39_Mag_Tracer_F";

    _dmr = "arifle_SPAR_03_snd_F";
    _dmrMag = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";

    _ar = "CUP_lmg_PKM";
    _arMag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";
    _arTMag ="CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";

    _mmg = "MMG_02_sand_F";
    _mmgMag = "130Rnd_338_Mag";

    _lat = "CUP_launch_M72A6";

    _mat = "CUP_launch_RPG7V";
    _matHE = "CUP_OG7_M";
    _matHEAT = "CUP_PG7V_M";

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

    _glhe = "CUP_1Rnd_HE_GP25_M";
    _glflareg = "CUP_IlumFlareGreen_GP25_M";
    _glflareir = "CUP_IlumFlareRed_GP25_M";
    _glflarer = "CUP_FlareRed_GP25_M";
    _glflarew = "CUP_IlumFlareWhite_GP25_M";
    _glflarey = "CUP_FlareYellow_GP25_M";
    _glsmokeb = "";
    _glsmokeg = "CUP_1Rnd_SmokeGreen_GP25_M";
    _glsmokeo = "";
    _glsmokep = "";
    _glsmoker = "CUP_1Rnd_SmokeRed_GP25_M";
    _glsmokew = "CUP_1Rnd_SMOKE_GP25_M";
    _glsmokey = "CUP_1Rnd_SmokeYellow_GP25_M";

    _laser = "";
    _muzzle = "";
    _sightholo = "";
    _sightscope = "";
    _bipod = "";
    _sparebarrel = "ACE_SpareBarrel";

    _ifak = "FirstAidKit";
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
        clearAllItemsFromBackpack _unit; \
        addItemCountToBackpack(_smoke, 2); \
        addItemCountToBackpack(_smoker, 2); \
        addItemCountToBackpack(_smokeg, 2);

    #define CLOTHES \
        _unit forceAddUniform _uniform; \
        _unit addItemToUniform _ifak; \
        _unit addItemToUniform _ifak; \
        _unit addVest _vest; \
        _unit addHeadgear _headGear;

    #define GRENADES \
        addItemCountToVest(_smoke, 1); \
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
        BACKRADIO;
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

    case "GREN": {
        CLOTHES;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        GRENADES;
        RIFLEMAGS;
        addItemCountToBackpack(_glhe, 7);
        addItemCountToBackpack(_glsmokew, 2);
        addItemCountToBackpack(_glsmoker, 2);
        addItemCountToBackpack(_glflareg, 2);
        _unit addWeapon _rifleGL;
        ATTACHMENTS;
    };

    case "RIFLE": {
        RIFLEKIT;
    };

    case "DMR": {
        CLOTHES;
        GRENADES;
        addItemCountToVest(_dmrMag, 10);
        _unit addWeapon _dmr;
        _unit addPrimaryWeaponItem _sightscope;
        _unit addPrimaryWeaponItem _laser;
        _unit addPrimaryWeaponItem _bipod;
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

    case "ARASS": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_arMag, 2);
        addItemCountToBackpack(_arTMag, 2);
    };

    case "MMG": {
        CLOTHES;
        GRENADES;
        addItemCountToVest(_mmgMag, 1);
        addItemCountToBackpack(_mmgMag, 2);
        addItemCountToBackpack(_sparebarrel, 1);
        _unit addWeapon _mmg;
        _unit addPrimaryWeaponItem _bipod;
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
        addItemCountToBackpack(_matHEAT, 3);
        _unit addWeapon _mat;
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

    case "AA": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_aaMag, 3);
        _unit addWeapon _aa;
    };

    case "CREW": {
        RIFLEKIT;
        _unit addHeadgear _headGearCrew;
    };

    case "HELI": {
        RIFLEKIT;
        _unit addHeadgear _headGearHeli;
    };

};
