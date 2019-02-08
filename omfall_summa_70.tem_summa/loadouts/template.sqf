/*
    Modify as needed and put the following line into the unit's init field:
    id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\<FILENAME>.sqf";
*/
private ["_type", "_unit"];

    _type = _this select 0;
    _unit = _this select 1;

    if (!(local _unit)) exitwith {}; // to make the script not run in some bad way

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
    _unit linkItem "rhsusf_ANPVS_14";

    _headGear = ["H_HelmetB","H_HelmetB_camo","H_HelmetB_grass","H_HelmetB_snakeskin"] call BIS_fnc_selectRandom;
    _headGearCrew = "H_HelmetCrew_I";
    _headGearHeli = "H_PilotHelmetHeli_B";

    _backpack = "B_Kitbag_rgr";
    _medpack = "B_AssaultPack_khk";
    _atpack = "B_Kitbag_rgr";
    _ladder = "ACE_TacticalLadder_Pack";
    _parachute = "ACE_NonSteerableParachute";

    _backradio = "TFAR_rt1523g_rhs";
    _backradioLarge = "TFAR_rt1523g_big_rhs";

    _uniform = "U_B_CombatUniform_mcam";

    _vest = "V_PlateCarrier1_rgr";

    _rifle = "arifle_SPAR_01_snd_F";
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

    _lat = "launch_NLAW_F";

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

    _laser = "acc_pointer_ir";
    _muzzle = "muzzle_snds_m";
    _sightholo = "optic_holosight";
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

 switch (_type) do { 

    case "PL": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backradio;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addWeapon _binocular;
    };
    
    case "SL": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addWeapon _binocular;
    };

    case "CLS": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _medpack;
        for "_i" from 1 to 4 do {_unit addItemToBackpack _blood;};
        for "_i" from 1 to 8 do {_unit addItemToBackpack _epine;};
        for "_i" from 1 to 8 do {_unit addItemToBackpack _morphine;};
        for "_i" from 1 to 8 do {_unit addItemToBackpack _splint;};
        for "_i" from 1 to 8 do {_unit addItemToBackpack _tourniquet;};
        for "_i" from 1 to 20 do {_unit addItemToBackpack _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
    };

    case "TL": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 7 do {_unit addItemToBackpack _glhe;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _glsmokew;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _glsmoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _glflareg;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifleGL;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
    };

    case "RIFLE": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
    };

    case "DMR": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 10 do {_unit addItemToVest _dmrMag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _dmr;
        _unit addPrimaryWeaponItem _sightscope;
        _unit addPrimaryWeaponItem _lightatt;
    };

    case "AR": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 3 do {_unit addItemToVest _arMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _arMag;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _arTMag;};
        _unit addItemToBackpack _sparebarrel;
        _unit addHeadgear _headGear;
        _unit addWeapon _ar;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
    };

    case "ARASS": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _arMag;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _arTMag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
    };

    case "MMG": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _mmgMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _mmgMag;};
        _unit addItemToBackpack _sparebarrel;
        _unit addHeadgear _headGear;
        _unit addWeapon _mmg;
        _unit addPrimaryWeaponItem _bipod;
        _unit addPrimaryWeaponItem _lightatt;
    };

    case "MMGASS": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 4 do {_unit addItemToBackpack _mmgMag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addWeapon _binocular;
    };

    case "LAT": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addWeapon _lat;
    };

    case "MAT": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 1 do {_unit addItemToBackpack _matHEAT;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addWeapon _mat;
    };

    case "MATASS": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _matHEAT;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _matHE;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addWeapon _vector;
    };

    case "HAT": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 1 do {_unit addItemToBackpack _hatHEAT;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addWeapon _hat;
    };

    case "HATASS": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _hatHEAT;};
        for "_i" from 1 to 1 do {_unit addItemToBackpack _hatHE;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addWeapon _vector;
    };

    case "AA": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 3 do {_unit addItemToBackpack _aaMag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addWeapon _aa;
    };

    case "CREW": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addHeadgear _headGearCrew;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
    };

    case "HELI": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addHeadgear _headGearHeli;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sightholo;
        _unit addPrimaryWeaponItem _lightatt;
    };

};
