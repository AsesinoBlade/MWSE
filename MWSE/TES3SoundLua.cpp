#include "TES3SoundLua.h"

#include "LuaUnifiedHeader.h"
#include "LuaManager.h"
#include "LuaUtil.h"

namespace mwse {
	namespace lua {
		void bindTES3Sound() {
			sol::state& state = LuaManager::getInstance().getState();

			state.new_usertype<TES3::Sound>("TES3Sound",
				// Disable construction of this type.
				"new", sol::no_constructor,

				sol::base_classes, sol::bases<TES3::BaseObject>(),

				sol::meta_function::to_string, &TES3::Sound::getObjectID,

				//
				// Properties.
				//

				"id", sol::readonly_property([](TES3::Sound& self) { return self.id; }),
				"filename", sol::readonly_property([](TES3::Sound& self) { return self.filename; }),

				//
				// Functions
				//

				"play", [](TES3::Sound& self, sol::optional<sol::table> params)
			{
				TES3::Reference* reference = getOptionalParamReference(params, "reference");
				unsigned char volume = getOptionalParam<double>(params, "volume", 1.0) * 255;
				float pitch = getOptionalParam<double>(params, "pitch", 1.0);
				int flag = getOptionalParam<double>(params, "flag", 0.0);
				return self.play(reference, volume, pitch, flag);
			}

				);

			state.new_usertype<TES3::SoundGenerator>("TES3SoundGenerator",
				// Disable construction of this type.
				"new", sol::no_constructor,

				sol::base_classes, sol::bases<TES3::BaseObject>(),

				//
				// Properties.
				//

				"id", sol::readonly_property([](TES3::SoundGenerator& self) { return self.name; }),
				"sound", &TES3::SoundGenerator::sound,
				"type", &TES3::SoundGenerator::soundType

				);
		}
	}
}
