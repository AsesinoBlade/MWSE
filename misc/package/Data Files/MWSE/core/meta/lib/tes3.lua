--- @meta

--- The tes3 library provides the majority of the functions for interacting with the game system.
--- @class tes3lib
--- @field animationState any Constant values relating to animation state.
--- @field dataHandler tes3dataHandler One of the core game objects.
--- @field game tes3game One of the core game objects.
--- @field installDirectory string The currently executed root Morrowind installation path.
--- @field magicSchoolSkill number This table is used to convert numerical magic school IDs to their respective skill IDs. These constants will return their respective `tes3.skill` constants.
--- @field mobilePlayer tes3mobilePlayer The player's mobile actor.
--- @field player tes3reference A reference to the player.
--- @field worldController tes3worldController One of the core game objects.
tes3 = {}

--- Registers a new armor slot. Adds a new place for armor pieces with a matching slot number to equip to.
--- @param params tes3.addArmorSlot.params This table accepts the following values:
--- 
--- `slot`: number — Armor slot number. A number greater than 10 to configure a slot for.
--- 
--- `name`: string — No description yet available.
--- 
--- `weight`: number — *Default*: `0`. A stand-in for the armor base weight value, typically controlled by a GMST (e.g. iHelmWeight).
--- 
--- `scalar`: number — *Default*: `0.1`. A multiplier with range 0.0-1.0 that controls how much of an item's armor value applies to a character's overall armor rating. For comparison, standard chest armor uses 0.3, helmets, greaves and pauldrons use 0.1, and gauntlets use 0.05.
--- @return boolean wasAdded No description yet available.
function tes3.addArmorSlot(params) end

---Table parameter definitions for `tes3.addArmorSlot`.
--- @class tes3.addArmorSlot.params
--- @field slot number Armor slot number. A number greater than 10 to configure a slot for.
--- @field name string No description yet available.
--- @field weight number *Default*: `0`. A stand-in for the armor base weight value, typically controlled by a GMST (e.g. iHelmWeight).
--- @field scalar number *Default*: `0.1`. A multiplier with range 0.0-1.0 that controls how much of an item's armor value applies to a character's overall armor rating. For comparison, standard chest armor uses 0.3, helmets, greaves and pauldrons use 0.1, and gauntlets use 0.05.

--- Registers a new clothing slot. Adds a new place for clothing pieces with a matching slot number to equip to.
--- @param params tes3.addClothingSlot.params This table accepts the following values:
--- 
--- `slot`: number — Clothing slot number. A number greater than 9 to configure a slot for.
--- 
--- `name`: string — No description yet available.
function tes3.addClothingSlot(params) end

---Table parameter definitions for `tes3.addClothingSlot`.
--- @class tes3.addClothingSlot.params
--- @field slot number Clothing slot number. A number greater than 9 to configure a slot for.
--- @field name string No description yet available.

--- Adds an item to a given reference's inventory or mobile's inventory.
--- @param params tes3.addItem.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — Who to give items to.
--- 
--- `item`: tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|tes3leveledItem|string — The item to add. If a leveled item is passed, it will be resolved and added.
--- 
--- `itemData`: tes3itemData — *Optional*. The item data for the item.
--- 
--- `soul`: tes3creature — *Optional*. For creating filled soul gems.
--- 
--- `count`: number — *Default*: `1`. The maximum number of items to add.
--- 
--- `playSound`: boolean — *Default*: `true`. If false, the up/down sound for the item won't be played.
--- 
--- `limit`: boolean — If false, items can be placed into containers that shouldn't normally be allowed. This includes organic containers, and containers that are full.
--- 
--- `updateGUI`: boolean — *Default*: `true`. If false, the function won't manually resync the player's GUI state. This can result in some optimizations, though `tes3ui.forcePlayerInventoryUpdate()` must manually be called after all inventory updates are finished.
--- @return number addedCount No description yet available.
function tes3.addItem(params) end

---Table parameter definitions for `tes3.addItem`.
--- @class tes3.addItem.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string Who to give items to.
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|tes3leveledItem|string The item to add. If a leveled item is passed, it will be resolved and added.
--- @field itemData tes3itemData *Optional*. The item data for the item.
--- @field soul tes3creature *Optional*. For creating filled soul gems.
--- @field count number *Default*: `1`. The maximum number of items to add.
--- @field playSound boolean *Default*: `true`. If false, the up/down sound for the item won't be played.
--- @field limit boolean If false, items can be placed into containers that shouldn't normally be allowed. This includes organic containers, and containers that are full.
--- @field updateGUI boolean *Default*: `true`. If false, the function won't manually resync the player's GUI state. This can result in some optimizations, though `tes3ui.forcePlayerInventoryUpdate()` must manually be called after all inventory updates are finished.

--- Creates an item data if there is room for a new stack in a given inventory. This can be then used to add custom user data or adjust an item's condition. This will return nil if no item data could be allocated for the item -- for example if the reference doesn't have the item in their inventory or each item of that type already has item data.
--- @param params tes3.addItemData.params This table accepts the following values:
--- 
--- `to`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The reference or mobile whose inventory will be modified.
--- 
--- `item`: tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string — The item to create item data for.
--- 
--- `updateGUI`: boolean — *Default*: `true`. If false, the player or contents menu won't be updated.
--- @return tes3itemData createdData No description yet available.
function tes3.addItemData(params) end

---Table parameter definitions for `tes3.addItemData`.
--- @class tes3.addItemData.params
--- @field to tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The reference or mobile whose inventory will be modified.
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string The item to create item data for.
--- @field updateGUI boolean *Default*: `true`. If false, the player or contents menu won't be updated.

--- This function creates a new journal entry. It can be called once the world controller is loaded.
--- @param params tes3.addJournalEntry.params This table accepts the following values:
--- 
--- `text`: string — The text of the new Journal entry.
--- 
--- `showMessage`: boolean — *Default*: `true`. If this parameter is true, a "Your journal has been updated" message will be displayed.
function tes3.addJournalEntry(params) end

---Table parameter definitions for `tes3.addJournalEntry`.
--- @class tes3.addJournalEntry.params
--- @field text string The text of the new Journal entry.
--- @field showMessage boolean *Default*: `true`. If this parameter is true, a "Your journal has been updated" message will be displayed.

