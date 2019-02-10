/*
    Modify as needed and put the following line into the unit's init field:
    id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\sfp70.sqf";
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
//    _unit linkItem "ItemRadio";     // Which radio will be given is defined via TFAR CBA Settings
//    _unit linkItem "ItemWatch";     // give watch or microDAGR
    _unit linkItem "TFAR_microdagr";
//    _unit linkItem "rhsusf_ANPVS_14";

    _headGear = ["sfp_m37w_helmet_dok2",
                 "sfp_m37w_helmet_dok",
                 "sfp_m37w_helmet_cap1"] call BIS_fnc_selectRandom;
    _headGearCrew = "H_HelmetCrew_I";
    _headGearHeli = "H_PilotHelmetHeli_B";

    _backpack = "sfp_stridssele_backpack";
    _medpack = "sfp_stridssele_backpack";
    _atpack = "sfp_stridssele_backpack_grg";
    _mgpack = "sfp_backpack_lk35";
    _ladder = "ACE_TacticalLadder_Pack";
    _parachute = "ACE_NonSteerableParachute";

    _backradio = "sfp_ra180";
    _backradioLarge = "sfp_lk35_ra145";

    _uniform = "sfp_m59w_uniform";

    _vest = "sfp_stridssele";

    _pistol = "sfp_signpist50";
    _pistolmag = "sfp_1rnd_lyspatron7_mag";

    _rifle = "sfp_kpistm45";
    _rifleMag = "sfp_36Rnd_9mm_kpistm45";

    _mmg = "sfp_ksp58";
    _mmgMag = "sfp_249Rnd_762x51_ksp58";

    _lat = "CUP_launch_M72A6";

    _mat = "sfp_grg86";
    _matHE = "sfp_grg_he_mag";
    _matHEAT = "sfp_grg_heat_66_mag";

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
    _dagr = "ACE_DAGR";
    _rtable = "ACE_RangeTable_82mm";
    _maptools = "ACE_MapTools";
    _whistle = "ZSN_Whistle";

 switch (_type) do { 

    case "PL": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addItemToUniform _maptools;
        _unit addItemToUniform _whistle;
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        for "_i" from 1 to 5 do {_unit addItemToBackpack _pistolmag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addWeapon _pistol;
        _unit addWeapon _binocular;
    };
    
    case "SL": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        for "_i" from 1 to 4 do {_unit addItemToBackpack _pistolmag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addWeapon _pistol;
        _unit addWeapon _binocular;
    };

    case "CLS": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
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
    };

    case "TL": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
    };

    case "RIFLE": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
    };

    case "MMG": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 1 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 3 do {_unit addItemToVest _mmgMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 1 do {_unit addItemToBackpack _mmgMag;};
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
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _mgpack;
        for "_i" from 1 to 7 do {_unit addItemToBackpack _mmgMag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addWeapon _binocular;
    };

    case "LAT": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addWeapon _lat;
    };

    case "MAT": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 1 do {_unit addItemToBackpack _matHEAT;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addWeapon _mat;
    };

    case "MATASS": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _atpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _matHEAT;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _matHE;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addWeapon _vector;
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
    };

    case "FO": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addItemToUniform _rtable;
        _unit addItemToUniform _maptools;
        _unit addItemToUniform _dagr;
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backradioLarge;
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addWeapon _binocular;
    };

    case "MOSL": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addItemToUniform _rtable;
        _unit addItemToUniform _maptools;
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addBackpack _backradioLarge;
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
    };

    case "MOCREW": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addItemToUniform _rtable;
        _unit addItemToUniform _maptools;
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 1 do {_unit addItemToVest _smokeinsta;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMag;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMag;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
    };

};
