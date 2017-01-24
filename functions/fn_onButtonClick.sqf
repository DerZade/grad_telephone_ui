params ["_button","_params"];
_params params ["_ctrl"];

private _display = ctrlParent _ctrl;

switch (toLower GRAD_Nokia3310_curPage) do {
     case "home": {
          private _ctrlGroup = _display displayCtrl IDC_CTRLGROUP_HOME;
          [_button, _display, _ctrlGroup] call GRAD_Nokia3310_fnc_onButtonClick_home;
     };
     case "mainmenu": {
          private _ctrlGroup = _display displayCtrl IDC_CTRLGROUP_MAINMENU;
          [_button, _display, _ctrlGroup] call GRAD_Nokia3310_fnc_onButtonClick_mainMenu;
     };
     case "tones": {
          private _ctrlGroup = _display displayCtrl IDC_CTRLGROUP_TONES;
          [_button, _display, _ctrlGroup] call GRAD_Nokia3310_fnc_onButtonClick_tones;
     };
};
