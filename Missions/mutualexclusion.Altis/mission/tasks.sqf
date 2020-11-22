//place all mission related stuff here
//do not overwrite this file when copying framework from mission to mission

// MyDAC setup 
[mydac_tg_airbase, [true], ["GUER", "LOW"]] call klpq_myDac_fnc_createZone;
[mydac_tg_airbase, [4, 6, 10]] call klpq_myDac_fnc_zoneAddInf;
[mydac_tg_airbase, [1, 0, 10]] call klpq_myDac_fnc_zoneAddWhl;

[mydac_tg_rbase, [true], ["GUER", "LOW"]] call klpq_myDac_fnc_createZone;
[mydac_tg_rbase, [4, 4, 10]] call klpq_myDac_fnc_zoneAddInf;

[mydac_tg_ionbase, [true], ["GUER", "LOW"]] call klpq_myDac_fnc_createZone;
[mydac_tg_ionbase, [4, 4, 10]] call klpq_myDac_fnc_zoneAddInf;

[mydac_tg_telos, [true], ["GUER", "LOW"]] call klpq_myDac_fnc_createZone;
[mydac_tg_telos, [4, 4, 10]] call klpq_myDac_fnc_zoneAddInf;

[mydac_tg_terminal, [true], ["GUER", "LOW"]] call klpq_myDac_fnc_createZone;
[mydac_tg_terminal, [2, 4, 10]] call klpq_myDac_fnc_zoneAddInf;

[] spawn {
	// WEST (CIA) TASKS 

	// Задача для ЦРУ - найти ноутбук
	_marker_cia_1 = "tk_cia_laptop";
	_marker_cia_2 = "tk_cia_prisoner";
	_laptop_obj = tgt_laptop;

	[WEST, "cia_1", ["Необходимо найти ноутбук с данными о заложнике", "Найти ноутбук"], _marker_cia_1, "ASSIGNED", 0, true, "default"] call BIS_fnc_taskCreate;

	waitUntil {
		!alive _laptop_obj == true 
	};

	["cia_1", "SUCCEEDED", true] call BIS_fnc_taskSetState;

	sleep 5;

	[WEST, "cia_2", ["Стало известно, что журналиста удерживают в терминале аэропорта. Спасите его и доставьте на базу!", "Спасти заложника и доставить на базу"], _marker_cia_2, "ASSIGNED", 0, true, "default"] call BIS_fnc_taskCreate;

	// Нет завершения, потому что это пвп, просить админа надо, он рассудит
};

[] spawn {
	// EAST (KLPQ) TASKS

	// Задача ковпаку - найти папку 
	_marker_klpq_1 = "tk_klpq_file";
	_marker_klpq_2 = "tk_klpq_prisoner";
	_file_obj = tgt_file;
	_prisoner_obj = tgt_prisoner;

	[EAST, "klpq_1", ["Наш информатор оставил данные о местоположении цели в журнале, который находится на исследовательской базе. Найдите этот журнал.", "Найти журнал"], _marker_klpq_1, "ASSIGNED", 0, true, "default"] call BIS_fnc_taskCreate;

	waitUntil {
		!alive _file_obj == true 
	};

	["klpq_1", "SUCCEEDED", true] call BIS_fnc_taskSetState;

	sleep 5;

	[EAST, "klpq_2", ["Из записей в журнале стало понятно, что журналиста держат в терминале аэропорта. Найдите и убейте его!", "Убить журналиста"], _marker_klpq_2, "ASSIGNED", 0, true, "default"] call BIS_fnc_taskCreate;

	waitUntil {
		!alive _prisoner_obj == true 
	};

	// Если залог умер - ковпачные победили, получается

	["klpq_2", "SUCCEEDED", true] call BIS_fnc_taskSetState;

};