MISSION_ROOT = call {
    private "_arr";
    _arr = toArray __FILE__;
    _arr resize (count _arr - 8);
    toString _arr
};

[] spawn {
   while {true} do {
      {
         _x setVariable ["ace_cookoff_enable", false, true];
         _x setVariable ["ace_cookoff_enableAmmoCookoff", false, true];
      } forEach vehicles;

      sleep 10;
   };
};
