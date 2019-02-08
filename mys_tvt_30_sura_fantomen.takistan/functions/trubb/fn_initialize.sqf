/*
 * Author: Trubb
 * Helper for initializing the start count variables
 * Arguments:
 * none
 *
 * Returns:
 * true
 */

trubb_east_start_count = [ east ] call trubb_fnc_countPlayers;
trubb_indep_start_count = [ independent ] call trubb_fnc_countPlayers;
trubb_west_start_count = [ west ] call trubb_fnc_countPlayers;
true;
