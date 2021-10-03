/*
 * Author: Trubb
 * Counts human players that are alive on a side
 *
 * Arguments:
 * 0: side <side>
 *
 * Returns:
 * Number of players who are alive <number>
 */

params [
	"_trubb_side"
];

private _players_alive = { (side _x == _trubb_side) && (alive _x) } count (allPlayers - entities "HeadlessClient_F");

_players_alive;
