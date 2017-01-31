#include "..\macros_idc.hpp"
params ["_button","_display","_ctrlGrp"];
private _pages = [["Ringing \ntone","Mozart 40"], ["Alarm \ntone","Test123"]];

private _curIndex = parseNumber (((ctrlText (_display displayCtrl IDC_HISTORY)) splitString "-") select 1) - 1;

switch (tolower _button) do {
     case "cancel": {
          [_display,"mainmenu"] call GRAD_Nokia3310_fnc_initPage;
     };
     case "up";
     case "down": {
          private _nextIndex = if (tolower _button isEqualTo "down") then {_curIndex + 1} else {_curIndex - 1};
          if (_nextIndex isEqualTo count _pages) then {_nextIndex = 0;};
          if (_nextIndex isEqualTo -1) then {_nextIndex = (count _pages) -1;};

          hint str _nextIndex;

          (_display displayCtrl IDC_HISTORY) ctrlSetText format ["3-%1", _nextIndex + 1];
          (_display displayCtrl IDC_TONES_SETTING) ctrlSetText ((_pages select _nextIndex) select 0);
          (_display displayCtrl IDC_TONES_VALUE) ctrlSetText ((_pages select _nextIndex) select 1);

     };
};
