return {
	description = "The damageHandToHand event triggers before an actor takes fatigue damage from hand-to-hand combat. It does not trigger on health damage, but the 'damage' event will. The fatigueDamage value can be modified, or can be prevented completely by blocking the event.",
	eventData = {
		fatigueDamage = {
			type = "number",
			description = "The amount of fatigue damage done.",
		},
		mobile = {
			type = "tes3mobileActor",
			readonly = true,
			description = "The mobile actor that is taking fatigue damage.",
		},
		reference = {
			type = "tes3reference",
			readonly = true,
			description = "The mobile’s associated reference.",
		},
        attacker = {
			type = "tes3mobileActor",
			readonly = true,
			description = "The mobile actor dealing the damage. Can be nil.",
		},
		attackerReference = {
			type = "tes3reference",
			readonly = true,
			description = "The attacker mobile's associated reference. Can be nil.",
		},
	},
}
