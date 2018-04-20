
params ["_trubb_start", "_trubb_end"];

private _group = [getMarkerPos _trubb_start, EAST, ["CUP_O_RU_Soldier_EMR", "CUP_O_RU_Medic_EMR", "CUP_O_RU_Soldier_AR_EMR", "CUP_O_RU_Soldier_MG_EMR", "CUP_O_RU_Soldier_LAT_EMR", "CUP_O_RU_Soldier_LAT_EMR", "CUP_O_RU_Soldier_GL_EMR", "CUP_O_RU_Soldier_GL_EMR"] ] call BIS_fnc_spawnGroup;

_group addWaypoint [getMarkerPos _trubb_end, 0];
