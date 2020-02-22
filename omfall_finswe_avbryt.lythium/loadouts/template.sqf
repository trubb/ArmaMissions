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
//_unit linkItem "ItemWatch";     // give watch or microDAGR
_unit linkItem "TFAR_microdagr";
_unit linkItem "rhsusf_ANPVS_14";

_headGear = [
    "sfp_m90beige_helmet_clean_peltor_nvg_velcro",
    "sfp_m90beige_helmet_clean_headset_nvg_velcro",
    "sfp_m90d_helmet_peltor_nvg",
    "sfp_m90d_helmet_headset_nvg"
] call BIS_fnc_selectRandom;
_headGearCrew = "H_HelmetCrew_I";
_headGearHeli = "H_PilotHelmetHeli_B";

_backpack = "sfp_backpack_stridssack08";
_medpack = "sfp_backpack_stridssack08";
_atpack = "sfp_backpack_stridssack08";
_ladder = "ACE_TacticalLadder_Pack";
_parachute = "ACE_NonSteerableParachute";
_uavpack = "B_UAV_01_backpack_F";

_backradio = "sfp_ra180";
_backradioLarge = "sfp_stridssack2000_ra_ksk90";

_uniform = "sfp_m90d_uniform_fs18";

_vest = "sfp_kroppsskydd12";
_vestGL = "sfp_kroppsskydd12_gl";
_vestMG = "sfp_kroppsskydd12_mg";

_pistol = "ACE_Flashlight_Maglite_ML300L";

_rifle = "sfp_ak5c_alt";
_rifleGL = "sfp_ak5c_m203";

_rifleMag = "sfp_30Rnd_556x45_Stanag_plastic";
_rifleTMag = "sfp_30Rnd_556x45_Stanag_tracer_plastic";

_dmr = "sfp_ak4d";
_dmrMag = "sfp_20Rnd_762x51_ak4_ap";

_ar = "rhs_weap_m249_pip_S_para";
_arMag = "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote";
_arTMag ="rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote";

_mmg = "sfp_ksp90c";
_mmgMag = "sfp_200Rnd_556x45_ksp90";

_lat = "rhs_weap_M136_hedp";

_mat = "launch_MRAWS_green_rail_F";
_matHE = "MRAWS_HE_F";
_matHEAT = "MRAWS_HEAT_F";

_hat = "launch_B_Titan_short_F";
_hatHE = "Titan_AP";
_hatHEAT = "Titan_AT";

_aa = "launch_B_Titan_F";
_aaMag = "Titan_AA";

_grenade = "sfp_handgrenade_shgr56";
_smoke = "SmokeShell";
_smokeb = "SmokeShellBlue";
_smokeg = "SmokeShellGreen";
_smokeo = "SmokeShellOrange";
_smokep = "SmokeShellPurple";
_smoker = "SmokeShellRed";
_smokey = "SmokeShellYellow";

_glhe = "1Rnd_HE_Grenade_shell";
_glflareg = "ACE_40mm_Flare_green";
_glflareir = "ACE_40mm_Flare_ir";
_glflarer = "ACE_40mm_Flare_red";
_glflarew = "ACE_40mm_Flare_white";
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

_laser = "sfp_dbal2";
_muzzle = "muzzle_snds_m";
_sightholo = "sfp_optic_aimpoint";
_sightscope = "rhsusf_acc_su230a";
_bipod = "bipod_01_f_blk";
_sparebarrel = "ACE_SpareBarrel";

_bandage = "ACE_elasticBandage";
_tourniquet = "ACE_tourniquet";
_morphine = "ACE_morphine";
_adenosine = "ACE_adenosine";
_splint = "ACE_splint";
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
_spottingscope = "rhsusf_bino_leopold_mk4";
_gps = "ItemGPS";
_uavterm = "B_UavTerminal";
_uavbattery ="ACE_UAVBattery";
_dagr = "ACE_DAGR";
_rtable = "ACE_RangeTable_82mm";
_maptools = "ACE_MapTools";
_flashlight = "ACE_Flashlight_MX991";

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
    addItemCountToUniform(_morphine, 1); \
    addItemCountToUniform(_tourniquet, 2); \
    addItemCountToUniform(_chemuho, 2); \
    addItemCountToUniform(_chemhg, 2); \
    addItemCountToUniform(_chemhb, 2); \
    addItemCountToUniform(_chemir, 2); \
    addItemCountToUniform(_irstrobe, 2); \
    addItemCountToUniform(_flarer, 2); \
    _unit addVest _vest; \
    _unit addHeadgear _headGear; \
    _unit addItemToUniform _dagr; //\
    //_unit addItemToUniform _flashlight; \

