#include "..\macros_idc.hpp"
params ["_display","_newPage"];
private _oldPage = GRAD_Nokia3310_curPage;

GRAD_Nokia3310_curPage = _newPage;

//save and preapre history
private _history = [];
{_history pushBack (parseNumber _x);} forEach ((ctrlText (_display displayCtrl IDC_HISTORY)) splitString "-");

hint str _history;

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
(_display displayCtrl IDC_HISTORY) ctrlSetText "";
(_display displayCtrl IDC_ENTERTEXT) ctrlSetText "";

//init new page
switch (toLower _newPage) do {
     case "home": {
          (_display displayCtrl IDC_CTRLGROUP_HOME) ctrlShow true;

          (_display displayCtrl IDC_ENTERTEXT) ctrlSetText "Menu";

          (_display displayCtrl IDC_HOME_CARRIER) ctrlSetText "GRAD_Nokia3310\data\dialog\home\carrier_5_ca.paa";
          (_display displayCtrl IDC_HOME_BATTERY) ctrlSetText "GRAD_Nokia3310\data\dialog\home\battery_full_ca.paa";
     };
     case "mainmenu": {
          private _pages = [["Phone book","phonebook_ca.paa"], ["Call register","callregister_ca.paa"], ["Tones","tones_ca.paa","tones"], ["Settings","settings_ca.paa"], ["Games","games_ca.paa"], ["Alarm clock","clock_ca.paa"], ["Profiles","profiles_ca.paa"]];

          (_display displayCtrl IDC_CTRLGROUP_MAINMENU) ctrlShow true;

          (_display displayCtrl IDC_ENTERTEXT) ctrlSetText "Select";

          private _index = if (_history isEqualTo []) then {0} else {(_history select 0) - 1};
          (_display displayCtrl IDC_HISTORY) ctrlSetText str (_index + 1);
          (_display displayCtrl IDC_MAINMENU_TEXT) ctrlSetText ((_pages select _index) select 0);
          (_display displayCtrl IDC_MAINMENU_PICTURE) ctrlSetText format ["GRAD_Nokia3310\data\dialog\mainmenu\%1",(_pages select _index) select 1];;
     };
     case "tones": {
          (_display displayCtrl IDC_CTRLGROUP_TONES) ctrlShow true;

          (_display displayCtrl IDC_ENTERTEXT) ctrlSetText "Select";

          (_display displayCtrl IDC_HISTORY) ctrlSetText "3";

     };
};
