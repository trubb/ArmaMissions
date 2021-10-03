[player, [missionNamespace, "inventory_var"]] call BIS_fnc_saveInventory;      //Save inventory if altered in editor

if (currentWeapon player isKindOf ["Rifle_Base_F", configFile >> "CfgWeapons"]) then   //Check if player has a rifle as opposed to pistol or something
{
   player addmagazine currentMagazine player;                  //Add an extra magazine

   player removePrimaryWeaponItem currentMagazine player;            //Remove loaded magazine
};

zsn_eplayer_trg = createTrigger ["EmptyDetector", getmarkerPos "respawn_east"];      //create trigger on respawn markers
zsn_eplayer_trg setTriggerActivation ["civ", "PRESENT", true];            
zsn_wplayer_trg = createTrigger ["EmptyDetector", getmarkerPos "respawn_west"];      //which will be consulted when displaying
zsn_wplayer_trg setTriggerActivation ["civ", "PRESENT", true];
zsn_gplayer_trg = createTrigger ["EmptyDetector", getmarkerPos "respawn_guerrila"];   //explanatory hints on player death
zsn_gplayer_trg setTriggerActivation ["civ", "PRESENT", true];

player addEventHandler

["Respawn",
   {
      ["Initialize",[player, [playerside], false, false, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;      //initialize spectating

      switch (playerSide) do
      {
         case east: {hint format ["Wave Respawn is in effect, wave size is %1. You will respawn when %2 more players die.", zsn_wavesize_east, (zsn_wavesize_east - (count list zsn_eplayer_trg + 1))];};
         case west: {hint format ["Wave Respawn is in effect, wave size is %1. You will respawn when %2 more players die.", zsn_wavesize_west, (zsn_wavesize_west - (count list zsn_wplayer_trg + 1))];};
         case resistance: {hint format ["Wave Respawn is in effect, wave size is %1. You will respawn when %2 more players die.", zsn_wavesize_resistance, zsn_wavesize_resistance - (count list zsn_gplayer_trg + 1)];};
      };

      [player, [missionNamespace, "inventory_var"]] call BIS_fnc_loadInventory;      //load saved loadout on respawn

      [player] join createGroup CIVILIAN;                  //Change player side to civilian to prevent players from spectating themselves
   }
];