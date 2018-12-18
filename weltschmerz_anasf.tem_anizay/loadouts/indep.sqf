// useage:
// id = ["TYPE", this] call compile preprocessFileLineNumbers "loadouts\opfor.sqf";

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

    _headGear = ["rhsusf_ach_bare_ess","rhsusf_ach_bare", "rhsusf_mich_bare_norotos_arc"] call BIS_fnc_selectRandom;

    _backpack = "B_TacticalPack_rgr";
    _medpack = "B_TacticalPack_rgr";

    _backradio = "B_TacticalPack_rgr";

    _uniform = "rhs_uniform_g3_m81";

    _vest = "V_TacVestIR_blk";

    _rifle = "rhs_weap_m4_carryhandle";

    _rifleMAG = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
    _rifleTMAG = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

    _AR = "rhs_weap_m249_pip";

    _ARMAG = "rhsusf_200rnd_556x45_M855_box";
    _ARTMAG = "rhsusf_200rnd_556x45_M855_mixed_box";

    _LAT = "rhs_weap_m72a7";

    _grenade = "HandGrenade";
    _smoke = "SmokeShell";
    _smokeg = "SmokeShellGreen";
    _smoker = "SmokeShellRed";

    _lightatt = "rhsusf_acc_m952v";

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

    _vector = "Binocular";
    _gps = "ItemGPS";
    _dagr = "ACE_DAGR";
    _rtable = "ACE_RangeTable_82mm";

 switch (_type) do { 

    case "PL": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
        _unit addBackpack _backradio;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _lightatt;
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
        _unit addBackpack _backradio;
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _lightatt;
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
        for "_i" from 1 to 20 do {_unit addItemToBackpack _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
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
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
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
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _lightatt;
    };

    case "LAT": {
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
        _unit addPrimaryWeaponItem _lightatt;
        _unit addWeapon _LAT;
    };

    case "AR": {
        _unit forceAddUniform _uniform;
        for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
        for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
        _unit addVest _vest;
        for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
        for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
        for "_i" from 1 to 2 do {_unit addItemToVest _ARMAG;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 1 do {_unit addItemToBackpack _ARMAG;};
        for "_i" from 1 to 2 do {_unit addItemToBackpack _ARTMAG;};
        _unit addHeadgear _headGear;
        _unit addWeapon _AR;
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
        for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
        for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
        _unit addBackpack _backpack;
        for "_i" from 1 to 1 do {_unit addItemToBackpack _ARMAG;};
        for "_i" from 1 to 1 do {_unit addItemToBackpack _ARTMAG;};
        _unit addHeadgear _headGear;
        _unit addWeapon _rifle;
        _unit addPrimaryWeaponItem _lightatt;
    };

};
