[] spawn {
   while {true} do {
      {
         _x setVariable ["ace_cookoff_enable", false, true];
         _x setVariable ["ace_cookoff_enableAmmoCookoff", false, true];
      } forEach vehicles;

      sleep 10;
   };
};

[] spawn {
	_initdate = [1985, 5, 5, 03, 15];

	while {true} do {
		setdate _initdate;
		sleep 60;
	};
};
