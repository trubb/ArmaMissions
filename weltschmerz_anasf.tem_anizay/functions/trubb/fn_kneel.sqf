params ["_units"];

{
	[_x, "MIDDLE"] remoteexec ["setunitpos", _x]
} foreach _units;
