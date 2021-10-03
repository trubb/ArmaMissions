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
//	_unit linkItem "ItemWatch";
	_unit linkItem "TFAR_microdagr";
	//_unit linkItem "rhsusf_ANPVS_14";

	_headGear = "H_HelmetSpecB_blk";

	_backpack = "B_AssaultPack_mcamo";

	_backradio = "tf_rt1523g";

	_uniform = "U_B_CombatUniform_mcam";

	_vest = "V_PlateCarrier1_rgr";

	_rifle = "arifle_SPAR_01_snd_F";

	_rifleGL = "arifle_SPAR_01_GL_snd_F";

	_rifleMAG = "ACE_30Rnd_556x45_Stanag_Mk262_mag";
	_rifleTMAG = "30Rnd_556x45_Stanag_Tracer_Red";

	_DMR = "arifle_SPAR_03_snd_F";

	_DMRMAG = "20Rnd_762x51_Mag";
	_DMRTMAG = "ACE_20Rnd_762x51_Mag_Tracer";

	_AR = "arifle_SPAR_02_snd_F";

	_ARMAG = "150Rnd_556x45_Drum_Mag_F";
	_ARTMAG = "150Rnd_556x45_Drum_Mag_Tracer_F";

	_MG = "MMG_02_black_F";

	_MGMAG = "130Rnd_338_Mag";

	_LAT = "launch_NLAW_F";

	_AT = "launch_MRAWS_olive_F";

	_ATMAG = "MRAWS_HEAT_F";
	_ATHEMAG = "MRAWS_HE_F";

	_grenade = "HandGrenade";
	_smoke = "SmokeShell";
	_smokeg = "SmokeShellGreen";
	_smoker = "SmokeShellRed";

	_GLHE = "1Rnd_HE_Grenade_shell";
	_GLSMK = "1Rnd_Smoke_Grenade_shell";
	_GLSMKR = "1Rnd_SmokeRed_Grenade_shell";
	_GLFLR = "UGL_FlareWhite_F";
	_GLFLRR = "UGL_FlareRed_F";
	_GLFLRG = "UGL_FlareGreen_F";

	_lightatt = "acc_pointer_IR";
	_bipod = "bipod_01_F_snd";
	_sight = "optic_Holosight";
	_sightLR = "optic_MRCO";

	_bandage = "ACE_elasticBandage";
	_tourniquet = "ACE_tourniquet";
	_morphine = "ACE_morphine";
	_adenosine = "ACE_adenosine";
	_splint = "adv_aceSplint_splint";
	_epine = "ACE_epinephrine";
	_blood = "ACE_bloodIV";

	_cabletie = "ACE_CableTie";
	_maptools = "ACE_MapTools";

	_vector = "ACE_Vector";
	_gps = "ItemGPS";
	_dagr = "ACE_DAGR";
	_rtable = "ACE_RangeTable_82mm";

switch (_type) do {

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
		_unit addPrimaryWeaponItem _sight;
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
		_unit addBackpack _backpack;
		for "_i" from 1 to 4 do {_unit addItemToBackpack _blood;};
		for "_i" from 1 to 8 do {_unit addItemToBackpack _epine;};
		for "_i" from 1 to 8 do {_unit addItemToBackpack _morphine;};
		for "_i" from 1 to 20 do {_unit addItemToBackpack _bandage;};
		for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
		for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
		_unit addHeadgear _headGear;
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem _sight;
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
		_unit addBackpack _backradio;
		for "_i" from 1 to 8 do {_unit addItemToBackpack _GLHE;};
		for "_i" from 1 to 2 do {_unit addItemToBackpack _GLSMK;};
		for "_i" from 1 to 2 do {_unit addItemToBackpack _GLSMKR;};
		_unit addHeadgear _headGear;
		_unit addWeapon _rifleGL;
		_unit addPrimaryWeaponItem _sight;
		_unit addPrimaryWeaponItem _lightatt;
		_unit addWeapon _vector;
	};

	case "GREN": {
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
		for "_i" from 1 to 8 do {_unit addItemToBackpack _GLHE;};
		for "_i" from 1 to 2 do {_unit addItemToBackpack _GLSMK;};
		for "_i" from 1 to 2 do {_unit addItemToBackpack _GLSMKR;};
		_unit addHeadgear _headGear;
		_unit addWeapon _rifleGL;
		_unit addPrimaryWeaponItem _sight;
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
		_unit addPrimaryWeaponItem _sight;
		_unit addPrimaryWeaponItem _lightatt;
	};

	case "DMR": {
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
		for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
		_unit addVest _vest;
		for "_i" from 1 to 1 do {_unit addItemToVest _grenade;};
		for "_i" from 1 to 1 do {_unit addItemToVest _smoke;};
		for "_i" from 1 to 3 do {_unit addItemToVest _DMRMAG;};
		for "_i" from 1 to 1 do {_unit addItemToVest _DMRTMAG;};
		_unit addBackpack _backpack;
		for "_i" from 1 to 2 do {_unit addItemToBackpack _DMRMAG;};
		for "_i" from 1 to 2 do {_unit addItemToBackpack _DMRTMAG;};
		_unit addHeadgear _headGear;
		_unit addWeapon _DMR;
		_unit addPrimaryWeaponItem _sightLR;
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
		for "_i" from 1 to 3 do {_unit addItemToVest _ARMAG;};
		_unit addBackpack _backpack;
		for "_i" from 1 to 2 do {_unit addItemToBackpack _ARMAG;};
		for "_i" from 1 to 2 do {_unit addItemToBackpack _ARTMAG;};
		_unit addHeadgear _headGear;
		_unit addWeapon _AR;
		_unit addPrimaryWeaponItem _sight;
		_unit addPrimaryWeaponItem _bipod;
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
		_unit addPrimaryWeaponItem _sight;
		_unit addPrimaryWeaponItem _lightatt;
		_unit addWeapon _vector;
	};

};
