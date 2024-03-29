// F3 - Safe Start
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================
//	This script inits the Mission Timer and the Safe Start, has the server setup the publicVariable
//      while the client waits, sets units invincibility and displays hints, then disables it.

// MAKE SURE THE PLAYER INITIALIZES PROPERLY
if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// ====================================================================================

// Make sure the component only starts after the mission has initialized
sleep 0.1;

//Have the server setup the variables while clients wait for jip
if(isServer) then
{

	pv_mission_timer = f_param_mission_timer;
	publicVariable "pv_mission_timer";
};

// ====================================================================================

//wait until server has initialized pv_mission_timer OR f_param_mission_timer was not set
waituntil {sleep 3; ((!isNil "pv_mission_timer") || (f_param_mission_timer == 0));};

// ====================================================================================

//JIP clients are sent PVs before can init.sqf can process
if (pv_mission_timer > 0) then
{
	//Start Mission Timer, Mission Timer Hint, turn on invincibility
	[] execVM "f\safeStart\f_safeStartLoop.sqf";
	[] execVM "f\safeStart\f_safeStartHint.sqf";
	[true] execVM "f\safeStart\f_safety.sqf";

	//Wait until timer hits 0, turn invincibility off
	waituntil {sleep 10; pv_mission_timer == 0};
	[false] execVM "f\safeStart\f_safety.sqf";
};
