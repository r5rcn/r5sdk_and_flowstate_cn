﻿//===== Copyright � 1996-2005, Valve Corporation, All rights reserved. ======//
//
// Purpose: 
//
// $NoKeywords: $
//===========================================================================//

#ifndef VCOLLIDE_H
#define VCOLLIDE_H
#ifdef _WIN32
#pragma once
#endif

class CPhysCollide;

struct vcollide_t
{
	unsigned short solidCount; // TODO: count num bits
	unsigned short descSize;
	// VPhysicsSolids
	CPhysCollide** solids;
	char* pKeyValues;
	void* pUserData;
};

#endif // VCOLLIDE_H
