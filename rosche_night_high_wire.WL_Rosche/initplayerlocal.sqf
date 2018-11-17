
[] execVM "f\safeStart\f_safeStart.sqf";

waitUntil {!isNull player};

params ["_player", "_didJIP"];
if (_didJIP) exitWith {	// kill JIPers, remove if they are allowed in
    this setDamage 1;
};
