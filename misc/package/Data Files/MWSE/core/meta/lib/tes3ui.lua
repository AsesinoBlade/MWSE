--- @meta

--- The tes3ui library provides access to manipulating the game's GUI.
--- @class tes3uilib
tes3ui = {}

--- Sends all text input to the specified element.  Calling this function with a nil argument will release text input and allow keybinds to work. Suppresses most keybinds while active, except the Journal open/close keybind (it's up to the individual menu implementation).
--- 
--- Only one element can have control of input, and there is no automatic restoration of control if one element takes control from another. Be careful of conflicts with other users of this function.
--- @param element tes3uiElement *Optional*. No description yet available.
function tes3ui.acquireTextInput(element) end

--- When used in a mouse event, causes the element to capture further mouse events even when the cursor goes outside the element. Setting mouse capture should always be accompanied by releasing it on a complementary event. This is commonly used for dragging, so that it can continue even if the mouse moves slightly outside the element.
--- 
--- The capture is always removed when the element is destroyed. The capture may also be removed when the mouse is released, but this is not reliable, as the engine forgets what to do if there is input from any other controller while the mouse is held down.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/types/tes3ui/#tes3uicapturemousedrag).
--- @param capture boolean Turns on mouse capture for the element currently processing a mouse event if true, sending all further mouse events to that element. Turns off capture if false.
function tes3ui.captureMouseDrag(capture) end

--- Closes the Journal.
--- @return boolean result No description yet available.
function tes3ui.closeJournal() end

--- Creates a help layer menu. Help layer menus include notifications and tooltips that are always above the rest of the interface. The game realizes this using a separate menu root and set of functions.
--- 
--- Note, to create tooltips with the correct behaviour, use tes3ui.createTooltipMenu.
--- 
--- Unlike standard menus, help layer menus are always created with a fixed frame.
--- @param params tes3ui.createHelpLayerMenu.params This table accepts the following values:
--- 
--- `id`: number — The menu’s ID. The menu can be later accessed by tes3ui.findHelpLayerMenu(id).
--- @return tes3uiElement result No description yet available.
function tes3ui.createHelpLayerMenu(params) end

---Table parameter definitions for `tes3ui.createHelpLayerMenu`.
--- @class tes3ui.createHelpLayerMenu.params
--- @field id number The menu’s ID. The menu can be later accessed by tes3ui.findHelpLayerMenu(id).

--- Creates a top-level menu.
--- @param params tes3ui.createMenu.params This table accepts the following values:
--- 
--- `id`: number — The menu’s ID. The menu can be later accessed by tes3ui.findMenu(id).
--- 
--- `dragFrame`: boolean — Constructs a draggable and resizeable frame and background for the menu. It is similar to the stats, inventory, magic and map menus in the standard UI. After construction, position and minimum dimensions should be set.
--- 
--- `fixedFrame`: boolean — Constructs a fixed (non-draggable) frame and background for the menu. The layout system should automatically centre and size it to fit whatever is added to the menu.
--- 
--- `loadable`: boolean — *Default*: `true`. If set to false, calls to loadMenuPosition will fail.
--- @return tes3uiElement result No description yet available.
function tes3ui.createMenu(params) end

---Table parameter definitions for `tes3ui.createMenu`.
--- @class tes3ui.createMenu.params
--- @field id number The menu’s ID. The menu can be later accessed by tes3ui.findMenu(id).
--- @field dragFrame boolean Constructs a draggable and resizeable frame and background for the menu. It is similar to the stats, inventory, magic and map menus in the standard UI. After construction, position and minimum dimensions should be set.
--- @field fixedFrame boolean Constructs a fixed (non-draggable) frame and background for the menu. The layout system should automatically centre and size it to fit whatever is added to the menu.
--- @field loadable boolean *Default*: `true`. If set to false, calls to loadMenuPosition will fail.

--- Creates a tooltip menu, which can be an empty menu or an item tooltip. This should be called from within a tooltip event callback. These automatically follow the mouse cursor, and are also destroyed automatically when the mouse leaves the originating element. Creating an item tooltip will invoke the uiObjectTooltip event.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/types/tes3ui/#tes3uicreatetooltipmenu).
--- @param params tes3ui.createTooltipMenu.params This table accepts the following values:
--- 
--- `item`: tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string — *Optional*. The item to create a tooltip for. If not specified, the tooltip will be empty.
--- 
--- `itemData`: tes3itemData — *Optional*. The item data for the item.
--- @return tes3uiElement result No description yet available.
function tes3ui.createTooltipMenu(params) end

---Table parameter definitions for `tes3ui.createTooltipMenu`.
--- @class tes3ui.createTooltipMenu.params
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string *Optional*. The item to create a tooltip for. If not specified, the tooltip will be empty.
--- @field itemData tes3itemData *Optional*. The item data for the item.

--- Requests menu mode be activated on a menu with a given id.
--- @param id number No description yet available.
--- @return boolean result No description yet available.
function tes3ui.enterMenuMode(id) end

--- Locates a help layer menu through its id. Help layer menus include notifications and tooltips that are always above the rest of the interface. The game realizes this using a separate menu root and set of functions.
--- @param id number No description yet available.
--- @return tes3uiElement result No description yet available.
function tes3ui.findHelpLayerMenu(id) end

--- Locates a top-level menu through its id.
--- @param id number The ID of the menu to locate.
--- @return tes3uiElement result No description yet available.
function tes3ui.findMenu(id) end

--- Forces the game to update the inventory tile GUI elements. Unlike tes3ui.updateInventoryTiles, this will force-resync the player's inventory to the GUI, rather than updating what is already in the GUI system.
function tes3ui.forcePlayerInventoryUpdate() end

--- Determines what sort of search is being done when performing an inventory selection, e.g. "alembic" or "ingredient" or "soulGemFilled".
--- @return string result No description yet available.
function tes3ui.getInventorySelectType() end

--- Returns the top-most, active menu.
--- @return tes3uiElement result No description yet available.
function tes3ui.getMenuOnTop() end

--- Gets a standard palette color. Returns an array containing the RGB color values, in the range [0.0, 1.0].
--- 
--- **Standard Color Names**: `active_color`, `active_over_color`, `active_pressed_color`, `answer_color`, `answer_over_color`, `answer_pressed_color`, `background_color`, `big_answer_color`, `big_answer_over_color`, `big_answer_pressed_color`, `big_header_color`, `big_link_color`, `big_link_over_color`, `big_link_pressed_color`, `big_normal_color`, `big_normal_over_color`, `big_normal_pressed_color`, `big_notify_color`, `black_color`, `count_color`, `disabled_color`, `disabled_over_color`, `disabled_pressed_color`, `fatigue_color`, `focus_color`, `header_color`, `health_color`, `health_npc_color`, `journal_finished_quest_color`, `journal_finished_quest_over_color`, `journal_finished_quest_pressed_color`, `journal_link_color`, `journal_link_over_color`, `journal_link_pressed_color`, `journal_topic_color`, `journal_topic_over_color`, `journal_topic_pressed_color`, `link_color`, `link_over_color`, `link_pressed_color`, `magic_color`, `magic_fill_color`, `misc_color`, `negative_color`, `normal_color`, `normal_over_color`, `normal_pressed_color`, `notify_color`, `positive_color`, `weapon_fill_color`, `white_color`
--- @param name string The name of the palette color.
--- @return table result No description yet available.
function tes3ui.getPalette(name) end

--- Returns the mobile actor currently providing services to the player.
--- @return tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer result No description yet available.
function tes3ui.getServiceActor() end

--- Returns the UI scale, set in MGE.
--- @return number scale The UI scale value set from MGE.
function tes3ui.getViewportScale() end

--- Returns both the viewport width and the viewport height. Note that this value is not necessarily the real resolution of the screen. For that value, see the same-named function in the tes3 namespace. To get the scale used, check getViewportScale.
--- @return number width The scaled width of the viewport.
--- @return number height The scaled height of the viewport.
function tes3ui.getViewportSize() end

--- Requests menu mode be deactivated on a menu with a given id.
--- @param id number No description yet available.
--- @return boolean result No description yet available.
function tes3ui.leaveMenuMode(id) end

--- Logs a message to the console.
--- @param text string No description yet available.
--- @param isCommand boolean No description yet available.
function tes3ui.logToConsole(text, isCommand) end

--- 
--- @param unknown nil No description yet available.
--- @return string executed No description yet available.
function tes3ui.lookupID(unknown) end

--- Checks if the game is in menu mode.
--- @return boolean result No description yet available.
function tes3ui.menuMode() end

--- Causes the tooltip to be redisplayed. This will not use a configured delay. This will not function if the help menu does not currently exist, or if it is not currently visible.
function tes3ui.refreshTooltip() end

--- Registers a UI element name, returning a UI_ID. Once a property is registered, this function always returns the same UI_ID. These UI_IDs are used by the API to locate elements that may not exist (a weak reference), instead of by element name.
--- 
--- The registry namespace is shared between Property and UI_ID. It is advisable to use a namespace prefix to avoid collisions with other mods.
--- @param s string No description yet available.
--- @return number result No description yet available.
function tes3ui.registerID(s) end

--- Registers a property name, returning a Property. Once a property is registered, this function always returns the same Property.
--- 
--- The registry namespace is shared between Property and UI_ID. It is advisable to use a namespace prefix to avoid collisions with other mods.
--- @param s string No description yet available.
--- @return number result No description yet available.
function tes3ui.registerProperty(s) end

--- Displays the book menu with arbitrary text. Paging is automatically handled.
--- @param text string No description yet available.
function tes3ui.showBookMenu(text) end

--- 
--- @param params tes3ui.showDialogueMessage.params This table accepts the following values:
--- 
--- `text`: string — *Default*: ``. The text of the shown message.
--- 
--- `style`: number — *Default*: `0`. 
--- 
--- `answerIndex`: number — *Default*: `0`. 
function tes3ui.showDialogueMessage(params) end

---Table parameter definitions for `tes3ui.showDialogueMessage`.
--- @class tes3ui.showDialogueMessage.params
--- @field text string *Default*: ``. The text of the shown message.
--- @field style number *Default*: `0`. 
--- @field answerIndex number *Default*: `0`. 

--- 
--- @param params tes3ui.showInventorySelectMenu.params This table accepts the following values:
--- 
--- `actorRef`: tes3reference — *Default*: `tes3player`. 
--- 
--- `callback`: function — *Optional*. 
--- 
--- `filter`: function|string — *Optional*. 
--- 
--- `title`: string — 
--- 
--- `noResultsText`: string — *Optional*. 
--- 
--- `noResultsCallback`: function — *Optional*. 
--- 
--- `leaveMenuMode`: boolean — *Optional*. Is the menu going to be closed or open after closing Inventory Select Menu. By default, it will be in the state before this function was called.
function tes3ui.showInventorySelectMenu(params) end

---Table parameter definitions for `tes3ui.showInventorySelectMenu`.
--- @class tes3ui.showInventorySelectMenu.params
--- @field actorRef tes3reference *Default*: `tes3player`. 
--- @field callback function *Optional*. 
--- @field filter function|string *Optional*. 
--- @field title string 
--- @field noResultsText string *Optional*. 
--- @field noResultsCallback function *Optional*. 
--- @field leaveMenuMode boolean *Optional*. Is the menu going to be closed or open after closing Inventory Select Menu. By default, it will be in the state before this function was called.

--- Displays the scroll menu with arbitrary text.
--- @param text string No description yet available.
function tes3ui.showScrollMenu(text) end

--- 
function tes3ui.stealHelpMenu() end

--- Controls hiding of world object tooltips.
--- @param suppress boolean Turns on suppression if true, immediately hiding any active tooltip and further world object tooltips. Turns off suppression if false.
function tes3ui.suppressTooltip(suppress) end

--- Forces the game to update the barter menu's tile GUI elements.
function tes3ui.updateBarterMenuTiles() end

--- Forces the game to update the contents menu's tile GUI elements.
function tes3ui.updateContentsMenuTiles() end

--- Forces the game to update the dialog disposition GUI element.
function tes3ui.updateDialogDisposition() end

--- Forces the game to update the enchanting menu GUI.
function tes3ui.updateEnchantingMenu() end

--- Tells the game to update the character image in the player's inventory. It will update immediately if the inventory is open, or the next time the inventory is opened otherwise.
function tes3ui.updateInventoryCharacterImage() end

--- Forces the game to update the inventory selection GUI elements.
function tes3ui.updateInventorySelectTiles() end

--- Forces the game to update the inventory tile GUI elements.
function tes3ui.updateInventoryTiles() end

--- Forces the game to update the spellmaking menu GUI.
function tes3ui.updateSpellmakingMenu() end

