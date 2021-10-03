/*
    Modify as needed and put the following line into the unit's init field:
    id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\template.sqf";
*/
params ["_type", "_unit"];

_type = _this select 0;
_unit = _this select 1;

if (!(local _unit)) exitwith {}; // to make the script not run in some bad way

#define addItemCountToInventory(item, count, inventory) for "_i" from 1 to count do {_unit inventory item;};
#define addItemCountToUniform(item, count) addItemCountToInventory(item, count, addItemToUniform);
#define addItemCountToVest(item, count) addItemCountToInventory(item, count, addItemToVest);
#define addItemCountToBackpack(item, count) addItemCountToInventory(item, count, addItemToBackpack);

#define addItemCountToCargo(item, count) addItemCargoGlobal [item, count];

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
_unit linkItem "ItemWatch";     // give watch or microDAGR
_unit linkItem "TFAR_microdagr";
//_unit linkItem "rhsusf_ANPVS_14";

_headGear = ["rhsgref_6b27m_ttsko_digi"] call BIS_fnc_selectRandom;
//_headGearCrew = "H_HelmetCrew_I";
//_headGearHeli = "H_PilotHelmetHeli_B";

_backpack = "B_Kitbag_rgr";
_medpack = "B_Kitbag_rgr";
_atpack = "B_Kitbag_rgr";
_ladder = "ACE_TacticalLadder_Pack";
_parachute = "ACE_NonSteerableParachute";

_backradio = "UK3CB_B_O_Radio_Backpack";
_backradioLarge = "UK3CB_B_O_Radio_Backpack";

_uniform = ["UK3CB_TKA_B_U_CombatUniform_01_Navy",
            "UK3CB_TKA_B_U_CombatUniform_02_Navy"] call BIS_fnc_selectRandom;

_vest = "rhsgref_otv_digi";

_rifle = "arifle_CTAR_blk_F";
_rifleGL = "arifle_CTAR_GL_blk_F";

_carbine = "arifle_CTAR_blk_F";

_rifleMag = "30Rnd_580x42_Mag_F";
_rifleTMag = "30Rnd_580x42_Mag_Tracer_F";

_dmr = "srifle_DMR_07_blk_F";
_dmrMag = "ACE_10Rnd_580x42_DBP88_Mag";
_dmrTMag = "ACE_10Rnd_580x42_DBP88_Mag";

_ar = "arifle_CTARS_blk_F";
_arMag = "100Rnd_580x42_Mag_F";
_arTMag ="100Rnd_580x42_Mag_Tracer_F";

_mmg = "MMG_02_black_F";
_mmgMag = "130Rnd_338_Mag";

_lat = "rhs_weap_rpg26";

_mat = "rhs_weap_rpg7";
_matHE = "rhs_rpg7_OG7V_mag";
_matHEAT = "rhs_rpg7_PG7VL_mag";
_matSight = "rhs_acc_pgo7v2";

_hat = "launch_I_Titan_short_F";
_hatHE = "Titan_AP";
_hatHEAT = "Titan_AT";

//_aa = "launch_B_Titan_F";
//_aaMag = "Titan_AA";

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

_chemuho = "ACE_Chemlight_UltraHiOrange";
_chemhb = "ACE_Chemlight_HiBlue";
_chemhg = "ACE_Chemlight_HiGreen";
_chemir ="ACE_Chemlight_IR";
_irstrobe ="ACE_IR_Strobe_Item";

_flareg = "ACE_HandFlare_Green";
_flarer = "ACE_HandFlare_Red";
_flarew = "ACE_HandFlare_White";
_flarey = "ACE_HandFlare_Yellow";

//_laser = "rhsusf_acc_wmx_bk";
//_muzzle = "muzzle_snds_m";
_sightholo = "optic_holosight_blk_f";
_sightscope = "optic_hamr";
_bipod = "bipod_02_f_tan";
_sparebarrel = "ACE_SpareBarrel";

