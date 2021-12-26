
[] execVM "f\safeStart\f_safeStart.sqf";

spawnable_squad = [
	"B_Soldier_F",
	"B_Soldier_F",
	"B_Soldier_F",
	"B_Soldier_F"
];

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
