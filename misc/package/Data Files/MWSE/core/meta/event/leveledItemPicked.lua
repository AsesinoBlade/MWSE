--- @meta

--- This event is called after any leveled item list is resolved.
--- @class leveledItemPickedEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field list tes3leveledItem *Read-only*. The list responsible for creating a pick.
--- @field pick tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon The result of the pick by vanilla mechanism.
