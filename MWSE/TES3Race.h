#pragma once

#include "TES3Defines.h"

#include "TES3Object.h"

namespace TES3 {
	struct Race : BaseObject {
		struct SkillBonus {
			long skill;
			unsigned long bonus;
		};
		struct BaseAttribute {
			unsigned long male;
			unsigned long female;
		};
		struct HeightWeight {
			float male;
			float female;
		};
		struct BodyParts {
			BodyPart* head;
			BodyPart* hair;
			BodyPart* neck;
			BodyPart* chest;
			BodyPart* groin;
			BodyPart* hands;
			BodyPart* wrist;
			BodyPart* forearm;
			BodyPart* upperArm;
			BodyPart* foot;
			BodyPart* ankle;
			BodyPart* knee;
			BodyPart* upperLeg;
			BodyPart* clavicle;
			BodyPart* tail;
			BodyPart* vampireHead;
			BodyPart* vampireHair;
			BodyPart* vampireNeck;
			BodyPart* vampireChest;
			BodyPart* vampireGroin;
			BodyPart* vampireHands;
			BodyPart* vampireWrist;
			BodyPart* vampireForearm;
			BodyPart* vampireUpperArm;
			BodyPart* vampireFoot;
			BodyPart* vampireAnkle;
			BodyPart* vampireKnee;
			BodyPart* vampireUpperLeg;
			BodyPart* vampireClavicle;
			BodyPart* vampireTail;
		};
		enum class PartIndex : int {
			Head,
			Hair,
			Neck,
			Chest,
			Groin,
			Hands,
			Wrist,
			Forearm,
			UpperArm,
			Foot,
			Ankle,
			Knee,
			UpperLeg,
			Clavicle,
			Tail,
			COUNT,
		};
		char id[32]; // 0x10
		char name[32]; // 0x30
		SkillBonus skillBonuses[7]; // 0x50
		BaseAttribute baseAttributes[8]; // 0x88 // Index corresponds to Attributes enum.
		HeightWeight height; // 0xC8
		HeightWeight weight; // 0xD0
		unsigned int flags; // 0xD8 // 1 = playable, 2 = beast
		int unknown_0xDC; // Pointer? Abilities list?
		char * description; // 0xE0
		unsigned int descriptionFileOffset; // 0xE4
		union {
			// Split struct out for legacy lua access.
			struct {
				BodyParts maleBody; // 0xE8
				BodyParts femaleBody; // 0x0160
			};
			BodyPart* bodyParts[int(PartIndex::COUNT) * 2 * 2]; // 0xE8 // Body parts for both sexes and each vampirism state.
		};

		//
		// Virtual table overrides.
		//

		char * getObjectID();

		//
		// Other this-call functions.
		//

		// Falls back to non-vampire if no vampiric body part is found, then to male if no female bodypart is found.
		BodyPart* getBodyPart(bool isFemale, bool isVampire, PartIndex index);

		char* loadDescription();
		void freeDescription();

	};
	static_assert(sizeof(Race) == 0x1D8, "TES3::Race failed size validation");
}
