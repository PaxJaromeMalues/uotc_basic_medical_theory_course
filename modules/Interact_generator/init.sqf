["Interact Generator", "Allows easy access to ACE Interaction points.", "ACE, Perfk"] call FNC_RegisterModule;

/*
 * Argument:
 * 0: Action name <STRING>
 * 1: Name of the action shown in the menu <STRING>
 * 2: Icon <STRING>
 * 3: Statement <CODE>
 * 4: Condition <CODE>
 * 5: Insert children code <CODE> (Optional)
 * 6: Action parameters <ANY> (Optional)
 * 7: Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional)
 * 8: Distance <NUMBER> (Optional)
 * 9: Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional)
 * 10: Modifier function <CODE> (Optional)
 */

if (!isDedicated) then {

	"" spawn {

		sleep 0.01;
		_y = [
			"", 
			"Spawn Gear", 
			"",
			{
				[] spawn {
					[1, [], {[_player, "uotc_loadout_west_PT"] call FNC_GearScript;}, {}, "Rearming"] call ace_common_fnc_progressBar;
				};
			}, 
			{true}
		] call ace_interact_menu_fnc_createAction;

		[gear_spawn_1, 0, ["ACE_MainActions"], _y] call ace_interact_menu_fnc_addActionToObject;
		[gear_spawn_2, 0, ["ACE_MainActions"], _y] call ace_interact_menu_fnc_addActionToObject;

	};

};