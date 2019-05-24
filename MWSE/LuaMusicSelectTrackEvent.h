#pragma once

#include "LuaGenericEvent.h"
#include "LuaDisableableEvent.h"

namespace mwse {
	namespace lua {
		namespace event {
			class MusicSelectTrackEvent : public GenericEvent, public DisableableEvent<MusicSelectTrackEvent> {
			public:
				MusicSelectTrackEvent(int situation);
				sol::table createEventTable();

			protected:
				int m_Situation;
			};
		}
	}
}
