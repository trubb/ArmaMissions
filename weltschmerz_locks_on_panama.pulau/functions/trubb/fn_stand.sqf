/*
 * Author: Trubb
 * Forces all AI units in the given array to stand
 *
 * Arguments:
 * 0: units <array of units>
 *
 * Returns:
 * nothing
 */

params ["_units"];

{
	[_x, "UP"] remoteexec ["setunitpos", _x]
} foreach _units;