_bandage = "ACE_elasticBandage";
_tourniquet = "ACE_tourniquet";
_morphine = "ACE_morphine";
_adenosine = "ACE_adenosine";
_splint = "ACE_splint";
_epine = "ACE_epinephrine";
_blood = "ACE_bloodIV";
_pak = "ACE_personalAidKit";

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
_flashlight = "ACE_Flashlight_MX991";

_uavBag = "O_UAV_01_backpack_F";
_term = "O_UavTerminal";
_uavBattery = "ACE_UAVBattery";

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
    addItemCountToUniform(_bandage, 6); \
    addItemCountToUniform(_morphine, 2); \
    addItemCountToUniform(_tourniquet, 2); \
    _unit addItemToUniform(_maptools); \
    _unit addVest _vest; \
    _unit addHeadgear _headGear;

#define GRENADES \
    addItemCountToUniform(_smoke, 1); \
    addItemCountToUniform(_grenade, 2);

#define RIFLEMAGS \
    addItemCountToVest(_rifleTMag, 2); \
    addItemCountToVest(_rifleMag, 8);

#define RIFLEKIT \
    CLOTHES; \
    GRENADES; \
    RIFLEMAGS; \
    _unit addWeapon _rifle; \
    ATTACHMENTS;

#define CARBINEKIT \
    CLOTHES; \
    GRENADES; \
    RIFLEMAGS; \
    _unit addWeapon _carbine; \
    ATTACHMENTS;

