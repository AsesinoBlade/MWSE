--- @meta

--- A clothing game object.
--- @class tes3clothing : tes3item, tes3physicalObject, tes3object, tes3baseObject
--- @field enchantCapacity number The object's enchantment capacity.
--- @field enchantment tes3enchantment The enchantment used by the object.
--- @field icon string The path to the object's icon.
--- @field isLeftPart boolean Determines if the armor is the left part of a pair.
--- @field mesh string The path to the object's mesh.
--- @field name string The player-facing name for the object.
--- @field parts table An array-style table of the [`tes3wearablePart`](https://mwse.github.io/MWSE/types/tes3wearablePart/) data on the object.
--- @field script tes3script The script that runs on the object.
--- @field slot number The slot used by the armor.
--- @field slotName string The name of the slot used by the armor.
--- @field value number The value of the object. For this object type, its maximum value is 65535. Larger numbers will overflow.
--- @field weight number The weight of the object.
tes3clothing = {}

