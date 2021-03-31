/*
 * Author: Dahlgren
 * Spawn a group of units on a headless client
 * if available, else spawn on the game server.
 *
 * Arguments:
 * 0: a marker, at the position of which the group will be spawned <marker>
 * 1: a marker, to where the group will move <marker>
 * 2: an array of 1 <= n units <string array>
 * 3: the side to which the spawned units will belong <(EAST|WEST|GUER)>
 *
 * Returns:
 * Nothing
 */

params [
    "_trubb_start", // marker where units will spawn
    "_trubb_end",   // marker that units will head for
    "_trubb_units",     // array of units
    ["_trubb_side", EAST, [WEST] ]  // side that units will belong to, default is EAST
];

private _params = [
    _trubb_start,
    _trubb_end,
    _trubb_units,
    _trubb_side
];

private _fnc = "trubb_fnc_spawnGroup";

private _headlessClients = entities "HeadlessClient_F";

if (count _headlessClients > 0) then {
  private _hc = selectRandom _headlessClients;
  _params remoteExec [_fnc, _hc];
} else {
  // remoteExec target 2 is execute only on server
  _params remoteExec [_fnc, 2];
};
