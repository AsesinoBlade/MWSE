#include "LuaSpellMagickaUseEvent.h"

#include "LuaManager.h"
#include "LuaUtil.h"

#include "TES3MagicSourceInstance.h"
#include "TES3MobileActor.h"
#include "TES3Reference.h"
#include "TES3Spell.h"

namespace mwse {
	namespace lua {
		namespace event {
			SpellMagickaUseEvent::SpellMagickaUseEvent(TES3::MagicSourceInstance* source) :
				GenericEvent("spellMagickaUse"),
				m_Source(source)
			{
			}

			sol::table SpellMagickaUseEvent::createEventTable() {
				auto stateHandle = LuaManager::getInstance().getThreadSafeStateHandle();
				sol::state& state = stateHandle.state;
				sol::table eventData = state.create_table();

				eventData["caster"] = m_Source->caster;
				eventData["spell"] = m_Source->sourceCombo.source.asSpell;
				eventData["cost"] = m_Source->sourceCombo.source.asSpell->magickaCost;
				eventData["instance"] = m_Source;

				return eventData;
			}

			sol::object SpellMagickaUseEvent::getEventOptions() {
				auto stateHandle = LuaManager::getInstance().getThreadSafeStateHandle();
				sol::state& state = stateHandle.state;
				sol::table options = state.create_table();

				options["filter"] = m_Source->caster;

				return options;
			}

			bool SpellMagickaUseEvent::m_EventEnabled = false;
		}
	}
}
