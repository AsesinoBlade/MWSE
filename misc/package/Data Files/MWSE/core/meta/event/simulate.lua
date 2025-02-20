--- @meta

--- The simulate event occurs at the start of every frame, excluding when the game is paused or in menu mode.
--- @class simulateEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field delta number *Read-only*. The number of seconds since the last frame.
--- @field menuMode boolean *Read-only*. Always false, maintained only for consistency with the enterFrame event.
--- @field timestamp number *Read-only*. The number of hours since the beginning of the 3rd Era (similar to the Unix Epoch).
