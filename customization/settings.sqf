//ace_cookoff_enable = false; //this disables cookoff fire effect
//ace_cookoff_enableAmmoCookoff = false; //this disables secondary explosions

if (isServer) then {

	setViewDistance 2500; //View distance for the server (the ai's)

	FW_TimeLimit = 0; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "TIME LIMIT REACHED!"; //The message displayed when the time runs out

	[west, "USF", "player"] call FNC_AddTeam; //Adds a player team called USMC on side west
//	[east, "VDV", "ai"] call FNC_AddTeam; //Adds a ai team called VDV on side east
	
	// [resistance, "Local Militia", "player"] call FNC_AddTeam; //Adds a player team called Local Militia on side resistance (aka independent)

};

if (!isDedicated) then {

	FW_DebugMessagesEnabled = true; //Only disable debug messages when the mission is released

	setViewDistance 2500; //View distance for the player

	//call FNC_forceTerrainGrid; //uncomment this to force high terrain setting. This will prevent faraway objects from appearing as floating. Useful for missions with long sightlines.
	
	switch (side player) do { //Checks what team the player is on
		case west: {
			FW_RespawnTickets = 1000; //If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
		};
		//add more cases for other factions here
	};
};

if (!isDedicated) then { //This scope is only for the player

	"" spawn { //Create the object from code view

		sleep 0.01;
		waitUntil {!isNull player}; //Wait for the player to spawn

		switch (side player) do { //get player side and execute

			case west: { //execute in case that the player is on west side
				
				"" spawn {
				
					waitUntil {time > 1}; //wait until the actual mission has started
          
					"Course Participation Rules" hintC [ //hintC - display the namend rows below as bullet points in a message box
					"Welcome to the UOTC Basic Medical Theory Course.",
					"If you have to leave mid course, please announce this via side chat and leave quietly.",
					"This course is designed to incorporate the participants via reading paragraphs or answering questions.",
					"Professional beheaviour is expected at all times - Listen to the Instructors.",
					"DO NOT USE ANY EQUIPMENT INBEFORE BEING ORDERED TO DO SO!",
					"WEAPONS SPAWN IN SAFE MODE AND REMAIN IN SAFE MODE UNTIL ORDERED OTHERWISE!",
					"Thank you for respecting these rules - have fun and enjoy the course!"
					];
					hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", { //telling hintC to not be a retard a redisplay a second time with old ArmA1.0 funtion
						0 = _this spawn {
						_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
						hintSilent "";
						};
					}];
				};
			};
		};
	};
};