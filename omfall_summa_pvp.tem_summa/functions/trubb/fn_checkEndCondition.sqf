/*
 * Author: Trubb
 * Checks if the side has lost enough soldiers
 * to warrant retreating from the battlefield.
 *
 * Dependencies:
 * @CBA_A3 - Community Based Addons for Arma 3
 *
 * Arguments:
 * 0: side <side>
 * 1: casualty limit <number>
 * 2: players at start  <number>
 *
 * Returns:
 * none
 * 
 * Side effects:
 * ends mission
 */

params [
	"_trubb_side",
	"_trubb_casualty_limit",
	"_trubb_start_count"
];

if (_trubb_start_count ==  0) exitWith { false };

private _casualties = [_trubb_side, _trubb_start_count] call trubb_fnc_calculatePercentage;

if (_casualties >= _trubb_casualty_limit) exitWith {
	trubb_mission_end = true;

	switch (_trubb_side) do { 
		case west : {"trubb_b_dead_end" call BIS_fnc_endMissionServer;}; 
		case independent : {"trubb_i_dead_end" call BIS_fnc_endMissionServer;};
		case east : {"trubb_o_dead_end" call BIS_fnc_endMissionServer;};
	};

	[
		{
			forceEnd;
			endMission "END1";
		},
		[],
		10
	] call CBA_fnc_waitAndExecute;
};
