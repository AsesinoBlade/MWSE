#include "TES3MobileNPCLua.h"

#include "TES3MobileActorLua.h"

#include "LuaManager.h"

#include "TES3Actor.h"
#include "TES3Alchemy.h"
#include "TES3Enchantment.h"
#include "TES3MobileNPC.h"
#include "TES3NPC.h"
#include "TES3Skill.h"
#include "TES3Spell.h"

namespace mwse {
	namespace lua {
		void bindTES3MobileNPC() {
			// Get our lua state.
			auto stateHandle = LuaManager::getInstance().getThreadSafeStateHandle();
			sol::state& state = stateHandle.state;

			// Start our usertype.
			auto usertypeDefinition = state.new_usertype<TES3::MobileNPC>("tes3mobileNPC");
			usertypeDefinition["new"] = sol::no_constructor;

			// Define inheritance structures. These must be defined in order from top to bottom. The complete chain must be defined.
			usertypeDefinition[sol::base_classes] = sol::bases<TES3::MobileActor, TES3::MobileObject>();

			// All binding is in the NPC function, so that mobile player doesn't have extra lookup times.
			setUserdataForTES3MobileNPC(usertypeDefinition);
		}
	}
}
