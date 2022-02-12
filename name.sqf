while {True} do {
	_start = diag_tickTime;
	_saving = player execVM "save.sqf";
	waitUntil{scriptDone _saving};
	_loading = player execVM "load.sqf";
	waitUntil{scriptDone _loading};
	_stop = diag_tickTime;
	//hint str format ["%1",_stop - _start];
	sleep 1; //MAD PERFORMANCE BOOST
};