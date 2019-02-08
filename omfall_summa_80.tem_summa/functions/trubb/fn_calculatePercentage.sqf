/*
 * Author: Trubb
 * Calculates the percentage of dead players on a team
 * Arguments:
 * 0: side <side>
 * 1: players at start <number>
 *
 * Returns:
 * Percentage of players who are dead (0-100) <number>
 */

params [
	"_trubb_side",
	"_trubb_players_start"
];

private _players_alive = [_trubb_side] call trubb_fnc_countPlayers;

private _dead_percentage = ( _trubb_players_start - _players_alive ) / ( _trubb_players_start * 0.01 );

_dead_percentage;
