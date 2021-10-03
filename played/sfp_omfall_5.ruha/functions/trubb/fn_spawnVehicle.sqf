params [
	"_trubb_start",	// marker where units will spawn
	"_trubb_end",	// marker that units will head for
	"_vehicletype",		// type of vehicle to spawn
	["_trubb_side", EAST, [WEST] ]	// side that units will belong to, default is EAST
];

hint format ["Called with the following: start: %1\nend: %2\ntype: %3\nside: %4", _trubb_start, _trubb_end, _vehicletype, _trubb_side];

private _vehicle = [getMarkerPos _trubb_start, 180, _vehicletype, _trubb_side] call BIS_fnc_spawnVehicle;

_group = _vehicle select 2;	// select group of vehicle crew

hint format ["vehicle spawned, group is: %1", _group];	// TEST RELATED

_group setFormation "LINE";
_group setCombatMode "RED";
_group deleteGroupWhenEmpty true;

_wp = _group addWaypoint [getMarkerPos _trubb_end, 0];
_wp setWaypointType "SAD";

_gwaypoints = waypoints _group // test related, returns waypoints of _group
hint format ["Waypoint of group is: %1", _gwaypoints];

_group;
