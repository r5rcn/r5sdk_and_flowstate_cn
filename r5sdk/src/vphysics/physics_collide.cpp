//===== Copyright (c) 1996-2005, Valve Corporation, All rights reserved. ======//
//
// Purpose: 
//
// $NoKeywords: $
//=============================================================================//
#include "core/stdafx.h"
#include "mathlib/vector.h"
#include "mathlib/mathlib.h"
#include "physics_collide.h"

CPhysicsCollision* g_pPhysicsCollision = nullptr;

IPhysicsCollision* PhysicsCollision()
{
	return g_pPhysicsCollision;
}

//-----------------------------------------------------------------------------
