--- @meta

--- A structure that defines information for an effect and its associated variables, typically found on spells, alchemy, and enchantments.
--- @class tes3effect
--- @field attribute number The attribute associated with this effect, or `-1` if no attribute is used.
--- @field cost number The base magicka cost of this effect.
--- @field duration number How long the effect should last.
--- @field id number The base `tes3magicEffect` ID that the effect uses.
--- @field max number The maximum magnitude of the effect.
--- @field min number The minimum magnitude of the effect.
--- @field object tes3magicEffect *Read-only*. Fetches the `tes3magicEffect` for the given id used.
--- @field radius number The radius of the effect.
--- @field rangeType number Determines if the effect is self, touch, or target ranged. Maps to [`tes3.effectRange`](https://mwse.github.io/MWSE/references/effect-ranges/) constants.
--- @field skill number The skill associated with this effect, or `-1` if no skill is used.
tes3effect = {}

