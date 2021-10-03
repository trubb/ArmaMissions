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
//_unit linkItem "rhsusf_ANPVS_14";

_headGear = ["ffp_m05s_helmet","ffp_m05s_helmet_glasses","ffp_m05s_helmet_peltor"] call BIS_fnc_selectRandom;
_headGearCrew = "ffp_bmp2_crew_helmet";
_headGearHeli = "H_PilotHelmetHeli_B";

_backpack = "ffp_m05_backpack_small";
_medpack = "B_Kitbag_sgg";
_atpack = "ffp_m05_backpack_small";
_ladder = "ACE_TacticalLadder_Pack";
_parachute = "ACE_NonSteerableParachute";

_backradio = "sfp_stridssack2000_ra_ksk12";
_backradioLarge = "sfp_stridssack2000_ra_ksk12";

_uniform = "ffp_m05s_uniform";

_vest = ["ffp_m05combatvest","ffp_m05combatvest_grenade","ffp_m05combatvest_radio","ffp_m05combatvest"] call BIS_fnc_selectRandom;

_rifle = "ffp_rk95";
_rifleGL = "arifle_SPAR_01_GL_snd_F";

_rifleMag = "ffp_30Rnd_762x39";
_rifleTMag = "ffp_30Rnd_762x39_tracer";
/*
_dmr = "arifle_SPAR_03_snd_F";
_dmrMag = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
*/
_ar = "ffp_kk_pkm";
_arMag = "ffp_100Rnd_762x54_pkm";
_arTMag ="ffp_100Rnd_762x54_pkm_Tracer";

_mmg = "ffp_kk_pkm";
_mmgMag = "ffp_100Rnd_762x54_pkm";
_mmgTMag = "ffp_100Rnd_762x54_pkm_Tracer";

_lat = "ffp_66kes12";
_nlaw = "ffp_nlaw";
/*
_mat = "launch_MRAWS_green_rail_F";
_matHE = "MRAWS_HE_F";
_matHEAT = "MRAWS_HEAT_F";

_hat = "launch_B_Titan_short_F";
_hatHE = "Titan_AP";
_hatHEAT = "Titan_AT";

_aa = "launch_B_Titan_F";
_aaMag = "Titan_AA";
*/
_grenade = "ffp_handgrenade_runko43";
_smoke = "ffp_smoke_white";
_smokeb = "ffp_smoke_blue";
_smokeg = "ffp_smoke_green";
_smokeo = "SmokeShellOrange";
_smokep = "SmokeShellPurple";
_smoker = "ffp_smoke_red";
_smokey = "SmokeShellYellow";
/*
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
*/
_laser = "";
_muzzle = "muzzle_snds_m";
_sightholo = "ffp_pp09";
_sightscope = "ffp_ta11_3d";
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
        addItemCountToBackpack(_smoke, 1);
        addItemCountToBackpack(_smokeb, 2);
        addItemCountToBackpack(_smoker, 2);
        addItemCountToBackpack(_smokeg, 2);
        _unit addWeapon _binocular;
    };
    
    case "SL": {
        RIFLEKIT;
        BACKRADIO;
        addItemCountToBackpack(_smoke, 1);
        addItemCountToBackpack(_smokeb, 2);
        addItemCountToBackpack(_smoker, 2);
        addItemCountToBackpack(_smokeg, 2);
        _unit addPrimaryWeaponItem _sightscope;
        _unit addWeapon _binocular;
    };

    case "TL": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_smoke, 1);
        addItemCountToBackpack(_smokeb, 2);
        addItemCountToBackpack(_smoker, 2);
        addItemCountToBackpack(_smokeg, 2);
        _unit addPrimaryWeaponItem _sightscope;
        //_unit addWeapon _binocular;
    };

    case "MEDIC": {
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

    case "CLS": {
        RIFLEKIT;
        _unit addBackpack _medpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_epine, 4);
        addItemCountToBackpack(_morphine, 4);
        addItemCountToBackpack(_splint, 4);
        addItemCountToBackpack(_tourniquet, 6);
        addItemCountToBackpack(_bandage, 10);
        addItemCountToBackpack(_smoker, 1);
        addItemCountToBackpack(_smokeg, 1);
    };

    case "RIFLE": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_rifleMag, 6);
        addItemCountToBackpack(_mmgMag, 2);
        addItemCountToBackpack(_grenade, 4);
    };
/*
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
*/
    case "MMG": {
        CLOTHES;
        GRENADES;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToVest(_mmgMag, 1);
        addItemCountToBackpack(_mmgMag, 2);
        addItemCountToBackpack(_sparebarrel, 1);
        _unit addWeapon _mmg;
        _unit addPrimaryWeaponItem _sightscope;
    };

    case "MMGASS": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_mmgMag, 4);
        addItemCountToBackpack(_mmgTMag, 2);
        _unit addWeapon _binocular;
    };

    case "LAT": {
        RIFLEKIT;
        _unit addBackpack _backpack;
        clearAllItemsFromBackpack _unit;
        addItemCountToBackpack(_mmgMag, 3);
        _unit addWeapon _lat;
    };

    case "NLAW": {
        RIFLEKIT;
        _unit addWeapon _nlaw;
    };
/*
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
*/
    case "CREW": {
        RIFLEKIT;
        _unit addHeadgear _headGearCrew;
    };

    case "HELI": {
        RIFLEKIT;
        _unit addHeadgear _headGearHeli;
    };

};
