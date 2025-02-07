# tes3bodyPartManager

A game object which holds information about body parts.

## Properties

### `activeBodyParts`

*Read-only*. The access to the reference's [`tes3bodyPartManagerActiveBodyPart`](https://mwse.github.io/MWSE/types/tes3bodyPartManagerActiveBodyPart/) objects. It's a 2-dimensional table, with first dimension index values from [`tes3.activeBodyPartLayer`](https://mwse.github.io/MWSE/references/active-body-part-layers/) namespace, while its second dimension indexes are values from [`tes3.activeBodyPart`](https://mwse.github.io/MWSE/references/active-body-parts/) namespace.

**Returns**:

* `result` (table)

***

### `animationPhase`

*Read-only*. 

**Returns**:

* `result` (number)

***

### `attachNodes`

*Read-only*. The access to the reference's [`tes3bodyPartManagerAttachNode`](https://mwse.github.io/MWSE/types/tes3bodyPartManagerAttachNode/) objects. Indexes of that table are values from [`tes3.bodyPartAttachment`](https://mwse.github.io/MWSE/references/body-part-attachments/) namespace.

**Returns**:

* `result` (table)

***

### `reference`

*Read-only*. The access to the reference this body part manager operates for.

**Returns**:

* `result` ([tes3reference](../../types/tes3reference))

***

## Methods

### `getActiveBodyPart`

The method fetches active body part of a actor at a given layer and position.

```lua
local result = tes3bodyPartManager:getActiveBodyPart({ layer = ..., index = ... })
```

**Parameters**:

* `params` (table)
	* `layer` (number): A value from [`tes3.activeBodyPartLayer`](https://mwse.github.io/MWSE/references/active-body-part-layers/) namespace.
	* `index` (number): A value from [`tes3.activeBodyPart`](https://mwse.github.io/MWSE/references/active-body-parts/) namespace.

**Returns**:

* `result` ([tes3bodyPartManagerActiveBodyPart](../../types/tes3bodyPartManagerActiveBodyPart))

***

### `getActiveBodyPartForItem`

The method fetches active body part of a actor for the given item.

```lua
local result = tes3bodyPartManager:getActiveBodyPartForItem(item)
```

**Parameters**:

* `item` ([tes3item](../../types/tes3item)): The item to fetch the active body part for.

**Returns**:

* `result` ([tes3bodyPartManagerActiveBodyPart](../../types/tes3bodyPartManagerActiveBodyPart))

***

### `getActiveBodyPartNode`

The method fetches the NiNode-derived object for the loaded mesh of an active body part at a given layer and position.

```lua
local result = tes3bodyPartManager:getActiveBodyPartNode({ layer = ..., index = ... })
```

**Parameters**:

* `params` (table)
	* `layer` (number): A value from [`tes3.activeBodyPartLayer`](https://mwse.github.io/MWSE/references/active-body-part-layers/) namespace.
	* `index` (number): A value from [`tes3.activeBodyPart`](https://mwse.github.io/MWSE/references/active-body-parts/) namespace.

**Returns**:

* `result` ([niNode](../../types/niNode))

***

### `removeEquippedLayers`

The method removes all currently equipped layers from the actor.

```lua
tes3bodyPartManager:removeEquippedLayers()
```

***

### `setActivePartData`

The method sets a niNode derived object as active body part at a given layer and position.

```lua
tes3bodyPartManager:setActivePartData({ layer = ..., index = ..., overwriteData = ..., node = ... })
```

**Parameters**:

* `params` (table)
	* `layer` (number): A value from [`tes3.activeBodyPartLayer`](https://mwse.github.io/MWSE/references/active-body-part-layers/) namespace.
	* `index` (number): A value from [`tes3.activeBodyPart`](https://mwse.github.io/MWSE/references/active-body-parts/) namespace.
	* `overwriteData` (boolean): *Default*: `true`. A flag which controls whether the current data should be overwritten.
	* `node` ([niNode](../../types/niNode)): *Default*: `nil`. 

***

### `setBodyPartByIdForObject`

The method sets a new body part for a given object.

```lua
tes3bodyPartManager:setBodyPartByIdForObject({ object = ..., index = ..., bodyPartId = ..., isFirstPerson = ... })
```

**Parameters**:

* `params` (table)
	* `object` ([tes3physicalObject](../../types/tes3physicalObject)): An object whose body part to set.
	* `index` (number): A value from [`tes3.activeBodyPart`](https://mwse.github.io/MWSE/references/active-body-parts/) namespace.
	* `bodyPartId` (string): The unique ID of the `tes3bodyPart` object to set as a new body part for given object.
	* `isFirstPerson` (boolean): *Default*: `false`. A flag which controls whether the body part is used in first person.

***

### `setBodyPartForObject`

The method sets a new body part for a given object.

```lua
tes3bodyPartManager:setBodyPartForObject({ object = ..., index = ..., bodyPart = ..., isFirstPerson = ... })
```

**Parameters**:

* `params` (table)
	* `object` ([tes3physicalObject](../../types/tes3physicalObject)): An object whose body part to set.
	* `index` (number): A value from [`tes3.activeBodyPart`](https://mwse.github.io/MWSE/references/active-body-parts/) namespace.
	* `bodyPart` ([tes3bodyPart](../../types/tes3bodyPart)): The `tes3bodyPart` object to set as a new body part for given object.
	* `isFirstPerson` (boolean): *Default*: `false`. A flag which controls whether the body part is used in first person.

***

### `updateForReference`

The method updates all body parts for a given reference.

```lua
tes3bodyPartManager:updateForReference(reference)
```

**Parameters**:

* `reference` ([tes3reference](../../types/tes3reference)): The reference whose body parts to update.

***