--- This function creates a new custom magic effect. The effect can be scripted through lua.
--- @param params tes3.addMagicEffect.params This table accepts the following values:
--- 
--- `id`: number — Id of the new effect. Maps to newly claimed `tes3.effect` constants with `tes3.claimSpellEffectId()`. If the effect of this id already exists, an error will be thrown.
--- 
--- `name`: string — *Default*: `Unnamed Effect`. Name of the effect.
--- 
--- `baseCost`: number — *Default*: `1`. Base magicka cost for the effect.
--- 
--- `school`: number — *Default*: `tes3.magicSchool.alteration`. The magic school the new effect will be assigned to. Maps to [`tes3.magicSchool`](https://mwse.github.io/MWSE/references/magic-schools/) constants.
--- 
--- `size`: number — *Default*: `1`. No description yet available.
--- 
--- `sizeCap`: number — *Default*: `1`. No description yet available.
--- 
--- `speed`: number — *Default*: `1`. No description yet available.
--- 
--- `description`: string — *Default*: `No description available.`. Description for the effect.
--- 
--- `lighting`: table — *Optional*. No description yet available.
--- 
--- `icon`: string — *Optional*. Path to the effect icon. Must be a string no longer than 31 characters long.
--- 
--- `particleTexture`: string — *Optional*. Path to the particle texture to use for the effect. Must be a string no longer than 31 characters long.
--- 
--- `castSound`: string — *Optional*. The sound ID which will be played on casting a spell with this effect. Must be a string no longer than 31 characters long. If not specified, the default sound for the spell school will be used.
--- 
--- `boltSound`: string — *Optional*. The sound ID which will be played when a spell with this effect is in flight. Must be a string no longer than 31 characters long. If not specified, the default sound for the spell school will be used.
--- 
--- `hitSound`: string — *Optional*. The sound ID which will be played when a spell with this effect hits something. Must be a string no longer than 31 characters long. If not specified, the default sound for the spell school will be used.
--- 
--- `areaSound`: string — *Optional*. The sound ID which will be played on area of effect impact. Must be a string no longer than 31 characters long. If not specified, the default sound for the spell school will be used.
--- 
--- `castVFX`: tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon — *Optional*. No description yet available.
--- 
--- `boltVFX`: tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon — *Optional*. No description yet available.
--- 
--- `hitVFX`: tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon — *Optional*. No description yet available.
--- 
--- `areaVFX`: tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon — *Optional*. No description yet available.
--- 
--- `allowEnchanting`: boolean — *Default*: `true`. A flag which controls whether this effect can be used in a custom enchantment.
--- 
--- `allowSpellmaking`: boolean — *Default*: `true`. A flag which controls whether this effect can be used in a custom spell.
--- 
--- `appliesOnce`: boolean — *Default*: `true`. A flag which controls whether this effect applies once or is a ticking effect.
--- 
--- `canCastSelf`: boolean — *Default*: `true`. A flag which controls whether this effect can be used with cast on self range.
--- 
--- `canCastTarget`: boolean — *Default*: `true`. A flag which controls whether this effect can be used with cast on target range.
--- 
--- `canCastTouch`: boolean — *Default*: `true`. A flag which controls whether this effect can be used with cast on touch range.
--- 
--- `casterLinked`: boolean — *Default*: `true`. No description yet available.
--- 
--- `hasContinuousVFX`: boolean — *Default*: `true`. A flag which controls whether the effect's VFX be played during its whole duration?
--- 
--- `hasNoDuration`: boolean — *Default*: `true`. A flag which controls whether this effect doesn't have duration.
--- 
--- `hasNoMagnitude`: boolean — *Default*: `true`. A flag which controls whether this effect doesn't have magnitude.
--- 
--- `illegalDaedra`: boolean — *Default*: `true`. A flag which controls whether this effect is illegal to use in public, because it summons Daedra. Note: this mechanic is not implemented in the game. Some mods might rely on this parameter.
--- 
--- `isHarmful`: boolean — *Default*: `true`. A flag which controls whether this effect is considered harmful and casting it can be considered as an attack.
--- 
--- `nonRecastable`: boolean — *Default*: `true`. A flag which controls whether this effect can be recast while it already is in duration.
--- 
--- `targetsAttributes`: boolean — *Default*: `true`. A flag which controls whether this effect targets a certain attribute or attributes.
--- 
--- `targetsSkills`: boolean — *Default*: `true`. A flag which controls whether this effect targets a certain skill or skills.
--- 
--- `unreflectable`: boolean — *Default*: `true`. A flag which controls whether this effect can be reflected.
--- 
--- `usesNegativeLighting`: boolean — *Default*: `true`. A flag which controls whether this effect uses negative lighting.
--- 
--- `onTick`: function — *Optional*. A function which will be called on each tick of a spell containing this effect.
--- 
--- `onCollision`: function — *Optional*. A function which will be called when a spell containing this spell effect collides with something.
--- @return tes3effect effect No description yet available.
function tes3.addMagicEffect(params) end

---Table parameter definitions for `tes3.addMagicEffect`.
--- @class tes3.addMagicEffect.params
--- @field id number Id of the new effect. Maps to newly claimed `tes3.effect` constants with `tes3.claimSpellEffectId()`. If the effect of this id already exists, an error will be thrown.
--- @field name string *Default*: `Unnamed Effect`. Name of the effect.
--- @field baseCost number *Default*: `1`. Base magicka cost for the effect.
--- @field school number *Default*: `tes3.magicSchool.alteration`. The magic school the new effect will be assigned to. Maps to [`tes3.magicSchool`](https://mwse.github.io/MWSE/references/magic-schools/) constants.
--- @field size number *Default*: `1`. No description yet available.
--- @field sizeCap number *Default*: `1`. No description yet available.
--- @field speed number *Default*: `1`. No description yet available.
--- @field description string *Default*: `No description available.`. Description for the effect.
--- @field lighting table *Optional*. No description yet available.
--- @field icon string *Optional*. Path to the effect icon. Must be a string no longer than 31 characters long.
--- @field particleTexture string *Optional*. Path to the particle texture to use for the effect. Must be a string no longer than 31 characters long.
--- @field castSound string *Optional*. The sound ID which will be played on casting a spell with this effect. Must be a string no longer than 31 characters long. If not specified, the default sound for the spell school will be used.
--- @field boltSound string *Optional*. The sound ID which will be played when a spell with this effect is in flight. Must be a string no longer than 31 characters long. If not specified, the default sound for the spell school will be used.
--- @field hitSound string *Optional*. The sound ID which will be played when a spell with this effect hits something. Must be a string no longer than 31 characters long. If not specified, the default sound for the spell school will be used.
--- @field areaSound string *Optional*. The sound ID which will be played on area of effect impact. Must be a string no longer than 31 characters long. If not specified, the default sound for the spell school will be used.
--- @field castVFX tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon *Optional*. No description yet available.
--- @field boltVFX tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon *Optional*. No description yet available.
--- @field hitVFX tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon *Optional*. No description yet available.
--- @field areaVFX tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon *Optional*. No description yet available.
--- @field allowEnchanting boolean *Default*: `true`. A flag which controls whether this effect can be used in a custom enchantment.
--- @field allowSpellmaking boolean *Default*: `true`. A flag which controls whether this effect can be used in a custom spell.
--- @field appliesOnce boolean *Default*: `true`. A flag which controls whether this effect applies once or is a ticking effect.
--- @field canCastSelf boolean *Default*: `true`. A flag which controls whether this effect can be used with cast on self range.
--- @field canCastTarget boolean *Default*: `true`. A flag which controls whether this effect can be used with cast on target range.
--- @field canCastTouch boolean *Default*: `true`. A flag which controls whether this effect can be used with cast on touch range.
--- @field casterLinked boolean *Default*: `true`. No description yet available.
--- @field hasContinuousVFX boolean *Default*: `true`. A flag which controls whether the effect's VFX be played during its whole duration?
--- @field hasNoDuration boolean *Default*: `true`. A flag which controls whether this effect doesn't have duration.
--- @field hasNoMagnitude boolean *Default*: `true`. A flag which controls whether this effect doesn't have magnitude.
--- @field illegalDaedra boolean *Default*: `true`. A flag which controls whether this effect is illegal to use in public, because it summons Daedra. Note: this mechanic is not implemented in the game. Some mods might rely on this parameter.
--- @field isHarmful boolean *Default*: `true`. A flag which controls whether this effect is considered harmful and casting it can be considered as an attack.
--- @field nonRecastable boolean *Default*: `true`. A flag which controls whether this effect can be recast while it already is in duration.
--- @field targetsAttributes boolean *Default*: `true`. A flag which controls whether this effect targets a certain attribute or attributes.
--- @field targetsSkills boolean *Default*: `true`. A flag which controls whether this effect targets a certain skill or skills.
--- @field unreflectable boolean *Default*: `true`. A flag which controls whether this effect can be reflected.
--- @field usesNegativeLighting boolean *Default*: `true`. A flag which controls whether this effect uses negative lighting.
--- @field onTick function *Optional*. A function which will be called on each tick of a spell containing this effect.
--- @field onCollision function *Optional*. A function which will be called when a spell containing this spell effect collides with something.

--- Causes a misc item to be recognized as a soul gem, so that it can be used for soul trapping.
--- @param params tes3.addSoulGem.params This table accepts the following values:
--- 
--- `item`: tes3misc|string — The item to recognize as a soul gem.
--- @return number wasAdded No description yet available.
function tes3.addSoulGem(params) end

---Table parameter definitions for `tes3.addSoulGem`.
--- @class tes3.addSoulGem.params
--- @field item tes3misc|string The item to recognize as a soul gem.

--- Adds a spell to an actor's spell list. If the spell is passive, the effects will be applied.
--- @param params tes3.addSpell.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — Who to give the spell to. To manipulate an actor without specifying any particular reference, use `actor` instead.
--- 
--- `actor`: tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string — Who to give the spell to. Providing a base actor can be done before a save has been loaded, but may not correctly update effects for instanced versions of that actor in an active save.
--- 
--- `spell`: tes3spell|string — The spell to add.
--- 
--- `updateGUI`: boolean — *Default*: `true`. If true, the GUI will be updated respsecting the adding of the spell. This can be useful to disable when batch-adding many spells. The batch should be ended with `tes3.updateMagicGUI` to reflect the changes.
--- @return boolean wasAdded True if the spell was successfully added. This can be false if the actor's race or birthsign already contains the spell.
function tes3.addSpell(params) end

---Table parameter definitions for `tes3.addSpell`.
--- @class tes3.addSpell.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string Who to give the spell to. To manipulate an actor without specifying any particular reference, use `actor` instead.
--- @field actor tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string Who to give the spell to. Providing a base actor can be done before a save has been loaded, but may not correctly update effects for instanced versions of that actor in an active save.
--- @field spell tes3spell|string The spell to add.
--- @field updateGUI boolean *Default*: `true`. If true, the GUI will be updated respsecting the adding of the spell. This can be useful to disable when batch-adding many spells. The batch should be ended with `tes3.updateMagicGUI` to reflect the changes.

--- Changes the volume of a sound that is playing on a given reference.
--- @param params tes3.adjustSoundVolume.params This table accepts the following values:
--- 
--- `sound`: tes3sound|string — The sound object, or id of the sound to look for.
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The reference to attach the sound to.
--- 
--- `mixChannel`: number — *Default*: `tes3.audioMixType.effects`. The channel to base volume off of. Maps to [`tes3.audioMixType`](https://mwse.github.io/MWSE/references/audio-mix-types/) constants.
--- 
--- `volume`: number — *Default*: `1.0`. A value between 0.0 and 1.0 to scale the volume off of.
function tes3.adjustSoundVolume(params) end

---Table parameter definitions for `tes3.adjustSoundVolume`.
--- @class tes3.adjustSoundVolume.params
--- @field sound tes3sound|string The sound object, or id of the sound to look for.
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The reference to attach the sound to.
--- @field mixChannel number *Default*: `tes3.audioMixType.effects`. The channel to base volume off of. Maps to [`tes3.audioMixType`](https://mwse.github.io/MWSE/references/audio-mix-types/) constants.
--- @field volume number *Default*: `1.0`. A value between 0.0 and 1.0 to scale the volume off of.

--- Advances the game time. Can be used to simulate player resting.
--- @param params tes3.advanceTime.params This table accepts the following values:
--- 
--- `hours`: number — How many hours to progress.
--- 
--- `resting`: boolean — *Optional*. Should advancing time count as resting? If set to true invokes usual sleeping mechanics: health, fatigue and magicka restoration, and possible rest interruption. The length of the rest will be equal to hours parameter, rounded down to nearest natural number.
--- 
--- `updateEnvironment`: boolean — *Default*: `true`. Controls if the weather system is updated for each hour passed.
--- @return number hoursPassed No description yet available.
function tes3.advanceTime(params) end

---Table parameter definitions for `tes3.advanceTime`.
--- @class tes3.advanceTime.params
--- @field hours number How many hours to progress.
--- @field resting boolean *Optional*. Should advancing time count as resting? If set to true invokes usual sleeping mechanics: health, fatigue and magicka restoration, and possible rest interruption. The length of the rest will be equal to hours parameter, rounded down to nearest natural number.
--- @field updateEnvironment boolean *Default*: `true`. Controls if the weather system is updated for each hour passed.

--- 
--- @param params tes3.applyMagicSource.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — A reference on which the magic source will be applied.
--- 
--- `source`: tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3enchantment|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3reference|tes3repairTool|tes3spell|tes3static|tes3weapon — *Optional*. A magic source to apply.
--- 
--- `name`: string — *Optional*. If applying alchemy as a source, you can specifiy a name for the magic source.
--- 
--- `effects`: table — *Optional*. A table of custom effects to apply as a potion. Maximal number of effects is 8.
--- 
--- `createCopy`: boolean — *Optional*. This parameter controls whether the function will return the original magic source or a copy of the magic source. This parameter is only used if source is alchemy.
--- 
--- `fromStack`: tes3equipmentStack — *Optional*. The piece of equipment this magic source is coming from. The fromStack has to be an already equipped item from tes3actor.equipment. This will probably change in the future.
--- 
--- `castChance`: number — *Default*: `This parameter allows overriding the casting chance of the magic source.`. No description yet available.
--- 
--- `target`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — *Optional*. The target of the magic.
--- 
--- `bypassResistances`: boolean — *Optional*. Is this effect going to bypass magic resistance?
--- @return tes3magicSourceInstance instance No description yet available.
function tes3.applyMagicSource(params) end

---Table parameter definitions for `tes3.applyMagicSource`.
--- @class tes3.applyMagicSource.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string A reference on which the magic source will be applied.
--- @field source tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3enchantment|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3reference|tes3repairTool|tes3spell|tes3static|tes3weapon *Optional*. A magic source to apply.
--- @field name string *Optional*. If applying alchemy as a source, you can specifiy a name for the magic source.
--- @field effects table *Optional*. A table of custom effects to apply as a potion. Maximal number of effects is 8.
--- @field createCopy boolean *Optional*. This parameter controls whether the function will return the original magic source or a copy of the magic source. This parameter is only used if source is alchemy.
--- @field fromStack tes3equipmentStack *Optional*. The piece of equipment this magic source is coming from. The fromStack has to be an already equipped item from tes3actor.equipment. This will probably change in the future.
--- @field castChance number *Default*: `This parameter allows overriding the casting chance of the magic source.`. No description yet available.
--- @field target tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string *Optional*. The target of the magic.
--- @field bypassResistances boolean *Optional*. Is this effect going to bypass magic resistance?

--- Changes a reference to werewolf form. This function works only on a reference infected with Lycanthropy, be it the player or any other reference. Returns true if successful.
--- @param params tes3.beginTransform.params This table accepts the following values:
--- 
--- `reference`: tes3reference — A reference to change to werewolf form.
--- @return boolean success No description yet available.
function tes3.beginTransform(params) end

---Table parameter definitions for `tes3.beginTransform`.
--- @class tes3.beginTransform.params
--- @field reference tes3reference A reference to change to werewolf form.

--- Calculates a price, given a merchant and associated trading data. This is useful beyond accessing the object's `.value` field in that it raises the appropriate events to let other mods modify the values.
--- @param params tes3.calculatePrice.params This table accepts the following values:
--- 
--- `object`: tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3enchantment|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3reference|tes3repairTool|tes3spell|tes3static|tes3weapon — *Optional*. The object to calculate the price for. If not provided, `basePrice` is required.
--- 
--- `basePrice`: number — *Optional*. The base price to calculate the end price for. This defaults to the `object` param's `value`, if provided. This parameter is required if `object` is not provided.
--- 
--- `buying`: boolean — *Default*: `true`. If `true`, uses the logic for buying a service/item. This is exclusive with `selling`.
--- 
--- `selling`: boolean — If `true`, uses the logic for selling an item. This is exclusive with `buying`.
--- 
--- `merchant`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer — The merchant to use for calculating the price.
--- 
--- `bartering`: boolean — If `true`, a [calcBarterPrice](https://mwse.github.io/MWSE/events/calcBarterPrice) or [calcRepairPrice](https://mwse.github.io/MWSE/events/calcRepairPrice) event will be triggered.
--- 
--- `repairing`: boolean — If `true`, a [calcRepairPrice](https://mwse.github.io/MWSE/events/calcRepairPrice) event will be triggered.
--- 
--- `training`: boolean — If `true`, a [calcTrainingPrice](https://mwse.github.io/MWSE/events/calcTrainingPrice) event will be triggered, passing the given `skill` ID.
--- 
--- `count`: number — *Default*: `1`. If `bartering`, the count passed to the [calcBarterPrice](https://mwse.github.io/MWSE/events/calcBarterPrice) event.
--- 
--- `itemData`: tes3itemData — *Optional*. If `bartering` or `repairing`, the item data passed to the [calcBarterPrice](https://mwse.github.io/MWSE/events/calcBarterPrice) or [calcRepairPrice](https://mwse.github.io/MWSE/events/calcRepairPrice) event.
--- 
--- `skill`: number — If `training`, the skill ID passed to the [calcTrainingPrice](https://mwse.github.io/MWSE/events/calcTrainingPrice) event.
--- @return number price The calculated price, filtered by events.
function tes3.calculatePrice(params) end

---Table parameter definitions for `tes3.calculatePrice`.
--- @class tes3.calculatePrice.params
--- @field object tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3enchantment|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3reference|tes3repairTool|tes3spell|tes3static|tes3weapon *Optional*. The object to calculate the price for. If not provided, `basePrice` is required.
--- @field basePrice number *Optional*. The base price to calculate the end price for. This defaults to the `object` param's `value`, if provided. This parameter is required if `object` is not provided.
--- @field buying boolean *Default*: `true`. If `true`, uses the logic for buying a service/item. This is exclusive with `selling`.
--- @field selling boolean If `true`, uses the logic for selling an item. This is exclusive with `buying`.
--- @field merchant tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer The merchant to use for calculating the price.
--- @field bartering boolean If `true`, a [calcBarterPrice](https://mwse.github.io/MWSE/events/calcBarterPrice) or [calcRepairPrice](https://mwse.github.io/MWSE/events/calcRepairPrice) event will be triggered.
--- @field repairing boolean If `true`, a [calcRepairPrice](https://mwse.github.io/MWSE/events/calcRepairPrice) event will be triggered.
--- @field training boolean If `true`, a [calcTrainingPrice](https://mwse.github.io/MWSE/events/calcTrainingPrice) event will be triggered, passing the given `skill` ID.
--- @field count number *Default*: `1`. If `bartering`, the count passed to the [calcBarterPrice](https://mwse.github.io/MWSE/events/calcBarterPrice) event.
--- @field itemData tes3itemData *Optional*. If `bartering` or `repairing`, the item data passed to the [calcBarterPrice](https://mwse.github.io/MWSE/events/calcBarterPrice) or [calcRepairPrice](https://mwse.github.io/MWSE/events/calcRepairPrice) event.
--- @field skill number If `training`, the skill ID passed to the [calcTrainingPrice](https://mwse.github.io/MWSE/events/calcTrainingPrice) event.

--- Signals looping animations on the actor to stop looping and play to the end. The animation will continue, playing past the loop point until the end frame. Useful for exiting looping animations cleanly.
--- @param params tes3.cancelAnimationLoop.params This table accepts the following values:
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — The reference to the actor.
function tes3.cancelAnimationLoop(params) end

---Table parameter definitions for `tes3.cancelAnimationLoop`.
--- @class tes3.cancelAnimationLoop.params
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string The reference to the actor.

--- This function returns true if player can rest.
--- @param params tes3.canRest.params This table accepts the following values:
--- 
--- `checkForEnemies`: boolean — *Default*: `true`. Perform a check whether there are enemies nearby before opening rest menu. If there are, false is returned.
--- 
--- `checkForSolidGround`: boolean — *Default*: `true`. Perform a check if the player is underwater. If underwater, false is returned.
--- 
--- `showMessage`: boolean — If true, a messagebox will be shown if the player can't rest because some condition isn't met.
--- @return boolean canRest No description yet available.
function tes3.canRest(params) end

---Table parameter definitions for `tes3.canRest`.
--- @class tes3.canRest.params
--- @field checkForEnemies boolean *Default*: `true`. Perform a check whether there are enemies nearby before opening rest menu. If there are, false is returned.
--- @field checkForSolidGround boolean *Default*: `true`. Perform a check if the player is underwater. If underwater, false is returned.
--- @field showMessage boolean If true, a messagebox will be shown if the player can't rest because some condition isn't met.

--- Casts a spell from a given reference to a target reference. Touch effects will hit the target at any range, while target effects will create a projectile. By default, the spell always casts successfully and does not consume magicka. By default, an actor casting will stop and perform its cast animation, but the 'instant' flag can start the cast instantly, and allow more control over the spell.
--- 
--- When the caster is the player, the target parameter is optional; without a target, the player's touch effects will only hit targets in front of them, and target effects will create a projectile in the direction the player is facing. Currently as a limitation, instant must be true to allow the player to cast spells.
--- @param params tes3.cast.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The caster reference.
--- 
--- `target`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The target reference. Optional only if the caster is the player.
--- 
--- `spell`: tes3spell|string — The spell the caster uses.
--- 
--- `instant`: boolean — When true, the spell is cast instantly. No animation is performed.
--- 
--- `alwaysSucceeds`: boolean — *Default*: `true`. When true, the spell cannot fail and does not consume magicka. When false, it is cast using the actor's spell skill, and requires and takes enough magicka to cast. Only applies when 'instant' is true.
--- 
--- `bypassResistances`: boolean — The spell will bypass the target's resistances. Only applies when 'instant' is true.
--- @return boolean executed No description yet available.
function tes3.cast(params) end

---Table parameter definitions for `tes3.cast`.
--- @class tes3.cast.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The caster reference.
--- @field target tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The target reference. Optional only if the caster is the player.
--- @field spell tes3spell|string The spell the caster uses.
--- @field instant boolean When true, the spell is cast instantly. No animation is performed.
--- @field alwaysSucceeds boolean *Default*: `true`. When true, the spell cannot fail and does not consume magicka. When false, it is cast using the actor's spell skill, and requires and takes enough magicka to cast. Only applies when 'instant' is true.
--- @field bypassResistances boolean The spell will bypass the target's resistances. Only applies when 'instant' is true.

--- Checks if a merchant will offer a service to you, including dialogue checks like disposition and faction membership. A specific service can be checked, or if no service is given, a generic dialogue check is made. If the service if refused, the dialogue reply for the refusal may also returned (it may be nil, as there may not always be a reply available).
--- @param reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string No description yet available.
--- @param service number *Optional*. The specific service to check for availability. Uses the tes3.merchantService.* constants.
--- @return boolean offersService No description yet available.
--- @return tes3dialogueInfo refusalReply No description yet available.
function tes3.checkMerchantOffersService(reference, service) end

--- Determines if a merchant trades in a given item.
--- @param params tes3.checkMerchantTradesItem.params This table accepts the following values:
--- 
--- `item`: tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string — No description yet available.
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — No description yet available.
--- @return boolean trades No description yet available.
function tes3.checkMerchantTradesItem(params) end

---Table parameter definitions for `tes3.checkMerchantTradesItem`.
--- @class tes3.checkMerchantTradesItem.params
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string No description yet available.
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string No description yet available.

--- This function is used to claim a unique spell effect name and id. This is needed before actually creating a new effect by calling `tes3.addMagicEffect()`. A claimed effect id can be retrieved as: `tes3.effect.effectName` (just like any regular spell effect).
--- @param params tes3.claimSpellEffectId.params This table accepts the following values:
--- 
--- `name`: string — The name of the new spell effect. Must be unique. An error will be thrown if it's non-unique.
--- 
--- `id`: number — A unique number representing the new spell effect. An error will be thrown if it's non-unique.
function tes3.claimSpellEffectId(params) end

---Table parameter definitions for `tes3.claimSpellEffectId`.
--- @class tes3.claimSpellEffectId.params
--- @field name string The name of the new spell effect. Must be unique. An error will be thrown if it's non-unique.
--- @field id number A unique number representing the new spell effect. An error will be thrown if it's non-unique.

--- This function deletes the player's mark location.
function tes3.clearMarkLocation() end

--- Create an object and returns it. The created object will be part of the saved game. Supported object types are those that have their own create function, such as tes3activator for example.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/types/tes3/#tes3createobject).
--- @param params tes3.createObject.params This table accepts the following values:
--- 
--- `objectType`: number — Maps to [`tes3.objectType`](https://mwse.github.io/MWSE/references/object-types/) constants. Used to filter object type to create.
--- 
--- `getIfExists`: boolean — *Default*: `true`. If `true`, an existing object of the same type and ID will be returned instead of creating a new one.
--- @return tes3activator|tes3alchemy|tes3container|tes3enchantment|tes3misc|tes3sound|tes3spell|tes3static|tes3weapon createdObject No description yet available.
function tes3.createObject(params) end

---Table parameter definitions for `tes3.createObject`.
--- @class tes3.createObject.params
--- @field objectType number Maps to [`tes3.objectType`](https://mwse.github.io/MWSE/references/object-types/) constants. Used to filter object type to create.
--- @field getIfExists boolean *Default*: `true`. If `true`, an existing object of the same type and ID will be returned instead of creating a new one.

--- Similar to mwscript's PlaceAtPC or PlaceAtMe, this creates a new reference in the game world.
--- @param params tes3.createReference.params This table accepts the following values:
--- 
--- `object`: tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon|string — The object to create a reference of.
--- 
--- `position`: tes3vector3|table — The location to create the reference at.
--- 
--- `orientation`: tes3vector3|table — The new orientation for the created reference.
--- 
--- `cell`: tes3cell|string|table — *Optional*. The cell to create the reference in. This is only needed for interior cells.
--- 
--- `scale`: number — *Default*: `1`. A scale for the reference.
--- @return tes3reference newReference No description yet available.
function tes3.createReference(params) end

---Table parameter definitions for `tes3.createReference`.
--- @class tes3.createReference.params
--- @field object tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon|string The object to create a reference of.
--- @field position tes3vector3|table The location to create the reference at.
--- @field orientation tes3vector3|table The new orientation for the created reference.
--- @field cell tes3cell|string|table *Optional*. The cell to create the reference in. This is only needed for interior cells.
--- @field scale number *Default*: `1`. A scale for the reference.

--- Decreases player's kill count of a certain type of actor by one.
--- @param params tes3.decrementKillCount.params This table accepts the following values:
--- 
--- `actor`: tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string — The actor (or their ID).
function tes3.decrementKillCount(params) end

---Table parameter definitions for `tes3.decrementKillCount`.
--- @class tes3.decrementKillCount.params
--- @field actor tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string The actor (or their ID).

--- Deletes a game object from the system. This can be dangerous, use with caution.
--- @param object tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3enchantment|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3reference|tes3repairTool|tes3spell|tes3static|tes3weapon The object to delete.
function tes3.deleteObject(object) end

--- Disables the use of a keyboard key.
--- @param keyCode number No description yet available.
function tes3.disableKey(keyCode) end

--- Drops one or more items from a reference's inventory onto the ground at their feet. It will unequip the item if it is equipped. The return value will be nil if no matching item was found.
--- @param params tes3.dropItem.params This table accepts the following values:
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — The reference whose inventory will be modified.
--- 
--- `item`: tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string — The item to drop.
--- 
--- `itemData`: tes3itemData — *Optional*. The item data of the specific item to drop. Without this, the first matching item in the inventory will drop.
--- 
--- `matchNoItemData`: boolean — If true, matches an item without item data. This can be used when you want to drop an item that isn't equipped (equipped items always have item data).
--- 
--- `count`: number — *Default*: `1`. The number of items to drop.
--- 
--- `updateGUI`: boolean — *Default*: `true`. If false, the player or contents menu won't be updated.
--- @return tes3reference createdReference No description yet available.
function tes3.dropItem(params) end

---Table parameter definitions for `tes3.dropItem`.
--- @class tes3.dropItem.params
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string The reference whose inventory will be modified.
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string The item to drop.
--- @field itemData tes3itemData *Optional*. The item data of the specific item to drop. Without this, the first matching item in the inventory will drop.
--- @field matchNoItemData boolean If true, matches an item without item data. This can be used when you want to drop an item that isn't equipped (equipped items always have item data).
--- @field count number *Default*: `1`. The number of items to drop.
--- @field updateGUI boolean *Default*: `true`. If false, the player or contents menu won't be updated.

--- Enables the use of a keyboard key.
--- @param keyCode number No description yet available.
function tes3.enableKey(keyCode) end

--- Similar to the vanilla FadeIn mwscript command.
--- @param params tes3.fadeIn.params This table accepts the following values:
--- 
--- `fader`: tes3fader — *Optional*. Defaults to the transition fader.
--- 
--- `duration`: number — *Default*: `1.0`. Time, in seconds, for the fade.
function tes3.fadeIn(params) end

---Table parameter definitions for `tes3.fadeIn`.
--- @class tes3.fadeIn.params
--- @field fader tes3fader *Optional*. Defaults to the transition fader.
--- @field duration number *Default*: `1.0`. Time, in seconds, for the fade.

--- Similar to the vanilla FadeOut mwscript command.
--- @param params tes3.fadeOut.params This table accepts the following values:
--- 
--- `fader`: tes3fader — *Optional*. Defaults to the transition fader.
--- 
--- `duration`: number — *Default*: `1.0`. Time, in seconds, for the fade.
function tes3.fadeOut(params) end

---Table parameter definitions for `tes3.fadeOut`.
--- @class tes3.fadeOut.params
--- @field fader tes3fader *Optional*. Defaults to the transition fader.
--- @field duration number *Default*: `1.0`. Time, in seconds, for the fade.

--- Similar to the vanilla FadeTo mwscript command.
--- @param params tes3.fadeTo.params This table accepts the following values:
--- 
--- `fader`: tes3fader — *Optional*. Defaults to the transition fader.
--- 
--- `duration`: number — *Default*: `1.0`. Time, in seconds, for the fade.
--- 
--- `value`: number — *Default*: `1.0`. No description yet available.
function tes3.fadeTo(params) end

---Table parameter definitions for `tes3.fadeTo`.
--- @class tes3.fadeTo.params
--- @field fader tes3fader *Optional*. Defaults to the transition fader.
--- @field duration number *Default*: `1.0`. Time, in seconds, for the fade.
--- @field value number *Default*: `1.0`. No description yet available.

--- Searches for active mobile actors which are within `range` distance from the `reference` or `position` argument. It only finds mobiles which have active AI, and can include the player. This function is used by the game for area-of-effect hits. It has a small amount of overhead, so try not to use it too much.
--- @param params tes3.findActorsInProximity.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — *Optional*. The position to search from, taken from a reference. Uses the position of the centre of the body if the reference is an actor.
--- 
--- `position`: tes3vector3 — *Optional*. The position to search from.
--- 
--- `range`: number — The distance around the position to search. An actor is included if the centre of their body is in range.
--- @return table mobileList No description yet available.
function tes3.findActorsInProximity(params) end

---Table parameter definitions for `tes3.findActorsInProximity`.
--- @class tes3.findActorsInProximity.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string *Optional*. The position to search from, taken from a reference. Uses the position of the centre of the body if the reference is an actor.
--- @field position tes3vector3 *Optional*. The position to search from.
--- @field range number The distance around the position to search. An actor is included if the centre of their body is in range.

--- Fetches the core game birthsign object for a given birthsign ID. If the birthsign with a given ID doesn't exist, nil is returned.
--- @param params tes3.findBirthsign.params This table accepts the following values:
--- 
--- `id`: string — ID of the birthsign to search for.
--- @return tes3birthsign birthsign No description yet available.
function tes3.findBirthsign(params) end

---Table parameter definitions for `tes3.findBirthsign`.
--- @class tes3.findBirthsign.params
--- @field id string ID of the birthsign to search for.

--- Fetches the core game character class object for a given class ID. If the class with a given ID doesn't exist, nil is returned.
--- @param params tes3.findClass.params This table accepts the following values:
--- 
--- `id`: string — ID of the class to search for.
--- @return tes3class class No description yet available.
function tes3.findClass(params) end

---Table parameter definitions for `tes3.findClass`.
--- @class tes3.findClass.params
--- @field id string ID of the class to search for.

--- Using the same engine function used by the vanilla intervention spells, locations the first reference of a given object in the exterior world.
--- @param params tes3.findClosestExteriorReferenceOfObject.params This table accepts the following values:
--- 
--- `object`: tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon|string — The object to search for.
--- 
--- `position`: tes3vector3 — *Optional*. The position to search from. Must be an exterior position. Defaults to the last exterior position of the player if no position is provided.
--- @return tes3reference reference No description yet available.
function tes3.findClosestExteriorReferenceOfObject(params) end

---Table parameter definitions for `tes3.findClosestExteriorReferenceOfObject`.
--- @class tes3.findClosestExteriorReferenceOfObject.params
--- @field object tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3repairTool|tes3static|tes3weapon|string The object to search for.
--- @field position tes3vector3 *Optional*. The position to search from. Must be an exterior position. Defaults to the last exterior position of the player if no position is provided.

--- Locates a root dialogue topic that can then be filtered down for a specific actor to return a specific dialogue info. Specify either `topic`, or both `type` and `page` for other types of dialogue.
--- 
--- For example, `tes3.findDialogue({type = tes3.dialogueType.greeting, page = tes3.dialoguePage.greeting.greeting0})` will return the "Greeting 0" topic, which is not available using a topic ID.
--- @param params tes3.findDialogue.params This table accepts the following values:
--- 
--- `topic`: string — *Optional*. The dialogue topic to look for.
--- 
--- `type`: number — *Optional*. The type of dialogue to look for. Uses tes3.dialogueType.* constants.
--- 
--- `page`: number — *Optional*. The page of dialogue to fetch. Uses tes3.dialoguePage.* constants.
--- @return tes3dialogue dialogue No description yet available.
function tes3.findDialogue(params) end

---Table parameter definitions for `tes3.findDialogue`.
--- @class tes3.findDialogue.params
--- @field topic string *Optional*. The dialogue topic to look for.
--- @field type number *Optional*. The type of dialogue to look for. Uses tes3.dialogueType.* constants.
--- @field page number *Optional*. The page of dialogue to fetch. Uses tes3.dialoguePage.* constants.

--- Fetches the core game object that represents a global variable.
--- @param id string No description yet available.
--- @return tes3globalVariable globalVariable No description yet available.
function tes3.findGlobal(id) end

--- Fetches the core game object that represents a game setting. While this function accepts a name, it is recommended to use the tes3.GMST constants.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/types/tes3/#tes3findgmst).
--- @param id number|string No description yet available.
--- @return tes3gameSetting gameSetting No description yet available.
function tes3.findGMST(id) end

--- Fetches the core game region object for a given region ID. If the region with a given ID doesn't exist, nil is returned.
--- @param params tes3.findRegion.params This table accepts the following values:
--- 
--- `id`: string — ID of the region to search for.
--- @return tes3region region No description yet available.
function tes3.findRegion(params) end

---Table parameter definitions for `tes3.findRegion`.
--- @class tes3.findRegion.params
--- @field id string ID of the region to search for.

--- Forces the player's POV to first person the next simulation frame, and returns true if the POV has been changed.
--- @return boolean changedPOV No description yet available.
function tes3.force1stPerson() end

--- Forces the player's POV to third person the next simulation frame, and returns true if the POV has been changed.
--- @return boolean changedPOV No description yet available.
function tes3.force3rdPerson() end

--- Returns the camera's offset from the player's head while in 3rd person view.
--- 
--- Note this function can be used once WorldController and MobilePlayer have finished initializing.
--- @return tes3vector3 cameraOffset No description yet available.
function tes3.get3rdPersonCameraOffset() end

--- Returns a table of active cells. If indoors, the table will have only one entry. If outdoors, the 9 surrounding cells will be provided.
--- @return table cells No description yet available.
function tes3.getActiveCells() end

--- This function fetches a reference's attached animation groups.
--- @param params tes3.getAnimationGroups.params This table accepts the following values:
--- 
--- `reference`: tes3reference — A reference whose animation groups to fetch.
--- @return table animData No description yet available.
function tes3.getAnimationGroups(params) end

---Table parameter definitions for `tes3.getAnimationGroups`.
--- @class tes3.getAnimationGroups.params
--- @field reference tes3reference A reference whose animation groups to fetch.

--- This function fetches a reference's attached animation groups' timings.
--- @param params tes3.getAnimationTiming.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — A reference whose animation groups' timings to fetch.
--- @return table result No description yet available.
function tes3.getAnimationTiming(params) end

---Table parameter definitions for `tes3.getAnimationTiming`.
--- @class tes3.getAnimationTiming.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string A reference whose animation groups' timings to fetch.

--- Returns a 1-indexed table of active archives.
--- @return table archives No description yet available.
function tes3.getArchiveList() end

--- Fetches an attachment with a given type.
--- @param reference tes3reference No description yet available.
--- @param attachment string No description yet available.
function tes3.getAttachment(reference, attachment) end

--- Returns the lowercase identifying name of an attribute for a given numerical, 0-based index. E.g. "strength".
--- @param attributeId number The attribute id to get the name of, from tes3.attributeName constants.
--- @return string name No description yet available.
function tes3.getAttributeName(attributeId) end

--- Returns the camera's position.
--- @return tes3vector3 vector3 No description yet available.
function tes3.getCameraPosition() end

--- Returns the camera look vector.
--- @return tes3vector3 vector3 No description yet available.
function tes3.getCameraVector() end

--- Finds a cell, either by an id or an X/Y grid position.
--- @param params tes3.getCell.params This table accepts the following values:
--- 
--- `id`: string — The cell's ID. If not provided, x and y must be.
--- 
--- `x`: number — No description yet available.
--- 
--- `y`: number — No description yet available.
--- @return tes3cell cell No description yet available.
function tes3.getCell(params) end

---Table parameter definitions for `tes3.getCell`.
--- @class tes3.getCell.params
--- @field id string The cell's ID. If not provided, x and y must be.
--- @field x number No description yet available.
--- @field y number No description yet available.

--- Gets the number of days that have passed leading up to the start of a given month.
--- @param month number The 0-based month index.
--- @return number days No description yet available.
function tes3.getCumulativeDaysForMonth(month) end

--- Returns an actor's current AI package ID, just as the mwscript function `GetCurrentAIPackage` would.
--- @param reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference No description yet available.
--- @return number packageID No description yet available.
function tes3.getCurrentAIPackageId(reference) end

--- Gets the currently active weather, from the player's current region.
--- @return tes3weatherAsh|tes3weatherBlight|tes3weatherBlizzard|tes3weatherClear|tes3weatherCloudy|tes3weatherFoggy|tes3weatherOvercast|tes3weatherRain|tes3weatherSnow|tes3weatherThunder weather No description yet available.
function tes3.getCurrentWeather() end

--- Returns a table with values x and y that contain the current cursor position.
--- @return table table No description yet available.
function tes3.getCursorPosition() end

--- Returns the number of days in a given month. This may be altered if a Morrowind Code Patch feature was installed.
--- @param month number No description yet available.
--- @return number dayCount No description yet available.
function tes3.getDaysInMonth(month) end

--- Locates and returns a Dialogue Info by a given id. This involves file IO and is an expensive call. Results should be cached.
--- @param dialogue tes3dialogue|string The dialogue that the info belongs to.
--- @param id string The numerical, unique id for the info object.
--- @return tes3dialogueInfo dialogueInfo No description yet available.
function tes3.getDialogueInfo(dialogue, id) end

--- This function returns the total magnitude and total unresisted magnitude of a certain spell effect affecting a reference. It returns a pair of numbers, the first being the post-resistance magnitude (see examples). The unresisted magnitude is the magnitude before the actor's resistances are applied; it is always an integer, so it is used in some UI elements.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/types/tes3/#tes3geteffectmagnitude).
--- @param params tes3.getEffectMagnitude.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — An associated mobile should exist for this function to be able to work.
--- 
--- `effect`: number — Effect ID. Can be any of the predefined spell effects, or one added by `tes3.claimSpellEffectId()`. Maps to values of [`tes3.effect`](https://mwse.github.io/MWSE/references/magic-effects/) constants
--- 
--- `skill`: number — *Default*: `-1`. If effect parameter specified is: Absorb, Damage, Drain, Fortify or Restore Skill, a skill should be provided. This also applies to any custom spell effect which operates on a certain skill. This value maps to [`tes3.skill`](https://mwse.github.io/MWSE/references/skills/) constants.
--- 
--- `attribute`: number — *Default*: `-1`. If effect parameter specified is: Absorb, Damage, Drain, Fortify or Restore Attribute, an attribute should be provided. This also applies to any custom spell effect which operates on a certain attribute. This value maps to [`tes3.attribute`](https://mwse.github.io/MWSE/references/attributes/) constants.
--- @return number, number magnitude, unresistedMagnitude No description yet available.
function tes3.getEffectMagnitude(params) end

---Table parameter definitions for `tes3.getEffectMagnitude`.
--- @class tes3.getEffectMagnitude.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string An associated mobile should exist for this function to be able to work.
--- @field effect number Effect ID. Can be any of the predefined spell effects, or one added by `tes3.claimSpellEffectId()`. Maps to values of [`tes3.effect`](https://mwse.github.io/MWSE/references/magic-effects/) constants
--- @field skill number *Default*: `-1`. If effect parameter specified is: Absorb, Damage, Drain, Fortify or Restore Skill, a skill should be provided. This also applies to any custom spell effect which operates on a certain skill. This value maps to [`tes3.skill`](https://mwse.github.io/MWSE/references/skills/) constants.
--- @field attribute number *Default*: `-1`. If effect parameter specified is: Absorb, Damage, Drain, Fortify or Restore Attribute, an attribute should be provided. This also applies to any custom spell effect which operates on a certain attribute. This value maps to [`tes3.attribute`](https://mwse.github.io/MWSE/references/attributes/) constants.

--- Returns an actor's equipped item stack, provided a given filter
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/types/tes3/#tes3getequippeditem).
--- @param params tes3.getEquippedItem.params This table accepts the following values:
--- 
--- `actor`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance — No description yet available.
--- 
--- `enchanted`: boolean — *Optional*. If true, filters to enchanted items.
--- 
--- `objectType`: number — *Optional*. Maps to [`tes3.objectType`](https://mwse.github.io/MWSE/references/object-types/) constants. Used to filter equipment by type.
--- 
--- `slot`: number — *Optional*. Maps to [`tes3.armorSlot`](https://mwse.github.io/MWSE/references/armor-slots/) or [`tes3.clothingSlot`](https://mwse.github.io/MWSE/references/clothing-slots/). Used to filter equipment by slot.
--- 
--- `type`: number — *Optional*. Maps to [`tes3.weaponType`](https://mwse.github.io/MWSE/references/weapon-types/). Used to filter equipment by type.
--- @return tes3equipmentStack stack No description yet available.
function tes3.getEquippedItem(params) end

---Table parameter definitions for `tes3.getEquippedItem`.
--- @class tes3.getEquippedItem.params
--- @field actor tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance No description yet available.
--- @field enchanted boolean *Optional*. If true, filters to enchanted items.
--- @field objectType number *Optional*. Maps to [`tes3.objectType`](https://mwse.github.io/MWSE/references/object-types/) constants. Used to filter equipment by type.
--- @field slot number *Optional*. Maps to [`tes3.armorSlot`](https://mwse.github.io/MWSE/references/armor-slots/) or [`tes3.clothingSlot`](https://mwse.github.io/MWSE/references/clothing-slots/). Used to filter equipment by slot.
--- @field type number *Optional*. Maps to [`tes3.weaponType`](https://mwse.github.io/MWSE/references/weapon-types/). Used to filter equipment by type.

--- Fetches the core game faction object for a given faction ID.
--- @param id string No description yet available.
--- @return tes3faction faction No description yet available.
function tes3.getFaction(id) end

--- Determines if a file exists in the user's Data Files.
--- @param path string No description yet available.
--- @return boolean exists No description yet available.
function tes3.getFileExists(path) end

--- Determines if a file exists on the filesystem or inside of a bsa. The returned string will be "file" or "bsa".
--- @param path string No description yet available.
--- @return string exists No description yet available.
function tes3.getFileSource(path) end

--- Retrieves the value of a global value, or nil if the global could not be found.
--- @param id string No description yet available.
--- @return number value No description yet available.
function tes3.getGlobal(id) end

--- Gets the input configuration for a given keybind.
--- @param keybind number Maps to [`tes3.keybind`](https://mwse.github.io/MWSE/references/keybinds/) constants.
--- @return tes3inputConfig inputConfig No description yet available.
function tes3.getInputBinding(keybind) end

--- Returns the amount of a certain item that can be found in a reference's inventory.
--- @param params tes3.getItemCount.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The reference to get the item count for. Must be a reference that has an inventory.
--- 
--- `item`: tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string — The item to get the count of.
--- @return number count The absolute value of the stack count in the reference's inventory.
function tes3.getItemCount(params) end

---Table parameter definitions for `tes3.getItemCount`.
--- @class tes3.getItemCount.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The reference to get the item count for. Must be a reference that has an inventory.
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string The item to get the count of.

--- This function checks item's stolen flag.
--- @param item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon The item to check.
--- @param from tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon Where the item was stolen from.
--- @return boolean isStolen No description yet available.
function tes3.getItemIsStolen(item, from) end

--- Gets the index of a given journal, or nil if no valid journal could be found.
--- @param params tes3.getJournalIndex.params This table accepts the following values:
--- 
--- `id`: tes3dialogue|string — No description yet available.
--- @return number index No description yet available.
function tes3.getJournalIndex(params) end

---Table parameter definitions for `tes3.getJournalIndex`.
--- @class tes3.getJournalIndex.params
--- @field id tes3dialogue|string No description yet available.

--- Returns how many times the player killed an actor. If no actor is specified, total number of kills player commited will be returned.
--- @param params tes3.getKillCount.params This table accepts the following values:
--- 
--- `actor`: tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string — *Optional*. The actor (or their ID) for whom to retrieve player's kill count.
--- @return number count No description yet available.
function tes3.getKillCount(params) end

---Table parameter definitions for `tes3.getKillCount`.
--- @class tes3.getKillCount.params
--- @field actor tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string *Optional*. The actor (or their ID) for whom to retrieve player's kill count.

--- Returns a table with complete player kill counts. The table returned is formated so actor IDs are table keys and kill count of that type of actor is value.
--- @return table killMap No description yet available.
function tes3.getKillCounts() end

--- Gets the language as an ISO string (e.g. "eng"), determined by the language entry in Morrowind.ini and the detected executable.
--- @return string code No description yet available.
function tes3.getLanguage() end

--- Gets the language code, determined by the language entry in Morrowind.ini and the detected executable.
--- @return number code No description yet available.
function tes3.getLanguageCode() end

--- Returns the last exterior position of the player.
--- @return tes3vector3 vector3 No description yet available.
function tes3.getLastExteriorPosition() end

--- Determines if a given reference is a locked door or container.
--- @param params tes3.getLocked.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — No description yet available.
--- @return boolean isLocked No description yet available.
function tes3.getLocked(params) end

---Table parameter definitions for `tes3.getLocked`.
--- @class tes3.getLocked.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string No description yet available.

--- Gets an locked reference's lock level. If no lock data is available, it will return nil.
--- @param params tes3.getLockLevel.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — No description yet available.
--- @return number level No description yet available.
function tes3.getLockLevel(params) end

---Table parameter definitions for `tes3.getLockLevel`.
--- @class tes3.getLockLevel.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string No description yet available.

--- Fetches the core game Magic Effect object for a given ID.
--- @param id number No description yet available.
--- @return tes3magicEffect magicEffect No description yet available.
function tes3.getMagicEffect(id) end

--- Returns the complex name of a magic effect, taking into account attribute or skill values.
--- @param params tes3.getMagicEffectName.params This table accepts the following values:
--- 
--- `effect`: number — The effect ID to get the name of.
--- 
--- `attribute`: number — *Optional*. The attribute ID to use, if applicable.
--- 
--- `skill`: number — *Optional*. The skill ID to use, if applicable.
--- @return string complexName No description yet available.
function tes3.getMagicEffectName(params) end

---Table parameter definitions for `tes3.getMagicEffectName`.
--- @class tes3.getMagicEffectName.params
--- @field effect number The effect ID to get the name of.
--- @field attribute number *Optional*. The attribute ID to use, if applicable.
--- @field skill number *Optional*. The skill ID to use, if applicable.

--- Fetches an instance of the magic source of a given serial number.
--- @param params tes3.getMagicSourceInstanceBySerial.params This table accepts the following values:
--- 
--- `serialNumber`: number — No description yet available.
--- @return tes3magicSourceInstance magicSourceInstance No description yet available.
function tes3.getMagicSourceInstanceBySerial(params) end

---Table parameter definitions for `tes3.getMagicSourceInstanceBySerial`.
--- @class tes3.getMagicSourceInstanceBySerial.params
--- @field serialNumber number No description yet available.

--- Fetches the list of the active ESM and ESP files.
--- @return table modList No description yet available.
function tes3.getModList() end

--- Fetches the core game object for a given object ID.
--- @param id string No description yet available.
--- @return tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3enchantment|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3reference|tes3repairTool|tes3spell|tes3static|tes3weapon object No description yet available.
function tes3.getObject(id) end

--- Returns the object's owner, or nil if the object is unowned.
--- @param reference tes3reference No description yet available.
--- @return tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3enchantment|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3reference|tes3repairTool|tes3spell|tes3static|tes3weapon object No description yet available.
function tes3.getOwner(reference) end

--- This function returns the distance that the player can activate objects with. This is a sum of the iMaxActivateDist GMST value and the player's telekinesis strength.
--- @return number result No description yet available.
function tes3.getPlayerActivationDistance() end

--- Fetches the cell that the player is currently in.
--- @return tes3cell result No description yet available.
function tes3.getPlayerCell() end

--- Returns the position of the player's eyes.
--- @return tes3vector3 position No description yet available.
function tes3.getPlayerEyePosition() end

--- Returns the look direction of the player's eyes.
--- @return tes3vector3 position No description yet available.
function tes3.getPlayerEyeVector() end

--- Gets the gold count carried by the player.
--- @return number goldCount No description yet available.
function tes3.getPlayerGold() end

--- This function is used to see what the player is looking at. Unlike a real raycast, this does not work in all circumstances. As a general rule, it will return the reference if the information box is shown when it is looked at.
--- @return tes3reference result No description yet available.
function tes3.getPlayerTarget() end

--- This function retrieves data for a quick key.
--- @param params tes3.getQuickKey.params This table accepts the following values:
--- 
--- `slot`: number — The key to retrieve data for. This is a value between 1 and 9.
--- @return tes3quickKey result No description yet available.
function tes3.getQuickKey(params) end

---Table parameter definitions for `tes3.getQuickKey`.
--- @class tes3.getQuickKey.params
--- @field slot number The key to retrieve data for. This is a value between 1 and 9.

--- Fetches the first reference for a given base object ID.
--- @param id string No description yet available.
--- @return tes3reference reference No description yet available.
function tes3.getReference(id) end

--- Gets the current region the player is in. This checks the player's current cell first, but will fall back to the last exterior cell.
--- @param useDoors boolean *Optional*. No description yet available.
--- @return tes3region region No description yet available.
function tes3.getRegion(useDoors) end

--- Locates and returns a script by a given id.
--- @param id string No description yet available.
--- @return tes3script script No description yet available.
function tes3.getScript(id) end

--- Returns a UNIX-style timestamp based on in-world simulation time since the start of the era.
--- @return number timestamp No description yet available.
function tes3.getSimulationTimestamp() end

--- Fetches the core game object for a given skill ID.
--- @param id number Maps to [`tes3.skill`](https://mwse.github.io/MWSE/references/skills/) constants.
--- @return tes3skill skill No description yet available.
function tes3.getSkill(id) end

--- Returns the identifying name of a skill for a given numerical, 0-based index. E.g. "Enchant".
--- @return string name No description yet available.
function tes3.getSkillName() end

--- Locates and returns a sound by a given id.
--- @param id string No description yet available.
--- @return tes3sound sound No description yet available.
function tes3.getSound(id) end

--- Returns a sound generator by a given creature id and type.
--- @param creatureId string No description yet available.
--- @param soundType number Maps to [`tes3.soundGenType`](https://mwse.github.io/MWSE/references/sound-generator-types/) constants.
--- @return tes3soundGenerator soundGenerator No description yet available.
function tes3.getSoundGenerator(creatureId, soundType) end

--- Without a reference, this function returns true if the sound is playing unattached or on any reference. With a reference, it returns true if the sound is playing on that specific reference.
--- @param params tes3.getSoundPlaying.params This table accepts the following values:
--- 
--- `sound`: tes3sound|string — The sound object, or the ID of the sound to look for.
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — *Optional*. No description yet available.
--- @return boolean soundIsPlaying No description yet available.
function tes3.getSoundPlaying(params) end

---Table parameter definitions for `tes3.getSoundPlaying`.
--- @class tes3.getSoundPlaying.params
--- @field sound tes3sound|string The sound object, or the ID of the sound to look for.
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string *Optional*. No description yet available.

--- Returns the lowercase identifying name of a specialization type for a given numerical, 0-based index. E.g. "magic".
--- @return string name No description yet available.
function tes3.getSpecializationName() end

--- Gets the top-level UI menu.
--- @return tes3uiElement menu No description yet available.
function tes3.getTopMenu() end

--- Gets the trap on a given reference.
--- @param params tes3.getTrap.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — No description yet available.
--- @return tes3spell spell No description yet available.
function tes3.getTrap(params) end

---Table parameter definitions for `tes3.getTrap`.
--- @class tes3.getTrap.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string No description yet available.

--- The function returns true if the player is in the vanity mode. Vanity mode is triggered by a period of inactivity from the player or by a tes3.setVanityMode() function. The view is switched to third person (if not already), and the camera is orbiting slowly around the player character.
--- @return boolean result Is the vanity mode currently active?
function tes3.getVanityMode() end

--- Returns both the viewport width and the viewport height. Note that this the real resolution of the screen. For a value scaled by MGE's menu scaling, see the same-named function in the tes3ui namespace. To get the scale used, check getViewportScale in the tes3ui namespace.
--- @return number width The width of the viewport.
--- @return number height The height of the viewport.
function tes3.getViewportSize() end

--- Returns the number of kills player commited as a Werewolf.
--- @return number werewolfKills No description yet available.
function tes3.getWerewolfKillCount() end

--- Simulates hammering a key.
--- @param keyCode number No description yet available.
function tes3.hammerKey(keyCode) end

--- Attempts to determine if a given Morrowind Code Patch feature is enabled. This may not be possible, in which case nil will be returned.
--- @param id number The id of the feature. Maps to values in [`tes3.codePatchFeature`](https://mwse.github.io/MWSE/references/code-patch-features/) constants.
--- @return boolean|nil state No description yet available.
function tes3.hasCodePatchFeature(id) end

--- Determines if a reference has access to another object, including its inventory. References have access to their own things, and the player has access to dead NPC's items.
--- @param params tes3.hasOwnershipAccess.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — *Default*: `tes3.player`. The actor to check permissions for.
--- 
--- `target`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The reference to check access of.
--- @return boolean hasAccess No description yet available.
function tes3.hasOwnershipAccess(params) end

---Table parameter definitions for `tes3.hasOwnershipAccess`.
--- @class tes3.hasOwnershipAccess.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string *Default*: `tes3.player`. The actor to check permissions for.
--- @field target tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The reference to check access of.

--- Determines if the player has access to a given spell.
--- @param params tes3.hasSpell.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — Who to check the spell list of. To check an actor without specifying any particular reference, use `actor` instead.
--- 
--- `actor`: tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string — Who to check the spell list of. Providing a base actor can be done before a save has been loaded, but may not correctly update effects for instanced versions of that actor in an active save.
--- 
--- `spell`: tes3spell|string — The spell to check.
--- @return boolean hasSpell True if the spell exists in the actor's spell list, race spell list, or birthsign spell list.
function tes3.hasSpell(params) end

---Table parameter definitions for `tes3.hasSpell`.
--- @class tes3.hasSpell.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string Who to check the spell list of. To check an actor without specifying any particular reference, use `actor` instead.
--- @field actor tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string Who to check the spell list of. Providing a base actor can be done before a save has been loaded, but may not correctly update effects for instanced versions of that actor in an active save.
--- @field spell tes3spell|string The spell to check.

--- Increases player's kill count of a certain type of actor by one.
--- @param params tes3.incrementKillCount.params This table accepts the following values:
--- 
--- `actor`: tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string — The actor (or their ID) for whom to increase player's kill count.
function tes3.incrementKillCount(params) end

---Table parameter definitions for `tes3.incrementKillCount`.
--- @class tes3.incrementKillCount.params
--- @field actor tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string The actor (or their ID) for whom to increase player's kill count.

--- Returns if the game is in 3rd person.
--- @return boolean state No description yet available.
function tes3.is3rdPerson() end

--- This function performs a check whether the provided reference is affected by a certain object or magic effect.
--- 
--- Note `reference.object.spells:contains(spellID)` will give the same output as this function for abilities, diseases, and curses, because having them in your spell list also makes them affect you.
--- @param params tes3.isAffectedBy.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — No description yet available.
--- 
--- `effect`: number — *Optional*. A numerical identifier of the magic effect to perform a check for. Maps to [`tes3.effect`](https://mwse.github.io/MWSE/references/magic-effects/) constant, including those claimed with `tes3.claimSpellEffectId()`, and then added with `tes3.addMagicEffect()`.
--- 
--- `object`: tes3alchemy|tes3enchantment|tes3spell|tes3magicEffect|string — *Optional*. An object to perform a check for.
--- @return boolean isAffectedBy No description yet available.
function tes3.isAffectedBy(params) end

---Table parameter definitions for `tes3.isAffectedBy`.
--- @class tes3.isAffectedBy.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string No description yet available.
--- @field effect number *Optional*. A numerical identifier of the magic effect to perform a check for. Maps to [`tes3.effect`](https://mwse.github.io/MWSE/references/magic-effects/) constant, including those claimed with `tes3.claimSpellEffectId()`, and then added with `tes3.addMagicEffect()`.
--- @field object tes3alchemy|tes3enchantment|tes3spell|tes3magicEffect|string *Optional*. An object to perform a check for.

--- Determines if the player has a given ESP or ESM file active.
--- @param filename string The filename of the mod to find, including the extension.
--- @return boolean result No description yet available.
function tes3.isModActive(filename) end

--- This function returns a function that iterates over a tes3iterator object. This is useful for for loops.
--- @param iterator tes3iterator No description yet available.
--- @return function function No description yet available.
function tes3.iterate(iterator) end

--- Iteration function used for looping over game options.
--- @param filter number Maps to [`tes3.objectType`](https://mwse.github.io/MWSE/references/object-types/) constants.
--- @return tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3enchantment|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3reference|tes3repairTool|tes3spell|tes3static|tes3weapon object No description yet available.
function tes3.iterateObjects(filter) end

--- Loads an animation and uses it to override existing animations on an actor. Animation groups present in the file will replace the actor's animation groups. The actor's model must be already loaded into memory to have its animations modified. The overridden animations only persist until the actor is unloaded.
--- 
--- Calling this more than once will remove the previous animation override before loading the new animation. Therefore, if applying animations to the player, you should call this before every playAnimation so that different animation mods can co-exist. For NPCs under your mod's control, you only need to do it when the player enters the cell containing the NPC.
--- 
--- Calling this without a file argument will reset the reference's animations to default.
--- @param params tes3.loadAnimation.params This table accepts the following values:
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — The reference to the actor that is having its animations modified.
--- 
--- `file`: string — *Optional*. The specified animation base file that will be loaded. e.g. For an animation composed of files anim.nif, xanim.nif and xanim.kf, you should pass file="anim.nif". The animation target skeleton _must_ match the skeleton of the actor to work. i.e. 3rd person anims for NPCs and tes3.player, 1st person anims for firstPersonReference.
function tes3.loadAnimation(params) end

---Table parameter definitions for `tes3.loadAnimation`.
--- @class tes3.loadAnimation.params
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string The reference to the actor that is having its animations modified.
--- @field file string *Optional*. The specified animation base file that will be loaded. e.g. For an animation composed of files anim.nif, xanim.nif and xanim.kf, you should pass file="anim.nif". The animation target skeleton _must_ match the skeleton of the actor to work. i.e. 3rd person anims for NPCs and tes3.player, 1st person anims for firstPersonReference.

--- Loads a game.
--- @param filename string The full filename of the save that we want to load, including extension.
function tes3.loadGame(filename) end

--- Loads a mesh file and provides a scene graph object.
--- @param path string Path, relative to Data Files/Meshes.
--- @param useCache boolean *Default*: `true`. If false, a new object will be created even if it had been previously loaded.
--- @return niBillboardNode|niCollisionSwitch|niNode|niSwitchNode model No description yet available.
function tes3.loadMesh(path, useCache) end

--- Loads a source texture file and provides the niSourceTexture object.
--- @param path string Path, relative to Data Files/Textures.
--- @param useCache boolean *Default*: `true`. If false, a new object will be created even if it had been previously loaded.
--- @return niSourceTexture texture No description yet available.
function tes3.loadSourceTexture(path, useCache) end

--- Locks an object, and optionally sets a locked reference's lock level. Returns true if the object can be and wasn't already locked.
--- @param params tes3.lock.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — No description yet available.
--- 
--- `level`: number — *Optional*. No description yet available.
--- @return boolean locked No description yet available.
function tes3.lock(params) end

---Table parameter definitions for `tes3.lock`.
--- @class tes3.lock.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string No description yet available.
--- @field level number *Optional*. No description yet available.

--- This function returns a function that iterates over a tes3tarray object. This is useful for for loops.
--- @param tarray tes3tarray No description yet available.
--- @return function iterationFunction No description yet available.
function tes3.loopTArray(tarray) end

--- Returns a safe handle for the object. To use the object use :getObject(). To check if it still exists use :valid().
--- @return tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3enchantment|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3reference|tes3repairTool|tes3spell|tes3static|tes3weapon object No description yet available.
function tes3.makeSafeObjectHandle() end

--- Returns true if the player is currently in menu mode.
--- @return boolean inMenuMode No description yet available.
function tes3.menuMode() end

--- Displays a message box. This may be a simple toast-style message, or a box with choice buttons.
--- @param messageOrParams tes3.messageBox.params This table accepts the following values:
--- 
--- `message`: string — No description yet available.
--- 
--- `buttons`: table — *Optional*. An array of strings to use for buttons.
--- 
--- `callback`: function — No description yet available.
--- 
--- `showInDialog`: boolean — *Optional*. Specifying showInDialog = false forces the toast-style message, which is not shown in the dialog menu. Defaults to true.
--- 
--- `duration`: number — *Optional*. Overrides how long the toast-style message remains visible.
--- @vararg any *Optional*. Only used if messageOrParams is a string.
--- @return tes3uiElement|nil element The UI menu created for the notification, if any.
function tes3.messageBox(messageOrParams, ...) end

---Table parameter definitions for `tes3.messageBox`.
--- @class tes3.messageBox.params
--- @field message string No description yet available.
--- @field buttons table *Optional*. An array of strings to use for buttons.
--- @field callback function No description yet available.
--- @field showInDialog boolean *Optional*. Specifying showInDialog = false forces the toast-style message, which is not shown in the dialog menu. Defaults to true.
--- @field duration number *Optional*. Overrides how long the toast-style message remains visible.

--- Modifies a statistic on a given actor. This should be used instead of manually setting values on the game structures, to ensure that events and GUI elements are properly handled. Either skill, attribute, or name must be provided.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/types/tes3/#tes3modstatistic).
--- @param params tes3.modStatistic.params This table accepts the following values:
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — No description yet available.
--- 
--- `name`: string — *Optional*. A generic name of an attribute to set.
--- 
--- `attribute`: number — *Optional*. The attribute to set.
--- 
--- `skill`: number — *Optional*. The skill to set.
--- 
--- `base`: number — *Optional*. If set, the base value will be modified.
--- 
--- `current`: number — *Optional*. If set, the current value will be modified.
--- 
--- `value`: number — *Optional*. If set, both the base and current value will be modified.
--- 
--- `limit`: boolean — If set, the attribute won't rise above 100 or fall below 0.
--- 
--- `limitToBase`: boolean — If set, the attribute's current value won't rise above its base value. Useful for health, magicka, and fatigue.
function tes3.modStatistic(params) end

---Table parameter definitions for `tes3.modStatistic`.
--- @class tes3.modStatistic.params
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string No description yet available.
--- @field name string *Optional*. A generic name of an attribute to set.
--- @field attribute number *Optional*. The attribute to set.
--- @field skill number *Optional*. The skill to set.
--- @field base number *Optional*. If set, the base value will be modified.
--- @field current number *Optional*. If set, the current value will be modified.
--- @field value number *Optional*. If set, both the base and current value will be modified.
--- @field limit boolean If set, the attribute won't rise above 100 or fall below 0.
--- @field limitToBase boolean If set, the attribute's current value won't rise above its base value. Useful for health, magicka, and fatigue.

--- Starts a new game.
function tes3.newGame() end

--- Returns true if the player is on the main menu, and hasn't loaded a game yet.
--- @return boolean onMainMenu No description yet available.
function tes3.onMainMenu() end

--- Attempts a persuasion attempt on an actor, potentially adjusting their disposition. Returns true if the attempt was a success.
--- @param params tes3.persuade.params This table accepts the following values:
--- 
--- `actor`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — The actor to try to persuade.
--- 
--- `index`: number — *Optional*. If an index is provided, 0-indexed with the following results: admire, intimidate, taunt, bribe (10), bribe (100), bribe (1000).
--- 
--- `modifier`: number — *Optional*. If no index is provided, this is the direct modifier to try.
--- @return boolean success No description yet available.
function tes3.persuade(params) end

---Table parameter definitions for `tes3.persuade`.
--- @class tes3.persuade.params
--- @field actor tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string The actor to try to persuade.
--- @field index number *Optional*. If an index is provided, 0-indexed with the following results: admire, intimidate, taunt, bribe (10), bribe (100), bribe (1000).
--- @field modifier number *Optional*. If no index is provided, this is the direct modifier to try.

--- Plays a given animation group. Optional flags can be used to define how the group starts.
--- 
--- When 'group' is specified, the actor AI is paused while playing the animation, as if in an idle state. When one or more of 'lower', 'upper', or 'shield' are specified without 'group', the actor AI retains control, and the animations are layered. e.g. `tes3.playAnimation{reference = ..., upper = tes3.animationGroup.idle3, loopCount = 0}` will play the idle3 animation once (without looping) on the upper body, while the player or NPC is still able to walk around. Using 'upper' defers combat actions until the animation is done. Using 'shield' still allows combat actions.
--- 
--- As a special case, `tes3.playAnimation{reference = ..., group = 0}` returns control to the AI, as the AI knows that is the actor's neutral idle state.
--- @param params tes3.playAnimation.params This table accepts the following values:
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — The reference that will play the animation.
--- 
--- `group`: number — *Optional*. The animation group id to start playing -- a value from 0 to 149. Applies the animation to the whole body. Maps to [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) constants.
--- 
--- `lower`: number — *Optional*. Sets the animation group id for the lower body. This is used to combine different animations for each body section. Maps to [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) constants.
--- 
--- `upper`: number — *Optional*. Sets the animation group id for the upper body. This is used to combine different animations for each body section. Maps to [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) constants.
--- 
--- `shield`: number — *Optional*. Sets the animation group id for the shield arm. This is used to combine different animations for each body section. Maps to [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) constants.
--- 
--- `startFlag`: number — *Default*: `tes3.animationStartFlag.immediate`. A flag for starting the group with, using [`tes3.animationStartFlag`](https://mwse.github.io/MWSE/references/animation-start-flags/) constants.
--- 
--- `loopCount`: number — *Default*: `-1`. If provided, the animation will repeat its loop section a given number of times. To make an animation play through once, set loopCount = 0. Defaults to infinite looping.
--- 
--- `mesh`: string — *Optional*. Deprecated. Please use tes3.loadAnimation (check its documentation) before calling playAnimation. You can also use loadAnimation to reset loaded animations to default.
function tes3.playAnimation(params) end

---Table parameter definitions for `tes3.playAnimation`.
--- @class tes3.playAnimation.params
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string The reference that will play the animation.
--- @field group number *Optional*. The animation group id to start playing -- a value from 0 to 149. Applies the animation to the whole body. Maps to [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) constants.
--- @field lower number *Optional*. Sets the animation group id for the lower body. This is used to combine different animations for each body section. Maps to [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) constants.
--- @field upper number *Optional*. Sets the animation group id for the upper body. This is used to combine different animations for each body section. Maps to [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) constants.
--- @field shield number *Optional*. Sets the animation group id for the shield arm. This is used to combine different animations for each body section. Maps to [`tes3.animationGroup`](https://mwse.github.io/MWSE/references/animation-groups/) constants.
--- @field startFlag number *Default*: `tes3.animationStartFlag.immediate`. A flag for starting the group with, using [`tes3.animationStartFlag`](https://mwse.github.io/MWSE/references/animation-start-flags/) constants.
--- @field loopCount number *Default*: `-1`. If provided, the animation will repeat its loop section a given number of times. To make an animation play through once, set loopCount = 0. Defaults to infinite looping.
--- @field mesh string *Optional*. Deprecated. Please use tes3.loadAnimation (check its documentation) before calling playAnimation. You can also use loadAnimation to reset loaded animations to default.

--- Plays the sound responsible for picking up or putting down an item.
--- @param params tes3.playItemPickupSound.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — *Optional*. The reference to attach the sound to.
--- 
--- `item`: tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon — No description yet available.
--- 
--- `pickup`: boolean — *Default*: `true`. If false, the place down item will be used.
--- @return boolean executed No description yet available.
function tes3.playItemPickupSound(params) end

---Table parameter definitions for `tes3.playItemPickupSound`.
--- @class tes3.playItemPickupSound.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string *Optional*. The reference to attach the sound to.
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon No description yet available.
--- @field pickup boolean *Default*: `true`. If false, the place down item will be used.

--- Plays a sound on a given reference. Provides control over volume (including volume channel), pitch, and loop control.
--- 	
--- **Note**: MP3 sound files can only be played if they are inside \\Vo\\ folder. The files must conform to the MPEG Layer-3, 64 Kbps 44100 kHz, 16-bit mono specification.
--- @param params tes3.playSound.params This table accepts the following values:
--- 
--- `sound`: tes3sound|string — The sound object, or id of the sound to look for.
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — *Optional*. The reference to attach the sound to.
--- 
--- `loop`: boolean — If true, the sound will loop.
--- 
--- `mixChannel`: number — *Default*: `tes3.audioMixType.effects`. The channel to base volume off of. Maps to [`tes3.audioMixType`](https://mwse.github.io/MWSE/references/audio-mix-types/) constants.
--- 
--- `volume`: number — *Default*: `1.0`. A value between 0.0 and 1.0 to scale the volume off of.
--- 
--- `pitch`: number — *Default*: `1.0`. The pitch-shift multiplier. For 22kHz audio (most typical) it can have the range [0.005, 4.5]; for 44kHz audio it can have the range [0.0025, 2.25].
--- 
--- `soundPath`: string — *Optional*. The path to a custom soundfile (useful for playing sounds that are not registered in the Construction Set). Starts in Data Files\Sound.
--- @return boolean executed No description yet available.
function tes3.playSound(params) end

---Table parameter definitions for `tes3.playSound`.
--- @class tes3.playSound.params
--- @field sound tes3sound|string The sound object, or id of the sound to look for.
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string *Optional*. The reference to attach the sound to.
--- @field loop boolean If true, the sound will loop.
--- @field mixChannel number *Default*: `tes3.audioMixType.effects`. The channel to base volume off of. Maps to [`tes3.audioMixType`](https://mwse.github.io/MWSE/references/audio-mix-types/) constants.
--- @field volume number *Default*: `1.0`. A value between 0.0 and 1.0 to scale the volume off of.
--- @field pitch number *Default*: `1.0`. The pitch-shift multiplier. For 22kHz audio (most typical) it can have the range [0.005, 4.5]; for 44kHz audio it can have the range [0.0025, 2.25].
--- @field soundPath string *Optional*. The path to a custom soundfile (useful for playing sounds that are not registered in the Construction Set). Starts in Data Files\Sound.

--- Causes a target actor to play a voiceover.
--- @param params tes3.playVoiceover.params This table accepts the following values:
--- 
--- `actor`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — The actor to play a voiceover.
--- 
--- `voiceover`: number — Maps to [`tes3.voiceover`](https://mwse.github.io/MWSE/references/voiceovers/) constants.
--- @return boolean played No description yet available.
function tes3.playVoiceover(params) end

---Table parameter definitions for `tes3.playVoiceover`.
--- @class tes3.playVoiceover.params
--- @field actor tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string The actor to play a voiceover.
--- @field voiceover number Maps to [`tes3.voiceover`](https://mwse.github.io/MWSE/references/voiceovers/) constants.

--- Positions a reference to another place.
--- @param params tes3.positionCell.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — *Default*: `tes3.mobilePlayer`. The reference to reposition.
--- 
--- `cell`: tes3cell — *Optional*. The cell to move the reference to. If not provided, the reference will be moved to a cell in the exterior worldspace at the position provided.
--- 
--- `position`: tes3vector3|table — The position to move the reference to.
--- 
--- `orientation`: tes3vector3|table — *Optional*. The position to move the reference to.
--- 
--- `forceCellChange`: boolean — When true, forces the game to update a reference that has moved within a single cell, as if it was moved into a new cell.
--- 
--- `suppressFader`: boolean — When moving the player, can be used to prevent the fade in and out visual effect.
--- 
--- `teleportCompanions`: boolean — *Default*: `true`. If used on the player, determines if companions should also be teleported.
--- @return boolean executed No description yet available.
function tes3.positionCell(params) end

---Table parameter definitions for `tes3.positionCell`.
--- @class tes3.positionCell.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string *Default*: `tes3.mobilePlayer`. The reference to reposition.
--- @field cell tes3cell *Optional*. The cell to move the reference to. If not provided, the reference will be moved to a cell in the exterior worldspace at the position provided.
--- @field position tes3vector3|table The position to move the reference to.
--- @field orientation tes3vector3|table *Optional*. The position to move the reference to.
--- @field forceCellChange boolean When true, forces the game to update a reference that has moved within a single cell, as if it was moved into a new cell.
--- @field suppressFader boolean When moving the player, can be used to prevent the fade in and out visual effect.
--- @field teleportCompanions boolean *Default*: `true`. If used on the player, determines if companions should also be teleported.

--- Simulates pushing a keyboard key.
--- @param keyCode number No description yet available.
function tes3.pushKey(keyCode) end

--- Returns a value from Morrowind's random number generator. This is not preferrable to lua's math.random function, but may be necessary for reproducing Morrowind's generation.
--- @param seed number *Optional*. If provided, it the number generator is seeded with this value. Pointers to objects may be used, such as a reference's sceneNode, to create a consistent if less than random seed.
function tes3.random(seed) end

--- Performs a ray test and returns various information related to the result(s). If findAll is set, the result will be a table of results, otherwise only the first result is returned.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/types/tes3/#tes3raytest).
--- @param params tes3.rayTest.params This table accepts the following values:
--- 
--- `position`: tes3vector3|table — Position of the ray origin.
--- 
--- `direction`: tes3vector3|table — Direction of the ray. Does not have to be unit length.
--- 
--- `findAll`: boolean — If true, the ray test won't stop after the first result.
--- 
--- `maxDistance`: number — *Optional*. The maximum distance that the test will run.
--- 
--- `sort`: boolean — *Default*: `true`. If true, the results will be sorted by distance from the origin position.
--- 
--- `useModelBounds`: boolean — If true, model bounds will be tested for intersection. Otherwise triangles will be used.
--- 
--- `useModelCoordinates`: boolean — If true, model coordinates will be used instead of world coordinates.
--- 
--- `useBackTriangles`: boolean — Include intersections with back-facing triangles.
--- 
--- `observeAppCullFlag`: boolean — *Default*: `true`. Ignore intersections with culled (hidden) models.
--- 
--- `root`: node* — *Default*: `tes3.game.worldSceneGraphRoot`. Node pointer to node scene.
--- 
--- `ignoreSkinned`: boolean — Ignore results from skinned objects.
--- 
--- `returnColor`: boolean — Calculate and return the vertex color at intersections.
--- 
--- `returnNormal`: boolean — *Default*: `true`. Calculate and return the vertex normal at intersections.
--- 
--- `returnSmoothNormal`: boolean — Use normal interpolation for calculating vertex normals.
--- 
--- `returnTexture`: boolean — Calculate and return the texture coordinate at intersections.
--- 
--- `ignore`: table — *Optional*. An array of references and/or scene graph nodes to cull from the result(s).
--- @return niPickRecord|table result No description yet available.
function tes3.rayTest(params) end

---Table parameter definitions for `tes3.rayTest`.
--- @class tes3.rayTest.params
--- @field position tes3vector3|table Position of the ray origin.
--- @field direction tes3vector3|table Direction of the ray. Does not have to be unit length.
--- @field findAll boolean If true, the ray test won't stop after the first result.
--- @field maxDistance number *Optional*. The maximum distance that the test will run.
--- @field sort boolean *Default*: `true`. If true, the results will be sorted by distance from the origin position.
--- @field useModelBounds boolean If true, model bounds will be tested for intersection. Otherwise triangles will be used.
--- @field useModelCoordinates boolean If true, model coordinates will be used instead of world coordinates.
--- @field useBackTriangles boolean Include intersections with back-facing triangles.
--- @field observeAppCullFlag boolean *Default*: `true`. Ignore intersections with culled (hidden) models.
--- @field root node* *Default*: `tes3.game.worldSceneGraphRoot`. Node pointer to node scene.
--- @field ignoreSkinned boolean Ignore results from skinned objects.
--- @field returnColor boolean Calculate and return the vertex color at intersections.
--- @field returnNormal boolean *Default*: `true`. Calculate and return the vertex normal at intersections.
--- @field returnSmoothNormal boolean Use normal interpolation for calculating vertex normals.
--- @field returnTexture boolean Calculate and return the texture coordinate at intersections.
--- @field ignore table *Optional*. An array of references and/or scene graph nodes to cull from the result(s).

--- Simulates releasing a keyboard key.
--- @param keyCode number No description yet available.
function tes3.releaseKey(keyCode) end

--- Removes magic effects from a given reference. Requires that either the effect or castType parameter be provided.
--- @param reference tes3reference Target reference to remove effects from.
--- @param effect number *Optional*. Maps to [`tes3.effect`](https://mwse.github.io/MWSE/references/magic-effects/) constants.
--- @param castType number *Optional*. Maps to [`tes3.spellType`](https://mwse.github.io/MWSE/references/spell-types/) constants.
--- @param chance number *Default*: `100`. The chance for the effect to be removed.
--- @param removeSpell boolean *Optional*. If removing by cast type, determines if the spell should be removed from the target's spell list. Defaults to true if castType is not `tes3.spellType.spell.` This causes diseases and curses to be removed when dispelled.
function tes3.removeEffects(reference, effect, castType, chance, removeSpell) end

--- Removes an item from a given reference's inventory.
--- @param params tes3.removeItem.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — Who to remove items from.
--- 
--- `item`: tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string — The item to remove.
--- 
--- `itemData`: tes3itemData — *Optional*. The item data for the exact item to remove.
--- 
--- `deleteItemData`: tes3itemData — *Optional*. Whether to delete the item data after remove succeeds. Automatically set if itemData is used. Does not need to be specified for normal usage.
--- 
--- `count`: number — *Default*: `1`. The maximum number of items to remove.
--- 
--- `playSound`: boolean — *Default*: `true`. If false, the up/down sound for the item won't be played.
--- 
--- `updateGUI`: boolean — *Default*: `true`. If false, the function won't manually resync the player's GUI state. This can result in some optimizations, though `tes3ui.forcePlayerInventoryUpdate()` must manually be called after all inventory updates are finished.
--- @return number removedCount No description yet available.
function tes3.removeItem(params) end

---Table parameter definitions for `tes3.removeItem`.
--- @class tes3.removeItem.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string Who to remove items from.
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string The item to remove.
--- @field itemData tes3itemData *Optional*. The item data for the exact item to remove.
--- @field deleteItemData tes3itemData *Optional*. Whether to delete the item data after remove succeeds. Automatically set if itemData is used. Does not need to be specified for normal usage.
--- @field count number *Default*: `1`. The maximum number of items to remove.
--- @field playSound boolean *Default*: `true`. If false, the up/down sound for the item won't be played.
--- @field updateGUI boolean *Default*: `true`. If false, the function won't manually resync the player's GUI state. This can result in some optimizations, though `tes3ui.forcePlayerInventoryUpdate()` must manually be called after all inventory updates are finished.

--- Removes and deletes item data from a given reference, or from their inventory. If no `itemData` is provided, it will be removed from the reference itself.
--- @param params tes3.removeItemData.params This table accepts the following values:
--- 
--- `from`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The reference or mobile whose inventory will be modified.
--- 
--- `item`: tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string — The item to remove item data for.
--- 
--- `itemData`: tes3itemData — *Optional*. The exact item data to remove. If no itemData is provided, the itemData from the reference itself will be removed.
--- 
--- `force`: boolean — If true, no checks are made to see if the item data should be deleted. It will always be purged.
--- 
--- `ignoreOwnership`: boolean — *Default*: `true`. If `force` is false, a check will be made to see if the item data is empty and can be deleted. By default this ignores any ownership data. Setting this to false will override that behavior.
--- 
--- `updateGUI`: boolean — *Default*: `true`. If false, the player or contents menu won't be updated.
--- @return boolean wasRemoved No description yet available.
function tes3.removeItemData(params) end

---Table parameter definitions for `tes3.removeItemData`.
--- @class tes3.removeItemData.params
--- @field from tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The reference or mobile whose inventory will be modified.
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string The item to remove item data for.
--- @field itemData tes3itemData *Optional*. The exact item data to remove. If no itemData is provided, the itemData from the reference itself will be removed.
--- @field force boolean If true, no checks are made to see if the item data should be deleted. It will always be purged.
--- @field ignoreOwnership boolean *Default*: `true`. If `force` is false, a check will be made to see if the item data is empty and can be deleted. By default this ignores any ownership data. Setting this to false will override that behavior.
--- @field updateGUI boolean *Default*: `true`. If false, the player or contents menu won't be updated.

--- Stops a sound playing. Without a reference, it will match unattached sounds. With a reference, it will only match a sound playing on that specific reference.
--- @param params tes3.removeSound.params This table accepts the following values:
--- 
--- `sound`: tes3sound|string — The sound object, or id of the sound to look for.
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — *Optional*. The reference the sound is attached to.
function tes3.removeSound(params) end

---Table parameter definitions for `tes3.removeSound`.
--- @class tes3.removeSound.params
--- @field sound tes3sound|string The sound object, or id of the sound to look for.
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string *Optional*. The reference the sound is attached to.

--- Removes a spell from an actor's spell list. If the spell is passive, any active effects from that spell are retired.
--- @param params tes3.removeSpell.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — Who to remove the spell from. To manipulate an actor without specifying any particular reference, use `actor` instead.
--- 
--- `actor`: tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string — Who to remove the spell from. Providing a base actor can be done before a save has been loaded, but may not correctly update effects for instanced versions of that actor in an active save.
--- 
--- `spell`: tes3spell|string — The spell to remove.
--- 
--- `updateGUI`: boolean — *Default*: `true`. If true, the GUI will be updated respsecting the removal of the spell. This can be useful to disable when batch-removing many spells. The batch should be ended with `tes3.updateMagicGUI` to reflect the changes.
--- @return boolean wasRemoved True if the spell was successfully removed. This can be false if the spell comes from a race or birthsign.
function tes3.removeSpell(params) end

---Table parameter definitions for `tes3.removeSpell`.
--- @class tes3.removeSpell.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string Who to remove the spell from. To manipulate an actor without specifying any particular reference, use `actor` instead.
--- @field actor tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string Who to remove the spell from. Providing a base actor can be done before a save has been loaded, but may not correctly update effects for instanced versions of that actor in an active save.
--- @field spell tes3spell|string The spell to remove.
--- @field updateGUI boolean *Default*: `true`. If true, the GUI will be updated respsecting the removal of the spell. This can be useful to disable when batch-removing many spells. The batch should be ended with `tes3.updateMagicGUI` to reflect the changes.

--- This function will compile and run a mwscript chunk of code. This is not ideal to use, but can be used for features not yet exposed to lua.
--- @param params tes3.runLegacyScript.params This table accepts the following values:
--- 
--- `script`: tes3script — *Default*: `tes3.worldController.scriptGlobals`. The base script to base the execution from.
--- 
--- `source`: number — The compilation source to use. Defaults to tes3.scriptSource.default
--- 
--- `command`: string — The script text to compile and run.
--- 
--- `variables`: tes3scriptVariables — *Optional*. If a reference is provided, the reference's variables will be used.
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The reference to target for execution.
--- 
--- `dialogue`: tes3dialogue|string — *Optional*. If compiling for dialogue context, the dialogue associated with the script.
--- 
--- `info`: tes3dialogueInfo — *Optional*. The info associated with the dialogue.
--- @return boolean executed No description yet available.
function tes3.runLegacyScript(params) end

---Table parameter definitions for `tes3.runLegacyScript`.
--- @class tes3.runLegacyScript.params
--- @field script tes3script *Default*: `tes3.worldController.scriptGlobals`. The base script to base the execution from.
--- @field source number The compilation source to use. Defaults to tes3.scriptSource.default
--- @field command string The script text to compile and run.
--- @field variables tes3scriptVariables *Optional*. If a reference is provided, the reference's variables will be used.
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The reference to target for execution.
--- @field dialogue tes3dialogue|string *Optional*. If compiling for dialogue context, the dialogue associated with the script.
--- @field info tes3dialogueInfo *Optional*. The info associated with the dialogue.

--- Saves the game.
--- @param params tes3.saveGame.params This table accepts the following values:
--- 
--- `file`: string — *Default*: `"quiksave"`. The filename of the save that will be created, without extension.
--- 
--- `name`: string — *Default*: `"Quicksave"`. The display name of the save.
--- @return boolean saved No description yet available.
function tes3.saveGame(params) end

---Table parameter definitions for `tes3.saveGame`.
--- @class tes3.saveGame.params
--- @field file string *Default*: `"quiksave"`. The filename of the save that will be created, without extension.
--- @field name string *Default*: `"Quicksave"`. The display name of the save.

--- Plays a sound file, with an optional alteration and subtitle.
--- 
--- **Note**: MP3 voice files must conform to the MPEG Layer-3, 64 Kbps 44100 kHz, 16-bit mono specification.
--- @param params tes3.say.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The reference to make say something.
--- 
--- `soundPath`: string — A path to a valid sound file.
--- 
--- `pitch`: number — *Default*: `1`. A pitch shift to adjust the sound with.
--- 
--- `volume`: number — *Default*: `1`. The volume to play the sound at, relative to the voice mix channel.
--- 
--- `forceSubtitle`: boolean — If true a subtitle will be shown, even if subtitles are disabled.
--- 
--- `subtitle`: string — *Optional*. The subtitle to show if subtitles are enabled, or if forceSubtitle is set.
function tes3.say(params) end

---Table parameter definitions for `tes3.say`.
--- @class tes3.say.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The reference to make say something.
--- @field soundPath string A path to a valid sound file.
--- @field pitch number *Default*: `1`. A pitch shift to adjust the sound with.
--- @field volume number *Default*: `1`. The volume to play the sound at, relative to the voice mix channel.
--- @field forceSubtitle boolean If true a subtitle will be shown, even if subtitles are disabled.
--- @field subtitle string *Optional*. The subtitle to show if subtitles are enabled, or if forceSubtitle is set.

--- Changes the 3rd person camera's offset from the player's head.
--- 
--- Note this function can be used once WorldController and MobilePlayer have finished initializing.
--- @param offset tes3vector3 The offset vector.
function tes3.set3rdPersonCameraOffset(offset) end

--- Configures a mobile actor to activate an object.
--- @param params tes3.setAIActivate.params This table accepts the following values:
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference — No description yet available.
--- 
--- `target`: tes3reference — No description yet available.
--- 
--- `reset`: boolean — *Default*: `true`. No description yet available.
function tes3.setAIActivate(params) end

---Table parameter definitions for `tes3.setAIActivate`.
--- @class tes3.setAIActivate.params
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference No description yet available.
--- @field target tes3reference No description yet available.
--- @field reset boolean *Default*: `true`. No description yet available.

--- Configures a mobile actor to escort another actor to a destination.
--- @param params tes3.setAIEscort.params This table accepts the following values:
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference — No description yet available.
--- 
--- `target`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer — No description yet available.
--- 
--- `destination`: tes3vector3|table — No description yet available.
--- 
--- `duration`: number — *Optional*. No description yet available.
--- 
--- `cell`: tes3cell|string — *Optional*. No description yet available.
--- 
--- `reset`: boolean — *Default*: `true`. No description yet available.
function tes3.setAIEscort(params) end

---Table parameter definitions for `tes3.setAIEscort`.
--- @class tes3.setAIEscort.params
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference No description yet available.
--- @field target tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer No description yet available.
--- @field destination tes3vector3|table No description yet available.
--- @field duration number *Optional*. No description yet available.
--- @field cell tes3cell|string *Optional*. No description yet available.
--- @field reset boolean *Default*: `true`. No description yet available.

--- Configures a mobile actor to follow another actor to a destination.
--- @param params tes3.setAIFollow.params This table accepts the following values:
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference — No description yet available.
--- 
--- `target`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer — No description yet available.
--- 
--- `destination`: tes3vector3|table — *Optional*. No description yet available.
--- 
--- `duration`: number — *Optional*. No description yet available.
--- 
--- `cell`: tes3cell|string — *Optional*. No description yet available.
--- 
--- `reset`: boolean — *Default*: `true`. No description yet available.
function tes3.setAIFollow(params) end

---Table parameter definitions for `tes3.setAIFollow`.
--- @class tes3.setAIFollow.params
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference No description yet available.
--- @field target tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer No description yet available.
--- @field destination tes3vector3|table *Optional*. No description yet available.
--- @field duration number *Optional*. No description yet available.
--- @field cell tes3cell|string *Optional*. No description yet available.
--- @field reset boolean *Default*: `true`. No description yet available.

--- Configures a mobile actor to travel to a destination.
--- @param params tes3.setAITravel.params This table accepts the following values:
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference — No description yet available.
--- 
--- `destination`: tes3vector3|table — No description yet available.
--- 
--- `reset`: boolean — *Default*: `true`. No description yet available.
function tes3.setAITravel(params) end

---Table parameter definitions for `tes3.setAITravel`.
--- @class tes3.setAITravel.params
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference No description yet available.
--- @field destination tes3vector3|table No description yet available.
--- @field reset boolean *Default*: `true`. No description yet available.

--- Configures a mobile actor to wander around a cell.
--- @param params tes3.setAIWander.params This table accepts the following values:
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference — No description yet available.
--- 
--- `idles`: table — No description yet available.
--- 
--- `range`: number — *Optional*. No description yet available.
--- 
--- `duration`: number — *Optional*. No description yet available.
--- 
--- `time`: number — *Optional*. No description yet available.
--- 
--- `reset`: boolean — *Default*: `true`. No description yet available.
function tes3.setAIWander(params) end

---Table parameter definitions for `tes3.setAIWander`.
--- @class tes3.setAIWander.params
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference No description yet available.
--- @field idles table No description yet available.
--- @field range number *Optional*. No description yet available.
--- @field duration number *Optional*. No description yet available.
--- @field time number *Optional*. No description yet available.
--- @field reset boolean *Default*: `true`. No description yet available.

--- This function sets a reference's animation groups' timings to a specified value.
--- @param params tes3.setAnimationTiming.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — A reference whose animation groups' timings to set.
--- 
--- `timing`: number|table — If one parameter is provided, all animation data timings will be set to the timing provided. If a table with 3 timings is provided, animation data timings will be set accordingly.
function tes3.setAnimationTiming(params) end

---Table parameter definitions for `tes3.setAnimationTiming`.
--- @class tes3.setAnimationTiming.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string A reference whose animation groups' timings to set.
--- @field timing number|table If one parameter is provided, all animation data timings will be set to the timing provided. If a table with 3 timings is provided, animation data timings will be set accordingly.

--- Sets or changes the destination of a door to a new location.
--- @param params tes3.setDestination.params This table accepts the following values:
--- 
--- `reference`: tes3reference — The door reference that will be updated.
--- 
--- `position`: tes3vector3|table — The new coordinates of the transition.
--- 
--- `orientation`: tes3vector3|table — The new rotation to use after transition.
--- 
--- `cell`: tes3cell|string — *Optional*. The cell to transition to, if transitioning to an interior.
function tes3.setDestination(params) end

---Table parameter definitions for `tes3.setDestination`.
--- @class tes3.setDestination.params
--- @field reference tes3reference The door reference that will be updated.
--- @field position tes3vector3|table The new coordinates of the transition.
--- @field orientation tes3vector3|table The new rotation to use after transition.
--- @field cell tes3cell|string *Optional*. The cell to transition to, if transitioning to an interior.

--- Enables or disables a reference.
--- @param params tes3.setEnabled.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The reference to enable/disable.
--- 
--- `toggle`: boolean — If true, the enabled state will be toggled.
--- 
--- `enabled`: boolean — *Default*: `true`. If not toggling, will set true to enable or false to disable.
--- @return boolean success No description yet available.
function tes3.setEnabled(params) end

---Table parameter definitions for `tes3.setEnabled`.
--- @class tes3.setEnabled.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The reference to enable/disable.
--- @field toggle boolean If true, the enabled state will be toggled.
--- @field enabled boolean *Default*: `true`. If not toggling, will set true to enable or false to disable.

--- Sets the value of a global value. If the global could not be found, the function returns false.
--- @param id string No description yet available.
--- @param value number No description yet available.
--- @return boolean value No description yet available.
function tes3.setGlobal(id, value) end

--- This function changes an item's stolen flag. Morrowind handles stealing by marking the base item (not the inventory stack) with with NPCs that you have stolen that item from. The NPC will recognize an item is stolen if they are marked as stolen on the base item.
--- @param item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon The item whose stolen flag to modify.
--- @param from tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon The location the item is stolen from.
--- @param stolen boolean *Default*: `true`. If this parameter is set to true, the item will be flagged as stolen. Otherwise, the item's stolen flag will be removed.
function tes3.setItemIsStolen(item, from, stolen) end

--- Sets the index of a given journal in a way similar to the mwscript function SetJournalIndex.
--- @param params tes3.setJournalIndex.params This table accepts the following values:
--- 
--- `id`: tes3dialogue|string — No description yet available.
--- 
--- `index`: number — No description yet available.
--- 
--- `speaker`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — No description yet available.
--- 
--- `showMessage`: boolean — If set, a message may be shown to the player.
--- @return boolean wasSet No description yet available.
function tes3.setJournalIndex(params) end

---Table parameter definitions for `tes3.setJournalIndex`.
--- @class tes3.setJournalIndex.params
--- @field id tes3dialogue|string No description yet available.
--- @field index number No description yet available.
--- @field speaker tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string No description yet available.
--- @field showMessage boolean If set, a message may be shown to the player.

--- Sets player's kill count of a certain type of actor.
--- @param params tes3.setKillCount.params This table accepts the following values:
--- 
--- `actor`: tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string — The actor (or their ID) for whom to set player's kill count.
--- 
--- `count`: number — Number of kills that will be set.
function tes3.setKillCount(params) end

---Table parameter definitions for `tes3.setKillCount`.
--- @class tes3.setKillCount.params
--- @field actor tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3npc|tes3npcInstance|string The actor (or their ID) for whom to set player's kill count.
--- @field count number Number of kills that will be set.

--- Sets a locked reference's lock level. This does not lock the object.
--- @param params tes3.setLockLevel.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — No description yet available.
--- 
--- `level`: number — No description yet available.
--- @return boolean set No description yet available.
function tes3.setLockLevel(params) end

---Table parameter definitions for `tes3.setLockLevel`.
--- @class tes3.setLockLevel.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string No description yet available.
--- @field level number No description yet available.

--- This function sets the player's mark location to the one specified.
--- @param params tes3.setMarkLocation.params This table accepts the following values:
--- 
--- `position`: tes3vector3 — Coordinates of the mark's position.
--- 
--- `rotation`: number — *Default*: `Player's current rotation.`. This argument controls which direction the player's mark location will be facing.
--- 
--- `cell`: tes3cell — *Optional*. A cell in which the mark should be placed.
function tes3.setMarkLocation(params) end

---Table parameter definitions for `tes3.setMarkLocation`.
--- @class tes3.setMarkLocation.params
--- @field position tes3vector3 Coordinates of the mark's position.
--- @field rotation number *Default*: `Player's current rotation.`. This argument controls which direction the player's mark location will be facing.
--- @field cell tes3cell *Optional*. A cell in which the mark should be placed.

--- This function sets the owner of a reference.
--- @param params tes3.setOwner.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — A reference whose owner to set.
--- 
--- `remove`: boolean — *Optional*. If this parameter is set to true, reference's owner field will be removed.
--- 
--- `owner`: tes3npc|tes3faction|string — Assigns this NPC or a faction as the owner of the reference.
--- 
--- `requiredGlobal`: tes3globalVariable — *Optional*. If owner is set to NPC, requiredGlobal variable can be set.
--- 
--- `requiredRank`: number — *Default*: `0`. If owner is set to faction, requitedRank variable controls minimal rank in faction the player has to have to be able to freely take the reference.
function tes3.setOwner(params) end

---Table parameter definitions for `tes3.setOwner`.
--- @class tes3.setOwner.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string A reference whose owner to set.
--- @field remove boolean *Optional*. If this parameter is set to true, reference's owner field will be removed.
--- @field owner tes3npc|tes3faction|string Assigns this NPC or a faction as the owner of the reference.
--- @field requiredGlobal tes3globalVariable *Optional*. If owner is set to NPC, requiredGlobal variable can be set.
--- @field requiredRank number *Default*: `0`. If owner is set to faction, requitedRank variable controls minimal rank in faction the player has to have to be able to freely take the reference.

--- Enables or disables player's controls state.
--- @param params tes3.setPlayerControlState.params This table accepts the following values:
--- 
--- `enabled`: boolean — *Optional*. Setting this to false will disable any kind of control.
--- 
--- `attack`: boolean — *Optional*. If this is false, it will block player from attacking.
--- 
--- `jumping`: boolean — *Optional*. If this is false, it will block player from jumping.
--- 
--- `magic`: boolean — *Optional*. If this is false, it will block player from using magic.
--- 
--- `vanity`: boolean — *Optional*. If this is false, it will block player from going to vanity mode.
--- 
--- `viewSwitch`: boolean — *Optional*. If this is false, it will block player changing view mod from 1st to 3rd person camera and vice versa.
--- @return boolean changedControlState No description yet available.
function tes3.setPlayerControlState(params) end

---Table parameter definitions for `tes3.setPlayerControlState`.
--- @class tes3.setPlayerControlState.params
--- @field enabled boolean *Optional*. Setting this to false will disable any kind of control.
--- @field attack boolean *Optional*. If this is false, it will block player from attacking.
--- @field jumping boolean *Optional*. If this is false, it will block player from jumping.
--- @field magic boolean *Optional*. If this is false, it will block player from using magic.
--- @field vanity boolean *Optional*. If this is false, it will block player from going to vanity mode.
--- @field viewSwitch boolean *Optional*. If this is false, it will block player changing view mod from 1st to 3rd person camera and vice versa.

--- Sets an object (of any kind) to be sourceless, which are objects the game does not store in savegames. This can be useful for mod-created temporary objects which are not necessary to save.
--- @param params tes3.setSourceless.params This table accepts the following values:
--- 
--- `object`: tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon — 
--- 
--- `sourceless`: boolean — *Default*: `true`. 
function tes3.setSourceless(params) end

---Table parameter definitions for `tes3.setSourceless`.
--- @class tes3.setSourceless.params
--- @field object tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3birthsign|tes3bodyPart|tes3book|tes3cell|tes3class|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3dialogue|tes3dialogueInfo|tes3door|tes3enchantment|tes3faction|tes3gameSetting|tes3globalVariable|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3magicSourceInstance|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3quest|tes3race|tes3reference|tes3region|tes3repairTool|tes3script|tes3skill|tes3sound|tes3soundGenerator|tes3spell|tes3startScript|tes3static|tes3weapon 
--- @field sourceless boolean *Default*: `true`. 

--- Sets a statistic on a given actor. This should be used instead of manually setting values on the game structures, to ensure that events and GUI elements are properly handled. Either skill, attribute, or name must be provided.
--- @param params tes3.setStatistic.params This table accepts the following values:
--- 
--- `attribute`: number — *Optional*. The attribute to set.
--- 
--- `base`: number — *Optional*. If set, the base value will be set.
--- 
--- `current`: number — *Optional*. If set, the current value will be set.
--- 
--- `limit`: boolean — If set, the attribute won't rise above 100 or fall below 0.
--- 
--- `name`: string — *Optional*. A generic name of an attribute to set.
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — No description yet available.
--- 
--- `skill`: number — *Optional*. The skill to set.
--- 
--- `value`: number — *Optional*. If set, both the base and current value will be set.
function tes3.setStatistic(params) end

---Table parameter definitions for `tes3.setStatistic`.
--- @class tes3.setStatistic.params
--- @field attribute number *Optional*. The attribute to set.
--- @field base number *Optional*. If set, the base value will be set.
--- @field current number *Optional*. If set, the current value will be set.
--- @field limit boolean If set, the attribute won't rise above 100 or fall below 0.
--- @field name string *Optional*. A generic name of an attribute to set.
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string No description yet available.
--- @field skill number *Optional*. The skill to set.
--- @field value number *Optional*. If set, both the base and current value will be set.

--- Sets the trap on a given reference.
--- @param params tes3.setTrap.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — No description yet available.
--- 
--- `spell`: tes3spell|string — No description yet available.
--- @return boolean trapped No description yet available.
function tes3.setTrap(params) end

---Table parameter definitions for `tes3.setTrap`.
--- @class tes3.setTrap.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string No description yet available.
--- @field spell tes3spell|string No description yet available.

--- Toggles the camera into vanity mode. In vanity mode the camera is in third person and it is orbiting slowly around the player character. Returns true if changed to vanity mode.
--- 
--- Note that unlike the vanity mode caused by not doing anything for a while, this vanity mode must be toggled to go off.
--- @param params tes3.setVanityMode.params This table accepts the following values:
--- 
--- `enabled`: boolean — *Default*: `true`. This flag sets the vanity mode as enabled or disabled.
--- 
--- `checkVanityDisabled`: boolean — *Default*: `true`. This will prevent changing vanity mode according to vanityDisabled flag on tes3.mobilePlayer.
--- 
--- `toggle`: boolean — *Optional*. When this flag is set to true. The vanity mode will be toggled. If the player was in vanity mode, this will make the player leave vanity mode. Conversly, if the player wasn't in the vanity mode, this will turn on the vanity mode.
--- @return boolean changedVanityMode No description yet available.
function tes3.setVanityMode(params) end

---Table parameter definitions for `tes3.setVanityMode`.
--- @class tes3.setVanityMode.params
--- @field enabled boolean *Default*: `true`. This flag sets the vanity mode as enabled or disabled.
--- @field checkVanityDisabled boolean *Default*: `true`. This will prevent changing vanity mode according to vanityDisabled flag on tes3.mobilePlayer.
--- @field toggle boolean *Optional*. When this flag is set to true. The vanity mode will be toggled. If the player was in vanity mode, this will make the player leave vanity mode. Conversly, if the player wasn't in the vanity mode, this will turn on the vanity mode.

--- Sets player's kill count as a werewolf.
--- @param params tes3.setWerewolfKillCount.params This table accepts the following values:
--- 
--- `count`: number — Number of kills.
function tes3.setWerewolfKillCount(params) end

---Table parameter definitions for `tes3.setWerewolfKillCount`.
--- @class tes3.setWerewolfKillCount.params
--- @field count number Number of kills.

--- This function opens alchemy menu.
function tes3.showAlchemyMenu() end

--- Opens the service repair menu.
function tes3.showRepairServiceMenu() end

--- This function opens the resting menu and returns true on success. If the player can't rest currently, it returns false.
--- 
--- Various parameters can be used to allow resting in situations not normally possible.
--- @param params tes3.showRestMenu.params This table accepts the following values:
--- 
--- `checkForEnemies`: boolean — *Default*: `true`. Perform a check whether there are enemies nearby before opening rest menu. If there are, false is returned.
--- 
--- `checkForSolidGround`: boolean — *Default*: `true`. Perform a check if the player is underwater. If underwater, false is returned.
--- 
--- `checkSleepingIllegal`: boolean — *Default*: `true`. Perform a check if the sleeping in the current cell is illegal. If illegal, then the player will be prompted to wait instead of rest.
--- 
--- `checkIsWerewolf`: boolean — *Default*: `true`. Perform a check if the player is Werewolf. If they are, then the player will be prompted to wait instead of rest.
--- 
--- `showMessage`: boolean — *Default*: `true`. Should a messagebox be shown if the player can't open resting menu because some condition isn't met.
--- 
--- `resting`: boolean — *Default*: `true`. Should this be a rest?
--- 
--- `waiting`: boolean — *Optional*. Or, is this a wait?
--- @return boolean success No description yet available.
function tes3.showRestMenu(params) end

---Table parameter definitions for `tes3.showRestMenu`.
--- @class tes3.showRestMenu.params
--- @field checkForEnemies boolean *Default*: `true`. Perform a check whether there are enemies nearby before opening rest menu. If there are, false is returned.
--- @field checkForSolidGround boolean *Default*: `true`. Perform a check if the player is underwater. If underwater, false is returned.
--- @field checkSleepingIllegal boolean *Default*: `true`. Perform a check if the sleeping in the current cell is illegal. If illegal, then the player will be prompted to wait instead of rest.
--- @field checkIsWerewolf boolean *Default*: `true`. Perform a check if the player is Werewolf. If they are, then the player will be prompted to wait instead of rest.
--- @field showMessage boolean *Default*: `true`. Should a messagebox be shown if the player can't open resting menu because some condition isn't met.
--- @field resting boolean *Default*: `true`. Should this be a rest?
--- @field waiting boolean *Optional*. Or, is this a wait?

--- Skips a given reference's animation for a single frame.
--- @param params tes3.skipAnimationFrame.params This table accepts the following values:
--- 
--- `reference`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — The reference whose animation frame will be skipped.
function tes3.skipAnimationFrame(params) end

---Table parameter definitions for `tes3.skipAnimationFrame`.
--- @class tes3.skipAnimationFrame.params
--- @field reference tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string The reference whose animation frame will be skipped.

--- This function interrupts the current music to play the specified music track.
--- @param params tes3.streamMusic.params This table accepts the following values:
--- 
--- `path`: string — Path to the music file, relative to Data Files/music/.
--- 
--- `situation`: number — *Default*: `tes3.musicSituation.uninterruptible`. Determines what kind of gameplay situation the music should stay active for. Explore music plays during non-combat, and ends when combat starts. Combat music starts during combat, and ends when combat ends. Uninterruptible music always plays, ending only when the track does. This value maps to [`tes3.musicSituation`](https://mwse.github.io/MWSE/references/music-situations/) constants.
--- 
--- `crossfade`: number — *Default*: `1.0`. The duration in seconds of the crossfade from the old to the new track. The default is 1.0.
--- @return boolean executed No description yet available.
function tes3.streamMusic(params) end

---Table parameter definitions for `tes3.streamMusic`.
--- @class tes3.streamMusic.params
--- @field path string Path to the music file, relative to Data Files/music/.
--- @field situation number *Default*: `tes3.musicSituation.uninterruptible`. Determines what kind of gameplay situation the music should stay active for. Explore music plays during non-combat, and ends when combat starts. Combat music starts during combat, and ends when combat ends. Uninterruptible music always plays, ending only when the track does. This value maps to [`tes3.musicSituation`](https://mwse.github.io/MWSE/references/music-situations/) constants.
--- @field crossfade number *Default*: `1.0`. The duration in seconds of the crossfade from the old to the new track. The default is 1.0.

--- Simulates tapping a keyboard key.
--- @param keyCode number No description yet available.
function tes3.tapKey(keyCode) end

--- Checks if there is a clear line of sight between two references, or two points in space, in the same method that the game uses for actor vision. You should pass two references, or two positions and heights.
--- 
--- Only certain object types count as blocking for the purposes of the test:
--- Statics, activators, containers, doors, and lights with non-zero weight.
--- 
--- The collision root node is used for testing, if present in the model.
--- @param params tes3.testLineOfSight.params This table accepts the following values:
--- 
--- `reference1`: tes3reference — Position of the starting point of the LoS check. For actors, this point is set to position of this reference's head. For other objects the starting point is at the top of its bounding box.
--- 
--- `reference2`: tes3reference — Position of the ending point of the LoS check. For actors, this point is set to position of this reference's head. For other objects the ending point is at the top of its bounding box.
--- 
--- `position1`: tes3vector3|table — Position of the starting point of the LoS check. Modified by height1.
--- 
--- `height1`: tes3vector3|table — *Optional*. Moves the starting point upwards (+Z direction) by this amount. Normally used to simulate head height from a position that is on the ground. Defaults to 0.
--- 
--- `position2`: tes3vector3|table — Position of the ending point of the LoS check. Modified by height2.
--- 
--- `height2`: tes3vector3|table — *Optional*. Moves the starting point upwards (+Z direction) by this amount. Normally used to simulate head height from a position that is on the ground. Defaults to 0.
--- @return boolean hasLineOfSight No description yet available.
function tes3.testLineOfSight(params) end

---Table parameter definitions for `tes3.testLineOfSight`.
--- @class tes3.testLineOfSight.params
--- @field reference1 tes3reference Position of the starting point of the LoS check. For actors, this point is set to position of this reference's head. For other objects the starting point is at the top of its bounding box.
--- @field reference2 tes3reference Position of the ending point of the LoS check. For actors, this point is set to position of this reference's head. For other objects the ending point is at the top of its bounding box.
--- @field position1 tes3vector3|table Position of the starting point of the LoS check. Modified by height1.
--- @field height1 tes3vector3|table *Optional*. Moves the starting point upwards (+Z direction) by this amount. Normally used to simulate head height from a position that is on the ground. Defaults to 0.
--- @field position2 tes3vector3|table Position of the ending point of the LoS check. Modified by height2.
--- @field height2 tes3vector3|table *Optional*. Moves the starting point upwards (+Z direction) by this amount. Normally used to simulate head height from a position that is on the ground. Defaults to 0.

--- Forces a toggle of the player's POV the next simulation frame, and returns if the player was previously in 3rd person. Multiple calls in the same frame will not stack.
--- @return boolean was3rdPerson No description yet available.
function tes3.togglePOV() end

--- Moves one or more items from one reference to another. Returns the actual amount of items successfully transferred.
--- @param params tes3.transferItem.params This table accepts the following values:
--- 
--- `from`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — Who to take items from.
--- 
--- `to`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — Who to give items to.
--- 
--- `item`: tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string — The item to transfer.
--- 
--- `itemData`: tes3itemData — *Optional*. The specific item data to transfer if, for example, you want to transfer a specific player item.
--- 
--- `count`: number — *Default*: `1`. The maximum number of items to transfer.
--- 
--- `playSound`: boolean — *Default*: `true`. If false, the up/down sound for the item won't be played.
--- 
--- `limitCapacity`: boolean — *Default*: `true`. If false, items can be placed into containers that shouldn't normally be allowed. This includes organic containers, and containers that are full.
--- 
--- `updateGUI`: boolean — *Default*: `true`. If false, the function won't manually resync the player's GUI state. This can result in some optimizations, though `tes3ui.forcePlayerInventoryUpdate()` must manually be called after all inventory updates are finished.
--- @return number transferredCount No description yet available.
function tes3.transferItem(params) end

---Table parameter definitions for `tes3.transferItem`.
--- @class tes3.transferItem.params
--- @field from tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string Who to take items from.
--- @field to tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string Who to give items to.
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string The item to transfer.
--- @field itemData tes3itemData *Optional*. The specific item data to transfer if, for example, you want to transfer a specific player item.
--- @field count number *Default*: `1`. The maximum number of items to transfer.
--- @field playSound boolean *Default*: `true`. If false, the up/down sound for the item won't be played.
--- @field limitCapacity boolean *Default*: `true`. If false, items can be placed into containers that shouldn't normally be allowed. This includes organic containers, and containers that are full.
--- @field updateGUI boolean *Default*: `true`. If false, the function won't manually resync the player's GUI state. This can result in some optimizations, though `tes3ui.forcePlayerInventoryUpdate()` must manually be called after all inventory updates are finished.

--- Emulates the player committing a crime.
--- @param params tes3.triggerCrime.params This table accepts the following values:
--- 
--- `criminal`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — *Default*: `tes3.mobilePlayer`. No description yet available.
--- 
--- `forceDetection`: boolean — Can be set to true to ignore normal detection checks.
--- 
--- `type`: number — *Default*: `tes3.crimeType.stealing`. Maps to [`tes3.crimeType`](https://mwse.github.io/MWSE/references/crime-types/) constants.
--- 
--- `value`: number — Penalty for the crime. Defaults to 25 for pickpocketing.
--- 
--- `victim`: tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string — *Default*: `tes3.mobilePlayer`. No description yet available.
--- @return boolean executed No description yet available.
function tes3.triggerCrime(params) end

---Table parameter definitions for `tes3.triggerCrime`.
--- @class tes3.triggerCrime.params
--- @field criminal tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string *Default*: `tes3.mobilePlayer`. No description yet available.
--- @field forceDetection boolean Can be set to true to ignore normal detection checks.
--- @field type number *Default*: `tes3.crimeType.stealing`. Maps to [`tes3.crimeType`](https://mwse.github.io/MWSE/references/crime-types/) constants.
--- @field value number Penalty for the crime. Defaults to 25 for pickpocketing.
--- @field victim tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|tes3reference|string *Default*: `tes3.mobilePlayer`. No description yet available.

--- Changes a reference back from werewolf form to human. This function works only on a reference infected with Lycanthropy, be it the player or any other reference. Returns true if successful.
--- @param params tes3.undoTransform.params This table accepts the following values:
--- 
--- `reference`: tes3reference — A reference to change back to human.
--- @return boolean success No description yet available.
function tes3.undoTransform(params) end

---Table parameter definitions for `tes3.undoTransform`.
--- @class tes3.undoTransform.params
--- @field reference tes3reference A reference to change back to human.

--- Stops simulating hammering a keyboard key.
--- @param keyCode number No description yet available.
function tes3.unhammerKey(keyCode) end

--- Unlocks an object. Returns true if the object can be and wasn't already unlocked.
--- @param params tes3.unlock.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — No description yet available.
--- @return boolean unlocked No description yet available.
function tes3.unlock(params) end

---Table parameter definitions for `tes3.unlock`.
--- @class tes3.unlock.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string No description yet available.

--- Forces the GUI to update inventory-relevant elements for a given reference. This can be used after many calls to inventory-manipulating functions while passing updateGUI as false to resync inventory tiles, container weights, and companion data.
--- @param params tes3.updateInventoryGUI.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The reference to update GUI elements for.
function tes3.updateInventoryGUI(params) end

---Table parameter definitions for `tes3.updateInventoryGUI`.
--- @class tes3.updateInventoryGUI.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The reference to update GUI elements for.

--- Updates the journal index in a way similar to the mwscript function Journal.
--- @param params tes3.updateJournal.params This table accepts the following values:
--- 
--- `id`: tes3dialogue|string — No description yet available.
--- 
--- `index`: number — No description yet available.
--- 
--- `showMessage`: boolean — If set, a message may be shown to the player.
--- @return boolean wasSet No description yet available.
function tes3.updateJournal(params) end

---Table parameter definitions for `tes3.updateJournal`.
--- @class tes3.updateJournal.params
--- @field id tes3dialogue|string No description yet available.
--- @field index number No description yet available.
--- @field showMessage boolean If set, a message may be shown to the player.

--- Forces the GUI to update magic-relevant elements for a given reference. This can be used after many calls to magic- or magic item-manipulating functions while passing updateGUI as false to resync inventory tiles, container weights, and companion data.
--- @param params tes3.updateMagicGUI.params This table accepts the following values:
--- 
--- `reference`: tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string — The reference to update GUI elements for.
--- 
--- `updateSpells`: boolean — *Default*: `true`. Determines if the spell and power lists are refreshed.
--- 
--- `updateEnchantments`: boolean — *Default*: `true`. Determines if the enchanted items list is refreshed.
function tes3.updateMagicGUI(params) end

---Table parameter definitions for `tes3.updateMagicGUI`.
--- @class tes3.updateMagicGUI.params
--- @field reference tes3reference|tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer|string The reference to update GUI elements for.
--- @field updateSpells boolean *Default*: `true`. Determines if the spell and power lists are refreshed.
--- @field updateEnchantments boolean *Default*: `true`. Determines if the enchanted items list is refreshed.

--- This function wakes player up and returns true if successful.
--- 
--- Note this function returns false if WorldController or MobilePlayer aren't initialized, and if the player is not sleeping or waiting
--- @return boolean wokeUp No description yet available.
function tes3.wakeUp() end

