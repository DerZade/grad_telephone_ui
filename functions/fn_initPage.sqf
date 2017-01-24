#include "..\macros_idc.hpp"
params ["_display","_newPage"];
hint str _this;
private _oldPage = GRAD_Nokia3310_curPage;

GRAD_Nokia3310_curPage = _newPage;

//reset to default
switch (toLower _oldPage) do {
     case "home": {
          (_display displayCtrl IDC_CTRLGROUP_HOME) ctrlShow false;
     };
     case "mainmenu": {
          (_display displayCtrl IDC_CTRLGROUP_MAINMENU) ctrlShow false;
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
          (_display displayCtrl IDC_CTRLGROUP_MAINMENU) ctrlShow true;

          (_display displayCtrl IDC_HISTORY) ctrlSetText "1";
          (_display displayCtrl IDC_ENTERTEXT) ctrlSetText "Select";

          (_display displayCtrl IDC_MAINMENU_TEXT) ctrlSetText "Phone book";
          (_display displayCtrl IDC_MAINMENU_PICTURE) ctrlSetText "GRAD_Nokia3310\data\dialog\mainmenu\phonebook_ca.paa";
     };
};