#define GRENADES \
    addItemCountToVest(_smoke, 2); \
    addItemCountToVest(_grenade, 2); \

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
    
    case "UAV": {
        RIFLEKIT;
        _unit addBackpack _uavpack;
        _unit linkItem _uavterm;
    };
    
    case "SL": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        _unit addWeapon _binocular;
        _unit addWeapon _lat;
        addItemCountToBackpack(_arMag, 1);
    };

    case "CLS": {
        RIFLEKIT;
        _unit addBackpack _medpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_blood, 4);
        addItemCountToBackpack(_epine, 8);
        addItemCountToBackpack(_morphine, 8);
        addItemCountToBackpack(_adenosine, 8);
        addItemCountToBackpack(_splint, 8);
        addItemCountToBackpack(_tourniquet, 8);
        addItemCountToBackpack(_bandage, 20);
        addItemCountToBackpack(_smoker, 2);
        addItemCountToBackpack(_smokeg, 2);
        addItemCountToBackpack(_chemuho, 2);
        addItemCountToBackpack(_chemhb, 2);
        addItemCountToBackpack(_chemhg, 2);
    };

    case "TL": {
        CLOTHES;
        _unit addVest _vestGL;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        GRENADES;
        RIFLEMAGS;
        addItemCountToBackpack(_glhe, 9);
        addItemCountToBackpack(_glsmokew, 2);
        addItemCountToBackpack(_glsmoker, 2);
        addItemCountToBackpack(_glflarew, 2);
        addItemCountToBackpack(_glflareg, 2);
        addItemCountToBackpack(_glflarer, 2);
        addItemCountToBackpack(_glflareir, 4);
        addItemCountToBackpack(_arMag, 1);
        _unit addWeapon _rifleGL;
        _unit addWeapon _binocular;
        ATTACHMENTS;
    };

    case "RIFLE": {
        RIFLEKIT;
        _unit addWeapon _lat;
        _unit addWeapon _spottingscope;
        _unit addBackpack _backpack;
        addItemCountToBackpack(_arMag, 1);
    };

    case "BASIC": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        addItemCountToBackpack(_arMag, 2);
        addItemCountToBackpack(_rifleMag, 6);
        addItemCountToBackpack(_rifleTMag, 2);
    };

    case "DMR": {
        CLOTHES;
        GRENADES;
        _unit addBackpack _backpack;
        addItemCountToVest(_dmrMag, 6);
        addItemCountToBackpack(_dmrMag, 5);
        _unit addWeapon _dmr;
        _unit addPrimaryWeaponItem _sightscope;
        _unit addPrimaryWeaponItem _laser;
        _unit addPrimaryWeaponItem _bipod;
        _unit addWeapon _lat;
    };

    case "AR": {
        CLOTHES;
        _unit addVest _vestMG;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToUniform(_smoke, 2);
        addItemCountToUniform(_grenade, 2);
        addItemCountToVest(_arMag, 3);
        addItemCountToBackpack(_sparebarrel, 1);
        addItemCountToBackpack(_arMag, 1);
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
        _unit addHeadgear _headGearCrew;
    };

    case "HELI": {
        RIFLEKIT;
        _unit addHeadgear _headGearHeli;
        _unit linkItem "ACE_NVG_Wide";
        _unit linkItem _gps;
    };

    case "CRATE": {
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
        _unit addItemCountToCargo(_bandage, 20);
        _unit addItemCountToCargo(_epine, 4);
        _unit addItemCountToCargo(_adenosine, 4);
        _unit addItemCountToCargo(_blood, 4);
        _unit addItemCountToCargo(_morphine, 4);
        _unit addItemCountToCargo(_splint, 10);
        _unit addItemCountToCargo(_tourniquet, 8);
        _unit addItemCountToCargo(_lat, 1);
        _unit addItemCountToCargo(_chemuho, 8);
        _unit addItemCountToCargo(_chemhg, 8);
        _unit addItemCountToCargo(_chemhb, 8);
        _unit addItemCountToCargo(_chemir, 8);
        _unit addItemCountToCargo(_irstrobe, 8);
        _unit addItemCountToCargo(_flarer, 8);
        _unit addItemCountToCargo(_uavbattery, 1);
    };

    case "UAVCRATE": {
        _unit addItemCountToCargo(_uavbattery, 1);
        _unit addItemCountToCargo(_uavpack, 1);
    };

};

_unit addWeapon _pistol;
