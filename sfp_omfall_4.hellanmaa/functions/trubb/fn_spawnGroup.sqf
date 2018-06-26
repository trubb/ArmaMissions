params [
	"_trubb_start",	// marker where units will spawn
	"_trubb_end",	// marker that units will head for
	"_units",		// array of units
	["_trubb_side", EAST, [WEST] ]	// side that units will belong to, default is EAST
];

private _group = [getMarkerPos _trubb_start, _trubb_side, _units ] call BIS_fnc_spawnGroup;

_group setFormation "LINE";
_group setCombatMode "RED";
_group deleteGroupWhenEmpty true;

_wp = _group addWaypoint [getMarkerPos _trubb_end, 0];
_wp setWaypointType "SAD";

_group;
