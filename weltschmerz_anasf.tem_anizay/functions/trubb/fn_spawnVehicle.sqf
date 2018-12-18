params [
	"_trubb_start",	// marker where units will spawn
	"_trubb_end",	// marker that units will head for
	"_trubb_vehtype",		// type of vehicle to spawn
	["_trubb_side", EAST, [WEST] ]	// side that units will belong to, default is EAST
];

private _vehicle = [getMarkerPos _trubb_start, 180, _trubb_vehtype, _trubb_side] call BIS_fnc_spawnVehicle;

_group = _vehicle select 2;	// select group of vehicle crew

_group setFormation "LINE";
_group setCombatMode "RED";
_group deleteGroupWhenEmpty true;

_wp = _group addWaypoint [getMarkerPos _trubb_end, 0];
_wp setWaypointType "SAD";

_group;
