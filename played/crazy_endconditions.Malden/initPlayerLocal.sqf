
[] execVM "f\safeStart\f_safeStart.sqf";

waitUntil {!isNull player};

if (didJIP) exitWith {	// kill JIPers, remove if they are allowed in
    this setDamage 1;
};
