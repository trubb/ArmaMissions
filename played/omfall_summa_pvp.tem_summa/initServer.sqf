
[] execVM "f\safeStart\f_safeStart.sqf";

spawnable_squad = [
	"B_Soldier_F",
	"B_Soldier_F",
	"B_Soldier_F",
	"B_Soldier_F"
];

// The maximum percentage of casualties a given side can take before automatically losing.
// Edit their values to your liking
trubb_east_casualty_limit = 99;
trubb_indep_casualty_limit = 99;
trubb_west_casualty_limit = 99;

// Initial init for wave respawn, run for the side or sides you want to use wave respawn for, this example is for all sides, resistance uses custom mission parameters that can be set in the lobby
[east, 1, -1, true, west] remoteexec ["zsn_fnc_waverespawn", 2];
[west, 1, -1, true, east] remoteexec ["zsn_fnc_waverespawn", 2];

// If the fourth param is "true" you can define custom loadouts for the new wave below. Either from description.ext or config
zsn_eloadouts = [
	"red_soldier"
];
zsn_wloadouts = [
	"blue_soldier"
];

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

// Do not edit these values yourself
trubb_wait = false;
trubb_mission_end = false;
[
	{
		trubb_wait = call trubb_fnc_initialize;
	},
	[],
	60 
] call CBA_fnc_waitAndExecute;

[{ trubb_wait },
	{
		[] spawn {
			waitUntil {
				sleep 10;
				call trubb_fnc_endCondition;
				trubb_mission_end;
			};
		};
	},
	[]
] call CBA_fnc_waitUntilAndExecute;
