
//[] execVM "f\safeStart\f_safeStart.sqf";

params ["_unit"];
_unit addEventHandler ["InventoryClosed", {
    params ["_unit"];
    _unit removeItem "ACE_EntrenchingTool";
}];
