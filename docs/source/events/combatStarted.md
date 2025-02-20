# combatStarted

The **combatStarted** event occurs after combat has began between two actors. This event is preceded by the [combatStart](https://mwse.github.io/MWSE/events/combatStart) event.

```lua
--- @param e combatStartedEventData
local function combatStartedCallback(e)
end
event.register("combatStarted", combatStartedCallback)
```

!!! tip
	An event can be claimed by setting `e.claim` to `true`, or by returning `false` from the callback. Claiming the event prevents any lower priority callbacks from being called.

## Event Data

* `actor` ([tes3mobileActor](../../types/tes3mobileActor)): *Read-only*. The mobile actor who has entered combat.
* `target` ([tes3mobileActor](../../types/tes3mobileActor)): *Read-only*. The mobile actor who combat has been triggered against.

