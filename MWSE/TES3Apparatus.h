#pragma once

#include "TES3Defines.h"

#include "TES3Item.h"
#include "TES3IteratedList.h"

namespace TES3 {
	enum class ApparatusType {
		MortarPestle,
		Alembic,
		Calcinator,
		Retort
	};

	struct Apparatus : Item {
		IteratedList<TES3::BaseObject*> stolenList; // 0x30
		char model[32]; // 0x44
		char name[32]; // 0x64
		Script * script;
		char texture[32]; // 0x84
		ApparatusType type;
		float quality; // 0xAC
		float weight; // 0xB0
		long value; // 0xB4

		//
		// Custom functions.
		//

		// Isn't defined by the vtable, have to overwrite here.
		void setName(const char* n);

		void setIconPath(const char* path);

	};
	static_assert(sizeof(Apparatus) == 0xB8, "TES3::Apparatus  failed size validation");
}

MWSE_SOL_CUSTOMIZED_PUSHER_DECLARE_TES3(TES3::Apparatus)
