/*
  * Author: Tuntematon
  * combatzone draws an n-sided polygon which makes up the boundary of a combat area
  * Arguments:
  * None
  *
  * Returns:
  * Nothing, but draws a nice polygon for you
  
  * to add to a mission: ensure that the following snippet is present in init.sqf and run it for players only
  * [] call compile preprocessFileLineNumbers "scriptit\combat zone.sqf";
  * for a detailed example: see this mission's init.sqf

  * marker prefix - what name the tracked markers are utilizing
  * marker count - how many markers you have placed and want to track
  * i.e (border_1, border_2, border_3, ..., border_n )
  * edit the prefix and count as needed below
  * keep in mind that the markers are 1-indexed
*/

[{ time > 1 && !isNull player }, {

    tun_border_polygon = [];
    
    // you can use switchcase for different sides if needed
    // ie.
    private ["_marker_prefix", "_marker_count"];
    _marker_prefix = "border";
		_marker_count = 4;

    for "_i" from 1 to _marker_count do {
        tun_border_polygon pushBack (getMarkerPos (format ["%2_%1", _i,_marker_prefix]));
    };

    findDisplay 12 displayCtrl 51 ctrlAddEventHandler ["Draw", {
        _this select 0 drawPolygon [tun_border_polygon, [1,0,0,1]];
    }];

    _handle = [{
        if ( player iskindof "man" && {alive player} && {!(player iskindof "ace_spectator_virtual")} && {playerSide in [west,east,resistance,civilian]} && {!(vehicle player isKindOf "air")} && {!(player getVariable ["tun_respawn_waiting_respawn", false])} ) then {
            private _player_pos = getpos player;
            if !( _player_pos inPolygon tun_border_polygon) then {
                ["<t color='#ff0000' size = '.8'>Warning!<br />You are leaving the combatzone. TURN BACK!</t>",-1,-1,4,1,0,789] spawn BIS_fnc_dynamicText;
            };
        };
    }, 10, []] call CBA_fnc_addPerFrameHandler;

}] call CBA_fnc_waitUntilAndExecute;
