/*
 * Author: Trubb
 * Generate a offset from the intended target
 * in order to ensure that there is some randomness
 * when using AI-controlled indirect fire.
 *
 * Arguments:
 * 0: the target <3d position array>
 *
 * Returns:
 * A 3d position array that has been offset
 * offset from the array provided as an argument.
 */

params [
    "_trubb_target"
];

private _trubb_rpos = random [10,18,25];
private _trubb_rneg = -1*_trubb_rpos;

private _trubb_tgt = selectRandom [
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

_trubb_tgt;
