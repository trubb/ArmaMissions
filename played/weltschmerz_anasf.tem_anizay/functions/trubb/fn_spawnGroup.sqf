params [
	"_trubb_start",	// marker where units will spawn
	"_trubb_end",	// marker that units will head for
	"_trubb_units",		// array of units
	["_trubb_side", EAST, [WEST] ]	// side that units will belong to, default is EAST
];

private _group = [getMarkerPos _trubb_start, _trubb_side, _trubb_units ] call BIS_fnc_spawnGroup;

{
	_x disableAI "COVER";
	_x disableAI "SUPPRESSION";
} forEach units _group;

_group setFormation "LINE";
_group setCombatMode "RED";
_group setBehaviour "AWARE";
_group setSpeedMode "NORMAL";
_group deleteGroupWhenEmpty true;

_wp = _group addWaypoint [getMarkerPos _trubb_end, 0];
_wp setWaypointType "SAD";

_group;

// https://community.bistudio.com/wiki/BIS_fnc_taskPatrol
// https://community.bistudio.com/wiki/setWaypointScript
// https://community.bistudio.com/wiki/addWaypoint