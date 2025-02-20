#pragma once

#include "TES3Defines.h"

#include "TES3Dialogue.h"
#include "TES3Object.h"

namespace TES3 {
	enum class DialogueInfoFilterType {
		Actor,
		Race,
		Class,
		NPCFaction,
		Cell,
		PCFaction,
		ResultScript,
		Conditional0,
		Conditional1,
		Conditional2,
		Conditional3,
		Conditional4,
		Conditional5
	};

	namespace ObjectFlag {
		typedef unsigned int value_type;

		enum DialogueInfoFlag : value_type {
			QuestName = 0x40,
			QuestFinished = 0x100,
			QuestRestart = 0x200,
		};

		enum DialogueInfoFlagBit {
			QuestNameBit = 6,
			QuestFinishedBit = 8,
			QuestRestartBit = 9,
		};
	}

	struct DialogueInfoFilterNode {
		DialogueInfoFilterType tag;
		DialogueInfoFilterNode* next;
		union {
			BaseObject* object;
			Actor* actor;
			Race* npcRace;
			Class* npcClass;
			Faction* npcFaction;
			Cell* cell;
			Faction* pcFaction;
			const char* scriptText;
			DialogueConditional* conditional;
		};
	};

	struct DialogueInfo : BaseObject {
		struct LoadLinkNode {
			char * name;
			char * previous;
			char * next;
		};
		LoadLinkNode * loadLinkNode; // 0x10
		DialogueType type; // 0x14
		union {
			int disposition; // 0x18
			int journalIndex; // 0x18
		};
		signed char npcRank; // 0x1C
		signed char npcSex; // 0x1D
		signed char pcRank; // 0x1E
		DialogueInfoFilterNode* conditions; // 0x20
		long espFileOffset; // 0x24
		Actor* firstHeardFrom; // 0x28

		//
		// Other related this-call functions.
		//

		const char* getText();

		bool loadId();
		void unloadId();

		bool filter(Object * actor, Reference * reference, int source, Dialogue * dialogue);
		void runScript(Reference * reference);

		//
		// Custom functions.
		//

		sol::optional<std::string> getID();

		sol::optional<int> getJournalIndex_lua() const;
		void setJournalIndex_lua(int value);

		BaseObject* getFilterObject(TES3::DialogueInfoFilterType type);

		Actor* getFilterActor();
		Race* getFilterNPCRace();
		Class* getFilterNPCClass();
		Faction* getFilterNPCFaction();
		Cell* getFilterNPCCell();
		Faction* getFilterPCFaction();

		sol::optional<bool> isQuestName() const;
		sol::optional<bool> isQuestFinished() const;
		sol::optional<bool> isQuestRestart() const;

		// Loads the string of numbers from disk and returns them.
		std::string getLongIDFromFile();

		std::string toJson();

	};
	static_assert(sizeof(DialogueInfo) == 0x2C, "TES3::DialogueInfo failed size validation");
}

MWSE_SOL_CUSTOMIZED_PUSHER_DECLARE_TES3(TES3::DialogueInfo)
