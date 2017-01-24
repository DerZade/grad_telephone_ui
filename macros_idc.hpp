
//macros
#define GRID_W (pixelW * pixelGrid)
#define GRID_H (pixelH * pixelGrid)
#define NOKIA_H (safezoneH)
#define NOKIA_W (((safezoneH / GRID_H) / 2) * GRID_W)
#define SCREEN_W (0.584 * NOKIA_W)
#define SCREEN_H (0.13302 * NOKIA_H)

//idcs
#define IDC_HISTORY 7
#define IDC_ENTERTEXT 8

#define IDC_CTRLGROUP_HOME 10
#define IDC_HOME_CARRIER 101
#define IDC_HOME_BACKGROUND 102
#define IDC_HOME_BATTERY 103

#define IDC_CTRLGROUP_MAINMENU 11
#define IDC_MAINMENU_TEXT 111
#define IDC_MAINMENU_PICTURE 112
