//FLOWSTATE PROPHUNT
//Made by @CafeFPS (Retículo Endoplasmático#5955)

// AyeZee#6969 -- Ctf voting phase to work off
// _RitzKing#1715 -- Gamemode Icon
// everyone else -- advice
untyped

global function ClGamemodeProphunt_Init
global function PROPHUNT_DoScreenFlashFX
global function PROPHUNT_EnableControlsUI
global function PROPHUNT_RemoveControlsUI
global function PROPHUNT_CustomHint
global function PROPHUNT_AddUsageToHint
global function PROPHUNT_StartMiscTimer
global function PROPHUNT_QuickText
global function PROPHUNT_UpdateThirdPersonCameraPosition

global function CreateAndMoveCameraToWinnerProp
global function GetWinnerPropCameraEntities
global function ClientAskedForTeam
global function PROPHUNT_Disable_MILITIAButton
global function PROPHUNT_Disable_IMCButton
global function ForceDisableHuntersAbilityHint
global function EnableHuntersAbility

struct {
    LocationSettings &selectedLocation
    array<LocationSettings> locationSettings
	int teamwon
	vector victorySequencePosition = < 0, 0, 10000 >
	vector victorySequenceAngles = < 0, 0, 0 >
	SquadSummaryData winnerSquadSummaryData
	bool forceShowSelectedLocation = false
	array<var> inputHintRuis
	var activeQuickHint = null
} file

struct {
    int gamestarttime
    int endingtime
    int seconds
} clientgametimer

struct {
    entity e
    entity m
} winnerpropcam

void function ClGamemodeProphunt_Init()
{
	SetConVarInt("cl_quota_stringCmdsPerSecond", 100)
	//I don't want these things in user screen even if they launch in debug
	SetConVarBool( "cl_showpos", false )
	SetConVarBool( "cl_showfps", false )
	SetConVarBool( "cl_showgpustats", false )
	SetConVarBool( "cl_showsimstats", false )
	SetConVarBool( "host_speeds", false )
	SetConVarBool( "con_drawnotify", false )
	SetConVarBool( "enable_debug_overlays", false )
	
	RegisterSignal("ChallengeStartRemoveCameras")
	RegisterSignal("ChangeCameraToSelectedLocation")
	RegisterSignal("PROPHUNT_ShutdownWhistleAndRoundTimer")
	RegisterSignal("PROPHUNT_ShutdownPropsHidingTimer")
	RegisterSignal("PROPHUNT_ShutdownHuntersAbilityTimer")
	PrecacheParticleSystem($"P_shell_shock_FP")
	PrecacheParticleSystem($"P_screen_smoke_bangalore_FP")
	AddClientCallback_OnResolutionChanged( ReloadMenuRUI )
	//AddCallback_EntitiesDidLoad( NotifyRingTimer )
}

