params ["_button","_params"];
_params params ["_ctrl"];

private _display = ctrlParent _ctrl;

switch (toLower GRAD_Nokia3310_curPage) do {
     case "home": {
          [_button, _display] call GRAD_Nokia3310_fnc_btnClick_home;
     };
     case "mainmenu": {
          [_button, _display] call GRAD_Nokia3310_fnc_btnClick_mainMenu;
     };
     case "tones": {
          [_button, _display] call GRAD_Nokia3310_fnc_btnClick_tones;
     };
};
