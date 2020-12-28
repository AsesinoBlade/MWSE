/************************************************************************

	MGEGetEyeVec.cpp - Copyright (c) 2008 The MWSE Project
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

#include "MGEDistantLand.h"

using namespace mwse;
using namespace mge;

namespace mwse
{
	class MGEGetEyeVec : mwse::InstructionInterface_t
	{
	public:
		MGEGetEyeVec();
		virtual float execute(VMExecuteInterface& virtualMachine);
		virtual void loadParameters(VMExecuteInterface& virtualMachine);
	};

	static MGEGetEyeVec MGEGetEyeVecInstance;

	MGEGetEyeVec::MGEGetEyeVec() : mwse::InstructionInterface_t(OpCode::MGEGetEyeVec) {}

	void MGEGetEyeVec::loadParameters(mwse::VMExecuteInterface& virtualMachine) {}


	float MGEGetEyeVec::execute(mwse::VMExecuteInterface& virtualMachine)
	{
		auto& stack = Stack::getInstance();
		stack.pushFloat(DistantLand::eyeVec.z);
		stack.pushFloat(DistantLand::eyeVec.y);
		stack.pushFloat(DistantLand::eyeVec.x);
		return 0.0f;
	}
}