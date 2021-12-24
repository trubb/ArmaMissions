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

player createDiaryRecord ["Diary", ["VII. Gameplay settings","
Medical Settings
<br/>Go here
<br/>
<br/Respawn settings
<br/>
<br/>
<br/Other mod settings
"]];

player createDiaryRecord ["Diary", ["VI. Victory Conditions","
Victory Conditions:
<br/>HOW TO WIN.
<br/>
<br/>End:
<br/>No end trigger available, recommended time 60-90 minutes or until all friendly forces have returned to the starting position after a successful raid.
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
<execute expression=""[0] call fusc_setActiveSwChannel;"">Set SR Primary.</execute> 
<execute expression=""[0] call fusc_setActiveAdditionalSwChannel;"">Set SR Additional.</execute> 
<br/>Alpha 2. - Ch.2 -
<execute expression=""[1] call fusc_setActiveSwChannel;"">Set SR Primary.</execute> 
<execute expression=""[1] call fusc_setActiveAdditionalSwChannel;"">Set SR Additional.</execute> 
<br/>Alpha 3. - Ch.3 -
<execute expression=""[2] call fusc_setActiveSwChannel;"">Set SR Primary.</execute> 
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
<br/>How much ammo?
<br/>Utility equipment?
<br/>
<br/>Reinforcements and resupply where if any?
<br/>How get them?
<br/>
<br/>b. Medical resources
<br/>Medical system and criteria
<br/>
<br/>Any other help players can expect.
"]];

player createDiaryRecord ["Diary",["III. Mission","
THE COMBAT TASK
<br/>
"]];

player createDiaryRecord ["Diary",["IIB.Friendly Forces","
WHAT FRIENDLY FORCES THERE ARE
<br/>
"]];

player createDiaryRecord ["Diary",["IIA. Enemy Forces","
WHAT ENEMY FORCES THERE ARE
<br/>
"]];

player createDiaryRecord ["Diary",["I. Situation","
1970-01-01T00:00:00+00:00
<br/>WHAT'S THE SITUATION?
<br/>
"]];

player createDiaryRecord ["Diary",["IMPORTANT NOTES","
A setup timer is present in the mission.
<br/>
<br/>You should probably not try to engage the enemy while it is active.
"]];
