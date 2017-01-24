params ["_button","_display","_ctrlGrp"];

switch (tolower _button) do {
     case "select": {
          [_display,"contact_menu"] call GRAD_Nokia3310_fnc_initPage;
     };
     case "down": {
          //SCROLL DOWN
     };
     case "up": {
          //SCROLL UP
     };
};
