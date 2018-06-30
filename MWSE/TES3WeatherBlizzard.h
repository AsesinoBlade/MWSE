#pragma once

#include "TES3Weather.h"

namespace TES3 {
	struct WeatherBlizzard : Weather {
		float stormThreshold; // 0x318
	};
	static_assert(sizeof(WeatherBlizzard) == 0x31C, "TES3::WeatherBlizzard failed size validation");
}
