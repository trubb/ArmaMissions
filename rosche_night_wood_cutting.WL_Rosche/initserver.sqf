
[] execVM "f\safeStart\f_safeStart.sqf";

us_squad = [
	"rhsusf_army_ocp_medic",
	"rhsusf_army_ocp_autorifleman",
	"rhsusf_army_ocp_grenadier",
	"rhsusf_army_ocp_riflemanat",
	"rhsusf_army_ocp_autorifleman",
	"rhsusf_army_ocp_grenadier",
	"rhsusf_army_ocp_riflemanat",
	"rhsusf_army_ocp_rifleman",
	"rhsusf_army_ocp_rifleman",
	"rhsusf_army_ocp_rifleman"
];

// The maximum percentage of casualties a given side can take before automatically losing.
// Edit their values to your liking
trubb_east_casualty_limit = 50;
trubb_indep_casualty_limit = 75;
trubb_west_casualty_limit = 75;

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
