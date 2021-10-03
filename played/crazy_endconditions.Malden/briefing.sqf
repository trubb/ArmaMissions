waitUntil {!isNull player};

player createDiaryRecord ["Diary", ["Victory Conditions & Credits", "
TIME LIMIT: Time limit is 20 minutes.<br/>

Victory Conditions:<br/>
The side that is first to lose 75% of it's initial strength loses.

<br/>
<br/>
Mission by Trubb for Anrop.se
"]];

player createDiaryRecord ["Diary", ["INTEL: NATO", "
<img image=""nato.jpg""/><br/><br/>
<font face='TahomaB'>NATO soldier</font>
"]];

player createDiaryRecord ["Diary", ["INTEL: AAF", "
<img image=""aaf.jpg""/><br/>
<font face='TahomaB'>AAF Soldier</font><br/><br/>
"]];

switch (side player) do {

	case resistance: {

player createDiaryRecord ["Diary",["IV. Service Support","
a. Equipment<br/>
Standard combat load.
<br/>
<br/>

No other help, you're on your own!
"]];

player createDiaryRecord ["Diary",["III. Mission","
We are to wipe out the NATO forces present in the military installation area.
"]];

player createDiaryRecord ["Diary",["IIB. Friendly Forces","
We are one 14-man squad of infantry.
"]];

player createDiaryRecord ["Diary",["IIA. Enemy Forces","
The NATO forces are one 14-man squad of infantry strong.
"]];

player createDiaryRecord ["Diary",["I. Situation","
Our squad have been tasked with flushing out any NATO forces from the military installation.
"]];

	};

	case west: {

player createDiaryRecord ["Diary",["IV. Service Support","
a. Equipment<br/>
Standard combat load.
<br/>
<br/>

No other help, you're on your own!
"]];

player createDiaryRecord ["Diary",["III. Mission","
We are to wipe out the AAF forces present in the military installation area.
"]];

player createDiaryRecord ["Diary",["IIB. Friendly Forces","
We are one 14-man squad of infantry.
"]];

player createDiaryRecord ["Diary",["IIA. Enemy Forces","
The AAF forces are one 14-man squad of infantry strong.
"]];

player createDiaryRecord ["Diary",["I. Situation","
Our squad have been tasked with flushing out any AAF forces from the military installation.
"]];

	};
};


player createDiaryRecord ["Diary",["IMPORTANT NOTES","
A setup timer is present in the mission. You may NOT move during the safe start.<br/><br/>

<font face='TahomaB'>MOVEMENT RULES DURING SAFE START</font><br/><br/>
BLUFOR:<br/>
BLUFOR elements must stay in position during safe start. <br/><br/>
INDFOR:<br/>
INDFOR elements elements must stay in position during safe start.
"]];
