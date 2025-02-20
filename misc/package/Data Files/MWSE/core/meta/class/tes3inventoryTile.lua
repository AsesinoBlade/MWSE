--- @meta

--- An inventory tile, connecting an item, its data, and various related UI elements.
--- @class tes3inventoryTile
--- @field count number *Read-only*. The number of items that the tile represents.
--- @field element tes3uiElement *Read-only*. The UI element associated with the tile.
--- @field flags number *Read-only*. Direct access to the tile's flags. Use `.isBartered`, `.isBoundItem`, or `.isEquipped` to access individual flags.
--- @field isBartered boolean If `true`, the tile represents an item being bartered.
--- @field isBoundItem boolean *Read-only*. If `true`, the tile represents a bound item.
--- @field isEquipped boolean If `true`, the tile represents an item that is equipped.
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon *Read-only*. The item the tile represents.
--- @field itemData tes3itemData *Read-only*. The item data associated with this tile.
--- @field type number *Read-only*. The type of tile represented.
tes3inventoryTile = {}

