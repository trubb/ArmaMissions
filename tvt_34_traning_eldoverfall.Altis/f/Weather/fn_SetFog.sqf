// F3 - SetFog
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_fog","_strength","_decay","_base"];

// ====================================================================================

// SET KEY VARIABLES
// We interpret the values parsed to the script. If the function was called from the parameters those values are used.

_fog = _this select 0;
_transition = if (count _this > 1) then {_this select 1} else {0};

_strength = 0;	// Value for fog at base level
_decay = 0; 	// Decay of fog density with altitude. If set to 0 fog strength is consistent throughout.
_base = 0; 		// Base altitude of fog (in meters). Up until this height fog does *not* loose density.

// ====================================================================================

// SELECT FOG VALUES
// Using the value of _fog, new fog values are set.

switch (_fog) do
{
	//None
	case 0:
	{
		_strength = 0;
		_decay = 0;
		_base = 0;
	};

	//Light
	case 1:
	{
		_strength = 0.2;
		_decay = 0;
		_base = 0;
	};

	//Heavy
	case 2:
	{
		_strength = 0.4;
		_decay = 0;
		_base = 0;
	};

	//Low Elevation Fog
	case 3: {
		_strength = 0.40;
		_decay = 0.07;
		_base = 1;
	};

	//Med Elevation Fog
	case 4: {
		_strength = 0.35;
		_decay = 0.05;
		_base = 50;
	};

	//High Elevation Fog
	case 5: {
		_strength = 0.15;
		_decay = 0.04;
		_base = 100;
	};

	//Very High Elevation Fog
	case 6: {
		_strength = 0.1;
		_decay = 0.01;
		_base = 200;
	};
};

// ====================================================================================

// SET MISSION CONDITIONS
// Use the new values to set the transition across the network

_transition setFog [_strength,_decay,_base];

// ====================================================================================


