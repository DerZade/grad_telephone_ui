#include "..\macros_idc.hpp"
params ["_button","_display"];

private _tones = [  ["Attraction", "GRAD_telephone_ringtone_attraction"],
                    ["Badinerie", "GRAD_telephone_ringtone_badinerie"],
                    ["City Bird", "GRAD_telephone_ringtone_citybird"],
                    ["Frog", "GRAD_telephone_ringtone_frog"],
                    ["Hurdy Gurdy", "GRAD_telephone_ringtone_hurdygurdy"],
                    ["Jumping", "GRAD_telephone_ringtone_jumping"],
                    ["Knick Knack", "GRAD_telephone_ringtone_knickknack"],
                    ["Kick", "GRAD_telephone_ringtone_kick"],
                    ["Lamb", "GRAD_telephone_ringtone_lamp"],
                    ["Low", "GRAD_telephone_ringtone_low"],
                    ["Merry XMas", "GRAD_telephone_ringtone_merry_xmas"],
                    ["Ring Ring", "GRAD_telephone_ringtone_ringring"],
                    ["Rocket", "GRAD_telephone_ringtone_rocket"],
                    ["That's It!", "GRAD_telephone_ringtone_thatsit"],
                    ["The Buffoon", "GRAD_telephone_ringtone_the_buffoon"],
                    ["Tick Tick", "GRAD_telephone_ringtone_ticktickv"]
];

private _curIndex = (([_display] call GRAD_Nokia3310_fnc_history) select 1) - 1;

if (ctrlShown (_display displayCtrl IDC_TONES_LIST)) exitWith {_this call GRAD_Nokia3310_fnc_btnClick_tones_list;};

switch (tolower _button) do {
     case "cancel": {
          [_display,"mainmenu"] call GRAD_Nokia3310_fnc_initPage;
     };
     case "select": {
          //show list and hide other controls
          (_display displayCtrl IDC_TONES_LIST) ctrlShow true;
          (_display displayCtrl IDC_TONES_SETTING) ctrlShow false;
          (_display displayCtrl IDC_TONES_VALUE) ctrlShow false;

          //fill list
          lbClear (_display displayCtrl IDC_TONES_LIST);
          {
               private _i = (_display displayCtrl IDC_TONES_LIST) lbAdd (_x select 0);
               (_display displayCtrl IDC_TONES_LIST) lbSetData [_i, (_x select 1)];

               if ((_x select 0) isEqualTo (ctrlText (_display displayCtrl IDC_TONES_VALUE))) then {
                    (_display displayCtrl IDC_TONES_LIST) lbSetCurSel _i;
               };
          } forEach _tones;

          //update history and entertext
          (_display displayCtrl IDC_HISTORY) ctrlSetText format ["3-%1-%2",_curIndex + 1, (lbCurSel (_display displayCtrl IDC_TONES_LIST)) + 1];
          (_display displayCtrl IDC_ENTERTEXT) ctrlSetText "OK";
     };
     case "up";
     case "down": {
          private _nextIndex = if (tolower _button isEqualTo "down") then {_curIndex + 1} else {_curIndex - 1};
          [_display, _nextIndex] call GRAD_Nokia3310_fnc_scroll_tones;
     };
};
