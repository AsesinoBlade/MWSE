--- @meta

--- The uiObjectTooltip event triggers when a new tooltip is displayed for all in-world objects and items, and inventory tiles in all dialogues. The tooltip will be already be built. Tooltips for inventory tiles are built on mouseover, while tooltips for in-world objects are rebuilt every frame.
--- @class uiObjectTooltipEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field count number *Read-only*. The number of items in the stack.
--- @field itemData tes3itemData *Read-only*. The item data of object, if any.
--- @field object tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon *Read-only*. The object being examined.
--- @field reference tes3reference *Read-only*. The reference being examined. Only valid for in-world objects. For inventory tiles it will always be nil.
--- @field tooltip tes3uiElement *Read-only*. The newly created tooltip element. Due to timeouts and target changes, it may be destroyed at any time.
