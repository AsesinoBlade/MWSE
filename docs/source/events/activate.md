# activate

This event is invoked whenever something is activated, typically by the player. Activation is usually done with the associated activate/use key, but may also be forced by scripts.

Non-player actors may also activate objects, such as when opening doors, or via MWSE functions like [`tes3.activate()`](https://mwse.github.io/MWSE/apis/tes3/#tes3activate).

Some examples of when the activate event fires includes:

- When a door is used.
- When an item is picked up.
- When someone attempts to open a container.

```lua
--- @param e activateEventData
local function activateCallback(e)
end
event.register("activate", activateCallback)
```

!!! tip
	This event can be filtered based on the **`target`** event data.

!!! tip
	This event supports blocking by setting `e.block` to `true` or returning `false`. Blocking the event prevents vanilla behavior from happening. For example, blocking an `equip` event prevents the item from being equipped.

!!! tip
	An event can be claimed by setting `e.claim` to `true`, or by returning `false` from the callback. Claiming the event prevents any lower priority callbacks from being called.

## Event Data

* `activator` ([tes3reference](../../types/tes3reference)): *Read-only*. The actor attempting to trigger the event.
* `target` ([tes3reference](../../types/tes3reference)): *Read-only*. The reference that is being activated.

## Examples

!!! example "Example: Prevent the player from activating NPCs"

	```lua
	
	local function myOnActivateCallback(e)
		-- We only care if the PC is activating something.
		if (e.activator ~= tes3.player) then
			return
		end
	
		-- If the player targets an NPC, block the activation.
		if (e.target.object.objectType == tes3.objectType.npc) then
			return false
		end
	end
	event.register("activate", myOnActivateCallback)

	```

!!! example "Example: Show a message for what the player is activating"

	```lua
	-- Show the id when the player activates an object.
	local function myOnActivateCallback(e)
		if (e.activator == tes3.player) then
			tes3.messageBox({ message = "Activated " .. e.target.object.id })
		end
	end
	event.register("activate", myOnActivateCallback)

	```

