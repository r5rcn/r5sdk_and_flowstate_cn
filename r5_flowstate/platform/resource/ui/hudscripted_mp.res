#base "HudWeapons.res"
#base "MPPrematch.res"
#base "HUDDev.res"
#base "HudDeathRecap.res"
#base "DebugOverlays.res"

Resource/UI/HudScripted_mp.res
{
	Screen
	{
		ControlName		ImagePanel
		wide			%100
		tall			%100
		visible			1
		scaleImage		1
		fillColor		"0 0 0 0"
		drawColor		"0 0 0 0"
	}

	SafeArea
	{
		ControlName		ImagePanel
		wide			%90
		tall			%90
		visible			1
		scaleImage		1
		fillColor		"0 0 0 0"
		drawColor		"0 0 0 0"

		pin_to_sibling				Screen
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}

	SafeAreaCenter
	{
		ControlName		ImagePanel
		wide			%90
		tall			%90
		visible			1
		scaleImage		1
		fillColor		"0 0 0 0"
		drawColor		"0 0 0 0"

		pin_to_sibling				Screen
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}

	Scoreboard
	{
		ControlName			CNestedPanel
		xpos				0
		ypos				0
		wide				%100
		tall				%100
		visible				0

		zpos				4000

		controlSettingsFile	"resource/UI/HudScoreboard.res"
	}

	OutOfBoundsWarning_Anchor
	{
		ControlName				Label
		xpos					c-2
		ypos					c-45
		wide					4
		tall					4
		visible					0
		enabled					1
		labelText				""
		textAlignment			center
		fgcolor_override 		"255 255 0 255"
		font					Default_34_ShadowGlow
	}

	OutOfBoundsWarning_Message
	{
		ControlName				Label
		xpos					0
		ypos					0
		wide					674
		tall					45
		visible					0
		enabled					1
		auto_wide_tocontents	1
		labelText				"#OUT_OF_BOUNDS_WARNING"
		textAlignment			center
		fgcolor_override 		"255 255 0 255"
		bgcolor_override 		"0 0 0 200"
		font					Default_34_ShadowGlow

		pin_to_sibling			OutOfBoundsWarning_Anchor
		pin_corner_to_sibling	TOP
		pin_to_sibling_corner	BOTTOM
	}

	OutOfBoundsWarning_Timer
	{
		ControlName				Label
		xpos					0
		ypos					0
		wide					674
		tall					45
		visible					0
		enabled					1
		auto_wide_tocontents	1
		labelText				":00"
		textAlignment			center
		fgcolor_override 		"255 255 0 255"
		bgcolor_override 		"0 0 0 200"
		font					Default_34_ShadowGlow

		pin_to_sibling			OutOfBoundsWarning_Message
		pin_corner_to_sibling	TOP
		pin_to_sibling_corner	BOTTOM
	}

	Dev_Info1
	{
		ControlName				Label
		xpos					-5
		ypos					-44
		auto_wide_tocontents 	1
		visible					0
		font 					Default_21_ShadowGlow
		labelText				"[Dev Info1]"
		textAlignment			west
		fgcolor_override 		"255 255 255 255"

		zpos 1000

		pin_to_sibling				Screen
		pin_corner_to_sibling		BOTTOM_LEFT
		pin_to_sibling_corner		BOTTOM_LEFT
	}

	Dev_Info2
    {
        ControlName				Label
        //xpos					80
        ypos					-4
        auto_wide_tocontents 	1
        visible					0
        font 					Default_21_ShadowGlow
        labelText				"[Dev Info2]"
        textAlignment			west
        fgcolor_override 		"255 255 255 255"

        zpos 1000

        pin_to_sibling				Dev_Info1
        pin_corner_to_sibling		TOP_LEFT
        pin_to_sibling_corner		BOTTOM_LEFT
    }

    Dev_Info3
    {
        ControlName				Label
        //xpos					80
        ypos					-4
        auto_wide_tocontents 	1
        visible					0
        font 					Default_21_ShadowGlow
        labelText				"Test Map"
        textAlignment			west
        fgcolor_override 		"255 255 255 255"

        zpos 1000

        pin_to_sibling				Dev_Info2
        pin_corner_to_sibling		TOP_LEFT
        pin_to_sibling_corner		BOTTOM_LEFT
    }

	ShoutOutAnchor
	{
		ControlName		ImagePanel
		xpos			c-0
		ypos			c-405
		wide			0
		tall			0
		visible			1
		scaleImage		1

		zpos			5
	}

	EventNotification
	{
		ControlName				Label
		xpos					0
		ypos					150
		wide					899
		tall					67
		visible					0
		font					Default_27_ShadowGlow
		labelText				"Something is going on!"
		textAlignment			center
		auto_wide_tocontents	1
		fgcolor_override 		"255 255 255 255"
		allCaps					1

		zpos			1000

		pin_to_sibling				ShoutOutAnchor
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}

	IngameTextChat
	{
		ControlName				CBaseHudChat
		InheritProperties		ChatBox

		destination				"match"

		visible 				0

		pin_to_sibling			Screen
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	TOP_LEFT
		xpos					-48 [$PC]
		xpos					%-5 [!$PC]
		ypos					-512
		zpos                    9999
	}

    AccessibilityHint
    {
        ControlName             RuiPanel
        classname               "MenuButton"
        ypos                    12
        wide                    300
        tall                    40
        visible                 0

        rui                     "ui/accessibility_hint.rpak"

        ruiArgs
        {
            buttonText          "#INGAME_ACCESSIBILITY_CHAT_HINT" [!$PC]
            buttonText          "#INGAME_ACCESSIBILITY_CHAT_HINT_PC" [$PC] // controller chat option only on console
            buttonTextPC        "#INGAME_ACCESSIBILITY_CHAT_HINT_PC"
        }

        pin_to_sibling			IngameTextChat
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
    }
	//stats menu
	ScreenBlur
		{
			ControlName				RuiPanel
			wide					300
			tall					200
			//ypos 70
			//xpos %80
			enabled 1
			rui                     "ui/screen_blur.rpak"
			visible					0
			drawColor				"0 0 0 50"
			
			pin_to_sibling          SafeArea
			pin_corner_to_sibling   TOP_RIGHT
			pin_to_sibling_corner   TOP_RIGHT
		}	
	
	ChallengesStatsFrame
		{
			ControlName				RuiPanel
			wide					300
			tall					200
			enabled 1
			//ypos 70
			//xpos %80
			zpos 1
			visible					0
			rui                     "ui/basic_image.rpak"

            ruiArgs
            {
                basicImageColor     "0 0 0"
                basicImageAlpha     0.7
            }
			pin_to_sibling          ScreenBlur
			pin_corner_to_sibling   TOP_RIGHT
			pin_to_sibling_corner   TOP_RIGHT
		}
	TitleStats
		{
			ControlName				Label
			xpos                    0
			ypos					-15
			zpos 1
			auto_wide_tocontents	1
			tall					50
			visible					0
			enabled 1
			fontHeight				33
			labelText				"训练数据"
			font					"TitleBoldFont"
			allcaps					1
			fgcolor_override		"252 198 3 255"
			pin_to_sibling			ChallengesStatsFrame
			pin_corner_to_sibling	TOP
			pin_to_sibling_corner	TOP
		}
		
	CountdownFrame
		{
			ControlName				RuiPanel
			wide					80
			tall					60
			//ypos 70
			//xpos %4
			visible					0
			rui                     "ui/basic_image.rpak"

            ruiArgs
            {
                basicImageColor     "0 0 0"
                basicImageAlpha     0.7
            }
			pin_to_sibling          SafeArea
			pin_corner_to_sibling   TOP_LEFT
			pin_to_sibling_corner   TOP_LEFT
		}
	Countdown
		{
			ControlName				Label
			xpos                    0
			ypos					0
			zpos 1
			auto_wide_tocontents	1
			tall					50
			visible					0
			fontHeight				53
			labelText				"60"
			font					"TitleBoldFont"
			allcaps					1
			fgcolor_override		"255 255 255 255"
			pin_to_sibling			CountdownFrame
			pin_corner_to_sibling	CENTER
			pin_to_sibling_corner	CENTER
		}	
		
	ChallengesDummieskilled
		{
				ControlName				Label
				auto_wide_tocontents    0
				labelText				"击杀数:"
				visible                 0
				enabled 1
				zpos 1
				tall					30
				wide 300
				fontHeight				30
				font					DefaultBold_62_DropShadow
				fgcolor_override		"255 255 255 255"
				ypos                    -70
				xpos					20
				textAlignment		left
				pin_to_sibling          ChallengesStatsFrame
				pin_corner_to_sibling   TOP
				pin_to_sibling_corner   TOP
		}	
	ChallengesDummieskilledValue
		{
				ControlName				Label
				auto_wide_tocontents    1
				labelText				"0"
				visible                 0
				enabled 1
				zpos 1
				tall					30
				wide 300
				fontHeight				30
				font					DefaultBold_62_DropShadow
				fgcolor_override		"255 255 255 255"
				ypos                    -70
				xpos					-25
				textAlignment		right
				pin_to_sibling          ChallengesStatsFrame
				pin_corner_to_sibling   TOP_RIGHT
				pin_to_sibling_corner   TOP_RIGHT
		}	
	ChallengesAccuracy
		{
				ControlName				Label
				auto_wide_tocontents    0
				labelText				"命中率:"
				visible                 0
				enabled 1
				zpos 1
				tall					30
				wide 300
				fontHeight				30
				font					DefaultBold_62_DropShadow
				fgcolor_override		"255 255 255 255"
				ypos                    30
				xpos					0
				pin_to_sibling          ChallengesDummieskilled
				textAlignment		left
				pin_corner_to_sibling   BOTTOM_LEFT
				pin_to_sibling_corner   BOTTOM_LEFT
		}
	ChallengesAccuracyValue
		{
				ControlName				Label
				auto_wide_tocontents    1
				labelText				"0/0 | 0%"
				visible                 0
				enabled 1
				zpos 1
				tall					30
				wide 300
				fontHeight				30
				font					DefaultBold_62_DropShadow
				fgcolor_override		"255 255 255 255"
				ypos                    30
				xpos					0
				textAlignment		right
				pin_to_sibling          ChallengesDummieskilledValue
				pin_corner_to_sibling   BOTTOM_RIGHT
				pin_to_sibling_corner   BOTTOM_RIGHT
		}			
	ChallengesDamage
		{
				ControlName				Label
				auto_wide_tocontents    0
				labelText				"伤害:"
				visible                 0
				enabled 1
				zpos 1
				tall					30
				wide 300
				fontHeight				30
				font					Default_34_ShadowGlow
				fgcolor_override		"255 255 255 255"
				ypos                    30
				xpos					0
				pin_to_sibling          ChallengesAccuracy
				textAlignment		left
				pin_corner_to_sibling   BOTTOM_LEFT
				pin_to_sibling_corner   BOTTOM_LEFT
		}
	ChallengesDamageValue
		{
				ControlName				Label
				auto_wide_tocontents    1
				labelText				"0/0 | 0%"
				visible                 0
				enabled 1
				zpos 1
				tall					30
				wide 300
				fontHeight				30
				font					DefaultBold_62_DropShadow
				fgcolor_override		"255 255 255 255"
				ypos                    30
				xpos					0
				textAlignment		right
				pin_to_sibling          ChallengesAccuracyValue
				pin_corner_to_sibling   BOTTOM_RIGHT
				pin_to_sibling_corner   BOTTOM_RIGHT
		}		
	ChallengesHeadshots
		{
				ControlName				Label
				auto_wide_tocontents    0
				labelText				"爆头数:"
				visible                 0
				enabled 1
				zpos 1
				tall					30
				wide 300
				fontHeight				30
				font					Default_34_ShadowGlow
				fgcolor_override		"255 255 255 255"
				ypos                    30
				xpos					0
				pin_to_sibling          ChallengesDamage
				textAlignment		left
				pin_corner_to_sibling   BOTTOM_LEFT
				pin_to_sibling_corner   BOTTOM_LEFT
		}			
	ChallengesHeadshotsValue
		{
				ControlName				Label
				auto_wide_tocontents    1
				labelText				"0"
				visible                 0
				enabled 1
				zpos 1
				tall					30
				wide 300
				fontHeight				30
				font					DefaultBold_62_DropShadow
				fgcolor_override		"255 255 255 255"
				ypos                    30
				xpos					0
				textAlignment		right
				pin_to_sibling          ChallengesDamageValue
				pin_corner_to_sibling   BOTTOM_RIGHT
				pin_to_sibling_corner   BOTTOM_RIGHT
		}			
	HudCheaterMessage
	{
		ControlName			Label
		font				Default_34_ShadowGlow
		labelText			"#FAIRFIGHT_CHEATER"
		visible				0
		enabled				1
		fgcolor_override 	"255 255 255 205"
		zpos				10
		wide				450
		tall				58
		textAlignment		center

		pin_to_sibling				SafeArea
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		TOP
	}

	EMPScreenFX
	{
		ControlName		ImagePanel
		xpos 			0
		ypos 			0
		zpos			-1000
		wide			%100
		tall			%100
		visible			0
		scaleImage		1
		image			vgui/HUD/pilot_flashbang_overlay
		drawColor		"255 255 255 64"

		pin_to_sibling				Screen
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}

    NotificationBox
    {
        ControlName		RuiPanel
        wide			680
        tall			140
        visible			0
        enabled         0
        rui                     "ui/notification_box.rpak"

		pin_to_sibling				Screen
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM
    }
}
