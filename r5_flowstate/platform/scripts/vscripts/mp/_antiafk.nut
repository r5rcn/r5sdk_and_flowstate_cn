global function Flowstate_InitAFKThreadForPlayer

enum eAntiAfkPlayerState
{
	ACTIVE
	SUSPICIOUS
	AFK
}

void function Flowstate_InitAFKThreadForPlayer(entity player)
{
	if ( !IsValid(player) || IsAdmin(player) )
		return

	AfkThread_AddPlayerCallbacks( player )
	AfkThread_PlayerMoved( player )
	
	thread CheckAfkKickThread(player)
}

int function GetAfkState( entity player )
{
    float localgrace = GetCurrentPlaylistVarFloat( "Flowstate_antiafk_grace", 120 )
    float warn = GetCurrentPlaylistVarFloat( "Flowstate_antiafk_warn", 15.0 )

	float lastmove = player.p.lastmoved
	if ( Time() > lastmove + ( localgrace - warn ) )
	{
		if ( Time() > lastmove + localgrace ){
			return eAntiAfkPlayerState.AFK
		}

		return eAntiAfkPlayerState.SUSPICIOUS
	}

    return eAntiAfkPlayerState.ACTIVE
}

void function AfkWarning( entity player )
{
    Message( player, "挂机警告", "\n 你已进入挂机状态, 如果你在接下来 " + GetCurrentPlaylistVarFloat( "Flowstate_antiafk_warn", 15.0 ) + " 秒内不移动 将会被服务器踢出" )
}

void function CheckAfkKickThread(entity player)
{
	printt("Flowstate - AFK thread initialized for " + player.GetPlayerName() )
	
	while( true )
	{
		wait GetCurrentPlaylistVarFloat( "Flowstate_antiafk_interval", 10.0 )
		
		if( !IsValid(player) )
			break
		
        if ( GetGameState() != eGameState.Playing )
			continue
		
		if ( !IsAlive(player) )
			continue
		
		if ( player.p.isSpectating )
			continue
		
		switch ( GetAfkState( player ) )
		{
			case eAntiAfkPlayerState.SUSPICIOUS:
				AfkWarning( player )
				break

			case eAntiAfkPlayerState.AFK:
				KickPlayerById( player.GetPlatformUID(), "你挂机了太长时间." )
				break
		}
    }
}

void function AfkThread_PlayerMoved( entity player )
{
    player.p.lastmoved = Time()
}

void function AfkThread_AddPlayerCallbacks( entity player )
{
	AddButtonPressedPlayerInputCallback( player, IN_ATTACK, AfkThread_PlayerMoved )
	AddButtonPressedPlayerInputCallback( player, IN_JUMP, AfkThread_PlayerMoved )
	AddButtonPressedPlayerInputCallback( player, IN_FORWARD, AfkThread_PlayerMoved )
	AddButtonPressedPlayerInputCallback( player, IN_BACK, AfkThread_PlayerMoved )
	AddButtonPressedPlayerInputCallback( player, IN_LEFT, AfkThread_PlayerMoved )
	AddButtonPressedPlayerInputCallback( player, IN_RIGHT, AfkThread_PlayerMoved )
	AddButtonPressedPlayerInputCallback( player, IN_USE, AfkThread_PlayerMoved )
	AddButtonPressedPlayerInputCallback( player, IN_MOVELEFT, AfkThread_PlayerMoved )
	AddButtonPressedPlayerInputCallback( player, IN_MOVERIGHT, AfkThread_PlayerMoved )
}