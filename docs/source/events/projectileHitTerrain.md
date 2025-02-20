# projectileHitTerrain

The projectileHitTerrain event fires when a projectile collides with terrain.

```lua
--- @param e projectileHitTerrainEventData
local function projectileHitTerrainCallback(e)
end
event.register("projectileHitTerrain", projectileHitTerrainCallback)
```

!!! tip
	An event can be claimed by setting `e.claim` to `true`, or by returning `false` from the callback. Claiming the event prevents any lower priority callbacks from being called.

## Event Data

* `collisionPoint` ([tes3vector3](../../types/tes3vector3)): *Read-only*. The collision point of the mobile projectile.
* `firingReference` ([tes3reference](../../types/tes3reference)): *Read-only*. Reference to the actor that fired the projectile.
* `firingWeapon` ([tes3weapon](../../types/tes3weapon)): *Read-only*. The weapon that fired the projectile.
* `mobile` ([tes3mobileProjectile](../../types/tes3mobileProjectile)): *Read-only*. The mobile projectile that is expiring.
* `position` ([tes3vector3](../../types/tes3vector3)): *Read-only*. The position of the mobile projectile.
* `velocity` ([tes3vector3](../../types/tes3vector3)): *Read-only*. The velocity of the mobile projectile.

