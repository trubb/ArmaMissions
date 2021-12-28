/*
    Modify as needed and put the following line into the unit's init field:
    id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\template.sqf";
*/
params ["_type", "_unit"];

_type = _this select 0;
_unit = _this select 1;

// TUN Respawn System settings
// might not be needed if you set "save gear" as the type
//_unit setVariable ["Tun_Respawn_Role", _type, true]; // Tun respawn gear variable
//_unit setVariable ["Tun_Respawn_GearPath","loadouts\template.sqf", true]; // Tun respawn gearscript path

if (!(local _unit)) exitwith {}; // to make the script not run in some bad way

#define addItemCountToInventory(item, count, inventory) for "_i" from 1 to count do {_unit inventory item;};
#define addItemCountToUniform(item, count) addItemCountToInventory(item, count, addItemToUniform);
#define addItemCountToVest(item, count) addItemCountToInventory(item, count, addItemToVest);
#define addItemCountToBackpack(item, count) addItemCountToInventory(item, count, addItemToBackpack);

#define addItemCountToCargo(item, count) addItemCargoGlobal [item, count];
#define addBackpackCountToCargo(item, count) addBackpackCargoGlobal [item, count];

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

_headGear = [
        "UK3CB_H_Beanie_01",
        "UK3CB_CHC_C_H_Can_Cap",
        "UK3CB_NFA_B_H_M88_Field_Cap_FLK",
        "UK3CB_H_Safari_Hat_Brown",
        "UK3CB_H_Villager_Cap_01",
        "UK3CB_H_Beanie_02_GRY",
        "UK3CB_H_Bandanna_Win",
        ""
    ] call BIS_fnc_selectRandom;

_backpack = "UK3CB_CCM_I_B_HIKER";
_medpack = "UK3CB_CCM_I_B_HIKER";
_atpack = "rhs_rpg_2";
_ladder = "ACE_TacticalLadder_Pack";
_parachute = "ACE_NonSteerableParachute";

_uniform = [
        "UK3CB_CCM_I_U_CIT_01",
        "UK3CB_CCM_I_U_COACH_02",
        "UK3CB_CCM_I_U_VILL_04"
    ] call BIS_fnc_selectRandom;

_vest = "UK3CB_V_Pouch";

_rifle = "rhs_weap_akm";

_rifleMag = "rhs_30Rnd_762x39mm";
_rifleTMag = "rhs_30Rnd_762x39mm";

_ar = "UK3CB_RPK";
_arMag = "UK3CB_RPK_75rnd_762x39_Y";
_arTMag ="UK3CB_RPK_75rnd_762x39_Y";

_mat = "rhs_weap_rpg7";
_matHE = "rhs_rpg7_OG7V_mag";
_matHEAT = "rhs_rpg7_PG7VL_mag";

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

_laser = "rhsusf_acc_wmx_bk";
//_muzzle = "muzzle_snds_m";
_sightholo = ["rhsusf_acc_compm4","rhsusf_acc_eotech_552","rhsusf_acc_rx01_nofilter"] call BIS_fnc_selectRandom;
_sightscope = "rhsusf_acc_acog";
_bipod = "rhsusf_acc_harris_bipod";
_sparebarrel = "ACE_SpareBarrel";

_bandage = "ACE_elasticBandage";
_tourniquet = "ACE_tourniquet";
_morphine = "ACE_morphine";
_adenosine = "ACE_adenosine";
_splint = "adv_aceSplint_splint";
_epine = "ACE_epinephrine";
_blood = "ACE_bloodIV";
_pak = "ACE_personalAidKit";

_democharge = "DemoCharge_Remote_Mag";
_clacker = "ACE_Clacker";
_defkit = "ACE_DefusalKit";
_etool = "ACE_EntrenchingTool";
_wirecutter = "ACE_wirecutter";
_toolkit = "ToolKit";
_handcuffs = "ACE_CableTie";

_binocular = "Binocular";
_vector = "ACE_Vector";
_designator = "Laserdesignator";
_designatorBattery = "Laserbatteries";
_gps = "ItemGPS";
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
    addItemCountToUniform(_morphine, 2); \
    addItemCountToUniform(_tourniquet, 2); \
    _unit addItemToUniform(_maptools); \
    _unit addVest _vest; \
    _unit addHeadgear _headGear;

#define GRENADES \
    addItemCountToVest(_smoke, 2); \
    addItemCountToVest(_grenade, 2); \
    addItemCountToVest(_handcuffs, 2);

#define RIFLEMAGS \
    addItemCountToVest(_rifleTMag, 2); \
    addItemCountToVest(_rifleMag, 8);

#define CARBINEMAGS \
    addItemCountToVest(_carbineMag, 8);

#define RIFLEKIT \
    CLOTHES; \
    GRENADES; \
    RIFLEMAGS; \
    _unit addWeapon _rifle; \
    //ATTACHMENTS;

#define CARBINEKIT \
    CLOTHES; \
    GRENADES; \
    CARBINEMAGS; \
    _unit addWeapon _carbine; \
    //ATTACHMENTS;

switch (_type) do {

    case "SL": {
        RIFLEKIT;
        BACKRADIO;
        _unit addWeapon _binocular;
    };

    case "RIF": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        addItemCountToBackpack(_rifleMag, 4);
    };

    case "AR": {
        CLOTHES;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        GRENADES;
        addItemCountToVest(_arMag, 3);
        addItemCountToBackpack(_arMag, 3);
        _unit addWeapon _ar;
    };

    case "AT": {
        RIFLEKIT;
        _unit addBackpack _atpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_matHEAT, 3);
        addItemCountToBackpack(_matHE, 1);
        _unit addWeapon _mat;
    };
};
