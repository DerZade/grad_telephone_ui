params ["_button","_display","_ctrlGrp"];

switch (tolower _button) do {
     case "cancel": {
          [_display,"mainmenu"] call GRAD_Nokia3310_fnc_initPage;
     };
};
