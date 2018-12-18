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
//	_unit linkItem "ItemWatch";
	_unit linkItem "TFAR_microdagr";
	//_unit linkItem "rhsusf_ANPVS_14";

	_headGear = "rhs_6b47";
	_headGear_crew = "rhs_tsh4_ess";

	_backpack = "rhs_assault_umbts";
	_medpack = "rhs_assault_umbts";//"rhs_medic_bag";
	_atpack = "rhs_rpg_empty";

	_backradio = "TFAR_bussole";

	_uniform = "rhs_uniform_vdv_emr";

	_vest_pl = "rhs_6b23_digi_6sh92_headset_mapcase";
	_vest = "rhs_6b23_6sh116";
	_vest_gl = "rhs_6b23_6sh116_vog";
	_vest_crew = "rhs_6b23_digi_crew";

	_rifle = "rhs_weap_ak74m";
	_rifleGL = "rhs_weap_ak74m_gp25";
	_rifle_crew = "rhs_weap_aks74un";

	_rifleMAG = "rhs_30Rnd_545x39_7N10_AK";
	_rifleTMAG = "rhs_30Rnd_545x39_AK_plum_green";

	_DMR = "rhs_weap_svdp";

	_DMRMAG = "rhs_10Rnd_762x54mmR_7N1";
	_DMRTMAG = "rhs_10Rnd_762x54mmR_7N1";

	_AR = "rhs_weap_ak74m";

	_ARMAG = "rhs_45Rnd_545X39_7N10_AK";
	_ARTMAG = "rhs_45Rnd_545X39_AK_Green";

	//_MG = "";

	//_MGMAG = "130Rnd_338_Mag";

	_LAT = "rhs_weap_rpg26";

	_AT = "rhs_weap_rpg7";

	_ATMAG = "rhs_rpg7_PG7VL_mag";
	_ATHEMAG = "rhs_rpg7_OG7V_mag";

	_grenade = "HandGrenade";
	_smoke = "SmokeShell";
	_smokeg = "SmokeShellGreen";
	_smoker = "SmokeShellRed";

	_GLHE = "rhs_VOG25";
	_GLSMK = "rhs_GRD40_White";
	_GLSMKR = "rhs_GRD40_Red";
	_GLFLR = "rhs_VG400P_white";
	_GLFLRR = "rhs_VG400P_red";
	_GLFLRG = "rhs_VG400P_green";

	_lightatt = "rhs_acc_2dpzenit";
	_bipod = "rhs_acc_harris_swivel";
	_sight = "rhs_acc_pkas";
	_sightLR = "rhs_acc_pso1m21";
	_sightAT = "rhs_acc_pgo7v2";

	_bandage = "ACE_elasticBandage";
	_tourniquet = "ACE_tourniquet";
	_morphine = "ACE_morphine";
	_adenosine = "ACE_adenosine";
	_splint = "adv_aceSplint_splint";
	_epine = "ACE_epinephrine";
	_blood = "ACE_bloodIV";
	_pak = "ACE_personalAidKit";

	_cabletie = "ACE_CableTie";
	_maptools = "ACE_MapTools";
	_democharge = "DemoCharge_Remote_Mag";
	_clacker = "ACE_Clacker";

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
		_unit addBackpack _medpack;
		for "_i" from 1 to 4 do {_unit addItemToBackpack _blood;};
		for "_i" from 1 to 8 do {_unit addItemToBackpack _epine;};
		for "_i" from 1 to 8 do {_unit addItemToBackpack _morphine;};
		for "_i" from 1 to 6 do {_unit addItemToBackpack _tourniquet;};
		for "_i" from 1 to 10 do {_unit addItemToBackpack _splint;};
		for "_i" from 1 to 20 do {_unit addItemToBackpack _bandage;};
		for "_i" from 1 to 2 do {_unit addItemToBackpack _smoker;};
		for "_i" from 1 to 2 do {_unit addItemToBackpack _smokeg;};
		//_unit addItemToBackpack _pak;
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
		_unit addVest _vest_gl;
		for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
		for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
		for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
		for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
		_unit addBackpack _backpack;
		for "_i" from 1 to 11 do {_unit addItemToBackpack _GLHE;};
		for "_i" from 1 to 4 do {_unit addItemToBackpack _GLSMK;};
		for "_i" from 1 to 4 do {_unit addItemToBackpack _GLSMKR;};
		_unit addHeadgear _headGear;
		_unit addWeapon _rifleGL;
		_unit addPrimaryWeaponItem _sight;
		_unit addPrimaryWeaponItem _lightatt;
	};

	case "GREN": {
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
		for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
		_unit addVest _vest_gl;
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
		_unit addPrimaryWeaponItem _sight;
		_unit addPrimaryWeaponItem _lightatt;
		_unit addWeapon _LAT;
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
		for "_i" from 1 to 8 do {_unit addItemToVest _ARMAG;};
		_unit addBackpack _backpack;
		for "_i" from 1 to 5 do {_unit addItemToBackpack _ARMAG;};
		for "_i" from 1 to 3 do {_unit addItemToBackpack _ARTMAG;};
		_unit addHeadgear _headGear;
		_unit addWeapon _AR;
		_unit addPrimaryWeaponItem _sight;
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
		_unit addPrimaryWeaponItem _sight;
		_unit addPrimaryWeaponItem _lightatt;
		_unit addWeapon _vector;
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

	case "CREW": {
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
	};

	case "AT": {
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
		for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
		for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
		for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
		for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
		_unit addBackpack _atpack;
		for "_i" from 1 to 3 do {_unit addItemToBackpack _ATMAG;};
		_unit addHeadgear _headGear;
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem _sight;
		_unit addPrimaryWeaponItem _lightatt;
		_unit addWeapon _AT;
		_unit addWeaponItem [_AT, _sightAT];
	};

	case "ATASS": {
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 6 do {_unit addItemToUniform _bandage;};
		for "_i" from 1 to 2 do {_unit addItemToUniform _morphine;};
		for "_i" from 1 to 2 do {_unit addItemToUniform _tourniquet;};
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest _grenade;};
		for "_i" from 1 to 2 do {_unit addItemToVest _smoke;};
		for "_i" from 1 to 2 do {_unit addItemToVest _rifleTMAG;};
		for "_i" from 1 to 8 do {_unit addItemToVest _rifleMAG;};
		_unit addBackpack _atpack;
		for "_i" from 1 to 3 do {_unit addItemToBackpack _ATMAG;};
		_unit addHeadgear _headGear;
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem _sight;
		_unit addPrimaryWeaponItem _lightatt;
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
		for "_i" from 1 to 4 do {_unit addItemToBackpack _democharge;};
		_unit addItemToBackpack _clacker;
		_unit addHeadgear _headGear;
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem _sight;
		_unit addPrimaryWeaponItem _lightatt;
	};

};
