#include "LuaWeatherCycledEvent.h"

namespace mwse {
	namespace lua {
		namespace event {
			WeatherCycledEvent::WeatherCycledEvent() :
				GenericEvent("weatherCycled")
			{

			}

			bool WeatherCycledEvent::m_EventEnabled = false;
		}
	}
}
