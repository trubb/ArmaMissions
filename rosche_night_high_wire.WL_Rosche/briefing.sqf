waitUntil {!isNull player};

player createDiarySubject ["MISSION INFO","MISSION INFO"];

player createDiaryRecord ["MISSION INFO", ["MISSION INFO", "
SAFE START TIMER<br/>
A 2 minute safe start timer is present in the mission.<br/>
<br/>

BLUFOR may NOT cross the red line before the timer finishes!<br/>
<br/>

OPFOR MAY move freely in the area of operations but may NOT cross the red line!<br/>
<br/>

DO NOT GO OUTSIDE THE MARKED AREA<br/>
<br/>

MISSION GOALS:<br/>
BLUFOR shall find and destroy the EW truck, located somewhere <marker name = 'ew_zone'>in Jastorf</marker>.<br/>
OPFOR shall prevent the destruction of said truck.<br/>
<br/>

TIME LIMIT:<br/>
BLUFOR has 30 minutes from crossing the red line to destroy the EW truck!<br/>
<br/>

WIN CONDITIONS:<br/>
BLUFOR wins if:<br/>
They destroy the EW truck.<br/>
or<br/>
They inflict 75% losses to OPFOR.<br/>
<br/>
OPFOR wins if:<br/>
They prevent BLUFOR from destroying the truck before the time runs out.<br/>
or<br/>
They inflict 75% losses to BLUFOR.<br/>
or<br/>
If the timer runs out.<br/>
<br/>

Mission made for Anrop.se by Trubb.

"]];
