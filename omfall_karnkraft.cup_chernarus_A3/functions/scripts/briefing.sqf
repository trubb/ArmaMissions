waitUntil {!isNull player};

// functions by Dahlgren
fusc_setActiveLrChannel = {
    params ["_channel"];
    [call TFAR_fnc_activeSwRadio, _channel] call TFAR_fnc_setSwChannel;
};

fusc_setActiveAdditionalLrChannel = {
    params ["_channel"];
    [call TFAR_fnc_activeSwRadio, _channel] call TFAR_fnc_setAdditionalSwChannel;
};

fusc_setActiveSwChannel = {
    params ["_channel"];
    [call TFAR_fnc_activeSwRadio, _channel] call TFAR_fnc_setSwChannel;
};

fusc_setActiveAdditionalSwChannel = {
    params ["_channel"];
    [call TFAR_fnc_activeSwRadio, _channel] call TFAR_fnc_setAdditionalSwChannel;
};

fusc_setActiveSwChannelFrequency = {
    params ["_channel", "_frequency"];
    [call TFAR_fnc_activeSwRadio, _channel, _frequency] call TFAR_fnc_setChannelFrequency;
};

player createDiaryRecord ["Diary", ["IIX. Credits.","
Mission by Trubb for Anrop.se
<br/>Original framework by Trubb.
<br/>Additions by Rund.
<br/>Scripts and functions provided by or borrowed from:
<br/>Dahlgren, Rund, Trubb, and Tuntematon.
"]];

player createDiaryRecord ["Diary", ["VII. Gameplay settings and rules","
Medical Settings
<br/>AFI medical settings* are in use.
<br/>
<br/>Respawn settings
<br/>4-minute waves, you have 25 tickets, try not to die.
<br/>
<br/>Do consider taking it slow and steady instead of rushing forward.
<br/>
<br/>You are acting in official capacity, and as such should stick to the speed limits and stay on the roads unless directly threatened.
"]];

player createDiaryRecord ["Diary", ["VI. Victory Conditions","
Victory Conditions:
<br/>Successfully search through the village.
<br/>
<br/>End:
<br/>No end trigger available, recommended time no more than 60 minutes.
"]];

player createDiaryRecord ["Diary", ["V. Command and Signal"," 
These buttons are activated after briefing phase ends. 
<br/>
<br/>Stereo Settings.
<br/> SR Primary 
<execute expression=""[call TFAR_fnc_activeSWRadio, 0] call TFAR_fnc_setSwStereo;"">Stereo. </execute> 
<execute expression=""[call TFAR_fnc_activeSWRadio, 1] call TFAR_fnc_setSwStereo;"">Left Ear. </execute> 
<execute expression=""[call TFAR_fnc_activeSWRadio, 2] call TFAR_fnc_setSwStereo;"">Right Ear.</execute> 
<br/> SR Alternate 
<execute expression=""[call TFAR_fnc_activeSWRadio, 0] call TFAR_fnc_setAdditionalSwStereo;"">Stereo. </execute> 
<execute expression=""[call TFAR_fnc_activeSWRadio, 1] call TFAR_fnc_setAdditionalSwStereo;"">Left Ear. </execute> 
<execute expression=""[call TFAR_fnc_activeSWRadio, 2] call TFAR_fnc_setAdditionalSwStereo;"">Right Ear.</execute>
<br/>
<br/> LR Primary 
<execute expression=""[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 0] call TFAR_fnc_setLrStereo;"">Stereo. </execute> 
<execute expression=""[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 1] call TFAR_fnc_setLrStereo;"">Left Ear. </execute> 
<execute expression=""[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 2] call TFAR_fnc_setLrStereo;"">Right Ear.</execute> 
<br/> LR Alternate 
<execute expression=""[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 0] call TFAR_fnc_setAdditionalLrStereo;"">Stereo. </execute> 
<execute expression=""[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 1] call TFAR_fnc_setAdditionalLrStereo;"">Left Ear. </execute>
<execute expression=""[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 2] call TFAR_fnc_setAdditionalLrStereo;"">Right Ear. </execute> 

<br/>
<br/>Short range:
<br/>Alpha 1. - Ch.1 -
<execute expression=""[0] call fusc_setActiveSwChannel;"">Set SR Primary. </execute>
<execute expression=""[0] call fusc_setActiveAdditionalSwChannel;"">Set SR Additional.</execute>
<br/>Alpha 2. - Ch.2 -
<execute expression=""[1] call fusc_setActiveSwChannel;"">Set SR Primary. </execute>
<execute expression=""[1] call fusc_setActiveAdditionalSwChannel;"">Set SR Additional.</execute>
<br/>Alpha 3. - Ch.3 -
<execute expression=""[2] call fusc_setActiveSwChannel;"">Set SR Primary. </execute>
<execute expression=""[2] call fusc_setActiveAdditionalSwChannel;"">Set SR Additional.</execute>

<br/>
<br/>Long Range:
<br/>Alpha Plt. Ch.1 -  Freq.70 
<execute expression=""[0] call fusc_setActiveLrChannel;"">Set LR Primary.</execute>
<execute expression=""[0] call fusc_setActiveAdditionalLrChannel;"">Set LR Additional.</execute>
<execute expression=""[7, '70.0'] call fusc_setActiveSwChannelFrequency; [6] call fusc_setActiveSwChannel;"">Set SR Primary.</execute>
<execute expression=""[7, '70.0'] call fusc_setActiveSwChannelFrequency; [6] call fusc_setActiveAdditionalSwChannel;"">Set SR Additional.</execute>
"]];

player createDiaryRecord ["Diary",["IV. Support and Assets","
a. Equipment
<br/>You carry a standard combat load.
<br/>Look in the Equipment tab if you want to know what this means.
<br/>
<br/>TUN Respawn is used.
<br/>The Unimogs are used as Mobile Spawn Point, only one may be used at a time.
<br/>
<br/>Extra supplies are carried as cargo in your vehicles.
<br/>
<br/>b. Medical resources
<br/>AFI medical settings* are in use.
<br/>
<br/>You might very well die, and yes it is intended. Be more careful next time.
"]];

player createDiaryRecord ["Diary",["III. Mission","
Search for clues in the <marker name='village_1'>village</marker>.
<br/>
<br/>You are looking for evidence of cheating in the upcoming national referendum on nuclear energy.
<br/>
<br/>Large amounts of paper, or equipment for printing ballots, may be such evidence.
<br/>
<br/>Apprehend any individuals deemed to be part of any such operation.
"]];

player createDiaryRecord ["Diary",["IIB.Friendly Forces","
You are one infantry rifle platoon.
<br/>
<br/>Good luck, it will probably go fine)))
"]];

player createDiaryRecord ["Diary",["IIA. Enemy Forces","
The local population in the area can be expected to put up some resistance to your attempts to search through their houses.
<br/>
<br/>Cause them no undue harm. You may under no circumstance kill innocent civilians!
<br/>
<br/>Also by the way, don't expect to understand their dialect. This is after all not that far from the Malmö area.
"]];

player createDiaryRecord ["Diary",["I. Situation","
1979-09-23T07:00:00+02:00
<br/>Ahead of the national referendum on nuclear energy your platoon has been tasked with
executing a village-wide search warrant due to suspicions that the inhabitants of a village
in northern Skåne are preparing widespread cheating to get their way in the referendum.
<br/>
<br/>The village makes up one of several so-called 'green communities' and is run by a fraction of the organisation 'Gröna Khmererna'.
<br/>Members of this organisation have previously clashed with police forces, hence why you are here and not some policeman.
<br/>There are also some, likely unfounded, suspicions that the Soviet Union is funding these locals in order to destabilize the nation.
"]];

player createDiaryRecord ["Diary",["IMPORTANT NOTES","
A setup timer is present in the mission.
<br/>
<br/>You should probably not try to engage the enemy while it is active.
<br/>
<br/>You are acting in official capacity, and as such should stick to the speed limits and stay on the roads unless directly threatened.
"]];
