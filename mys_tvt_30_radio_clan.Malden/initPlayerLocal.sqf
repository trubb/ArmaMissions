
[] execVM "f\safeStart\f_safeStart.sqf";

// ADD ITEMS THAT SHOULD NOT FALL INTO PLAYER HANDS HERE
params ["_unit", "_didJIP"];

if (_didJIP) exitwith {
    _unit setDamage 1;
};

_unit addEventHandler ["InventoryClosed", {
    params ["_unit"];
    _unit removeItem "ACE_EntrenchingTool";
}];