void function PROPHUNT_EnableControlsUI(bool isAttacker, float starttime)
{
	entity player = GetLocalClientPlayer()
	SetDpadMenuHidden()
	Minimap_DisableDraw_Internal()
	player.p.PROPHUNT_ChangePropUsageLimit = 0
	player.p.PROPHUNT_DecoysPropUsageLimit = 0
	player.p.PROPHUNT_FlashbangPropUsageLimit = 0
	player.p.PROPHUNT_AreAnglesLocked = false
	
	SetConVarFloat("c_thirdpersonshoulderaimdist", 135)
	SetConVarFloat("c_thirdpersonshoulderheight", 55)
	SetConVarFloat("c_thirdpersonshoulderoffset", 0)
	
	ScorebarInitTracking( player, ClGameState_GetRui() )
	
	clientgametimer.gamestarttime = starttime.tointeger()
	clientgametimer.endingtime = clientgametimer.gamestarttime + int(GetCurrentPlaylistVarFloat("flowstatePROPHUNTLimitTime", 300 ))
		
	if(!isAttacker)
	{
		Hud_SetEnabled(HudElement( "ScreenBlur1" ), true)
		Hud_SetVisible(HudElement( "ScreenBlur1" ), true)
		
		Hud_SetEnabled(HudElement( "ScreenBlur3" ), true)
		Hud_SetVisible(HudElement( "ScreenBlur3" ), true)
		
		Hud_SetEnabled(HudElement( "PropControlsTitle" ), true)
		Hud_SetVisible(HudElement( "PropControlsTitle" ), true)
		
		Hud_SetEnabled(HudElement( "RoundTimer" ), true)
		Hud_SetVisible(HudElement( "RoundTimer" ), true)		
		
		Hud_SetEnabled(HudElement( "WhistleTimer" ), true)
		Hud_SetVisible(HudElement( "WhistleTimer" ), true)
		thread UpdateWhistleTimer()
		Hud_SetEnabled(HudElement( "ScreenBlur2" ), true)
		Hud_SetVisible(HudElement( "ScreenBlur2" ), true)
		
		Hud_SetEnabled(HudElement( "ProphuntHint0" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint0" ), true)
		
		Hud_SetEnabled(HudElement( "ProphuntHint1" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint1" ), true)
		
		Hud_SetEnabled(HudElement( "ProphuntHint2" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint2" ), true)
		
		Hud_SetEnabled(HudElement( "ProphuntHint3" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint3" ), true)

		Hud_SetEnabled(HudElement( "ProphuntHint4" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint4" ), true)
		
		Hud_SetEnabled(HudElement( "ProphuntHint5" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint5" ), true)
		
		Hud_SetText( HudElement( "ProphuntHint0"), "%attack% 更换模型 x" + ( PROPHUNT_CHANGE_PROP_USAGE_LIMIT - player.p.PROPHUNT_ChangePropUsageLimit ).tostring() )
		Hud_SetText( HudElement( "ProphuntHint1"), "%zoom% 锁定方向")
		Hud_SetText( HudElement( "ProphuntHint2"), "%reload% 匹配地面斜度")
		Hud_SetText( HudElement( "ProphuntHint3"), "%offhand1% 兴奋剂")
		Hud_SetText( HudElement( "ProphuntHint4"), "%melee% 放置诱饵 x" + ( PROPHUNT_DECOYS_USAGE_LIMIT - player.p.PROPHUNT_DecoysPropUsageLimit ).tostring() )
		Hud_SetText( HudElement( "ProphuntHint5"), "%offhand4% 闪光弹 x" + PROPHUNT_FLASH_BANG_USAGE_LIMIT.tostring())
		
		player.p.isAttackerProphunt = false
		var screenSize = Hud.GetScreenSize()
		
		HudElement( "ScreenBlur2" ).SetSize( 238*screenSize[0]/1760, 275*screenSize[1]/990 )		
		HudElement( "ScreenBlur1" ).SetPos( -35, -35 )
		Hud_SetText( HudElement( "RoundTimer"), "正在等待猎人队")
		Hud_SetText( HudElement( "PropControlsTitle"), "躲藏者控制键位")
		GetLocalClientPlayer().p.isRoundTimerEnabled = false
	} else
	{
		Hud_SetEnabled(HudElement( "ScreenBlur1" ), true)
		Hud_SetVisible(HudElement( "ScreenBlur1" ), true)

		Hud_SetEnabled(HudElement( "ScreenBlur2" ), true)
		Hud_SetVisible(HudElement( "ScreenBlur2" ), true)
		
		Hud_SetEnabled(HudElement( "PropControlsTitle" ), true)
		Hud_SetVisible(HudElement( "PropControlsTitle" ), true)

		Hud_SetEnabled(HudElement( "RoundTimer" ), true)
		Hud_SetVisible(HudElement( "RoundTimer" ), true)

		Hud_SetEnabled(HudElement( "ProphuntHint0" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint0" ), true)

		UIPos pos   = REPLACEHud_GetPos( HudElement( "ScreenBlur2" ) )
		UISize size = REPLACEHud_GetSize( HudElement( "ScreenBlur2" ) )
		
		var position = HudElement( "ScreenBlur2" ).GetPos()
		var screenSize = Hud.GetScreenSize()

		HudElement( "ScreenBlur2" ).SetSize( 238*screenSize[0]/1760, 65*screenSize[1]/990 )		
		HudElement( "ScreenBlur1" ).SetPos( -39, -301 )
	
		player.p.isAttackerProphunt = true
		
		Hud_SetText( HudElement( "PropControlsTitle"), "猎人控制键位")
		Signal(player, "PROPHUNT_ShutdownPropsHidingTimer")
		Signal(player, "PROPHUNT_ShutdownWhistleAndRoundTimer")
		thread Thread_PROPHUNT_HuntersAbilityTimer(true)
		
		GetLocalClientPlayer().p.isAttackersAbilityEnabled = false		
		GetLocalClientPlayer().p.isRoundTimerEnabled = true
		thread Thread_PROPHUNT_Timer()
	}
	
	RuiSetImage( Hud_GetRui( HudElement( "ProphuntMessagesBox" ) ), "basicImage", $"rui/flowstatecustom/prophunt_quicktext")
}

void function Thread_PROPHUNT_Timer()
{
	entity player = GetLocalClientPlayer()
	EndSignal(player, "PROPHUNT_ShutdownWhistleAndRoundTimer")

	while (true)
	{
        int elapsedtime = clientgametimer.endingtime - Time().tointeger()

		DisplayTime dt = SecondsToDHMS( elapsedtime )
		Hud_SetText( HudElement( "RoundTimer"), "回合结束时间" + format( "%.2d:%.2d", dt.minutes, dt.seconds ))
		
		wait 1
	}
}

void function Thread_PROPHUNT_HuntersAbilityTimer(bool isroundstart = false, bool wasresolutionchanged = false)
{
	entity player = GetLocalClientPlayer()
	EndSignal(player, "PROPHUNT_ShutdownHuntersAbilityTimer")
	
	OnThreadEnd(
		function() : ( player )
		{
			Hud_SetText( HudElement( "ProphuntHint0"), "%offhand4% 改变所有躲藏者模型" )
		}
	)

	if(!wasresolutionchanged)
	{
		if(isroundstart)
			player.p.savedAbilityTimer = PROPHUNT_ATTACKERS_ABILITY_COOLDOWN/2
		else
			player.p.savedAbilityTimer = PROPHUNT_ATTACKERS_ABILITY_COOLDOWN
	}
	
	while (true)
	{
		if(player.p.savedAbilityTimer == 0)
			break
		Hud_SetText( HudElement( "ProphuntHint0"), "  %offhand4% 下次可用 " + player.p.savedAbilityTimer + "秒" )
		wait 1
		player.p.savedAbilityTimer --
	}
}

void function ForceDisableHuntersAbilityHint()
{
	thread Thread_PROPHUNT_HuntersAbilityTimer(false)
	GetLocalClientPlayer().p.isAttackersAbilityEnabled = false
}

void function EnableHuntersAbility()
{
	Signal(GetLocalClientPlayer(), "PROPHUNT_ShutdownHuntersAbilityTimer")
	Hud_SetText( HudElement( "ProphuntHint0"), "%offhand4% 改变所有躲藏者模型" )
	GetLocalClientPlayer().p.savedAbilityTimer = 0
	GetLocalClientPlayer().p.isAttackersAbilityEnabled = true
}

void function PROPHUNT_StartMiscTimer(bool isPropTeam)
{
	thread function() : (isPropTeam)
	{
		Hud_SetEnabled(HudElement( "ProphuntMessagesBox" ), true)
		Hud_SetVisible(HudElement( "ProphuntMessagesBox" ), true)
			
		Hud_SetEnabled(HudElement( "MiscTimer" ), true)
		Hud_SetVisible(HudElement( "MiscTimer" ), true)
		
		RuiSetImage( Hud_GetRui( HudElement( "ProphuntMessagesBox" ) ), "basicImage", $"rui/flowstatecustom/prophunt_quicktext")
		
		entity player = GetLocalClientPlayer() 
		
		EndSignal(player, "PROPHUNT_ShutdownPropsHidingTimer")
		
		OnThreadEnd(
			function() : ( player )
			{
				Hud_SetEnabled(HudElement( "ProphuntMessagesBox" ), false)
				Hud_SetVisible(HudElement( "ProphuntMessagesBox" ), false)
					
				Hud_SetEnabled(HudElement( "MiscTimer" ), false)
				Hud_SetVisible(HudElement( "MiscTimer" ), false)
			}
		)
		
		int time = PROPHUNT_TELEPORT_ATTACKERS_DELAY
		string text

		while(true)
		{
			if(time == 0)
			{
				text = "TELEPORTING NOW"
				Hud_SetText( HudElement( "MiscTimer"), text)
				wait 1
				break
			}else if(time == -1)
			{
				time = PROPHUNT_WHISTLE_TIMER
				if(isPropTeam)
					text = "猎人即将进场 " + time.tostring()
				else
					text = "躲藏者正在躲藏 " + time.tostring()
			} else
			{
				if(isPropTeam)
					text = "猎人即将进场 " + time.tostring()
				else
					text = "躲藏者正在躲藏 " + time.tostring()
			}
			
			Hud_SetText( HudElement( "MiscTimer"), text)
			time--
			wait 1
		}
	}()
}

void function PROPHUNT_QuickText(int index, int duration)
{
	thread function() : (index, duration)
	{
		entity player = GetLocalClientPlayer() 
		
		EndSignal(player, "OnDeath")
		
		Hud_SetEnabled(HudElement( "ProphuntMessagesBox" ), true)
		Hud_SetVisible(HudElement( "ProphuntMessagesBox" ), true)
			
		Hud_SetEnabled(HudElement( "MiscTimer" ), true)
		Hud_SetVisible(HudElement( "MiscTimer" ), true)
		
		RuiSetImage( Hud_GetRui( HudElement( "ProphuntMessagesBox" ) ), "basicImage", $"rui/flowstatecustom/prophunt_quicktext")
		
		OnThreadEnd(
			function() : ( player, index )
			{
				if(!IsValid(player)) return
				
				Hud_SetEnabled(HudElement( "ProphuntMessagesBox" ), false)
				Hud_SetVisible(HudElement( "ProphuntMessagesBox" ), false)
					
				Hud_SetEnabled(HudElement( "MiscTimer" ), false)
				Hud_SetVisible(HudElement( "MiscTimer" ), false)
				
				switch(index)
				{
					case 0:
					EmitSoundOnEntity(player, "UI_InGame_HalftimeText_Exit")
					break
					case 1:
					//EmitSoundOnEntity(player, "diag_ap_aiNotify_circleMoves30sec")
					break
					case 2:
					//EmitSoundOnEntity(player, "diag_ap_aiNotify_circleMoves30sec")
					break
				}
			}
		)
		string msg = ""
		switch(index)
		{
			case 0:
			msg = "剩余一半时间"
			EmitSoundOnEntity(player, "UI_InGame_HalftimeText_Enter")
			break
			case 1:
			msg = "剩余30秒"
			EmitSoundOnEntity(player, "diag_ap_aiNotify_circleMoves30sec")
			break
			case 2:
			msg = "躲藏者揭示"
			//EmitSoundOnEntity(player, "ui_ingame_transitiontokillreplay")
			break
			case 3:
			msg = "躲藏者胜利"
			//EmitSoundOnEntity(player, "diag_ap_aiNotify_winnerFound")
			break
			case 4:
			msg = "猎人胜利"
			EmitSoundOnEntity(player, "diag_ap_aiNotify_winnerFound")
			break
		}
		Hud_SetText( HudElement( "MiscTimer"), msg)
		
		wait duration
	}()
}

void function UpdateWhistleTimer(bool fromChangedResolution = false)
{
	entity player = GetLocalClientPlayer() 
	
	EndSignal(player, "PROPHUNT_ShutdownWhistleAndRoundTimer")
	int time
	
	if(fromChangedResolution)
		time = player.p.lastWhistleTimer
	else
		time = PROPHUNT_WHISTLE_TIMER
	
	string text
    while(IsValid(player) && IsAlive(player))
    {
		if(time == 0)
		{
			player.ClientCommand("EmitWhistle")
			text = "发出噪音"
			
		}else if(time == -1)
		{
			time = PROPHUNT_WHISTLE_TIMER
			text = "下一次发出噪音剩余 " + time.tostring()
		} else
		{
			text = "下一次发出噪音剩余 " + time.tostring()
		}
		
        Hud_SetText( HudElement( "WhistleTimer"), text)
        time--
		player.p.lastWhistleTimer = time
        wait 1
    }
}

void function PROPHUNT_RemoveControlsUI()
{
	RemoveAllHints()
}

void function PROPHUNT_DoScreenFlashFX(entity player, entity propAttacker)
{
	entity viewPlayer = GetLocalClientPlayer()
	
	int fxHandle = StartParticleEffectOnEntityWithPos( viewPlayer, PrecacheParticleSystem( $"P_shell_shock_FP" ), FX_PATTACH_ABSORIGIN_FOLLOW, -1, viewPlayer.EyePosition(), <0,0,0> )
	EffectSetIsWithCockpit( fxHandle, true )
	
	// int fxHandle2 = StartParticleEffectOnEntityWithPos( viewPlayer, PrecacheParticleSystem( $"P_shell_shock_FP" ), FX_PATTACH_ABSORIGIN_FOLLOW, -1, viewPlayer.EyePosition(), <0,0,0> )
	// EffectSetIsWithCockpit( fxHandle2, true )

	int smokes = StartParticleEffectOnEntityWithPos( viewPlayer, PrecacheParticleSystem( $"P_screen_smoke_bangalore_FP"), FX_PATTACH_ABSORIGIN_FOLLOW, -1, viewPlayer.EyePosition(), <0,0,0> )
	EffectSetIsWithCockpit( smokes, true )

	thread ShellShock_ScreenFXThink(player, fxHandle, smokes)
	
	if(player == propAttacker) return
	
	Obituary_Print_Localized( "敌方躲藏者 " + propAttacker.GetPlayerName() + " 使用了闪光弹!", GetChatTitleColorForPlayer( player ), BURN_COLOR )
}

void function ShellShock_ScreenFXThink( entity player, int fxHandle, int smokes) // , int fxHandle2
{
	player.EndSignal( "OnDeath" )

	OnThreadEnd(
		function() : ( fxHandle, smokes )//fxHandle2, 
		{
			if ( !EffectDoesExist( fxHandle ) )
				return

			EffectStop( fxHandle, false, true )
			
			// if ( !EffectDoesExist( fxHandle2 ) )
				// return

			// EffectStop( fxHandle2, false, true )
			
			if ( !EffectDoesExist( smokes ) )
				return

			EffectStop( smokes, false, true )
		}
	)
	if(!player.p.isAttackerProphunt)
	wait 1
	else
	wait 3
}

void function ReloadMenuRUI()
{
	RemoveAllHints(true)
	entity player = GetLocalClientPlayer()
	
	if(!player.p.isAttackerProphunt)
	{
		player.p.isAttackerProphunt = false
	
		Hud_SetEnabled(HudElement( "ScreenBlur1" ), true)
		Hud_SetVisible(HudElement( "ScreenBlur1" ), true)
		
		Hud_SetEnabled(HudElement( "ScreenBlur3" ), true)
		Hud_SetVisible(HudElement( "ScreenBlur3" ), true)
		
		Hud_SetEnabled(HudElement( "PropControlsTitle" ), true)
		Hud_SetVisible(HudElement( "PropControlsTitle" ), true)
		
		Hud_SetEnabled(HudElement( "RoundTimer" ), true)
		Hud_SetVisible(HudElement( "RoundTimer" ), true)
		
		Hud_SetEnabled(HudElement( "WhistleTimer" ), true)
		Hud_SetVisible(HudElement( "WhistleTimer" ), true)

		Hud_SetEnabled(HudElement( "ScreenBlur2" ), true)
		Hud_SetVisible(HudElement( "ScreenBlur2" ), true)
		
		Hud_SetEnabled(HudElement( "ProphuntHint0" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint0" ), true)
		
		Hud_SetEnabled(HudElement( "ProphuntHint1" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint1" ), true)
		
		Hud_SetEnabled(HudElement( "ProphuntHint2" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint2" ), true)
		
		Hud_SetEnabled(HudElement( "ProphuntHint3" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint3" ), true)

		Hud_SetEnabled(HudElement( "ProphuntHint4" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint4" ), true)
		
		Hud_SetEnabled(HudElement( "ProphuntHint5" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint5" ), true)	
		
		Hud_SetText( HudElement( "ProphuntHint0"), "%attack% 更换模型 x" + ( PROPHUNT_CHANGE_PROP_USAGE_LIMIT - player.p.PROPHUNT_ChangePropUsageLimit ).tostring() )
		
		if(player.p.PROPHUNT_AreAnglesLocked)
			Hud_SetText( HudElement( "ProphuntHint1"), "%zoom% 解锁视角")
		else
			Hud_SetText( HudElement( "ProphuntHint1"), "%zoom% 锁定视角")
		
		Hud_SetText( HudElement( "ProphuntHint2" ), "%reload% 匹配地面斜度")
		Hud_SetText( HudElement( "ProphuntHint3" ), "%offhand1% 兴奋剂")
		Hud_SetText( HudElement( "ProphuntHint4" ), "%melee% 放置诱饵 x" + ( PROPHUNT_DECOYS_USAGE_LIMIT - player.p.PROPHUNT_DecoysPropUsageLimit ).tostring() )
		Hud_SetText( HudElement( "ProphuntHint5" ), "%offhand4% 闪光弹 x" + PROPHUNT_FLASH_BANG_USAGE_LIMIT.tostring())
		
		thread UpdateWhistleTimer(true)
	} else
	{
		player.p.isAttackerProphunt = true
		
		Hud_SetEnabled(HudElement( "ScreenBlur1" ), true)
		Hud_SetVisible(HudElement( "ScreenBlur1" ), true)

		Hud_SetEnabled(HudElement( "ScreenBlur2" ), true)
		Hud_SetVisible(HudElement( "ScreenBlur2" ), true)
		
		Hud_SetEnabled(HudElement( "PropControlsTitle" ), true)
		Hud_SetVisible(HudElement( "PropControlsTitle" ), true)

		Hud_SetEnabled(HudElement( "RoundTimer" ), true)
		Hud_SetVisible(HudElement( "RoundTimer" ), true)

		Hud_SetEnabled(HudElement( "ProphuntHint0" ), true)
		Hud_SetVisible(HudElement( "ProphuntHint0" ), true)

		UIPos pos   = REPLACEHud_GetPos( HudElement( "ScreenBlur2" ) )
		UISize size = REPLACEHud_GetSize( HudElement( "ScreenBlur2" ) )
		
		var position = HudElement( "ScreenBlur2" ).GetPos()
		var screenSize = Hud.GetScreenSize()

		HudElement( "ScreenBlur2" ).SetSize( 238*screenSize[0]/1760, 65*screenSize[1]/990 )		
		HudElement( "ScreenBlur1" ).SetPos( -39, -301 )
		Signal(player, "PROPHUNT_ShutdownPropsHidingTimer")
		thread Thread_PROPHUNT_HuntersAbilityTimer(true, true)
		Hud_SetText( HudElement( "PropControlsTitle"), "猎人控制键位")
		
		thread Thread_PROPHUNT_Timer()
	}
	
	if(GetLocalClientPlayer().p.isRoundTimerEnabled)
		thread Thread_PROPHUNT_Timer()
}

void function AddInputHint( string buttonText, string hintText)
{
	UISize screenSize = GetScreenSize()
	int offset = file.inputHintRuis.len()
	
	var topo = RuiTopology_CreatePlane( <( screenSize.width * 0.20),( screenSize.height * 0.15) + offset*45, 0>, <float( screenSize.width )*1.1, 0, 0>, <0, float( screenSize.height )*1.1, 0>, false )
	var hintRui = RuiCreate( $"ui/announcement_quick_right.rpak", topo, RUI_DRAW_HUD, 0 )
	
	RuiSetGameTime( hintRui, "startTime", Time() )
	RuiSetString( hintRui, "messageText", buttonText + " " + hintText )
	RuiSetFloat( hintRui, "duration", 9999999 )
	RuiSetFloat3( hintRui, "eventColor", SrgbToLinear( <255, 0, 119> / 255.0 ) )
	
    file.inputHintRuis.append( hintRui )
}

void function PROPHUNT_AddUsageToHint( int index )
{
	entity player = GetLocalClientPlayer()
	
	switch(index)
	{
		case 0:
			player.p.PROPHUNT_ChangePropUsageLimit = player.p.PROPHUNT_ChangePropUsageLimit + 1
			ChangeInputHintString(0)
		break
		case 1:
			player.p.PROPHUNT_DecoysPropUsageLimit = player.p.PROPHUNT_DecoysPropUsageLimit + 1
			ChangeInputHintString(3)
		break
		case 2:
			player.p.PROPHUNT_FlashbangPropUsageLimit = player.p.PROPHUNT_FlashbangPropUsageLimit + 1
			ChangeInputHintString(4)
		break
		case 3:
			ChangeInputHintString(1)
		break
	}
		
}

void function ChangeInputHintString( int index )
{
	entity player = GetLocalClientPlayer()
	
	// var hintRui = file.inputHintRuis[index]
	
	string messageText
	string hintButton
	switch(index)
	{
		case 0:
			messageText = "更改物品 x" + ( PROPHUNT_CHANGE_PROP_USAGE_LIMIT - player.p.PROPHUNT_ChangePropUsageLimit ).tostring()
			hintButton = "%attack%"
			Hud_SetText( HudElement( "ProphuntHint0"), hintButton + " " + messageText)
		break
		case 3:
			messageText = "放置诱饵 x" + ( PROPHUNT_DECOYS_USAGE_LIMIT - player.p.PROPHUNT_DecoysPropUsageLimit ).tostring()
			hintButton = "%melee%"
			Hud_SetText( HudElement( "ProphuntHint4"), hintButton + " " + messageText)
		break
		case 4:
			messageText = "闪光弹 x" + ( PROPHUNT_FLASH_BANG_USAGE_LIMIT - player.p.PROPHUNT_FlashbangPropUsageLimit ).tostring()
			hintButton = "%offhand4%"
			Hud_SetText( HudElement( "ProphuntHint5"), hintButton + " " + messageText)
		break
		case 1:
			if(player.p.PROPHUNT_AreAnglesLocked)
			{
				messageText = "锁定方向"
				player.p.PROPHUNT_AreAnglesLocked = false
			}
			else
			{
				messageText = "解锁方向"
				player.p.PROPHUNT_AreAnglesLocked = true
			}
			hintButton = "%zoom%"
			Hud_SetText( HudElement( "ProphuntHint1"), hintButton + " " + messageText)
		break
		
	}
}

void function PROPHUNT_CustomHint(int index, int eHandle)
{
	if(!IsValid(GetLocalViewPlayer())) return

	switch(index)
	{
		case 0:
		QuickHint("", "方向已锁定")
		EmitSoundOnEntity(GetLocalViewPlayer(), "UI_Menu_SelectMode_Close")
		break
		case 1:
		QuickHint("", "方向已解锁", true)
		EmitSoundOnEntity(GetLocalViewPlayer(), "UI_InGame_FD_SliderExit" )
		break
		case 2:
		QuickHint("", "已达到限制!")
		EmitSoundOnEntity(GetLocalViewPlayer(), "Survival_UI_Ability_NotReady")
		break
		case 3:
		QuickHint("", "将模型的角度与地面匹配")
		EmitSoundOnEntity(GetLocalViewPlayer(), "vdu_on")
		break
		case 4:
		QuickHint("", "诱饵已放置!", true)
		EmitSoundOnEntity(GetLocalViewPlayer(), "ui_ingame_switchingsides" )	
		break
		case 5:
		QuickHint("", "猎人进场!")
		EmitSoundOnEntity(GetLocalViewPlayer(), "UI_PostGame_TitanSlideIn")
		
		GetLocalClientPlayer().p.isRoundTimerEnabled = true
		thread Thread_PROPHUNT_Timer()
		break
		case 6:
		QuickHint("", "已使用闪光弹!", true)
		EmitSoundOnEntity(GetLocalViewPlayer(), "explo_proximityemp_impact_1p" )
		break
		case 7:
		//QuickHint("", "Prop changed!")
		EmitSoundOnEntity(GetLocalViewPlayer(), "vdu_on")
		break
		case 8:
		QuickHint("", "已有足够的玩家. 正在开始.", true, 4)
		EmitSoundOnEntity(GetLocalViewPlayer(), "vdu_on")
		break
		case 9:
		QuickHint("", "正在等待其他玩家.", false, 3)
		EmitSoundOnEntity(GetLocalViewPlayer(), "vdu_on")
		break		
		case 10:
		QuickHint("", "你是躲藏者 将在5秒后传送", true, 4)
		EmitSoundOnEntity(GetLocalViewPlayer(), "vdu_on")
		break
		case 11:
		Obituary_Print_Localized( "猎人 " + EHI_GetName(eHandle) + " 改变了所有躲藏者模型", GetChatTitleColorForPlayer( GetLocalViewPlayer() ), BURN_COLOR )
		EmitSoundOnEntity(GetLocalViewPlayer(), "vdu_on")
		break
		case 12:
		QuickHint("", "猎人将在5秒后可以更改你的模型.", true, 4)
		EmitSoundOnEntity(GetLocalViewPlayer(), "vdu_on")
		break
	}
}

void function QuickHint( string buttonText, string hintText, bool blueText = false, int duration = 2)
{
	if(file.activeQuickHint != null)
	{
		RuiDestroyIfAlive( file.activeQuickHint )
		file.activeQuickHint = null
	}
	file.activeQuickHint = CreateFullscreenRui( $"ui/announcement_quick_right.rpak" )
	
	RuiSetGameTime( file.activeQuickHint, "startTime", Time() )
	RuiSetString( file.activeQuickHint, "messageText", buttonText + " " + hintText )
	RuiSetFloat( file.activeQuickHint, "duration", duration.tofloat() )
	
	if(blueText)
		RuiSetFloat3( file.activeQuickHint, "eventColor", SrgbToLinear( <48, 107, 255> / 255.0 ) )
	else
		RuiSetFloat3( file.activeQuickHint, "eventColor", SrgbToLinear( <255, 0, 119> / 255.0 ) )
}

void function RemoveAllHints(bool wasResolutionChanged = false)
{
    foreach( rui in file.inputHintRuis )
    {
        RuiDestroy( rui )
    }
    file.inputHintRuis.clear()
	Hud_SetEnabled(HudElement( "ScreenBlur1" ), false)
	Hud_SetVisible(HudElement( "ScreenBlur1" ), false)
	
	Hud_SetEnabled(HudElement( "ScreenBlur3" ), false)
	Hud_SetVisible(HudElement( "ScreenBlur3" ), false)
	
	Hud_SetEnabled(HudElement( "PropControlsTitle" ), false)
	Hud_SetVisible(HudElement( "PropControlsTitle" ), false)
	
	Hud_SetEnabled(HudElement( "RoundTimer" ), false)
	Hud_SetVisible(HudElement( "RoundTimer" ), false)
		
	Hud_SetEnabled(HudElement( "WhistleTimer" ), false)
	Hud_SetVisible(HudElement( "WhistleTimer" ), false)
		
	Hud_SetEnabled(HudElement( "ScreenBlur2" ), false)
	Hud_SetVisible(HudElement( "ScreenBlur2" ), false)
		
	Hud_SetEnabled(HudElement( "ProphuntHint0" ), false)
	Hud_SetVisible(HudElement( "ProphuntHint0" ), false)
		
	Hud_SetEnabled(HudElement( "ProphuntHint1" ), false)
	Hud_SetVisible(HudElement( "ProphuntHint1" ), false)
		
	Hud_SetEnabled(HudElement( "ProphuntHint2" ), false)
	Hud_SetVisible(HudElement( "ProphuntHint2" ), false)
	
	Hud_SetEnabled(HudElement( "ProphuntHint3" ), false)
	Hud_SetVisible(HudElement( "ProphuntHint3" ), false)

	Hud_SetEnabled(HudElement( "ProphuntHint4" ), false)
	Hud_SetVisible(HudElement( "ProphuntHint4" ), false)
	
	Hud_SetEnabled(HudElement( "ProphuntHint5" ), false)
	Hud_SetVisible(HudElement( "ProphuntHint5" ), false)	
	entity player = GetLocalClientPlayer()
	Signal(player, "PROPHUNT_ShutdownWhistleAndRoundTimer")
	
	
	if(!GetLocalClientPlayer().p.isRoundTimerEnabled)
		Hud_SetText( HudElement( "RoundTimer"), "正在等待猎人")
	else
		Hud_SetText( HudElement( "RoundTimer"), "回合即将结束 00:00")
	
	SetConVarFloat("c_thirdpersonshoulderaimdist", 100)
	SetConVarFloat("c_thirdpersonshoulderheight", 30)
	SetConVarFloat("c_thirdpersonshoulderoffset", 20)
	
	if(!wasResolutionChanged)
	{
		player.p.PROPHUNT_AreAnglesLocked = false
		player.p.PROPHUNT_ChangePropUsageLimit = 0
		player.p.PROPHUNT_DecoysPropUsageLimit = 0
		player.p.PROPHUNT_FlashbangPropUsageLimit = 0
	}
}

void function ResetAbilitiesCounterOnClient()
{
	if(!IsValid(GetLocalClientPlayer())) return
	
	GetLocalClientPlayer().p.PROPHUNT_AreAnglesLocked = false
	GetLocalClientPlayer().p.PROPHUNT_ChangePropUsageLimit = 0
	GetLocalClientPlayer().p.PROPHUNT_DecoysPropUsageLimit = 0
	GetLocalClientPlayer().p.PROPHUNT_FlashbangPropUsageLimit = 0
}
void function CreateAndMoveCameraToWinnerProp(entity winnerProp)
{
	thread function() : (winnerProp)
	{
		entity localplayer = GetLocalClientPlayer()
		
		if(!IsValid(winnerProp) || localplayer != GetLocalViewPlayer() ) return 
		
		winnerpropcam.m = CreateClientsideScriptMover( $"mdl/dev/empty_model.rmdl", localplayer.EyePosition(), localplayer.CameraAngles() )
		winnerpropcam.e = CreateClientSidePointCamera( localplayer.GetOrigin(), localplayer.CameraAngles(), 100 )
		winnerpropcam.e.SetParent( winnerpropcam.m, "", false )
		localplayer.SetMenuCameraEntityWithAudio( winnerpropcam.e )
		winnerpropcam.e.SetTargetFOV( 100, true, EASING_CUBIC_INOUT, 0.50 )

		//last movement
		vector finalorg = winnerProp.GetOrigin() + AnglesToForward( winnerProp.EyeAngles() ) * 130
		finalorg.z+= 100

		vector finalang = VectorToAngles( winnerProp.GetWorldSpaceCenter() - finalorg )

		winnerpropcam.m.NonPhysicsMoveTo( finalorg, 2, 0, 0.3 )
		winnerpropcam.m.NonPhysicsRotateTo( finalang, 2, 0, 0.3 )
		
		wait 1
		if(IsValid(localplayer))
			EmitSoundOnEntity(localplayer, "ui_ingame_transitiontokillreplay")
	}()
}

array<entity> function GetWinnerPropCameraEntities()
{
	array<entity> cameras
	cameras.append(winnerpropcam.e)
	cameras.append(winnerpropcam.m)
	
	return cameras
}

void function ClientAskedForTeam(int index)
{
	entity player = GetLocalClientPlayer()
	
	switch(index)
	{
		case 0:
		player.ClientCommand("AskForTeam 0")
		break
		
		case 1:
		player.ClientCommand("AskForTeam 1")
		break
		
		default:
		break
	}	
}

void function PROPHUNT_Disable_MILITIAButton()
{
	entity player = GetLocalClientPlayer()
	
	if(!IsValid(player)) return
	
	RunUIScript("Disable_MILITIAButton")
	
}

void function PROPHUNT_Disable_IMCButton()
{
	entity player = GetLocalClientPlayer()
	
	if(!IsValid(player)) return
	
	RunUIScript("Disable_IMCButton")
}

void function PROPHUNT_UpdateThirdPersonCameraPosition(float height)
{
	entity player = GetLocalClientPlayer()
	
	SetConVarFloat("c_thirdpersonshoulderaimdist", 100+min(80, height*1))
	SetConVarFloat("c_thirdpersonshoulderheight", 10+min(80, height*0.5))
	SetConVarFloat("c_thirdpersonshoulderoffset", 0)
}