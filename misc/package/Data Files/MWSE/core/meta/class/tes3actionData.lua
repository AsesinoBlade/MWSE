--- @meta

--- A substructure of mobile actors that provides information about the current or previous action.
--- @class tes3actionData
--- @field aiBehaviorState number The behavior state of the [tes3actionData](https://mwse.github.io/MWSE/types/tes3actionData).
--- 
--- Value | Behavior
--- ----- | ---------
--- -1    | Undecided
--- 0     | Hello
--- 2     | Idle
--- 3     | Attack
--- 4     | Avoid
--- 6     | Flee
--- 8     | Walk
--- 12    | Greet
--- @field animationAttackState number No description yet available.
--- @field attackDirection number **Deprecated. Use `tes3actionData.physicalAttackType` instead.** When attacking, the direction swung with the weapon. This shows if the actor was thrusting, swinging, or chopping.
--- @field attackSwing number When attacking, this value represents how much the weapon has been pulled back. The value ranges from [0.0 - 1.0].
--- @field currentAnimationGroup number No description yet available.
--- @field hitTarget tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer No description yet available.
--- @field lastBarterHoursPassed number No description yet available.
--- @field nockedProjectile tes3mobileProjectile|tes3mobileSpellProjectile The currently nocked projectile the associated actor is using. It is available while charging a projectile attack, before releasing the projectile. This can be modified, but can only be set to nil, which will remove the projectile without consuming ammo.
--- @field physicalAttackType number A number from the [`tes3.physicalAttackType`](https://mwse.github.io/MWSE/references/physical-attack-types/) enumeration identifying the physical attack type. Can be `tes3.physicalAttackType.slash`, `.chop`, `.thrust`, `.projectile`, `.creature1`, `.creature2`, or `.creature3.`
--- @field physicalDamage number When attacking, this is the value of the weapon damage that was rolled. This value doesn't take into account the actor's strength, or other additional damage.
--- @field stolenFrom tes3activator|tes3alchemy|tes3apparatus|tes3armor|tes3bodyPart|tes3book|tes3clothing|tes3container|tes3containerInstance|tes3creature|tes3creatureInstance|tes3door|tes3enchantment|tes3ingredient|tes3leveledCreature|tes3leveledItem|tes3light|tes3lockpick|tes3misc|tes3npc|tes3npcInstance|tes3probe|tes3reference|tes3repairTool|tes3spell|tes3static|tes3weapon No description yet available.
--- @field target tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer No description yet available.
--- @field walkDestination tes3vector3 If moving to a location, this is the position to be walked to.
tes3actionData = {}

