#include "..\macros_idc.hpp"

class GRAD_Nokia3310_dialog
{
	idd = -1;
	movingEnable = 1;
	onUnload = "";
	onLoad = "_this call GRAD_Nokia3310_fnc_onLoad;";
	class controlsBackground {
		class background: RscPicture
		{
			idc = 1;
			text = "GRAD_Nokia3310\data\dialog\background.paa";
			x = safezoneX;
			y = safezoneY;
			w = NOKIA_W;
			h = NOKIA_H;
			moving = 1;
		};
	};
	class Controls {
		class home: RscControlsGroupNoScrollbars
		{
			idc = IDC_CTRLGROUP_HOME;
			show = 0;
			x = 0.214 * NOKIA_W + safezoneX;
			y = 0.273 * NOKIA_H + safezoneY;
			w = SCREEN_W;
			h = SCREEN_H + 0.03798 * NOKIA_H;
			class controls
			{
				class carrier: GRAD_Nokia3310_RscPicture
				{
					idc = IDC_HOME_CARRIER;
					x = 0;
					y = 0.005 * NOKIA_H;
					w = 0.06 * NOKIA_W;
					h = SCREEN_H + 0.03798 * NOKIA_H;
				};
				class battery: carrier
				{
					idc = IDC_HOME_BATTERY;
					x = SCREEN_W - 0.06 * NOKIA_W;
				};
				class clock: GRAD_Nokia3310_RscText
				{
					idc = IDC_HOME_CLOCK;
					text = "00:00";
					x = 0;
					y = 0.005 * NOKIA_H;
					w = SCREEN_W - 0.06 * NOKIA_W;
					h = 0.03798 * NOKIA_H;
					sizeEx = 0.03798 * NOKIA_H;
					style = 1;
				};
				class background : GRAD_Nokia3310_RscPictureKeepAspect
				{
					idc = IDC_HOME_BACKGROUND;
					x = 0.08 * NOKIA_W;
					y = 0.03798 * NOKIA_H;
					w = SCREEN_W - 0.16 * NOKIA_W;
					h = SCREEN_H;
					text = "GRAD_Nokia3310\data\dialog\backgrounds\nokia.paa";
				};
			};
		};
		class mainmenu: RscControlsGroupNoScrollbars
		{
			idc = IDC_CTRLGROUP_MAINMENU;
			show = 0;
			x = 0.214 * NOKIA_W + safezoneX;
			y = 0.31098 * NOKIA_H + safezoneY;
			w = SCREEN_W;
			h = SCREEN_H;
			class controls
			{
				class text: GRAD_Nokia3310_RscText
				{
					idc = IDC_MAINMENU_TEXT;
					x = 0;
					y = 0;
					w = SCREEN_W;
					h = 0.05697 * NOKIA_H;
					style = 2;
					sizeEx = 0.05697 * NOKIA_H;
				};
				class picture: GRAD_Nokia3310_RscPictureKeepAspect
				{
					idc = IDC_MAINMENU_PICTURE;
					x = 0;
					y = 0.04697 * NOKIA_H;
					w = SCREEN_W;
					h = 0.09605 * NOKIA_H;
				};
			};
		};
		class tones: mainmenu
		{
			idc = IDC_CTRLGROUP_TONES;
			class controls
			{
				class setting: GRAD_Nokia3310_RscText
				{
					idc = IDC_TONES_SETTING;
					text = "Ringing \ntone";
					x = 0.05 * NOKIA_W;
					y = 0;
					w = SCREEN_W / 2;
					h = SCREEN_H;
					style = 16;
					sizeEx = 0.03798 * NOKIA_H;
				};
				class value: GRAD_Nokia3310_RscText
				{
					idc = IDC_TONES_VALUE;
					x = 0;
					y = 0.04697 * NOKIA_H;
					w = SCREEN_W - 0.05 * NOKIA_W;
					h = 0.09605 * NOKIA_H;
					text = "Mozart 40";
					font = "RobotoCondensedLight";
					style = 1;
					sizeEx = 0.03798 * NOKIA_H;
				};
			};
		};
		class history: GRAD_Nokia3310_RscText
		{
			idc = IDC_HISTORY;
			x = 0.214 * NOKIA_W + safezoneX;
			y = 0.273 * NOKIA_H + safezoneY;
			w = 0.584 * NOKIA_W;
			h = 0.03798 * NOKIA_H;
			style = 1;
			text = "2222";
			sizeEx = 0.03798 * NOKIA_H;
		};
		class enterText: history
		{
			idc = IDC_ENTERTEXT;
			y = 0.444 * NOKIA_H + safezoneY;
			style = 2;
			text = "Select";
		};
		class enter: GRAD_Nokia3310_HiddenButton
		{
			x = 0.348 * NOKIA_W + safezoneX;
			y = 0.524 * NOKIA_H + safezoneY;
			w = 0.320 * NOKIA_W;
			h = 0.046 * NOKIA_H;
			onButtonClick = "['select',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
		class clear: GRAD_Nokia3310_HiddenButton
		{
			x = 0.224 * NOKIA_W + safezoneX;
			y = 0.547 * NOKIA_H + safezoneY;
			w = 0.134 * NOKIA_W;
			h = 0.071 * NOKIA_H;
			onButtonClick = "['cancel',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
		class select_up: GRAD_Nokia3310_HiddenButton
		{
			x = 0.692 * NOKIA_W + safezoneX;
			y = 0.542 * NOKIA_H + safezoneY;
			w = 0.112 * NOKIA_W;
			h = 0.072 * NOKIA_H;
			onButtonClick = "['up',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
		class select_down: GRAD_Nokia3310_HiddenButton
		{
			x = 0.560 * NOKIA_W + safezoneX;
			y = 0.574 * NOKIA_H + safezoneY;
			w = 0.112 * NOKIA_W;
			h = 0.072 * NOKIA_H;
			onButtonClick = "['down',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
		class button_1: GRAD_Nokia3310_HiddenButton
	     {
			x = 0.194 * NOKIA_W + safezoneX;
			y = 0.646 * NOKIA_H + safezoneY;
			w = 0.158 * NOKIA_W;
			h = 0.056 * NOKIA_H;
			onButtonClick = "['1',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
	     };
		class button_2: button_1
		{
			x = 0.430 * NOKIA_W + safezoneX;
			y = 0.663 * NOKIA_H + safezoneY;
			onButtonClick = "['2',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
		class button_3: button_1
		{
			x = 0.670 * NOKIA_W + safezoneX;
			onButtonClick = "['3',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
	     class button_4: button_1
	     {
	          x = 0.200 * NOKIA_W + safezoneX;
	          y = 0.716 * NOKIA_H + safezoneY;
			onButtonClick = "['4',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
	     };
		class button_5: button_2
		{
			y = 0.733 * NOKIA_H + safezoneY;
			onButtonClick = "['5',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
		class button_6: button_4
		{
			x = 0.662 * NOKIA_W + safezoneX;
			onButtonClick = "['6',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
	     class button_7: button_1
	     {
	          x = 0.208 * NOKIA_W + safezoneX;
	          y = 0.786 * NOKIA_H + safezoneY;
			onButtonClick = "['7',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
	     };
		class button_8: button_2
		{
			y = 0.8 * NOKIA_H + safezoneY;
			onButtonClick = "['8',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
		class button_9: button_7
		{
			x = 0.652 * NOKIA_W + safezoneX;
			onButtonClick = "['9',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
	     class button_star: button_1
	     {
	          x = 0.220 * NOKIA_W + safezoneX;
	          y = 0.854 * NOKIA_H + safezoneY;
			onButtonClick = "['star',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
	     };
		class button_0: button_2
		{
			y = 0.869 * NOKIA_H + safezoneY;
			onButtonClick = "['0',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
		class button_hash: button_star
		{
			x = 0.646 * NOKIA_W + safezoneX;
			onButtonClick = "['hash',_this] call GRAD_Nokia3310_fnc_onButtonClick;";
		};
	};
};
