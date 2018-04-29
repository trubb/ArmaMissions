
params ["_trubb_start", "_trubb_end"];

private _group = [getMarkerPos _trubb_start, EAST, ["ZSN_SoldierENCO", "ZSN_SoldierEMedic", "ZSN_SoldierELeader", "ZSN_SoldierELeader", "ZSN_SoldierEAR", "ZSN_SoldierEAR", "ZSN_SoldierEB", "ZSN_SoldierEB", "ZSN_SoldierEB", "ZSN_SoldierEB"] ] call BIS_fnc_spawnGroup;

_group addWaypoint [getMarkerPos _trubb_end, 0];