switch (_type) do {

    case "PL": {
        CARBINEKIT;
        BACKRADIO;
        _unit addWeapon _binocular;
        _unit addItemToUniform(_dagr);
    };

    case "UAV": {
        _unit linkItem _term;
        RIFLEKIT;
        _unit addBackpack _uavBag;
//        _unit addItemCountToVest(_uavBattery, 1); // WTF dont work?
    };

    case "MEDIC": {
        CARBINEKIT;
        _unit addBackpack _medpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_blood, 6);
        addItemCountToBackpack(_epine, 8);
        addItemCountToBackpack(_adenosine, 8);
        addItemCountToBackpack(_morphine, 8);
        addItemCountToBackpack(_splint, 8);
        addItemCountToBackpack(_tourniquet, 8);
        addItemCountToBackpack(_bandage, 30);
        addItemCountToBackpack(_smoker, 1);
        addItemCountToBackpack(_smokeg, 1);
        addItemCountToBackpack(_pak, 1);
    };
    
    case "SL": {
        CARBINEKIT;
        BACKRADIO;
        _unit addWeapon _binocular;
        _unit addItemToUniform(_dagr);
        addItemCountToBackpack(_arMag, 2);
    };

    case "CLS": {
        CARBINEKIT;
        _unit addBackpack _medpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_blood, 2);
        addItemCountToBackpack(_epine, 4);
        addItemCountToBackpack(_morphine, 4);
        addItemCountToBackpack(_splint, 4);
        addItemCountToBackpack(_tourniquet, 4);
        addItemCountToBackpack(_bandage, 20);
        addItemCountToBackpack(_smoker, 1);
        addItemCountToBackpack(_smokeg, 1);
        addItemCountToBackpack(_arMag, 1);
    };

    case "TL": {
        CLOTHES;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        GRENADES;
        RIFLEMAGS;
        addItemCountToBackpack(_glhe, 9);
        addItemCountToBackpack(_glsmokew, 4);
        addItemCountToBackpack(_glsmoker, 4);
        //addItemCountToBackpack(_glflareg, 6);
        addItemCountToBackpack(_arMag, 2);
        _unit addWeapon _rifleGL;
        _unit addItemToUniform(_dagr);
        ATTACHMENTS;
    };

    case "RIFLE": {
        RIFLEKIT;
    };

    case "DMR": {
        CLOTHES;
        GRENADES;
        RIFLEMAGS;
        _unit addBackpack _backpack;
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
        addItemCountToVest(_arMag, 5);
        addItemCountToBackpack(_arMag, 5);
        addItemCountToBackpack(_arTMag, 3);
        //addItemCountToBackpack(_sparebarrel, 1);
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
        _unit addBackpack _backpack;
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
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_arMag, 5);
    };

    case "MATSL": {
        CARBINEKIT;
        _unit addBackpack _backradio;
        _unit addWeapon _binocular;
        _unit addItemToUniform(_dagr);
        addItemCountToBackpack(_mmgMag, 2);
        addItemCountToBackpack(_smoker, 1);
        addItemCountToBackpack(_smokeg, 1);
    };

    case "MATTL": {
        CLOTHES;
        _unit addWeapon _binocular;
        _unit addItemToUniform(_dagr);
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        GRENADES;
        RIFLEMAGS;
        addItemCountToBackpack(_glhe, 9);
        addItemCountToBackpack(_glsmokew, 4);
        addItemCountToBackpack(_glsmoker, 4);
        addItemCountToBackpack(_glflareg, 6);
        _unit addWeapon _rifleGL;
        ATTACHMENTS;
        addItemCountToBackpack(_mmgMag, 2);
    };

    case "MATCLS": {
        CARBINEKIT;
        _unit addBackpack _medpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_blood, 2);
        addItemCountToBackpack(_epine, 4);
        addItemCountToBackpack(_morphine, 4);
        addItemCountToBackpack(_splint, 4);
        addItemCountToBackpack(_tourniquet, 4);
        addItemCountToBackpack(_bandage, 20);
        addItemCountToBackpack(_smoker, 1);
        addItemCountToBackpack(_smokeg, 1);
        addItemCountToBackpack(_matHEAT, 1);
        addItemCountToBackpack(_matHE, 1);
    };

    case "MAT": {
        CARBINEKIT;
        _unit addBackpack _atpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_matHEAT, 1);
        _unit addWeapon _mat;
        _unit addSecondaryWeaponItem _matSight;
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
        addItemCountToBackpack(_hatHEAT, 3);
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

    case "ENG": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_democharge, 6);
        addItemCountToBackpack(_clacker, 1);
        addItemCountToBackpack(_defkit, 1);
        addItemCountToBackpack(_etool, 1);
        addItemCountToBackpack(_wirecutter, 1);
    };

    case "RESUP": {
        _unit addItemCountToCargo(_rifleMag, 20);
        _unit addItemCountToCargo(_arMag, 4);
        _unit addItemCountToCargo(_grenade, 8);
        _unit addItemCountToCargo(_glhe, 12);
        _unit addItemCountToCargo(_glsmokew, 6);
        _unit addItemCountToCargo(_glflarew, 2);
        _unit addItemCountToCargo(_glflareg, 2);
        _unit addItemCountToCargo(_glflarer, 2);
        _unit addItemCountToCargo(_glflareir, 4);
        _unit addItemCountToCargo(_smoke, 6);
        _unit addItemCountToCargo(_bandage, 10);
        _unit addItemCountToCargo(_epine, 4);
        _unit addItemCountToCargo(_adenosine, 4);
        _unit addItemCountToCargo(_blood, 4);
        _unit addItemCountToCargo(_morphine, 4);
        _unit addItemCountToCargo(_splint, 8);
        _unit addItemCountToCargo(_tourniquet, 8);
        _unit addItemCountToCargo(_lat, 1);
        _unit addItemCountToCargo(_chemuho, 8);
        _unit addItemCountToCargo(_chemhg, 8);
        _unit addItemCountToCargo(_chemhb, 8);
        _unit addItemCountToCargo(_chemir, 8);
        _unit addItemCountToCargo(_irstrobe, 8);
        _unit addItemCountToCargo(_flarer, 8);
        _unit addItemCountToCargo(_uavBattery, 4);
    };

};
