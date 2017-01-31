#include "..\macros_idc.hpp"
params ["_display","_newPage"];
private _oldPage = GRAD_Nokia3310_curPage;

GRAD_Nokia3310_curPage = _newPage;

//save history
private _history = [_display] call GRAD_Nokia3310_fnc_history;

//reset to default
switch (toLower _oldPage) do {
     case "home": {
          (_display displayCtrl IDC_CTRLGROUP_HOME) ctrlShow false;
     };
     case "mainmenu": {
          (_display displayCtrl IDC_CTRLGROUP_MAINMENU) ctrlShow false;
     };
     case "tones": {
          (_display displayCtrl IDC_CTRLGROUP_TONES) ctrlShow false;
     };
};
//init new page
switch (toLower _newPage) do {
     case "home": {
          (_display displayCtrl IDC_HISTORY) ctrlSetText "";
          (_display displayCtrl IDC_ENTERTEXT) ctrlSetText "";

          (_display displayCtrl IDC_CTRLGROUP_HOME) ctrlShow true;
          (_display displayCtrl IDC_CTRLGROUP_HOME) ctrlEnable false;

          (_display displayCtrl IDC_ENTERTEXT) ctrlSetText "Menu";

          (_display displayCtrl IDC_HOME_CARRIER) ctrlSetText "GRAD_Nokia3310\data\dialog\home\carrier_5_ca.paa";
          (_display displayCtrl IDC_HOME_BATTERY) ctrlSetText "GRAD_Nokia3310\data\dialog\home\battery_full_ca.paa";
     };
     case "mainmenu": {
          (_display displayCtrl IDC_CTRLGROUP_MAINMENU) ctrlShow true;
          (_display displayCtrl IDC_CTRLGROUP_MAINMENU) ctrlEnable false;

          (_display displayCtrl IDC_ENTERTEXT) ctrlSetText "Select";

          private _index = if (_history isEqualTo []) then {0} else {(_history select 0) - 1};

          [_display,_index] call GRAD_Nokia3310_fnc_scroll_mainmenu;
     };
     case "tones": {

          (_display displayCtrl IDC_CTRLGROUP_TONES) ctrlShow true;

          (_display displayCtrl IDC_TONES_LIST) ctrlShow false;

          (_display displayCtrl IDC_ENTERTEXT) ctrlSetText "Select";


          private _index = if (count _history isEqualTo 1) then {0} else {(_history select 1) - 1};

          (_display displayCtrl IDC_CTRLGROUP_TONES) ctrlEnable false;

          [_display, _Index] call GRAD_Nokia3310_fnc_scroll_tones;
     };
};
