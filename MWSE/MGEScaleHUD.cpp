/************************************************************************

	MGEScaleHUD.cpp - Copyright (c) 2008 The MWSE Project
	https://github.com/MWSE/MWSE/

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

**************************************************************************/

#include "VMExecuteInterface.h"
#include "Stack.h"
#include "InstructionInterface.h"
#include "MemoryUtil.h"

#include "userhud.h"

using namespace mwse;

namespace mwse
{
	class MGEScaleHUD : mwse::InstructionInterface_t
	{
	public:
		MGEScaleHUD();
		virtual float execute(VMExecuteInterface& virtualMachine);
		virtual void loadParameters(VMExecuteInterface& virtualMachine);
	};

	static MGEScaleHUD MGEScaleHUDInstance;

	MGEScaleHUD::MGEScaleHUD() : mwse::InstructionInterface_t(OpCode::MGEScaleHUD) {}

	void MGEScaleHUD::loadParameters(mwse::VMExecuteInterface& virtualMachine) {}


	float MGEScaleHUD::execute(mwse::VMExecuteInterface& virtualMachine)
	{
		mwseString& hudId = virtualMachine.getString(Stack::getInstance().popLong());
		float x = Stack::getInstance().popFloat();
		float y = Stack::getInstance().popFloat();

		if (hudId.empty()) {
			return 0.0f;
		}

		MGEhud::hud_id id = MGEhud::resolveName(hudId.c_str());
		if (id != MGEhud::invalid_hud_id) {
			MGEhud::setScale(id, x, y);
		}

		return 0.0f;
	}
}