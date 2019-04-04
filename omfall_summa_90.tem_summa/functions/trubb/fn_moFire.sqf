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

_trubb_rpos = random [10,18,25];
_trubb_rneg = -1*_trubb_rpos;


_trubb_tgt = selectRandom [
    _trubb_target vectorAdd [0,0,0],                       // on target
    _trubb_target vectorAdd [_trubb_rpos,0,0],             // add to x
    _trubb_target vectorAdd [_trubb_rneg,0,0],             // sub from x
    _trubb_target vectorAdd [0,_trubb_rpos,0],             // add to y
    _trubb_target vectorAdd [0,_trubb_rneg,0],             // sub from y
    _trubb_target vectorAdd [_trubb_rpos,_trubb_rpos,0],   // add to x, y
    _trubb_target vectorAdd [_trubb_rpos,_trubb_rneg,0],   // add to x, sub from y
    _trubb_target vectorAdd [_trubb_rneg,_trubb_rpos,0],   // sub from x, add to y
    _trubb_target vectorAdd [_trubb_rneg,_trubb_rneg,0]    // sub from x, y
];

_trubb_unit setVehicleAmmoDef 1;
_trubb_unit doArtilleryFire [_trubb_tgt, _trubb_mag, _trubb_rounds];

/*for "_i" from 0 to _trubb_rounds do {
    [_trubb_unit, _trubb_target, _trubb_mag, 1] call trubb_fnc_moFire;
};
*/