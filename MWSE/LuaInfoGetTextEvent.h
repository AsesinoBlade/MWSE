#pragma once

#include "LuaObjectFilteredEvent.h"
#include "LuaDisableableEvent.h"

namespace mwse {
	namespace lua {
		namespace event {
			class InfoGetTextEvent : public ObjectFilteredEvent, public DisableableEvent<InfoGetTextEvent> {
			public:
				InfoGetTextEvent(TES3::DialogueInfo * info);
				sol::table createEventTable();

			protected:
				TES3::DialogueInfo* m_DialogueInfo;
			};
		}
	}
}
