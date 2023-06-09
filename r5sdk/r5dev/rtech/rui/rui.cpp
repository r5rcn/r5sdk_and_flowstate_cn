//=============================================================================//
//
// Purpose: rUI Utilities
//
//=============================================================================//

#include "core/stdafx.h"

#ifndef DEDICATED

#include "rui.h"
#include "tier1/cvar.h"

//-----------------------------------------------------------------------------
// Purpose: draw RUI frame
//-----------------------------------------------------------------------------
bool __fastcall Rui_Draw(__int64* a1, __m128* a2, const __m128i* a3, __int64 a4, __m128* a5)
{
	if (!rui_drawEnable->GetBool())
		return false;

	return v_Rui_Draw(a1, a2, a3, a4, a5);
}

void V_Rui::Attach() const
{
	DetourAttach(&v_Rui_Draw, &Rui_Draw);
}

void V_Rui::Detach() const
{
	DetourDetach(&v_Rui_Draw, &Rui_Draw);
}

#endif // !DEDICATED