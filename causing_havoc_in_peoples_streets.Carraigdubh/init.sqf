[] spawn {
   while {true} do {
      {
         _x setVariable ["ace_cookoff_enable", false, true];
         _x setVariable ["ace_cookoff_enableAmmoCookoff", false, true];
      } forEach vehicles;

      sleep 10;
   };
};
