class RscButton
{
     access = 0;
     borderSize = 0;
     colorBackground[] = {0,0,0,0.5};
     colorBackgroundActive[] = {0,0,0,1};
     colorBackgroundDisabled[] = {0,0,0,0.5};
     colorBorder[] = {0,0,0,1};
     colorDisabled[] = {1,1,1,0.25};
     colorFocused[] = {0,0,0,1};
     colorShadow[] = {0,0,0,0};
     colorText[] = {1,1,1,1};
     deletable = 0;
     fade = 0;
     font = "RobotoCondensed";
     h = 0.039216;
     idc = -1;
     offsetPressedX = 0;
     offsetPressedY = 0;
     offsetX = 0;
     offsetY = 0;
     shadow = 2;
     sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
     soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
     soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
     soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
     soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
     style = 2;
     text = "";
     type = 1;
     url = "";
     w = 0.095589;
     x = 0;
     y = 0;
};
class RscControlsGroupNoScrollbars
{
     deletable = 0;
     fade = 0;
     h = 1;
     idc = -1;
     shadow = 0;
     style = 16;
     type = 15;
     w = 1;
     x = 0;
     y = 0;
     class HScrollbar
     {
          arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
          arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
          autoScrollDelay = 5;
          autoScrollEnabled = 0;
          autoScrollRewind = 0;
          autoScrollSpeed = -1;
          border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
          color[] = {1,1,1,1};
          colorActive[] = {1,1,1,1};
          colorDisabled[] = {1,1,1,0.3};
          height = 0;
          scrollSpeed = 0.06;
          shadow = 0;
          thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
          width = 0;
     };
     class VScrollbar
     {
          arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
          arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
          autoScrollDelay = 5;
          autoScrollEnabled = 1;
          autoScrollRewind = 0;
          autoScrollSpeed = -1;
          border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
          color[] = {1,1,1,1};
          colorActive[] = {1,1,1,1};
          colorDisabled[] = {1,1,1,0.3};
          height = 0;
          scrollSpeed = 0.06;
          shadow = 0;
          thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
          width = 0;
     };
     class Controls {};
};
class RscText
{
     access = 0;
     colorBackground[] = {0,0,0,0};
     colorShadow[] = {0,0,0,0.5};
     colorText[] = {1,1,1,1};
     deletable = 0;
     fade = 0;
     fixedWidth = 0;
     font = "RobotoCondensedBold";
     h = 0.037;
     idc = -1;
     linespacing = 1;
     shadow = 1;
     SizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
     style = 0;
     text = "";
     tooltipColorBox[] = {1,1,1,1};
     tooltipColorShade[] = {0,0,0,0.65};
     tooltipColorText[] = {1,1,1,1};
     type = 0;
     w = 0.3;
     x = 0;
     y = 0;
};
class RscStructuredText
{
     access = 0;
     colorText[] = {1,1,1,1};
     deletable = 0;
     fade = 0;
     h = 0.035;
     idc = -1;
     shadow = 1;
     size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
     style = 0;
     text = "";
     type = 13;
     w = 0.1;
     x = 0;
     y = 0;
};
class RscPicture
{
	access = 0;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	deletable = 0;
	fade = 0;
	fixedWidth = 0;
	font = "TahomaB";
	h = 0.15;
	idc = -1;
	lineSpacing = 0;
	shadow = 0;
	sizeEx = 0;
	style = 48;
	text = "";
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
	tooltipColorText[] = {1,1,1,1};
	type = 0;
	w = 0.2;
	x = 0;
	y = 0;
};

class GRAD_Nokia3310_RscText : RscText
{
	shadow = 0;
	colorText[] = {0,0,0,0.75};
};
class GRAD_Nokia3310_RscStructuredText : RscStructuredText
{
	shadow = 0;
	colorText[] = {0,0,0,0.75};
};
class GRAD_Nokia3310_RscPicture: RscPicture
{
	colorText[]={1,1,1,0.75};
};
class GRAD_Nokia3310_RscPictureKeepAspect: GRAD_Nokia3310_RscPicture
{
     style = "0x30 + 0x800";
};

class GRAD_Nokia3310_HiddenButton: RscButton
{
	colorText[] = {0, 0, 0, 0};
	colorDisabled[] = {0, 0, 0, 0};
	colorBackground[]={0, 0, 0, 0};
	colorBackgroundDisabled[] = {0, 0, 0, 0};
	colorBackgroundActive[] = {0, 0, 0, 0};
	colorFocused[] = {0, 0, 0, 0};
	colorShadow[] = {0, 0, 0, 0};
	colorBorder[] = {0, 0, 0, 0};
};
