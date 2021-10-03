/*
 * Author: Trubb
 * Force a mortar manned by AI to fire a given
 * amount of rounds at a given target
 *
 * Arguments:
 * 0: the unit to shoot with <unit>
 * 1: the target <3d position array>
 * 2: the magazine to shoot with <string>
 * 3: the number of rounds to fire <int>
 *
 * Returns:
 * nothing
 */

params [
    "_trubb_unit",
    "_trubb_target",
    "_trubb_mag",
    "_trubb_rounds"
];

private _trubb_tgt = [_trubb_target] call trubb_fnc_targetOffset;

_trubb_unit setVehicleAmmoDef 1;
_trubb_unit doArtilleryFire [_trubb_tgt, _trubb_mag, _trubb_rounds];

nil;
