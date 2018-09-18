// Solve the issue with safestart acting badly
[] execVM "f\safeStart\f_safeStart.sqf";

// Define groups for spawning ai via trubb_spawngroup
nato_squad = [
	"ZSN_SoldierENCO",
	"ZSN_SoldierEMedic",
	"ZSN_SoldierELeader",
	"ZSN_SoldierELeader",
	"ZSN_SoldierEAR",
	"ZSN_SoldierEAR",
	"ZSN_SoldierEB",
	"ZSN_SoldierEB",
	"ZSN_SoldierEB",
	"ZSN_SoldierEB"];

// Initial init for wave respawn, run for the side or sides you want to use wave respawn for, this example is for all sides, resistance uses custom mission parameters that can be set in the lobby
//[east, 1, 6, true] remoteexec ["zsn_fnc_waverespawn", 2]; // 6x 1 man waves
[west, 8, 8, false] remoteexec ["zsn_fnc_waverespawn", 2];
//[resistance,(paramsarray select 0),(paramsarray select 1)] remoteexec ["zsn_fnc_waverespawn", 2];

// This is for when you want to spawn in the wave upon some custom mission condition rather than player count
zsn_spawnconditions = [
	"false",		//Custom spawn condition for REDFOR
	"false",		//Custom spawn condition for BLUFOR
	"false"			//Custom spawn condition for INDEP
];

zsn_ect = createTrigger ["EmptyDetector", getmarkerPos "respawn_east"];
zsn_ect setTriggerActivation ["civ", "PRESENT", true];
zsn_ect setTriggerStatements [zsn_spawnconditions select 0, "thisList call zsn_fnc_spawnwave_east;",""];

zsn_wct = createTrigger ["EmptyDetector", getmarkerPos "respawn_west"];
zsn_wct setTriggerActivation ["civ", "PRESENT", true];
zsn_wct setTriggerStatements [zsn_spawnconditions select 1, "thisList call zsn_fnc_spawnwave_west;",""];

zsn_gct = createTrigger ["EmptyDetector", getmarkerPos "respawn_guerrila"];
zsn_gct setTriggerActivation ["civ", "PRESENT", true];
zsn_gct setTriggerStatements [zsn_spawnconditions select 2, "thisList call zsn_fnc_spawnwave_resistance;",""];

// This the player inits that run client-side on mission start (safetyfirst is the infamous safety vest script)
remoteexec ["zsn_fnc_localplayerinit", 0, true];
