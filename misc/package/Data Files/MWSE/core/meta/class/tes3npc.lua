---@meta

---An NPC object that has not been cloned. Typically represents the raw information edited in the construction set.
---@class tes3npc : tes3actor, tes3physicalObject, tes3object, tes3baseObject
---@field aiConfig tes3aiConfig A substructure off of actors that contains information on the current AI configuration.
---@field attributes table A table of eight numbers, representing the base values for the actor's attributes.
---@field autoCalc boolean Direct access to the actor autocalc flag.
---@field barterGold number The actor's max health.
---@field baseDisposition number The actor's base disposition.
---@field class tes3class The class that the NPC uses.
---@field faction tes3faction The class that the NPC is joined to.
---@field factionIndex number No description yet available.
---@field factionRank number The NPC's rank in their faction.
---@field fatigue number The actor's max fatigue.
---@field female boolean Direct access to the actor female flag.
---@field hair tes3bodyPart The hair body part that the NPC will use.
---@field head tes3bodyPart The head body part that the NPC will use.
---@field health number The actor's max health.
---@field isAttacked boolean If true, the actor's attacked flag is set.
---@field isEssential boolean If true, the actor's essential flag is set.
---@field isInstance boolean Always returns false.
---@field isRespawn boolean If true, the actor's respawn flag is set.
---@field level number The actor's level.
---@field magicka number The actor's max magicka.
---@field mesh string The path to the object's mesh.
---@field name string The player-facing name for the object.
---@field race tes3race The race that the NPC uses.
---@field reputation number The actor's base reputation.
---@field script tes3script The script that runs on the object.
---@field skills table A table of twenty seven numbers, representing the base values for the NPC's skills.
---@field spells tes3spellList A list of spells that the actor has access to. It is a tes3spellList, which is a list wrapper with helper functions. The actual list is accessed with .iterator. e.g. for _, spell in pairs(npc.spells.iterator) do print(spell.name) end
tes3npc = {}

