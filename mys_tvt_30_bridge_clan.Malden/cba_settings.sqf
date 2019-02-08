force ace_advanced_fatigue_enabled = true;              // Advanced fatigue on, no other config

force ace_captives_allowHandcuffOwnSide = false;        // Can't put handcuffs on own side because retards...

force ace_cookoff_enable = false;                       // Cookoff is off because it's annoying as hell
force ace_cookoff_enableAmmobox = false;
force ace_cookoff_enableAmmoCookoff = false;

force ace_finger_enabled = true;                        // allow pointing ingame
force ace_finger_maxRange = 5.0;                        // 5 meters isn't unreasonable for such an inaccurate action. But do reconsider for each mission.

force ace_gforces_enabledFor = 0;                       // No pesky g-forces act on our pilots

force ace_hearing_enableCombatDeafness = false;         // you don't go deaf when shooting
force ace_hearing_autoAddEarplugsToUnits = false;       // And thanks to that we don't need those dumb earplugs

force ace_interation_disableNegativeRating = true;      // Shooting friendlies etc dont result in friendly AI killing you back.

force ace_map_mapShowCursorCoordinates = true;          // Show coordinates next to the map cursor
force ace_map_gestures_enabled = true;                  // Allow pointing in the map interface

force ace_medical_ai_enabledFor = 2;                    // Medical system enabled for ai
force ace_medical_AIDamageThreshold = 1.3;              // AI can take 1.3 damage
force ace_medical_allowLitterCreation = true;           // Crap on the ground is allowed
force ace_medical_allowUnconsciousAnimationOnTreatment = true;  // Allow animation of unconcious peeps
force ace_medical_amountOfReviveLives = -1;             // Revive lives disabled
force ace_medical_bleedingCoefficient = 0.8;            // Bleeding is slightly slower than normal
force ace_medical_blood_enabledFor = 2;                 // Blood splashes on the ground
force ace_medical_consumeItem_PAK = 0;                  // PAK is not removed on use
force ace_medical_consumeItem_SurgicalKit = 0;          // Surgical kit is not removed on use
force ace_medical_delayUnconCaptive = 3;                // AI keep shooting at unconcious for this long
force ace_medical_enableAdvancedWounds = false;         // Advanced wounds is disabled
force ace_medical_enableFor = 1;                        // Medical system enabled for players and ai
force ace_medical_enableOverdosing = true;              // Overdosing is possible
force ace_medical_enableRevive = 0;                     // Revive disabled - prefer respawn instead
force ace_medical_enableScreams = true;                 // "Screams" enabled, more like bite the pillow-muffled whines
force ace_medical_enableUnconsciousnessAI = 2;          // AI can go unconcious
force ace_medical_enableVehicleCrashes = true;          // Can take damage from crashing
force ace_medical_healHitPointAfterAdvBandage = false;  // Dont heal hitpoints post-bandage
force ace_medical_increaseTrainingInLocations = false;  // Dont give more skill based on location
force ace_medical_keepLocalSettingsSynced = true;       // Settings are synced across network
force ace_medical_level = 2;                            // Advanced medical ON
force ace_medical_litterCleanUpDelay = 0;               // Litter stays 0 long?
force ace_medical_litterSimulationDetail = 3;           // Lots of litter created
force ace_medical_maxReviveTime = 90;                   // 90s max time to rescue someone in revive mode
force ace_medical_medicSetting = 2;                     // Advanced medical for medics too
force ace_medical_medicSetting_basicEpi = 1;            // only medics can use epi
force ace_medical_medicSetting_PAK = 1;                 // only medics can use PAK
force ace_medical_medicSetting_SurgicalKit = 1;         // Only medics can use Surgical Kit
force ace_medical_menu_allow = 1;                       // Use of medical menu allowed
force ace_medical_menu_maxRange = 3;                    // Medical menu max range is 3 meters
ace_medical_menu_openAfterTreatment = true;             // Medical menu reopens after treatment action finished
ace_medical_menu_useMenu = 1;                           // Medical menu used
ace_medical_menuTypeStyle = 0;                          // 3d selections standard menu type
force ace_medical_moveUnitsFromGroupOnUnconscious = false;  // Unconcious units are not removed from the group
force ace_medical_painCoefficient = 1.2;                // Player pain is 1.2x base
force ace_medical_painEffectType = 1;                   // Pain effect type is chromatic abberation
force ace_medical_painIsOnlySuppressed = true;          // Pain is only supressed not removed
force ace_medical_playerDamageThreshold = 1.3;          // Players can take 1.3 damage
force ace_medical_preventInstaDeath = false;            // Can die instantly, too bad
force ace_medical_remoteControlledAI = true;            // Remote controlled ai is treated as ai
force ace_medical_useCondition_PAK = 1;                 // Stable required for PAK use
force ace_medical_useCondition_SurgicalKit = 1;         // Stable required for SK use
force ace_medical_useLocation_basicEpi = 0;             // Epi can be used anywhere
force ace_medical_useLocation_PAK = 0;                  // PAK can be used anywhere
force ace_medical_useLocation_SurgicalKit = 3;          // SK can only be used in medical vehicle/facility

force ace_mk6mortar_airResistanceEnabled = true;        // Mortar rounds are affected by air and wind
force ace_mk6mortar_allowComputerRangefinder = false;   // Can't use the artillery computer interface
force ace_mk6mortar_allowCompass = true;                // CAN use the sight
force ace_mk6mortar_useAmmohandling = true;             // Manual loading of mortars required - THIS AFFECTS AI TOO

force ace_nightvision_disableNVGsWithSights = false;    // Allow NVG in sights so there's a reason to have them on
force ace_nightvision_shutterEffects = true;            // Turn on the autogating effects

force ace_overheating_unJamOnReload = true;             // Reloading attempts to unjam the weapon - people are crap at remembering keybinds
force ace_overheating_enabled = true;                   // Weapons can overheat

force ace_weather_windSimulation = false;               // turn off ACE's own map-based wind simulation

force STHud_Settings_RemoveDeadViaProximity = true;     // STHud removes dead people from groups automagically

// ADV - ACE SPLINT - Only used if present in mission
force adv_aceSplint_enable = true;                      // Enable splint
force adv_aceSplint_reopenChance_medic = 0;             // Reopnen chance when medic applies
force adv_aceSplint_reopenChance_regular = 0;           // Reopen chance when anyone else applies
force adv_aceSplint_reopenTime = 600;                   // Minimum time before the splint can reopen
force adv_aceSplint_reuseChance = 100;                  // Chance of reusability

// TFAR
force TFAR_objectInterceptionEnabled = true;            // Terrain interception enabled
force TFAR_spectatorCanHearEnemyUnits = true;           // Spectator can hear enemy units
force TFAR_spectatorCanHearFriendlies = true;           // Spectator can hear friendly units
force TFAR_giveMicroDagrToSoldier = true;               // All soldiers get a MicroDAGR radio programmer
force TFAR_AICanHearPlayer = true;                      // AI can hear players talk
force TFAR_AICanHearSpeaker = true;                     // AI can hear radio speakers
