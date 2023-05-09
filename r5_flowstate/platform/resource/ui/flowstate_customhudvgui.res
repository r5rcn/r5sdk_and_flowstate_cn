//Made by CafeFPS

Resource/UI/flowstate_customhudvgui.res
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
	
	//duckhunt
	DuckHuntRoundTimerFrame
	{
		ControlName				RuiPanel
		wide					140
		tall					60
		visible					0
		enabled					0
		rui                     "ui/basic_image.rpak"
		ypos 					0
		xpos 					0
		
		ruiArgs
		{
			basicImageColor     "0 0 0"
			basicImageAlpha     0.55
		}
		pin_to_sibling          SafeArea
		pin_corner_to_sibling   TOP_LEFT
		pin_to_sibling_corner   TOP_LEFT
	}
	
	DuckHuntRoundTimer
	{
		ControlName				Label
		xpos                    1
		ypos					0
		zpos 1
		auto_wide_tocontents	1
		tall					50
		visible					0
		enabled					0
		fontHeight				53
		labelText				"00:00"
		font					"TitleBoldFont"
		allcaps					1
		fgcolor_override		"255 255 255 255"
		pin_to_sibling			DuckHuntRoundTimerFrame
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
		
	// //amogus
	// TopRightContentAnchor
    // {
        // ControlName				Label
        // wide					308
        // tall					45
		// ypos					-200
		// xpos					-20
        // labelText               ""
        // enabled					0
		// visible					0
        // //bgcolor_override        "0 255 0 64"
        // //paintbackground         1

        // pin_to_sibling			Screen
        // pin_corner_to_sibling	TOP_RIGHT
        // pin_to_sibling_corner	TOP_RIGHT
    // }

	// ChallengesBox
    // {
        // ControlName				RuiPanel
        // wide					295
		// xpos					0
        // tall					86
		// visible					0
		// enabled					0
        // rui					    "ui/lobby_challenge_box.rpak"

        // pin_to_sibling			TopRightContentAnchor
        // pin_corner_to_sibling	TOP_LEFT
        // pin_to_sibling_corner	BOTTOM_LEFT
    // }

	// ChallengesBoxBG
    // {
        // ControlName				RuiPanel
        // wide					400
        // tall					86
		// visible					0
		// enabled					0
        // rui					    "ui/basic_image.rpak"
        // ruiArgs
        // {
            // basicImageColor     "0 0 0"
            // basicImageAlpha     0.0
        // }

        // pin_to_sibling			ChallengesBox
        // pin_corner_to_sibling	TOP_LEFT
        // pin_to_sibling_corner	BOTTOM_LEFT
    // }

    // ChallengeButton0
    // {
        // ControlName RuiButton

        // pin_to_sibling          ChallengesBox
        // pin_corner_to_sibling	TOP_RIGHT
        // pin_to_sibling_corner	BOTTOM_RIGHT
        // xpos                    30
        // ypos                    16
        // wide					308
        // tall					82

		// visible					0
		// enabled					0
        // rui                     "ui/lobby_challenge_box_row.rpak"
    // }

    // ChallengeButton1
    // {
        // ControlName RuiButton

        // pin_to_sibling          ChallengeButton0
        // pin_corner_to_sibling	TOP_RIGHT
        // pin_to_sibling_corner	BOTTOM_RIGHT
        // xpos                    0
        // ypos                    9
        // wide					308
        // tall					82

		// visible					0
		// enabled					0
        // rui                     "ui/lobby_challenge_box_row.rpak"
    // }

    // ChallengeButton2
    // {
        // ControlName RuiButton

        // pin_to_sibling          ChallengeButton1
        // pin_corner_to_sibling	TOP_RIGHT
        // pin_to_sibling_corner	BOTTOM_RIGHT
        // xpos                    0
        // ypos                    9
        // wide					308
        // tall					82

		// visible					0
		// enabled					0
        // rui                     "ui/lobby_challenge_box_row.rpak"
    // }

    // ChallengeButton3
    // {
        // ControlName RuiButton

        // pin_to_sibling          ChallengeButton2
        // pin_corner_to_sibling	TOP_RIGHT
        // pin_to_sibling_corner	BOTTOM_RIGHT
        // xpos                    0
        // ypos                    9
        // wide					308
        // tall					82

		// visible					0
		// enabled					0
        // rui                     "ui/lobby_challenge_box_row.rpak"
    // }

    // ChallengeButton4
    // {
        // ControlName RuiButton

        // pin_to_sibling          ChallengeButton3
        // pin_corner_to_sibling	TOP_RIGHT
        // pin_to_sibling_corner	BOTTOM_RIGHT
        // xpos                    0
        // ypos                    9
        // wide					308
        // tall					82

		// visible					0
		// enabled					0
        // rui                     "ui/lobby_challenge_box_row.rpak"
    // }

    // AllChallengesButton
    // {
        // ControlName			    RuiButton
        // ypos                    24
        // zpos			        3
        // wide			        400 // intentionally goes off screen
        // tall			        64
		// visible					0
		// enabled					0
        // labelText               ""
        // rui					    "ui/lobby_all_challenges_button.rpak"
        // proportionalToParent    1
        // sound_focus             "UI_Menu_Focus_Small"
        // cursorVelocityModifier  0.7
        // pin_to_sibling			ChallengeButton4
        // pin_corner_to_sibling	TOP_LEFT
        // pin_to_sibling_corner	BOTTOM_LEFT
    // }

	//prophunt
    ProphuntMessagesBox
    {
        ControlName				RuiPanel
		wide                    300
		tall                    70
		auto_wide_tocontents	1
		"xpos"					"-70"
		"ypos"					"%-25"
		"scaleImage"			"1"
		rui                     "ui/basic_image.rpak"
		visible					0
		enabled					0
	
		pin_to_sibling			SCREEN
		pin_corner_to_sibling   BOTTOM_LEFT
		pin_to_sibling_corner   BOTTOM_LEFT
    }
		
	MiscTimer
	{
		ControlName				Label
		xpos                    0
		ypos					-10
		zpos 5
		auto_wide_tocontents	1
		tall					50
		wide					308
		visible					0
		enabled 				0
		fontHeight				30
		labelText				"PROPS ARE HIDING 30"
		font					"DefaultBold_41"
		allcaps					1
		fgcolor_override		"255 255 255 255"
		textAlignment			center
		pin_to_sibling			ProphuntMessagesBox
		pin_corner_to_sibling	TOP
		pin_to_sibling_corner	TOP
	}		
	//for title
	ScreenBlur1
		{
			ControlName				RuiPanel
			wide					260
			tall					100	
			xpos					-50
			ypos					-52
			zpos 					0
			visible					0
			enabled					0
			rui 					"ui/tabs_background.rpak"
			
			pin_to_sibling          Screen
			pin_corner_to_sibling   TOP_LEFT
			pin_to_sibling_corner   TOP_LEFT
		}
		
	ScreenBlur2
		{
			ControlName				RuiPanel
			wide					260
			tall					300	
			xpos					0
			ypos					-88
			zpos 					0
			visible					0
			enabled					0
			rui 					"ui/tabs_background.rpak"
			
			pin_to_sibling          ScreenBlur1
			pin_corner_to_sibling   TOP_LEFT
			pin_to_sibling_corner   TOP_LEFT
		}
				
	ScreenBlur3 //for timer
		{
			ControlName				RuiPanel
			wide					260
			tall					60	
			xpos					0
			ypos					-298
			zpos 					10
			visible					0
			enabled					0
			rui 					"ui/tabs_background.rpak"
			
			pin_to_sibling          ScreenBlur2
			pin_corner_to_sibling   TOP_LEFT
			pin_to_sibling_corner   TOP_LEFT
		}
				
	PropControlsTitle
		{
			ControlName				Label
			xpos                    0
			ypos					-15
			zpos 					5
			//auto_wide_tocontents	1
			tall					40
			wide					260
			visible					0
			enabled 0
			fontHeight				28
			labelText				"PROP CONTROLS"
			font					"TitleBoldFont"
			allcaps					0
			fgcolor_override		"255 79 161 255"
			textAlignment			center
			pin_to_sibling			ScreenBlur1
			pin_corner_to_sibling	CENTER
			pin_to_sibling_corner	CENTER
		}
	RoundTimer
		{
			ControlName				Label
			xpos                    0
			ypos					15
			zpos 					5
			//auto_wide_tocontents	1
			tall					40
			wide					260
			visible					0
			enabled 0
			fontHeight				20
			labelText				"ROUND ENDS IN 00:00"
			font					"TitleBoldFont"
			allcaps					0
			fgcolor_override		"255 255 255 255"
			textAlignment			center
			pin_to_sibling			ScreenBlur1
			pin_corner_to_sibling	CENTER
			pin_to_sibling_corner	CENTER
		}		
	WhistleTimer
		{
			ControlName				Label
			xpos                    0
			ypos					0
			zpos 					10
			//auto_wide_tocontents	1
			tall					40
			wide					260
			visible					0
			enabled 0
			fontHeight				23
			labelText				"NOISE IN 30"
			font					"TitleBoldFont"
			allcaps					0
			fgcolor_override		"255 255 255 255"
			textAlignment			center
			pin_to_sibling			ScreenBlur3
			pin_corner_to_sibling	CENTER
			pin_to_sibling_corner	CENTER
		}

	ProphuntHint0
		{
			ControlName				Label
			xpos                    -26
			ypos					-15
			zpos 5
			//auto_wide_tocontents	1
			tall					40
			wide					350
			visible					0
			enabled 0
			fontHeight				33
			labelText				"Hint"
			font					"Default_34_ShadowGlow"
			allcaps					0
			fgcolor_override		"255 255 255 255"
			textAlignment			left
			pin_to_sibling			ScreenBlur2
			pin_corner_to_sibling	TOP_LEFT
			pin_to_sibling_corner	TOP_LEFT
		}
	ProphuntHint1
		{
			ControlName				Label
			xpos                    -26
			ypos					-60
			zpos 5
			//auto_wide_tocontents	1
			tall					40
			wide					350
			visible					0
			enabled 0
			fontHeight				33
			labelText				"Hint"
			font					"Default_34_ShadowGlow"
			allcaps					0
			fgcolor_override		"255 255 255 255"
			textAlignment			left
			pin_to_sibling			ScreenBlur2
			pin_corner_to_sibling	TOP_LEFT
			pin_to_sibling_corner	TOP_LEFT
		}	
	ProphuntHint2
		{
			ControlName				Label
			xpos                    -26
			ypos					-105
			zpos 5
			//auto_wide_tocontents	1
			tall					40
			wide					350
			visible					0
			enabled 0
			fontHeight				33
			labelText				"Hint"
			font					"Default_34_ShadowGlow"
			allcaps					0
			fgcolor_override		"255 255 255 255"
			textAlignment			left
			pin_to_sibling			ScreenBlur2
			pin_corner_to_sibling	TOP_LEFT
			pin_to_sibling_corner	TOP_LEFT
		}
	ProphuntHint3
		{
			ControlName				Label
			xpos                    -26
			ypos					-150
			zpos 5
			//auto_wide_tocontents	1
			tall					40
			wide					350
			visible					0
			enabled 0
			fontHeight				33
			labelText				"Hint"
			font					"Default_34_ShadowGlow"
			allcaps					0
			fgcolor_override		"255 255 255 255"
			textAlignment			left
			pin_to_sibling			ScreenBlur2
			pin_corner_to_sibling	TOP_LEFT
			pin_to_sibling_corner	TOP_LEFT
		}	
	ProphuntHint4
		{
			ControlName				Label
			xpos                    -26
			ypos					-195
			zpos 5
			//auto_wide_tocontents	1
			tall					40
			wide					350
			visible					0
			enabled 0
			fontHeight				33
			labelText				"Hint"
			font					"Default_34_ShadowGlow"
			allcaps					0
			fgcolor_override		"255 255 255 255"
			textAlignment			left
			pin_to_sibling			ScreenBlur2
			pin_corner_to_sibling	TOP_LEFT
			pin_to_sibling_corner	TOP_LEFT
		}
	ProphuntHint5
		{
			ControlName				Label
			xpos                    -26
			ypos					-240
			zpos 5
			//auto_wide_tocontents	1
			tall					40
			wide					350
			visible					0
			enabled 0
			fontHeight				33
			labelText				"Hint"
			font					"Default_34_ShadowGlow"
			allcaps					0
			fgcolor_override		"255 255 255 255"
			textAlignment			left
			pin_to_sibling			ScreenBlur2
			pin_corner_to_sibling	TOP_LEFT
			pin_to_sibling_corner	TOP_LEFT
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
				labelText				"造成伤害:"
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
				labelText				"爆头数"
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
	
	OITCSLOT1
	{
		"ControlName"				"RuiPanel"
		"rui"						"ui/basic_image.rpak"
		"wide"						"383"
		"tall"						"50"
		"xpos"						"45"
		"ypos"						"-130"
		"visible"					"0"
		"scaleImage"				"1"

		ruiArgs
        {
            basicImage "rui/gamemodes/oitc/SlotBG"
        }

		"pin_to_sibling"			"SafeArea"
		"pin_corner_to_sibling"		"BOTTOM_LEFT"
		"pin_to_sibling_corner"		"BOTTOM_LEFT"
	}

	OITCSLOT1LINE
	{
		"ControlName"				"RuiPanel"
		"rui"						"ui/basic_image.rpak"
		"wide"						"14"
		"tall"						"50"
		"xpos"						"0"
		"ypos"						"2"
		"visible"					"0"
		"scaleImage"				"1"

		ruiArgs
        {
            basicImage "rui/gamemodes/oitc/Red"
        }

		"pin_to_sibling"			"OITCSLOT1"
		"pin_corner_to_sibling"		"LEFT"
		"pin_to_sibling_corner"		"LEFT"
	}

	OITCSLOT2
	{
		"ControlName"				"RuiPanel"
		"rui"						"ui/basic_image.rpak"
		"wide"						"383"
		"tall"						"50"
		"xpos"						"0"
		"ypos"						"5"
		"visible"					"0"
		"scaleImage"				"1"

		ruiArgs
        {
            basicImage "rui/gamemodes/oitc/SlotBG"
        }

		"pin_to_sibling"			"OITCSLOT1"
		"pin_corner_to_sibling"		"TOP_LEFT"
		"pin_to_sibling_corner"		"BOTTOM_LEFT"
	}

	OITCSLOT2LINE
	{
		"ControlName"				"RuiPanel"
		"rui"						"ui/basic_image.rpak"
		"wide"						"14"
		"tall"						"50"
		"xpos"						"0"
		"ypos"						"2"
		"visible"					"0"
		"scaleImage"				"1"

		ruiArgs
        {
            basicImage "rui/gamemodes/oitc/Blue"
        }

		"pin_to_sibling"			"OITCSLOT2"
		"pin_corner_to_sibling"		"LEFT"
		"pin_to_sibling_corner"		"LEFT"
	}

	OITCTIMER
	{
		"ControlName"				"RuiPanel"
		"rui"						"ui/basic_image.rpak"
		"wide"						"99"
		"tall"						"50"
		"xpos"						"0"
		"ypos"						"5"
		"visible"					"0"
		"scaleImage"				"1"

		ruiArgs
        {
            basicImage "rui/gamemodes/oitc/TimerBG"
        }

		"pin_to_sibling"			"OITCSLOT1"
		"pin_corner_to_sibling"		"BOTTOM_LEFT"
		"pin_to_sibling_corner"		"TOP_LEFT"
	}

	OITCTIMERTEXT
	{
		ControlName				Label
		xpos					0
		ypos					0
		wide					85
		tall					100
		visible					0
		enabled					1
		labelText				""
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				25
		font					DefaultBold_17

		pin_to_sibling			OITCTIMER
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
	
	OITCTIMERTEXT2
	{
		ControlName				Label
		xpos					290
		ypos					0
		wide					120
		tall					100
		visible					0
		enabled					1
		labelText				""
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				28
		font					DefaultBold_17

		pin_to_sibling			OITCTIMER
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
	
	OITCSLOT1PLACEMENTTEXT
	{
		ControlName				Label
		xpos					-10
		ypos					0
		zpos					5
		wide					50
		tall					100
		visible					0
		enabled					1
		labelText				""
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				25
		font					DefaultBold_17

		pin_to_sibling			OITCSLOT1
		pin_corner_to_sibling	LEFT
		pin_to_sibling_corner	LEFT
	}

	OITCSLOT1NAMETEXT
	{
		ControlName				Label
		xpos					0
		ypos					0
		wide					210
		tall					100
		visible					0
		enabled					1
		labelText				""
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				25
		font					DefaultBold_17

		pin_to_sibling			OITCSLOT1
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}

	OITCSLOT1SCORETEXT
	{
		ControlName				Label
		xpos					-10
		ypos					0
		wide					60
		tall					100
		visible					0
		enabled					1
		labelText				""
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				25
		font					DefaultBold_17

		pin_to_sibling			OITCSLOT1
		pin_corner_to_sibling	RIGHT
		pin_to_sibling_corner	RIGHT
	}

	OITCSLOT2PLACEMENTTEXT
	{
		ControlName				Label
		xpos					-10
		ypos					0
		wide					50
		tall					100
		visible					0
		enabled					1
		labelText				""
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				25
		font					DefaultBold_17

		pin_to_sibling			OITCSLOT2
		pin_corner_to_sibling	LEFT
		pin_to_sibling_corner	LEFT
	}

	OITCSLOT2NAMETEXT
	{
		ControlName				Label
		xpos					0
		ypos					0
		wide					210
		tall					100
		visible					0
		enabled					1
		labelText				""
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				25
		font					DefaultBold_17

		pin_to_sibling			OITCSLOT2
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}

	OITCSLOT2SCORETEXT
	{
		ControlName				Label
		xpos					-10
		ypos					0
		wide					60
		tall					100
		visible					0
		enabled					1
		labelText				""
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				25
		font					DefaultBold_17

		pin_to_sibling			OITCSLOT2
		pin_corner_to_sibling	RIGHT
		pin_to_sibling_corner	RIGHT
	}

	KillStreakBadge1
	{
		"ControlName"				"RuiPanel"
		"rui"						"ui/basic_image.rpak"
		"wide"						"80"
		"tall"						"80"
		"xpos"						"-215"
		"ypos"						"300"
		"visible"					"0"
		"enabled"					"1"
		"scaleImage"				"1"

		ruiArgs
        {
            basicImage "rui/flowstatecustom/2"
        }

		"pin_to_sibling"			"SafeArea"
		"pin_corner_to_sibling"		"RIGHT"
		"pin_to_sibling_corner"		"RIGHT"
	}
	
	KillStreakText1
	{
		ControlName				Label
		xpos					350
		ypos					0
		wide					350
		tall					100
		visible					0
		enabled					1
		labelText				"Double Kill!"
		textAlignment			west
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				30
		font					DefaultBold_17

		pin_to_sibling			KillStreakBadge1
		pin_corner_to_sibling	RIGHT
		pin_to_sibling_corner	RIGHT
	}
	
	InfectedNearFrame
	{
		"ControlName"				"RuiPanel"
		"rui"                     	"ui/lobby_challenge_box.rpak"

		"wide"						"245"
		"tall"						"50"
		"xpos"						"30"
		"ypos"						"200"
		"auto_wide_tocontents"		"1"
		"visible"					"0"
		enabled					0
		pin_to_sibling			"SafeArea"
		pin_corner_to_sibling	LEFT
		pin_to_sibling_corner	LEFT
	}	
	
	InfectedNearText
	{
		ControlName				Label
		"xpos"					"30"
		"ypos"					"0"
		"zpos"					"5"
		wide					350
		tall					100
		visible					0
		enabled					0
		labelText				"An infected is near"
		textAlignment			center
		fgcolor_override 		"255 169 48 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				35
		font					DefaultBold_17

		pin_to_sibling			InfectedNearFrame
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
	
	//SND
	ScoreboardBG
	{
		"ControlName"				"RuiPanel"
		"rui"						"ui/basic_image.rpak"
		"wide"						"541"
		"tall"						"130"
		"xpos"						"0"
		"ypos"						"30"
		"visible"					"0"
		"enabled"					"0"
		"scaleImage"				"1"

		ruiArgs
        {
            basicImage "rui/flowstatecustom/scoreboard"
        }

		"pin_to_sibling"			"SafeArea"
		"pin_corner_to_sibling"		"TOP"
		"pin_to_sibling_corner"		"TOP"
	}
	
	RoundNumberText
	{
		ControlName				Label
		"xpos"					"1"
		"ypos"					"13"
		"zpos"					"5"
		wide					50
		tall					100
		labelText				"1"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				35
		font					"TitleBoldFont"
		"visible"					"0"
		"enabled"					"0"

		pin_to_sibling			ScoreboardBG
		pin_corner_to_sibling	TOP
		pin_to_sibling_corner	TOP
	}

	LocalTeamWinsText
	{
		ControlName				Label
		"xpos"					"-65"
		"ypos"					"10"
		"zpos"					"5"
		wide					50
		tall					100
		labelText				"00"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				35
		font					"TitleBoldFont"
		visible					0

		pin_to_sibling			ScoreboardBG
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
	
	EnemyTeamWinsText
	{
		ControlName				Label
		"xpos"					"65"
		"ypos"					"10"
		"zpos"					"5"
		wide					50
		tall					100
		labelText				"00"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				35
		font					"TitleBoldFont"
		"visible"					"0"
		"enabled"					"0"

		pin_to_sibling			ScoreboardBG
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
	
	LocalTeamIcon
	{
		"ControlName"				"RuiPanel"
		"rui"						"ui/basic_image.rpak"
		"wide"						"50"
		"tall"						"50"
		"xpos"						"-70"
		"ypos"						"-8"
		"visible"					"0"
		"enabled"					"0"
		"scaleImage"				"1"

		"pin_to_sibling"			"ScoreboardBG"
		"pin_corner_to_sibling"		"LEFT"
		"pin_to_sibling_corner"		"LEFT"
	}
	
	EnemyTeamIcon
	{
		"ControlName"				"RuiPanel"
		"rui"						"ui/basic_image.rpak"
		"wide"						"50"
		"tall"						"50"
		"xpos"						"-70"
		"ypos"						"-8	"
		"visible"					"0"
		"enabled"					"0"
		"scaleImage"				"1"

		"pin_to_sibling"			"ScoreboardBG"
		"pin_corner_to_sibling"		"RIGHT"
		"pin_to_sibling_corner"		"RIGHT"
	}
	
	LocalRoleText
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"60"
		"zpos"					"5"
		wide					150
		tall					100
		labelText				"Role"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				20
		font					DefaultBold_62_DropShadow
		allcaps					1
		"visible"					"0"
		"enabled"					"1"

		pin_to_sibling			LocalTeamIcon
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	BOTTOM
	}
	
	EnemyRoleText
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"60"
		"zpos"					"5"
		wide					150
		tall					100
		labelText				"Role"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				20
		font					DefaultBold_62_DropShadow
		allcaps					1
		"visible"					"0"
		"enabled"					"1"

		pin_to_sibling			EnemyTeamIcon
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	BOTTOM
	}
	//for title
	BombStateScreenBlur1
		{
			ControlName				RuiPanel
			wide					290
			tall					100	
			xpos					-38
			ypos					-335
			zpos 					0
			visible					0
			rui 					"ui/tabs_background.rpak"
			
			pin_to_sibling          Screen
			pin_corner_to_sibling   TOP_LEFT
			pin_to_sibling_corner   TOP_LEFT
		}
		
	BombStateScreenBlur2
		{
			ControlName				RuiPanel
			wide					290
			tall					60	
			xpos					0
			ypos					-98
			zpos 					1
			visible					0
			enabled					0
			rui 					"ui/tabs_background.rpak"
			
			pin_to_sibling          BombStateScreenBlur1
			pin_corner_to_sibling   TOP_LEFT
			pin_to_sibling_corner   TOP_LEFT
		}

	BombStateText_New
		{
			ControlName				Label
			xpos                    0
			ypos					-17
			zpos 					5
			//auto_wide_tocontents	1
			tall					40
			wide					260
			visible					0
			fontHeight				25
			labelText				"BOMB STATE"
			font					"TitleBoldFont"
			allcaps					0
			fgcolor_override		"255 79 161 255"
			textAlignment			center
			pin_to_sibling			BombStateScreenBlur1
			pin_corner_to_sibling	CENTER
			pin_to_sibling_corner	CENTER
		}
	SNDTempRoundTimer
		{
			ControlName				Label
			xpos                    0
			ypos					17
			zpos 					5
			//auto_wide_tocontents	1
			tall					40
			wide					260
			visible					0
			fontHeight				35
			labelText				"ROUND ENDS IN 00:00"
			font					"TitleBoldFont"
			allcaps					0
			fgcolor_override		"255 255 255 255"
			textAlignment			center
			pin_to_sibling			BombStateScreenBlur1
			pin_corner_to_sibling	CENTER
			pin_to_sibling_corner	CENTER
		}		
	// BombStateText_New
		// {
			// ControlName				Label
			// xpos                    0
			// ypos					0
			// zpos 					10
			// //auto_wide_tocontents	1
			// tall					40
			// wide					260
			// visible					1
			// fontHeight				23
			// labelText				"MADE BY @CAFEFPS"
			// font					"TitleBoldFont"
			// allcaps					0
			// fgcolor_override		"255 255 255 255"
			// textAlignment			center
			// pin_to_sibling			BombStateScreenBlur3
			// pin_corner_to_sibling	CENTER
			// pin_to_sibling_corner	CENTER
		// }
	// BombStateText_NewBlur
		// {
			// ControlName				RuiPanel
			// wide					300
			// tall					100
			// "xpos"					"0"
			// "ypos"					"50"
			// "zpos"					"4"
			// rui 					"ui/tabs_background.rpak"
			// visible					1
			// //drawColor				"0 0 0 200"
			

			// pin_to_sibling			BombStateText_New
			// pin_corner_to_sibling	BOTTOM
			// pin_to_sibling_corner	BOTTOM
		// }	
		
	// BombStateText_New
	// {
		// ControlName				Label
		// "xpos"					"0"
		// "ypos"					"50"
		// "zpos"					"5"
		// wide					300
		// tall					100
		// labelText				"BOMB IDLE"
		// textAlignment			center
		// fgcolor_override 		"255 255 255 255"
		// bgcolor_override 		"1 1 1 255"
		// fontHeight				24
		// font					"TitleBoldFont"
		// allcaps					1
		// "visible"				"0"

		// pin_to_sibling			"ScoreboardBG"
		// pin_corner_to_sibling	BOTTOM
		// pin_to_sibling_corner	BOTTOM
	// }

	// SNDMoneyBG
	// {
		// "ControlName"				"RuiPanel"
		// "rui"                     	"ui/lobby_challenge_box.rpak"

		// "wide"						"140"
		// "tall"						"50"
		// "xpos"						"%-4"
		// "ypos"						"%-36"
		// "auto_wide_tocontents"		"1"
		// "visible"					"0"
		// pin_to_sibling          Screen
		// pin_corner_to_sibling   TOP_LEFT
		// pin_to_sibling_corner   TOP_LEFT
	// }

	SND_AvailableMoney
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"15"
		wide					150
		tall					50
		labelText				"$1000"
		textAlignment			center
		fgcolor_override 		"52 173 0 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				35
		font					TitleBoldFont
		allcaps					1
		visible					0

		pin_to_sibling			BombStateScreenBlur2
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}

	SND_MoneyCashback
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"15"
		wide					150
		tall					50
		labelText				"+$100"
		textAlignment			center
		fgcolor_override 		"52 173 0 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				35
		font					TitleBoldFont
		allcaps					1
		visible					0

		pin_to_sibling			BombStateScreenBlur2
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
	
	SkullLogo
	{
		ControlName				RuiPanel
		wide					512
		tall					512
		visible					0
		enabled					0
		rui                     "ui/basic_image.rpak"
		
		ypos 					-50
		xpos 					0
		zpos					5
		
		ruiArgs
		{
			basicImage "rui/flowstatecustom/ltm_logo"
		}
		pin_to_sibling          "SafeArea"
		pin_corner_to_sibling   CENTER
		pin_to_sibling_corner   CENTER
	}

	LTMBoxMsg
	{
		ControlName				RuiPanel
		wide					509
		tall					83
		visible					0
		enabled					0
		rui                     "ui/basic_image.rpak"
		
		"ypos"					"73"
		"zpos"					"5"
		
		ruiArgs
		{
			basicImage "rui/flowstatecustom/ltm_box_msg"
		}
		pin_to_sibling          "SkullLogo"
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	BOTTOM
	}
	
	WinOrLoseText
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"-11"
		"zpos"					"20"
		wide					500
		tall					100
		labelText				"ROUND WIN"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				50
		font					TitleBoldFont
		allcaps					1
		visible					0
		enabled					0

		pin_to_sibling			LTMBoxMsg
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
	
	WinOrLoseReason
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"35"
		"zpos"					"20"
		wide					500
		tall					100
		labelText				"BOMB HAS BEEN DEFUSED"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				23
		font					DefaultBold_62_DropShadow
		allcaps					1
		visible					0
		enabled					0

		pin_to_sibling			WinOrLoseText
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	BOTTOM
	}

	//Bomb State UI
	BombStateBox
	{
		ControlName				RuiPanel
		wide					337
		tall					133
		visible					0
		enabled					1
		rui                     "ui/basic_image.rpak"
		
		"xpos"					"48"
		"ypos"					"-100"
		"zpos"					"5"
		
		ruiArgs
		{
			basicImage "rui/flowstatecustom/bombstate_box"
		}
		pin_to_sibling         	SafeArea
		pin_corner_to_sibling	BOTTOM_RIGHT
		pin_to_sibling_corner	BOTTOM_RIGHT
	}
	
	BombStateTitle
	{
		ControlName				Label
		"xpos"					"-25"
		"ypos"					"0"
		"zpos"					"20"
		wide					150
		tall					50
		labelText				"BOMB STATE"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				20
		font					TitleBoldFont
		allcaps					1
		visible					0
		enabled					1

		pin_to_sibling			BombStateBox
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	TOP_LEFT
	}

	BombStateText
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"15"
		"zpos"					"20"
		wide					250
		tall					50
		labelText				"ON GROUND"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				45
		font					DefaultBold_62_DropShadow
		allcaps					1
		visible					0
		enabled					1

		pin_to_sibling			BombStateBox
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
	
	//Mouse Cursor Test & Buy menu Test
		
	"DarkenBackground"
	{
		"ControlName"			"Label"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"5"
		"wide"					"%100"
		"tall"					"%100"
		"labelText"				""
		"bgcolor_override"		"0 0 0 200"
		"visible"				"0"
		"paintbackground"		"1"

		"pin_to_sibling"			"SafeArea"
		"pin_corner_to_sibling"		"CENTER"
		"pin_to_sibling_corner"		"CENTER"
	}
	
	MouseCursorTest
	{
		ControlName				RuiPanel
		wide					20
		tall					26
		visible					0
		rui                     "ui/basic_image.rpak"
		
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"20"
		
		ruiArgs
		{
			basicImage "rui/flowstatecustom/cursor"
		}
		pin_to_sibling         	Screen
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
	
	"WheelTest"
	{
		"ControlName"				"RuiPanel"
		"rui"						"ui/comms_menu.rpak"
		"wide"						"900"
		"tall"						"900"
		"xpos"						"-425"
		"ypos"						"-15"
		"zpos"						"15"
		"enabled"					"1"
		"visible"					"1"
		// "scaleImage"				"1"
		"pin_to_sibling"			"SafeArea"
		"pin_corner_to_sibling"		"CENTER"
		"pin_to_sibling_corner"		"CENTER"
	}
	
	BuyMenuBoxMsg
	{
		ControlName				RuiPanel
		wide					509
		tall					83
		visible					0
		enabled					0
		rui                     "ui/basic_image.rpak"
		
		"xpos"					"0"
		"ypos"					"-65"
		"zpos"					"15"
		
		ruiArgs
		{
			basicImage "rui/flowstatecustom/ltm_box_msg"
		}
		pin_to_sibling			DarkenBackground
		pin_corner_to_sibling	TOP
		pin_to_sibling_corner	TOP
	}
	
	BuyMenuTitle
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"20"
		wide					420
		tall					50
		labelText				"LOADOUT SHOP"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				50
		font					TitleBoldFont
		allcaps					1
		visible					0

		pin_to_sibling			BuyMenuBoxMsg
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}

	TimerText
	{
		ControlName				Label
		"xpos"					"34"
		"ypos"					"-20"
		"zpos"					"20"
		wide					200
		tall					50
		labelText				"BUY ENDS IN 0s"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				14
		font					TitleBoldFont
		allcaps					1
		visible					0

		pin_to_sibling			"BuyMenuBoxMsg"
		pin_corner_to_sibling	RIGHT
		pin_to_sibling_corner	RIGHT
	}
	
	BuyMenuBottomFrame
		{
			ControlName				RuiPanel
			wide					f0
			tall					165
			xpos					0
			ypos					0
			zpos 					1
			visible					0
			enabled					0
			rui 					"ui/tabs_background.rpak"
			
			pin_to_sibling          Screen
			pin_corner_to_sibling   BOTTOM
			pin_to_sibling_corner   BOTTOM
		}
		
	BuyMenuBottomFrameBorder
	{
		"ControlName"			"Label"

		"wide"						"f0"
		"tall"						"13"
		"labelText"				""
		"bgcolor_override"		"89 158 208 230"
		"visible"				"0"
		"paintbackground"		"1"
        xpos                    0
        ypos                   	12
		zpos					20
		"visible"					"1"
		"scaleImage"				"1"
        pin_to_sibling          BuyMenuBottomFrame //todo pin to wheeltest
        pin_corner_to_sibling   TOP
        pin_to_sibling_corner   TOP
	}
	
	YourTeamBox
	{
		ControlName				RuiPanel
		wide					450
		tall					260
		visible					0
		enabled					1
		rui                     "ui/basic_image.rpak"
		
		"xpos"					"-215"
		"ypos"					"-20"
		"zpos"					"5"
		
		ruiArgs
		{
			basicImage "rui/flowstatecustom/bombstate_box"
		}
		pin_to_sibling         	SafeArea
		pin_corner_to_sibling	BOTTOM_RIGHT
		pin_to_sibling_corner	BOTTOM_RIGHT
	}
	
	YourTeamTitle
	{
		ControlName				Label
		"xpos"					"315"
		"ypos"					"35"
		"zpos"					"20"
		wide					150
		tall					50
		labelText				"COMBAT INFO"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				25
		font					TitleBoldFont
		allcaps					1
		visible					0

		pin_to_sibling			BombStateBox
		pin_corner_to_sibling	TOP_LEFT
		pin_to_sibling_corner	TOP_LEFT
	}


	
	BuyMenuTimerFrame
		{
			ControlName				RuiPanel
			wide					300
			tall					100
			xpos					-430
			ypos					-60
			zpos 					1
			visible					0
			enabled					0
			rui 					"ui/tabs_background.rpak"
			
			pin_to_sibling          Screen
			pin_corner_to_sibling   TOP
			pin_to_sibling_corner   TOP
		}
		
	BuyMenuRemainingTimeText
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"-45"
		"zpos"					"20"
		wide					300
		tall					50
		labelText				"BUY ENDS IN 30"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				42
		font					DefaultBold_62_DropShadow
		allcaps					1
		visible					0

		pin_to_sibling			BuyMenuTimerFrame
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	BOTTOM
	}
	
	AvailableMoney
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"40"
		"zpos"					"20"
		wide					150
		tall					50
		labelText				"$1000"
		textAlignment			center
		fgcolor_override 		"72 199 56 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				38
		font					TitleBoldFont
		allcaps					1
		visible					0

		pin_to_sibling			BuyMenuRemainingTimeText
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	BOTTOM
	}
	
	SpentMoney
	{
		ControlName				Label
		"xpos"					"15"
		"ypos"					"0"
		"zpos"					"15"
		wide					150
		tall					50
		labelText				"-$100"
		textAlignment			west
		fgcolor_override 		"199 56 56 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				38
		font					TitleBoldFont
		allcaps					1
		visible					0

		pin_to_sibling			AvailableMoney
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	BOTTOM
	}
	
	MoneyCashback
	{
		ControlName				Label
		"xpos"					"15"
		"ypos"					"0"
		"zpos"					"15"
		wide					150
		tall					50
		labelText				"-$100"
		textAlignment			west
		fgcolor_override 		"72 199 56 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				38
		font					TitleBoldFont
		allcaps					1
		visible					0

		pin_to_sibling			AvailableMoney
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	BOTTOM
	}
	
	YourTeamIcon
	{
		ControlName				RuiPanel
		wide					100
		tall					100
		visible					0
		rui                     "ui/basic_image.rpak"
		
		"xpos"					"-740"
		"ypos"					"-15"
		"zpos"					"15"
		
		ruiArgs
		{
			basicImage "rui/flowstatecustom/imc"
		}
		pin_to_sibling			BuyMenuBottomFrame
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
	
	YourTeamRole
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"50"
		"zpos"					"20"
		wide					300
		tall					50
		labelText				"YOU'RE ATTACKING"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				30
		font					DefaultBold_62_DropShadow
		allcaps					1
		visible					0

		pin_to_sibling			YourTeamIcon
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	BOTTOM
	}
	
	BuyMenu_EnemyTeamIcon
	{
		ControlName				RuiPanel
		wide					100
		tall					100
		visible					0
		rui                     "ui/basic_image.rpak"
		
		"xpos"					"380"
		"ypos"					"0"
		"zpos"					"15"
		
		ruiArgs
		{
			basicImage "rui/flowstatecustom/imc"
		}
		pin_to_sibling			YourTeamIcon
		pin_corner_to_sibling	RIGHT
		pin_to_sibling_corner	RIGHT
	}
	
	BuyMenu_EnemyTeamRole
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"50"
		"zpos"					"20"
		wide					300
		tall					50
		labelText				"ENEMY TEAM ATTACKING"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				30
		font					DefaultBold_62_DropShadow
		allcaps					1
		visible					0

		pin_to_sibling			BuyMenu_EnemyTeamIcon
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	BOTTOM
	}
	
	BuyMenu_BothTeamsScore
	{
		ControlName				Label
		"xpos"					"290"
		"ypos"					"0"
		"zpos"					"15"
		wide					300
		tall					50
		labelText				"0 - 0"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				50
		font					TitleBoldFont
		allcaps					1
		visible					0

		pin_to_sibling			YourTeamIcon
		pin_corner_to_sibling	RIGHT
		pin_to_sibling_corner	RIGHT
	}

	BuyMenu_RoundNumberText
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"-15"
		"zpos"					"15"
		wide					300
		tall					50
		labelText				"ROUND"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				45
		font					TitleBoldFont
		allcaps					1
		visible					0

		pin_to_sibling			BuyMenuBottomFrame
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}

	BuyMenu_RoundNumberNumber
	{
		ControlName				Label
		"xpos"					"0"
		"ypos"					"45"
		"zpos"					"15"
		wide					300
		tall					50
		labelText				"13"
		textAlignment			center
		fgcolor_override 		"255 255 255 255"
		bgcolor_override 		"0 0 0 0"
		fontHeight				45
		font					TitleBoldFont
		allcaps					1
		visible					0

		pin_to_sibling			BuyMenu_RoundNumberText
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	BOTTOM
	}
	// "BottomFrame"
	// {
		// ControlName				RuiPanel
		// wide					f0
		// tall					130
		// xpos					0
		// visible					1
		// proportionalToParent    1
		// rui 					"ui/tabs_background.rpak"
		
		// "pin_to_sibling"			"DarkenBackground"
		// "pin_corner_to_sibling"		"BOTTOM_LEFT"
		// "pin_to_sibling_corner"		"BOTTOM_LEFT"
	// }
	
	//Mokey
	ChargeBorder
	{
		ControlName				RuiPanel
		wide					300
		tall					35
		visible					0
		rui                     "ui/basic_image.rpak"
		
		"xpos"					"243"
		"ypos"					"0"
		"zpos"					"15"
		
		ruiArgs
		{
			basicImage "rui/flowstatecustom/charge_border"
		}
		pin_to_sibling			Screen
		pin_corner_to_sibling	CENTER
		pin_to_sibling_corner	CENTER
	}
	
	ChargeInner
	{
		ControlName				RuiPanel
		wide					300
		tall					35
		visible					0
		rui                     "ui/basic_image.rpak"
		
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"5"
		
		ruiArgs
		{
			basicImage "rui/flowstatecustom/charge_inner"
		}
		pin_to_sibling			ChargeBorder
		pin_corner_to_sibling	LEFT
		pin_to_sibling_corner	LEFT
	}
	
	//SND Buy menu bought weapons
	WeaponsBoughtFrame
	{
		"ControlName"			"Label"

		"wide"						"450"
		"tall"						"190"
		"labelText"				""
		"bgcolor_override"		"0 0 0 180"
		"visible"				"0"
		"paintbackground"		"1"
        xpos                    -310
        ypos                   	-70
		zpos					0
		"visible"					"1"
		"scaleImage"				"1"
        pin_to_sibling          Screen //todo pin to wheeltest
        pin_corner_to_sibling   BOTTOM_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
	}
	
    // PanelFrame
    // {
		// ControlName				ImagePanel
        // wide					204
        // tall					124
		
        // xpos                    -8
        // ypos                    -20
		
		// visible				    0
        // scaleImage				1
        // image					"vgui/HUD/white"
        // drawColor				"255 255 255 25"

        // proportionalToParent    1

        // pin_to_sibling          WeaponsBoughtFrame
        // pin_corner_to_sibling   TOP_LEFT
        // pin_to_sibling_corner   TOP_LEFT
    // }
	
   MainWeapon0
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"
		
        wide					204
        tall					124

        classname               "SurvivalEquipment"
        scriptID                "main_weapon0"
		"auto_wide_tocontents"		"1"
        xpos                    440
        ypos                    -10
        zpos                    1
		"visible"				"0"
		
        pin_to_sibling          BuyMenuBottomFrame
        pin_corner_to_sibling   CENTER
        pin_to_sibling_corner   CENTER
    }
	
    MainWeapon0_Name
    {
        ControlName				Label
        wide                    200
        labelText				"Primary"
		"visible"				"0"
		allcaps					0
		font					DefaultBold_62_DropShadow
		textAlignment			center
		fontHeight				30
        ypos                    33
		zpos 					5
        pin_to_sibling          MainWeapon0
        pin_corner_to_sibling   BOTTOM
        pin_to_sibling_corner   BOTTOM
    }

    MainWeapon0_Barrel
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"

        wide					30
        tall					30

        classname               "SurvivalEquipment"
        scriptID                "main_weapon0_barrel"
		"visible"				"0"
        ypos                    -8
        xpos                    -8
        zpos                    3
        cursorPriority          1

        pin_to_sibling          MainWeapon0
        pin_corner_to_sibling   BOTTOM_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
    }

    MainWeapon0_Mag
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"

        wide					30
        tall					30

        classname               "SurvivalEquipment"
        scriptID                "main_weapon0_mag"
		
		"visible"				"0"
        xpos                    4
        ypos                    0
        zpos                    3
        cursorPriority          1

        pin_to_sibling          MainWeapon0_Barrel
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   TOP_RIGHT
    }

    MainWeapon0_Sight
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"

        wide					30
        tall					30

        classname               "SurvivalEquipment"
        scriptID                "main_weapon0_sight"

        xpos                    4
        ypos                    0
        zpos                    3
        cursorPriority          1
		"visible"				"0"
        pin_to_sibling          MainWeapon0_Mag
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   TOP_RIGHT
    }

    MainWeapon0_Grip
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"

        wide					30
        tall					30

        classname               "SurvivalEquipment"
        scriptID                "main_weapon0_grip"

        xpos                    4
        ypos                    0
        zpos                    3
        cursorPriority          1
		"visible"				"0"
        pin_to_sibling          MainWeapon0_Sight
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   TOP_RIGHT
    }

    MainWeapon0_Hopup
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"

        wide					30
        tall					30

        classname               "SurvivalEquipment"
        scriptID                "main_weapon0_hopup"

        xpos                    4
        ypos                    0
        zpos                    3
        cursorPriority          1
		"visible"				"0"
        pin_to_sibling          MainWeapon0_Grip
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   TOP_RIGHT
    }
    // PanelFrame2
    // {
		// ControlName				ImagePanel
        // wide					204
        // tall					124
		
        // xpos                    230
        // ypos                    0
        // zpos                    1
		
		// visible				    0
        // scaleImage				1
        // image					"vgui/HUD/white"
        // drawColor				"255 255 255 25"
		// "visible"				"0"
        // proportionalToParent    1

        // pin_to_sibling          BuyMenuBottomFrame
        // pin_corner_to_sibling   RIGHT
        // pin_to_sibling_corner   RIGHT
    // }

    MainWeapon1_Name
    {
        ControlName				Label
        wide                    200
        labelText				"Secondary"
		allcaps					0
		font					DefaultBold_62_DropShadow
		textAlignment			center
		"visible"				"0"
		fontHeight				30
        ypos                    33
		zpos 					5
        pin_to_sibling          MainWeapon1
        pin_corner_to_sibling   BOTTOM
        pin_to_sibling_corner   BOTTOM
    }
	
    MainWeapon1
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"
		
        wide					204
        tall					124

        classname               "SurvivalEquipment"
        scriptID                "main_weapon1"

        xpos                    215
        ypos                    0
        zpos                    1
		"visible"				"0"
        pin_to_sibling          MainWeapon0
        pin_corner_to_sibling   RIGHT
        pin_to_sibling_corner   RIGHT
    }

    MainWeapon1_Barrel
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"

        wide					30
        tall					30

        classname               "SurvivalEquipment"
        scriptID                "main_weapon1_barrel"

        ypos                    -8
        xpos                    -8
        zpos                    3
        cursorPriority          1
		"visible"				"0"
        pin_to_sibling          MainWeapon1
        pin_corner_to_sibling   BOTTOM_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
    }

    MainWeapon1_Mag
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"

        wide					30
        tall					30

        classname               "SurvivalEquipment"
        scriptID                "main_weapon1_mag"

        xpos                    4
        ypos                    0
        zpos                    3
        cursorPriority          1
		"visible"				"0"
        pin_to_sibling          MainWeapon1_Barrel
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   TOP_RIGHT
    }

    MainWeapon1_Sight
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"

        wide					30
        tall					30

        classname               "SurvivalEquipment"
        scriptID                "main_weapon1_sight"

        xpos                    4
        ypos                    0
        zpos                    3
        cursorPriority          1
		"visible"				"0"
        pin_to_sibling          MainWeapon1_Mag
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   TOP_RIGHT
    }

    MainWeapon1_Grip
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"

        wide					30
        tall					30

        classname               "SurvivalEquipment"
        scriptID                "main_weapon1_grip"

        xpos                    4
        ypos                    0
        zpos                    3
        cursorPriority          1
		"visible"				"0"
        pin_to_sibling          MainWeapon1_Sight
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   TOP_RIGHT
    }

    MainWeapon1_Hopup
    {
        ControlName             RuiPanel
		rui                     "ui/survival_inventory_grid_button_v2.rpak"

        wide					30
        tall					30

        classname               "SurvivalEquipment"
        scriptID                "main_weapon1_hopup"

        xpos                    4
        ypos                    0
        zpos                    3
        cursorPriority          1
		"visible"				"0"
        pin_to_sibling          MainWeapon1_Grip
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   TOP_RIGHT
    }
	//Armor swap challenge new UI
	
	ArmorSwapStatsFrame
		{
			ControlName				RuiPanel
			wide					300
			tall					175
			enabled 1
			ypos %-35
			xpos 0
			zpos 1
			visible					0
			rui                     "ui/basic_image.rpak"

            ruiArgs
            {
                basicImageColor     "0 0 0"
                basicImageAlpha     0.7
            }
			pin_to_sibling          Screen
			pin_corner_to_sibling   CENTER
			pin_to_sibling_corner   CENTER
		}
		
	ArmorSwapStatsTitle
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
			labelText				"换甲训练"
			font					"TitleBoldFont"
			allcaps					1
			fgcolor_override		"252 198 3 255"
			pin_to_sibling			ArmorSwapStatsFrame
			pin_corner_to_sibling	TOP
			pin_to_sibling_corner	TOP
		}
		
	LastTime
		{
				ControlName				Label
				auto_wide_tocontents    0
				labelText				"上次用时:"
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
				pin_to_sibling          ArmorSwapStatsFrame
				pin_corner_to_sibling   TOP
				pin_to_sibling_corner   TOP
		}	
	LastTimeValue
		{
				ControlName				Label
				auto_wide_tocontents    1
				labelText				"00:00:00"
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
				pin_to_sibling          ArmorSwapStatsFrame
				pin_corner_to_sibling   TOP_RIGHT
				pin_to_sibling_corner   TOP_RIGHT
		}	
	BestTime
		{
				ControlName				Label
				auto_wide_tocontents    0
				labelText				"最佳时间:"
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
				pin_to_sibling          LastTime
				textAlignment		left
				pin_corner_to_sibling   BOTTOM_LEFT
				pin_to_sibling_corner   BOTTOM_LEFT
		}
	BestTimeValue
		{
				ControlName				Label
				auto_wide_tocontents    1
				labelText				"00:00:00"
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
				pin_to_sibling          LastTimeValue
				pin_corner_to_sibling   BOTTOM_RIGHT
				pin_to_sibling_corner   BOTTOM_RIGHT
		}			
	AverageTime
		{
				ControlName				Label
				auto_wide_tocontents    0
				labelText				"成功率:"
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
				pin_to_sibling          BestTime
				textAlignment		left
				pin_corner_to_sibling   BOTTOM_LEFT
				pin_to_sibling_corner   BOTTOM_LEFT
		}
	AverageTimeValue
		{
				ControlName				Label
				auto_wide_tocontents    1
				labelText				"00:00:00"
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
				pin_to_sibling          BestTimeValue
				pin_corner_to_sibling   BOTTOM_RIGHT
				pin_to_sibling_corner   BOTTOM_RIGHT
		}	
}