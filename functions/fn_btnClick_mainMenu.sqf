#include "..\macros_idc.hpp"
params ["_button","_display","_ctrlGrp"];

private _pages = [["Phone book","phonebook_ca.paa"], ["Call register","callregister_ca.paa"], ["Tones","tones_ca.paa","tones"], ["Settings","settings_ca.paa"], ["Games","games_ca.paa"], ["Alarm clock","clock_ca.paa"], ["Profiles","profiles_ca.paa"]];

private _curIndex = parseNumber ctrlText (_display displayCtrl IDC_HISTORY) -1;

switch (tolower _button) do {
     case "cancel": {
          [_display,"home"] call GRAD_Nokia3310_fnc_initPage;
     };
     case "select": {
          [_display,((_pages select _curIndex) select 2)] call GRAD_Nokia3310_fnc_initPage;
     };
     case "up";
     case "down": {
          private _nextIndex = if (tolower _button isEqualTo "down") then {_curIndex + 1} else {_curIndex - 1};
          if (_nextIndex isEqualTo count _pages) then {_nextIndex = 0;};
          if (_nextIndex isEqualTo -1) then {_nextIndex = (count _pages) -1;};

          (_display displayCtrl IDC_HISTORY) ctrlSetText str (_nextIndex + 1);

          (_display displayCtrl IDC_MAINMENU_TEXT) ctrlSetText ((_pages select _nextIndex) select 0);
          (_display displayCtrl IDC_MAINMENU_PICTURE) ctrlSetText format ["GRAD_Nokia3310\data\dialog\mainmenu\%1",(_pages select _nextIndex) select 1];
     };
};
