params ["_units"];

{
	//_x setUnitPos "UP";
	[_x, "UP"] remoteexec ["setunitpos", _x]
} foreach _units;
