
[] execVM "f\safeStart\f_safeStart.sqf";

[] spawn {
   while {true} do {
      {
         _x setVariable ["ace_cookoff_enable", false, true];
         _x setVariable ["ace_cookoff_enableAmmoCookoff", false, true];
      } forEach vehicles;

      sleep 10;
   };
};

tf_same_sw_frequencies_for_side = true;
tf_no_auto_long_range_radio = true;
tf_same_lr_frequencies_for_side = true;
TF_give_personal_radio_to_regular_soldier = true;
