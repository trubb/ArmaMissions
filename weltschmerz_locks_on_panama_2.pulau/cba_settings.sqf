/*************** ACE3 Settings ***************/
    /*************** ACE Fatigue ***************/
    force ace_advanced_fatigue_enabled = true;              // Advanced fatigue on, no other config

    /*************** ACE Cookoff ***************/
    force ace_cookoff_enable = 0;                               // Cookoff is off because it's annoying as hell
    force ace_cookoff_enableAmmobox = false;
    force ace_cookoff_enableAmmoCookoff = false;

    /*************** ACE Pointing ***************/
    force ace_finger_enabled = true;                        // allow pointing ingame
    force ace_finger_maxRange = 5.0;                        // 5 meters isn't unreasonable for such an inaccurate action. But do reconsider for each mission.

    /*************** ACE Misc ***************/
    force ace_gforces_enabledFor = 0;                       // No pesky g-forces act on our pilots
    force ace_interation_disableNegativeRating = true;      // Shooting friendlies etc dont result in friendly AI killing you back.
    force ace_captives_allowHandcuffOwnSide = false;        // Can't put handcuffs on own side because retards...
    force ace_weather_windSimulation = false;               // turn off ACE's own map-based wind simulation
    force ace_weather_showCheckAirTemperature = false;      // And no dumb "show air temp" action either..


    /*************** ACE Hearing ***************/
    force ace_hearing_enableCombatDeafness = false;         // you don't go deaf when shooting
    force ace_hearing_autoAddEarplugsToUnits = false;       // And thanks to that we don't need those dumb earplugs

    /*************** ACE Map ***************/
    force ace_map_mapShowCursorCoordinates = true;          // Show coordinates next to the map cursor
    force ace_map_gestures_enabled = true;                  // Allow pointing in the map interface

    /*************** ACE Medical ***************/
    /* AI specific */
    force ace_medical_ai_enabledFor = 2;                        // Medical system enabled for AI
    force ace_medical_AIDamageThreshold = 1.3;                  // AI can take x damage
    force ace_medical_statemachine_AIUnconsciousness = false;   // AI can go unconscious
    force ace_medical_statemachine_fatalInjuriesAI = 0;         // AI can receive fatal injuries in any state

    /* Players specific */
    force ace_medical_playerDamageThreshold = 2.0;              // Players can take x damage
    force ace_medical_statemachine_fatalInjuriesPlayer = 0;     // Fatal damage can be received in any state

    /* Fatal damage */
    force ace_medical_fatalDamageSource = 0;                    // Only hits to vital organs (chest/head) count as fatal

    /* Cardiac arrest / CPR */
    force ace_medical_statemachine_cardiacArrestTime = 60;      // How many seconds it takes a unit to die if it enters cardiac arrest
    force ace_medical_treatment_cprSuccessChance = 0.5;         // How likely it is for CPR to succeed in restoring the heart rythm

    /* Pain settings */
    force ace_medical_painCoefficient = 1.2;                    // Pain is 1.2x base
    force ace_medical_feedback_painEffectType = 2;              // Force the use of the Chromatic Abberation pain effect

    /* Fractures / splints */
    force ace_medical_fractures = 1;                            // Fractures enabled, splints fully heal fractures
    force ace_medical_limping = 1;                              // Unbandaged wounds cause limping

    /* Bandage, drug, and diagnostic types */
    force ace_medical_treatment_allowSharedEquipment = 0;       // Patient's equipment will be used before that of the unit treating the patient
    force ace_medical_treatment_convertItems = 0;               // Convert vanilla IFAK/Medical Kit to ACE3 items
    force ace_medical_treatment_advancedBandages = true;        // Enables advanced bandages
    force ace_medical_treatment_advancedDiagnose = true;        // Enables advanced diagnose options (Check pulse/ blood pressure/ response)
    force ace_medical_treatment_advancedMedication = true;      // Advanced drugs, also enables use of Adenosine and Atropine
    force ace_medical_treatment_clearTraumaAfterBandage = false;// Bandaging does not "heal" the unit

    /* Blood I/O settings */
    force ace_medical_bleedingCoefficient = 0.8;                // Bleeding is slightly slower than normal
    force ace_medical_ivFlowRate = 1;                           // Controls how quickly fluid flows out of IV bags. (time interval * IV CPS [4.1667mL/s] * this variable)
    force ace_medical_treatment_allowSelfIV = 1;                // Allows a unit to use IV bags on themself

    /* Objects on ground */
    force ace_medical_blood_bloodLifetime = 900;                // Blood remains on ground for 15 minutes
    force ace_medical_blood_enabledFor = 2;                     // Both players and AI create blood pools on the ground
    force ace_medical_blood_maxBloodObjects = 500;              // Max amount of blood pools
    force ace_medical_treatment_allowLitterCreation = true;     // Using medical equipment causes litter to spawn
    force ace_medical_treatment_maxLitterObjects = 500;         // Max amount of litter objects
    force ace_medical_treatment_litterCleanupDelay = 0;         // Amount of time until litter is considered for the garbage collector

    /* User interface */
    ace_medical_gui_enableActions = 0;                          // Enables medical actions in the interaction menu, allows player to select style
    force ace_medical_gui_enableSelfActions = true;             // Enables medical actions in the self interaction menu
    force ace_medical_gui_enableMedicalMenu = 1;                // Use of medical menu allowed
    force ace_medical_gui_maxDistance = 3;                      // Medical menu max range is 3 meters
    ace_medical_gui_openAfterTreatment = true;                  // Medical menu optionally reopens after treatment action finished

    /* Unconsciousness / wakeup */
    force ace_medical_spontaneousWakeUpChance = 0.05;           // Probability a stabilised unit wakes up on their own (5% chance, checked every 15 seconds)
    force ace_medical_spontaneousWakeUpEpinephrineBoost = 1.0;  // How much more likely it is that they wake up with epi in their system (vartype double)
                                                                // 100% more likely than w/o? (epiboost * wakeupchance -> a 10% chance is 100% more than a 5% chance)                                                           
    /* Wound reopening */
    force ace_medical_treatment_woundReopening = false;         // Wounds do not reopen
    force ace_medical_treatment_allowSelfStitch = 0;            // Allows a unit to use the Surgical Kit on themself

    /* Removal of PAK / Surgical Kit on use */
    force ace_medical_treatment_consumePAK = 0;                 // PAK will not be removed on use
    force ace_medical_treatment_consumeSurgicalKit = 0;         // Surgical Kit will not be removed on use

    /* Location-related settings */
    force ace_medical_treatment_locationEpinephrine = 0;        // Epi can be used anywhere
    force ace_medical_treatment_locationPAK = 0;                // PAK can be used anywhere
    force ace_medical_treatment_locationsBoostTraining = false; // Locations do not improve the medical skill of units
    force ace_medical_treatment_locationSurgicalKit = 0;        // Surgical kit can be used anywhere

    /* Access control */
    force ace_medical_treatment_medicEpinephrine = 0;           // Any unit can use Epi
    force ace_medical_treatment_medicPAK = 1;                   // Only medics can use PAK
    force ace_medical_treatment_medicSurgicalKit = 1;           // Only medics can use Surgical Kit
    force ace_medical_treatment_timeCoefficientPAK = 1.0;       // How long a PAK takes to apply, multiplied by this var (vartype double)
    force ace_medical_treatment_holsterRequired = 0;            // No holstering of weapons required to handle patients

    /*************** ACE Mortar ***************/
    force ace_mk6mortar_airResistanceEnabled = true;        // Mortar rounds are affected by air and wind
    force ace_mk6mortar_allowComputerRangefinder = false;   // Can't use the artillery computer interface
    force ace_mk6mortar_allowCompass = true;                // CAN use the sight
    force ace_mk6mortar_useAmmohandling = true;             // Manual loading of mortars required - THIS AFFECTS AI TOO

    /*************** ACE NVG ***************/
    force ace_nightvision_disableNVGsWithSights = false;    // Allow NVG in sights so there's a reason to have them on
    force ace_nightvision_shutterEffects = true;            // Turn on the autogating effects

    /*************** ACE Overheating ***************/
    force ace_overheating_unJamOnReload = true;             // Reloading attempts to unjam the weapon - people are crap at remembering keybinds
    force ace_overheating_enabled = true;                   // Weapons can overheat

