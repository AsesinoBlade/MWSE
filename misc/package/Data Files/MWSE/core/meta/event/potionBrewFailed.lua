--- @meta

--- The potionBrewFailed event is raised when the player fails a potion brew attempt.
--- @class potionBrewFailedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field alembic tes3apparatus *Read-only*. The alembic apparatus used to create the potion.
--- @field calcinator tes3apparatus *Read-only*. The calcinator apparatus used to create the potion.
--- @field ingredients table *Read-only*. An array of up to 4 [`tes3ingredient`](https://mwse.github.io/MWSE/types/tes3ingredient/) objects, which were used to create the potion.
--- @field mortar tes3apparatus *Read-only*. The mortar apparatus used to create the potion.
--- @field retort tes3apparatus *Read-only*. The retort apparatus used to create the potion.
