--- @meta

--- The **weatherChangedImmediate** event occurs when the currently simulated weather is changed without transition. This can occur when going from an interior to an exterior in a new region, or while resting.
--- 
--- This can interrupt weather transitions, which means the [weatherTransitionFinished](https://mwse.github.io/MWSE/events/weatherTransitionFinished) event will not be triggered.
--- @class weatherTransitionImmediateEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field to tes3weatherAsh|tes3weatherBlight|tes3weatherBlizzard|tes3weatherClear|tes3weatherCloudy|tes3weatherFoggy|tes3weatherOvercast|tes3weatherRain|tes3weatherSnow|tes3weatherThunder The weather object that is the new current weather.