/*************** Shacktac UI ***************/
    force STHud_Settings_RemoveDeadViaProximity = true;     // STHud removes dead people from groups automagically
// DO THIS FOR DUI TOO

// D E P E C R A T E D
// ADV - ACE SPLINT - Only used if present in mission
/*
    force adv_aceSplint_enable = true;                      // Enable splint
    force adv_aceSplint_reopenChance_medic = 0;             // Reopnen chance when medic applies
    force adv_aceSplint_reopenChance_regular = 0;           // Reopen chance when anyone else applies
    force adv_aceSplint_reopenTime = 600;                   // Minimum time before the splint can reopen
    force adv_aceSplint_reuseChance = 100;                  // Chance of reusability
*/

/*************** TFAR ***************/
    force TFAR_objectInterceptionEnabled = true;            // Terrain interception enabled
    force TFAR_spectatorCanHearEnemyUnits = true;           // Spectator can hear enemy units
    force TFAR_spectatorCanHearFriendlies = true;           // Spectator can hear friendly units
    force TFAR_giveMicroDagrToSoldier = true;               // All soldiers get a MicroDAGR radio programmer
    force TFAR_AICanHearPlayer = true;                      // AI can hear players talk
    force TFAR_AICanHearSpeaker = true;                     // AI can hear radio speakers
