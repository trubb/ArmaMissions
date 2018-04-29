// add height to aircraft by dereferencing start marker and adding a height value to the position array
// make sure that the engine is started when spawned, so that the aircraft doesnt crash instantly

params ["_trubb_start", "_trubb_end", "_vehicletype"];

private _group = [getMarkerPos _trubb_start, 180, _vehicletype, EAST] call BIS_fnc_spawnVehicle;

_group addWaypoint [getMarkerPos _trubb_end, 0];
