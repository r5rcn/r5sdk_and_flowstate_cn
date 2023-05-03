"scripts/resource/ui/menus/R5R/panels/home.res"
{
	"DarkenBackground"
	{
		"ControlName"			"Label"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"0"
		"wide"					"%100"
		"tall"					"%100"
		"labelText"				""
		"bgcolor_override"		"0 0 0 0"
		"visible"				"1"
		"paintbackground"		"1"
	}
	
	"HomeBackground"
	{
        "ControlName"			"ImagePanel"
		"wide"					"500"
		"tall"					"870"
		"visible"				"1"
        "scaleImage"			"1"
		"xpos"					"-30"
		"ypos"					"-40"
		"zpos"					"0"
        "fillColor"				"30 30 30 200"
        "drawColor"				"30 30 30 200"

		"pin_to_sibling"		"DarkenBackground"
		"pin_corner_to_sibling"	"TOP_LEFT"
		"pin_to_sibling_corner"	"TOP_LEFT"
	}

	"InPlayersLobby"
	{
        "ControlName"			"ImagePanel"
		"wide"					"350"
		"tall"					"75"
		"visible"				"1"
        "scaleImage"			"1"
		"xpos"					"0"
		"ypos"					"-40"
		"zpos"					"0"
        "fillColor"				"30 30 30 200"
        "drawColor"				"30 30 30 200"

		"pin_to_sibling"		"DarkenBackground"
		"pin_corner_to_sibling"	"TOP_RIGHT"
		"pin_to_sibling_corner"	"TOP_RIGHT"
	}

	"InPlayersLobbyText"
	{
        "ControlName"			"Label"
		"xpos"                  "0"
		"ypos"					"0"
		"auto_wide_tocontents"	"1"
		"tall"					"40"
		"visible"				"1"
		"fontHeight"			"30"
		"labelText"				"You are in <players> lobby"
		"font"					"DefaultBold_41"
		"allcaps"				"0"
		"fgcolor_override"		"255 100 100 255"

		"pin_to_sibling"		"InPlayersLobby"
		"pin_corner_to_sibling"	"CENTER"
		"pin_to_sibling_corner"	"CENTER"
	}

	"R5RPicBox"
	{
		"ControlName"			"RuiPanel"
		"wide"					"501"
		"tall"					"275"
		"rui"                   "ui/basic_image.rpak"
		"visible"				"1"
		"scaleImage"			"1"

		"pin_to_sibling"		"HomeBackground"
		"pin_corner_to_sibling"	"TOP"
		"pin_to_sibling_corner"	"TOP"
	}

	"Welcome"
	{
        "ControlName"			"Label"
		"xpos"                  "-25"
		"ypos"					"20"
		"auto_wide_tocontents"	"1"
		"tall"					"40"
		"visible"				"1"
		"fontHeight"			"30"
		"labelText"				"欢迎游玩R5Reloaded!"
		"font"					"DefaultBold_41"
		"allcaps"				"0"
		"fgcolor_override"		"255 100 100 255"

		"pin_to_sibling"		"R5RPicBox"
		"pin_corner_to_sibling"	"TOP_LEFT"
		"pin_to_sibling_corner"	"BOTTOM_LEFT"
	}

	"Info"
	{
        "ControlName"			"Label"
		"xpos"                  "0"
		"ypos"					"20"
		"wide"					"450"
		"tall"					"400"
		"visible"				"1"
		"wrap"					"1"
		"fontHeight"			"25"
		"textAlignment"			"north-west"
		"labelText"				"R5Reloaded允许你使用MOD加载原生Apex，通过运行特定服务器、特定游戏模式的脚本来创建在线服务器，并允许你DIY自己的游戏模式、地图、武器以及更多内容."
		"font"					"DefaultBold_41"
		"allcaps"				"0"
		"fgcolor_override"		"200 200 200 255"

		"pin_to_sibling"		"Welcome"
		"pin_corner_to_sibling"	"TOP_LEFT"
		"pin_to_sibling_corner"	"BOTTOM_LEFT"
	}
	"CNDepotTitle"
	{
        "ControlName"			"Label"
		"xpos"                  "0"
		"ypos"					"-300"
		"auto_wide_tocontents"	"1"
		"tall"					"40"
		"visible"				"1"
		"fontHeight"			"30"
		"labelText"				"你正在使用CN Depot汉化整合包"
		"font"					"DefaultBold_41"
		"allcaps"				"0"
		"fgcolor_override"		"255 255 0 255"

		"pin_to_sibling"		"Info"
		"pin_corner_to_sibling"	"TOP_LEFT"
		"pin_to_sibling_corner"	"BOTTOM_LEFT"
	}
	
	"CNDepotLine1"
	{
        "ControlName"			"Label"
		"xpos"                  "0"
		"ypos"					"5"
		"wide"					"450"
		"tall"					"25"
		"visible"				"1"
		"wrap"					"1"
		"fontHeight"			"25"
		"textAlignment"			"north-west"
		"labelText"				"当前版本：CN Depot V20230418_2（Depot v2.2.4）"
		"font"					"DefaultBold_41"
		"allcaps"				"0"
		"fgcolor_override"		"200 200 200 255"

		"pin_to_sibling"		"CNDepotTitle"
		"pin_corner_to_sibling"	"TOP_LEFT"
		"pin_to_sibling_corner"	"BOTTOM_LEFT"
	}

	"CNDepotLine2"
	{
        "ControlName"			"Label"
		"xpos"                  "0"
		"ypos"					"5"
		"wide"					"450"
		"tall"					"25"
		"visible"				"1"
		"wrap"					"1"
		"fontHeight"			"25"
		"textAlignment"			"north-west"
		"labelText"				"KOOK频道ID:98171075 QQ群:307689539"
		"font"					"DefaultBold_41"
		"allcaps"				"0"
		"fgcolor_override"		"200 200 200 255"

		"pin_to_sibling"		"CNDepotLine1"
		"pin_corner_to_sibling"	"TOP_LEFT"
		"pin_to_sibling_corner"	"BOTTOM_LEFT"
	}

	"CNDepotLine3"
	{
        "ControlName"			"Label"
		"xpos"                  "0"
		"ypos"					"5"
		"wide"					"450"
		"tall"					"25"
		"visible"				"1"
		"wrap"					"1"
		"fontHeight"			"25"
		"textAlignment"			"north-west"
		"labelText"				"汉化整合包制作：CNR5Reloaded全体"
		"font"					"DefaultBold_41"
		"allcaps"				"0"
		"fgcolor_override"		"200 200 200 255"

		"pin_to_sibling"		"CNDepotLine2"
		"pin_corner_to_sibling"	"TOP_LEFT"
		"pin_to_sibling_corner"	"BOTTOM_LEFT"
	}

	"VersionNumber"
	{
		"ControlName"			"Label"
		"labelText"				"custom_tdm"
		"font"					"Default_27_Outline"
		"allcaps"				"1"
		"wide"					"225"
		"zpos" 					"7"
		"fontHeight"			"25"
		"xpos"					"-15"
		"ypos"					"-15"
		"textAlignment"			"east"
		"fgcolor_override"		"240 240 240 255"
		"bgcolor_override"		"0 0 0 255"

		"pin_to_sibling"		"HomeBackground"
		"pin_corner_to_sibling"	"BOTTOM_RIGHT"
		"pin_to_sibling_corner"	"BOTTOM_RIGHT"
	}

	SelfButton
    {
        ControlName				RuiButton
        wide					340
        tall					88
        xpos                    0
        ypos                    -70
        rui                     "ui/lobby_friend_button.rpak"
        labelText               ""
        visible					1
        cursorVelocityModifier  0.7
        scriptID                -1
        rightClickEvents		0
        tabPosition             1

        proportionalToParent    1

		ruiArgs
		{
			canViewStats 0
			isLeader 1
		}

        pin_to_sibling			DarkenBackground
        pin_corner_to_sibling	TOP
        pin_to_sibling_corner	TOP
    }
}

