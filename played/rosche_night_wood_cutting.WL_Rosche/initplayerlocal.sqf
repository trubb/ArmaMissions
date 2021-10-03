
[] execVM "f\safeStart\f_safeStart.sqf";

params ["_unit", "_didJIP"];

if (_didJIP) exitwith {
    _unit setDamage 1;
};

// ADD ITEMS THAT SHOULD NOT FALL INTO PLAYER HANDS HERE
_unit addEventHandler ["InventoryClosed", {
    params ["_unit"];
    _unit removeItem "ACE_EntrenchingTool";
    _unit removeItem "rhsusf_patrolcap_ocp";
    _unit removeItem "rhsusf_ach_helmet_ocp";
    _unit removeItem "rhsusf_ach_helmet_ESS_ocp";
    _unit removeWeapon "rhs_weap_m4_carryhandle";
    _unit removeWeapon "rhs_weap_m4_m203";
    _unit removeWeapon "rhs_weap_m249_pip_S";
    _unit removePrimaryWeaponItem "rhsusf_acc_compm4";
    _unit removePrimaryWeaponItem "rhsusf_acc_elcan_ard";
}];
