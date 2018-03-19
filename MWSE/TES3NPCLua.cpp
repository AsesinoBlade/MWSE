#include "TES3NPCLua.h"

#include "LuaManager.h"
#include "LuaUtil.h"

#include "TES3AIConfig.h"
#include "TES3Class.h"
#include "TES3Faction.h"
#include "TES3Inventory.h"
#include "TES3Item.h"
#include "TES3NPC.h"
#include "TES3Race.h"
#include "TES3Script.h"

namespace mwse {
	namespace lua {
		void bindTES3NPC() {
			sol::state& state = LuaManager::getInstance().getState();

			state.new_usertype<TES3::NPC::Attributes>("TES3NPCAttributes",
				// Disable construction of this type.
				"new", sol::no_constructor,

				//
				// Properties.
				//

				"strength", &TES3::NPC::Attributes::strength,
				"intelligence", &TES3::NPC::Attributes::intelligence,
				"willpower", &TES3::NPC::Attributes::willpower,
				"agility", &TES3::NPC::Attributes::agility,
				"speed", &TES3::NPC::Attributes::speed,
				"endurance", &TES3::NPC::Attributes::endurance,
				"personality", &TES3::NPC::Attributes::personality,
				"luck", &TES3::NPC::Attributes::luck

				);

			state.new_usertype<TES3::NPC::Skills>("TES3NPCSkills",
				// Disable construction of this type.
				"new", sol::no_constructor,

				//
				// Properties.
				//

				"block", &TES3::NPC::Skills::block,
				"armorer", &TES3::NPC::Skills::armorer,
				"mediumArmor", &TES3::NPC::Skills::mediumArmor,
				"heavyArmor", &TES3::NPC::Skills::heavyArmor,
				"bluntWeapon", &TES3::NPC::Skills::bluntWeapon,
				"longBlade", &TES3::NPC::Skills::longBlade,
				"axe", &TES3::NPC::Skills::axe,
				"spear", &TES3::NPC::Skills::spear,
				"athletics", &TES3::NPC::Skills::athletics,
				"enchant", &TES3::NPC::Skills::enchant,
				"destruction", &TES3::NPC::Skills::destruction,
				"alteration", &TES3::NPC::Skills::alteration,
				"illusion", &TES3::NPC::Skills::illusion,
				"conjuration", &TES3::NPC::Skills::conjuration,
				"mysticism", &TES3::NPC::Skills::mysticism,
				"restoration", &TES3::NPC::Skills::restoration,
				"alchemy", &TES3::NPC::Skills::alchemy,
				"unarmored", &TES3::NPC::Skills::unarmored,
				"security", &TES3::NPC::Skills::security,
				"sneak", &TES3::NPC::Skills::sneak,
				"acrobatics", &TES3::NPC::Skills::acrobatics,
				"lightArmor", &TES3::NPC::Skills::lightArmor,
				"shortBlade", &TES3::NPC::Skills::shortBlade,
				"marksman", &TES3::NPC::Skills::marksman,
				"mercantile", &TES3::NPC::Skills::mercantile,
				"speechcraft", &TES3::NPC::Skills::speechcraft,
				"handToHand", &TES3::NPC::Skills::handToHand

				);

			state.new_usertype<TES3::NPC>("TES3NPC",
				// Disable construction of this type.
				"new", sol::no_constructor,

				//
				// Properties.
				//

				"objectType", &TES3::NPC::objectType,

				"id", sol::readonly_property(&TES3::NPC::getObjectID),
				"name", sol::property(&TES3::NPC::getName, &TES3::NPC::setName),

				"model", sol::readonly_property(&TES3::NPC::getModelPath),

				"flags", &TES3::NPC::actorFlags,
				"cloneCount", &TES3::NPC::cloneCount,

				"level", sol::readonly_property(&TES3::NPC::getLevel),
				"health", &TES3::NPC::health,
				"magicka", &TES3::NPC::magicka,
				"fatigue", &TES3::NPC::fatigue,
				"attributes", sol::readonly_property(&TES3::NPC::getAttributes),
				"skills", sol::readonly_property(&TES3::NPC::getSkills),
				"reputation", &TES3::NPC::reputation,
				"disposition", &TES3::NPC::disposition,

				"factionIndex", &TES3::NPC::factionIndex,
				"factionRank", &TES3::NPC::factionRank,

				"isEssential", sol::readonly_property(&TES3::NPC::isEssential),
				"isRespawn", sol::readonly_property(&TES3::NPC::isRespawn),
				"isAttacked", sol::readonly_property(&TES3::NPC::getIsAttacked),
				"isInstance", sol::var(false),

				"inventory", sol::readonly_property(&TES3::NPC::getInventory),
				"equipment", sol::readonly_property(&TES3::NPC::getEquipment),
				"barterGold", sol::property(&TES3::NPC::getBaseBarterGold, &TES3::NPC::setBaseBarterGold),

				"race", sol::readonly_property(&TES3::NPC::getRace),
				"class", sol::readonly_property(&TES3::NPC::getClass),
				"faction", sol::readonly_property(&TES3::NPC::getFaction),

				"aiConfig", sol::readonly_property(&TES3::NPC::getAIConfig),

				"script", sol::readonly_property(&TES3::NPC::getScript)

				);

			state.new_usertype<TES3::NPCInstance>("TES3NPCInstance",
				// Disable construction of this type.
				"new", sol::no_constructor,

				//
				// Properties.
				//

				"objectType", &TES3::NPCInstance::objectType,

				"id", sol::readonly_property(&TES3::NPCInstance::getObjectID),
				"name", sol::property(&TES3::NPCInstance::getName, &TES3::NPCInstance::setName),

				"model", sol::readonly_property(&TES3::NPCInstance::getModelPath),

				"flags", &TES3::NPCInstance::actorFlags,
				"cloneCount", &TES3::NPCInstance::cloneCount,

				"level", sol::readonly_property(&TES3::NPCInstance::getLevel),
				"health", sol::readonly_property(&TES3::NPCInstance::getDurability),
				"magicka", sol::readonly_property(&TES3::NPCInstance::getMagicka),
				"fatigue", sol::readonly_property(&TES3::NPCInstance::getFatigue),
				"attributes", sol::readonly_property(&TES3::NPCInstance::getAttributes),
				"skills", sol::readonly_property(&TES3::NPCInstance::getSkills),
				"reputation", sol::property(&TES3::NPCInstance::getReputation, &TES3::NPCInstance::setFactionIndex),
				"disposition", &TES3::NPCInstance::disposition,

				"factionIndex", sol::property(&TES3::NPCInstance::getFactionIndex, &TES3::NPCInstance::setFactionIndex),
				"factionRank", sol::property(&TES3::NPCInstance::getFactionRank, &TES3::NPCInstance::setFactionRank),

				"isEssential", sol::readonly_property(&TES3::NPCInstance::isEssential),
				"isRespawn", sol::readonly_property(&TES3::NPCInstance::isRespawn),
				"isAttacked", sol::readonly_property(&TES3::NPCInstance::getIsAttacked),
				"isInstance", sol::var(true),

				"inventory", sol::readonly_property(&TES3::NPCInstance::getInventory),
				"equipment", sol::readonly_property(&TES3::NPCInstance::getEquipment),
				"barterGold", sol::property(&TES3::NPCInstance::getBaseBarterGold, &TES3::NPCInstance::setBaseBarterGold),

				"race", sol::readonly_property(&TES3::NPCInstance::getRace),
				"class", sol::readonly_property(&TES3::NPCInstance::getClass),
				"faction", sol::readonly_property(&TES3::NPCInstance::getFaction),

				"aiConfig", sol::readonly_property(&TES3::NPCInstance::getAIConfig),

				"script", sol::readonly_property(&TES3::NPCInstance::getScript)

				);
		}
	}
}
