/*
 * Author: Trubb
 * Helper method for checking if any of the sides in the mission have lost
 * enough soldiers to warrant retreating from the battlefield.
 *
 * Arguments:
 * None
 *
 * Returns:
 * None
 */

{
	_x params ["_trubb_side", "_trubb_casualty_limit", "_trubb_start_count"];
	[_trubb_side, _trubb_casualty_limit, _trubb_start_count] call trubb_fnc_checkEndCondition;
} forEach [ 
	[east, trubb_east_casualty_limit, trubb_east_start_count],
	[independent, trubb_indep_casualty_limit, trubb_indep_start_count],
	[west, trubb_west_casualty_limit, trubb_west_start_count]
];
