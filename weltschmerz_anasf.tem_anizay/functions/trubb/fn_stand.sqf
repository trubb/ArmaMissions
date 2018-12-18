params ["_units"];

{
	[_x, "UP"] remoteexec ["setunitpos", _x]
} foreach _units;
