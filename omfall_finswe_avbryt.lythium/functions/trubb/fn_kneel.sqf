/*
 * Author: Trubb
 * Forces all AI units in the given array to kneel
 *
 * Arguments:
 * 0: units <array of units>
 *
 * Returns:
 * nothing
 */

params ["_units"];

{
	[_x, "MIDDLE"] remoteexec ["setunitpos", _x]
} foreach _units;
