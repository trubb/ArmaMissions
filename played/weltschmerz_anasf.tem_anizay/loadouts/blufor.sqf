// useage:
// id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\<filename>.sqf";

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
    _unit linkItem "ItemRadio";
//  _unit linkItem "ItemWatch";
    _unit linkItem "TFAR_microdagr";
    //_unit linkItem "rhsusf_ANPVS_14";

    _headGear = "rhsusf_opscore_ut_pelt";
    _headGear_crew = "rhsusf_cvc_green_ess";
    _headGear_heli = "rhsusf_hgu56p_visor_black";

    _backpack = "rhsusf_assault_eagleaiii_ocp";
    _medpack = "rhsusf_assault_eagleaiii_ocp";
    _atpack = "rhsusf_assault_eagleaiii_ocp";

    _backradio = "TFAR_rt1523g_rhs";
    _backradio_large = "TFAR_rt1523g_big_rhs";

    _uniform = "rhs_uniform_g3_mc";
    _uniform_heli = "rhs_uniform_acu_ucp";

    _vest = "rhsusf_mbav_rifleman";
    _vest_gl = "rhsusf_mbav_grenadier";
    _vest_crew = "rhsusf_mbav_light";
    _vest_heli = "rhsusf_iotv_ocp";

    _rifle = "rhs_weap_mk18";
    _rifle_gl = "rhs_weap_mk18";
    _rifle_medic = "rhs_weap_m4a1";
    _rifle_heli = "rhs_weap_m4a1";
    _standalone_GL = "rhs_weap_M320";

    _rifleMAG = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
    _rifleTMAG = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

    _grenade = "HandGrenade";
    _smoke = "SmokeShell";
    _smokeg = "SmokeShellGreen";
    _smoker = "SmokeShellRed";

    _GLHE = "rhs_mag_M441_HE";
    _GLSMK = "rhs_mag_m714_White";
    _GLSMKR = "rhs_mag_m713_Red";
    _GLSMKGR = "rhs_mag_m715_Green";
    _GLSMKYL = "rhs_mag_m716_yellow";

    _lightatt = "rhsusf_acc_anpeq15_wmx";
    _muzzle = "rhsusf_acc_nt4_black";
    _sight = "rhsusf_acc_eotech";

    _bandage = "ACE_elasticBandage";
    _tourniquet = "ACE_tourniquet";
    _morphine = "ACE_morphine";
    _adenosine = "ACE_adenosine";
    _splint = "adv_aceSplint_splint";
    _epine = "ACE_epinephrine";
    _blood = "ACE_bloodIV";

    _cabletie = "ACE_CableTie";
    _maptools = "ACE_MapTools";
    _democharge = "DemoCharge_Remote_Mag";
    _clacker = "ACE_Clacker";
    _defkit = "ACE_DefusalKit";

    _vector = "ACE_Vector";
    _gps = "ItemGPS";
    _dagr = "ACE_DAGR";
    _rtable = "ACE_RangeTable_82mm";

 switch (_type) do { 

    case "PL": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest_pl;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sight;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addPrimaryWeaponItem _muzzle;
        _unit addWeapon _vector;
    };
    
    case "SL": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sight;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addPrimaryWeaponItem _muzzle;
        _unit addWeapon _vector;
    };

    case "CLS": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
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
        _unit addWeapon _rifle_medic;
        _unit addPrimaryWeaponItem _sight;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addPrimaryWeaponItem _muzzle;
    };

    case "JTAC": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 4 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
        _unit addBackpack _backradio_large;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        for "_i" from 1 to 12 do {_unit addItemToBackpack _GLHE;};
        for "_i" from 1 to 4 do {_unit addItemToBackpack _GLSMK;};
        for "_i" from 1 to 4 do {_unit addItemToBackpack _GLSMKR;};
        for "_i" from 1 to 4 do {_unit addItemToBackpack _GLSMKGR;};
        for "_i" from 1 to 4 do {_unit addItemToBackpack _GLSMKYL;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addWeapon _standalone_GL;
        _unit addPrimaryWeaponItem _sight;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addPrimaryWeaponItem _muzzle;
        _unit addWeapon _vector;
    };

    case "RIFLE": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sight;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addPrimaryWeaponItem _muzzle;
    };

    case "CREWC": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest_crew;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
        _unit addHeadgear _headGear_crew;
        _unit addWeapon _rifle_crew;
        _unit addWeapon _vector;
    };

    case "SAPPER": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 6 do {_unit addItemToBackpack _democharge;};
        _unit addItemToBackpack _clacker;
        _unit addItemToBackpack _defkit;
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _sight;
        _unit addPrimaryWeaponItem _lightatt;
        _unit addPrimaryWeaponItem _muzzle;
    };

    case "HELIPILOT": {
        _unit forceAddUniform _uniform_heli;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _rifleMAG;};
        _unit addVest _vest_heli;
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleMAG;};
        _unit addHeadgear _headGear_heli;
        _unit addWeapon _rifle_heli;
    };

};
