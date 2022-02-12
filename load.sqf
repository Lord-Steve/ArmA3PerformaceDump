{
	if(TypeOf _x == "Land_Tableware_01_cup_F") then {
		if(player distance _x < 25) then {
			"B_RangeMaster_F" createUnit [position _x, createGroup [east, true]];
			deleteVehicle _x;
		};
	};
	
} forEach (allMissionObjects "");