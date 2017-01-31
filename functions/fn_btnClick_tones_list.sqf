#include "..\macros_idc.hpp"
params ["_button","_display"];

private _lb = _display displayCtrl IDC_TONES_LIST;

private _history = [_display] call GRAD_Nokia3310_fnc_history;

hint str (lbSize _lb);

switch (tolower _button) do {
     case "cancel": {
          _lb ctrlShow false;
          (_display displayCtrl IDC_TONES_SETTING) ctrlShow true;
          (_display displayCtrl IDC_TONES_VALUE) ctrlShow true;

          (_display displayCtrl IDC_HISTORY) ctrlSetText format ["3-%1",(_history select 1)];
          (_display displayCtrl IDC_ENTERTEXT) ctrlSetText "Select";

     };
     case "up";
     case "down": {
          private _nextIndex = if (tolower _button isEqualTo "down") then {(lbCurSel _lb) + 1} else {(lbCurSel _lb) - 1};
          if (_nextIndex isEqualTo (lbSize _lb)) then {_nextIndex = 0;};
          if (_nextIndex isEqualTo -1) then {_nextIndex = (lbSize _lb) -1;};

          _lb lbsetCurSel _nextIndex;

          (_display displayCtrl IDC_HISTORY) ctrlSetText format ["3-%1-%2",(_history select 1), _nextIndex + 1];
     };
};
