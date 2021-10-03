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
_unit linkItem "TFAR_rf7800str";     // Which radio will be given is defined via TFAR CBA Settings
//_unit linkItem "ItemWatch";     // give watch or microDAGR
_unit linkItem "TFAR_microdagr";
//_unit linkItem "rhsusf_ANPVS_14";

_headGear = ["CUP_H_PASGTv2_WDL","CUP_H_PASGTv2_NVG_WDL","CUP_H_PASGTv2_WDL_CF","CUP_H_PASGTv2_WDL_GG"] call BIS_fnc_selectRandom;
_headGearCrew = "H_HelmetCrew_I";
_headGearHeli = "H_PilotHelmetHeli_B";

_backpack = "CUP_B_USMC_MOLLE_WDL";
_medpack = "CUP_B_USMC_MOLLE_WDL";
_atpack = "CUP_B_USMC_MOLLE_WDL";
_ladder = "ACE_TacticalLadder_Pack";
_parachute = "ACE_NonSteerableParachute";

_backradio = "TFAR_rt1523g_bwmod";
_backradioLarge = "TFAR_rt1523g_green";

_uniform = ["CUP_U_B_BDUv2_roll_gloves_dirty_M81",
            "CUP_U_B_BDUv2_roll_gloves_M81",
            "CUP_U_B_BDUv2_roll_dirty_M81",
            "CUP_U_B_BDUv2_roll_M81",
            "CUP_U_B_BDUv2_M81",
            "CUP_U_B_BDUv2_dirty_M81",
            "CUP_U_B_BDUv2_gloves_M81",
            "CUP_U_B_BDUv2_gloves_dirty_M81"] call BIS_fnc_selectRandom;

_vest = ["CUP_V_MBSS_PACA2_CB","CUP_V_MBSS_PACA_CB"] call BIS_fnc_selectRandom;

_pistol = "CUP_hgun_M9";
_pistolMag = "CUP_15Rnd_9x19_M9";

_rifle = "CUP_arifle_M16A2";
_rifleGL = "CUP_arifle_M16A2_GL";

_rifleMag = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
_rifleTMag = "30Rnd_556x45_Stanag_Tracer_Red";

_dmr = "";
_dmrMag = "";

_ar = "CUP_lmg_M60E4_norail";
_arMag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_arTMag ="CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

_mmg = "";
_mmgMag = "";

_lat = "CUP_launch_M72A6";

_mat = "CUP_launch_Mk153Mod0";
_matHE = "CUP_SMAW_HEDP_M";
_matHEAT = "CUP_SMAW_HEAA_M";

_hat = "CUP_launch_M47";
_hatHE = "CUP_Dragon_EP1_M";
_hatHEAT = "CUP_Dragon_EP1_M";

_aa = "";
_aaMag = "";

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

_mohe = "ACE_1Rnd_82mm_Mo_HE";
_mosmok = "ACE_1Rnd_82mm_Mo_Smoke";

_laser = "";
_muzzle = "";
_sightholo = "";
_sightscope = "";
_bipod = "";
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
_toolkit = "ToolKit";

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
    addItemCountToBackpack(_smokeb, 2);

#define CLOTHES \
    _unit forceAddUniform _uniform; \
    addItemCountToUniform(_bandage, 6); \
    addItemCountToUniform(_morphine, 2); \
    addItemCountToUniform(_tourniquet, 2); \
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
    _unit addWeapon _rifle; //\
    //ATTACHMENTS;

