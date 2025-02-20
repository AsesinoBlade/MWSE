return {
	type = "event",
    description = "This event is called when a potentially successful barter offer is made by the player. Potentially successful means both parties have the required funds to make the trade.",
    eventData = {
        ["mobile"] = {
            type = "tes3mobileActor",
            readOnly = true,
            description = "The mobile actor of the merchant the player is interacting with.",
        },
        ["success"] = {
            type = "boolean",
            description = "Whether the trade was accepted or not.",
        },
        ["value"] = {
            type = "number",
            readOnly = true,
            description = "Total value in gold of items being traded. Negative means the player owes coin, positive means the player gets coin.",
        },
        ["offer"] = {
            type = "number",
            readOnly = true,
            description = "Offered gold amount.",
        },
        ["selling"] = {
            type = "table",
            readOnly = true,
            description = "Table of [`tes3inventoryTile`](https://mwse.github.io/MWSE/types/tes3inventoryTile/) objects being sold. These items will be transfered to bartender's inventory on a successful bartering event.",
        },
        ["buying"] = {
            type = "table",
            readOnly = true,
            description = "Table of [`tes3inventoryTile`](https://mwse.github.io/MWSE/types/tes3inventoryTile/) objects being bought. These items will be transfered to player's inventory on a successful bartering event.",
        },
    },
	blockable = true,
}