switch (_type) do {

    case "PL": {
        RIFLEKIT;
        addItemCountToUniform(_dagr, 1);
        BACKRADIO;
        addItemCountToUniform(_pistolMag, 3);
        _unit addWeapon _pistol;
        _unit addWeapon _binocular;
        _unit linkItem "TFAR_anprc152";
    };
    
    case "SL": {
        CLOTHES;
        addItemCountToUniform(_dagr, 1);
        addItemCountToUniform(_pistolMag, 3);
        _unit addWeapon _pistol;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        GRENADES;
        RIFLEMAGS;
        addItemCountToBackpack(_glhe, 9);
        addItemCountToBackpack(_glsmokew, 4);
        addItemCountToBackpack(_glsmoker, 4);
        _unit addWeapon _rifleGL;
        _unit addWeapon _binocular;
        _unit linkItem "TFAR_anprc152";
    };

    case "MEDIC": {
        RIFLEKIT;
        addItemCountToUniform(_pistolMag, 3);
        _unit addWeapon _pistol;
        _unit addBackpack _medpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_blood, 4);
        addItemCountToBackpack(_epine, 8);
        addItemCountToBackpack(_adenosine, 8);
        addItemCountToBackpack(_morphine, 8);
        addItemCountToBackpack(_splint, 8);
        addItemCountToBackpack(_tourniquet, 8);
        addItemCountToBackpack(_bandage, 20);
        addItemCountToBackpack(_smoker, 2);
        addItemCountToBackpack(_smokeg, 2);
        addItemCountToBackpack(_pak, 1);
    };

    case "TL": {
        CLOTHES;
        addItemCountToUniform(_dagr, 1);
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        GRENADES;
        RIFLEMAGS;
        addItemCountToBackpack(_glhe, 9);
        addItemCountToBackpack(_glsmokew, 4);
        addItemCountToBackpack(_glsmoker, 4);
        addItemCountToBackpack(_wirecutter, 1);
        _unit addWeapon _rifleGL;
        //ATTACHMENTS;
    };

    case "RIFLE": {
        RIFLEKIT;
    };

    case "BEARER": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        addItemCountToBackpack(_rifleMag, 8);
        addItemCountToBackpack(_arMag, 2);
        addItemCountToBackpack(_grenade, 4);
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
        addItemCountToVest(_arMag, 2);
        addItemCountToBackpack(_arMag, 1);
        addItemCountToBackpack(_arTMag, 2);
        addItemCountToBackpack(_sparebarrel, 1);
        _unit addWeapon _ar;
        //ATTACHMENTS;
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
        addItemCountToBackpack(_matHEAT, 1);
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
        addItemCountToUniform(_dagr, 1);
        _unit addHeadgear _headGearCrew;
        _unit addBackpack _backpack;
        addItemCountToBackpack(_toolkit, 1);
    };

    case "MOTL": {
        RIFLEKIT;
        _unit addBackpack _backradio;
        addItemCountToUniform(_dagr, 1);
        addItemCountToUniform(_maptools, 1);
        addItemCountToUniform(_rtable, 1);
    };

    case "MOCREW": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        addItemCountToUniform(_maptools, 1);
        addItemCountToUniform(_rtable, 1);
    };

    case "HELI": {
        RIFLEKIT;
        _unit addHeadgear _headGearHeli;
        _unit addBackpack _backpack;
        addItemCountToBackpack(_toolkit, 1);
    };

    case "AAV": {
        _unit addItemCountToCargo(_rifleMag, 40);
        _unit addItemCountToCargo(_arMag, 14);
        _unit addItemCountToCargo(_grenade, 20);
        _unit addItemCountToCargo(_glhe, 20);
        _unit addItemCountToCargo(_glsmokew, 16);
        _unit addItemCountToCargo(_smoke, 12);
        _unit addItemCountToCargo(_bandage, 40);
        _unit addItemCountToCargo(_epine, 8);
        _unit addItemCountToCargo(_adenosine, 8);
        _unit addItemCountToCargo(_blood, 8);
        _unit addItemCountToCargo(_morphine, 8);
        _unit addItemCountToCargo(_splint, 20);
        _unit addItemCountToCargo(_tourniquet, 14);
        _unit addItemCountToCargo(_lat, 8);
        _unit addItemCountToCargo(_wirecutter, 2);
        _unit addItemCountToCargo(_sparebarrel, 4);
    };

    case "MTVR": {
        _unit addItemCountToCargo(_mohe, 60);
        _unit addItemCountToCargo(_mosmok, 20);
    };

};
