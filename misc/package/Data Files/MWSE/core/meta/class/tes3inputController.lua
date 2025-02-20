--- @meta

--- A data structure, off of the world controller, that handles input.
--- @class tes3inputController
--- @field creationFlags number *Read-only*. A bit field representing device capabilities and settings.
--- @field inputMaps table *Read-only*. The array-style access to input bindings.
--- @field keyboardState table *Read-only*. The array-style access to raw key states.
--- @field mouseState tes3directInputMouseState *Read-only*. The raw DirectInput mouse state.
--- @field previousKeyboardState table *Read-only*. The array-style access to the previous frame's raw key states.
--- @field previousMouseState tes3directInputMouseState *Read-only*. The raw DirectInput mouse state for the previous state.
tes3inputController = {}

--- Returns true if either alt modifier key is pressed.
--- @return boolean isPressed True if either alt key is pressed.
function tes3inputController:isAltDown() end

--- Returns true if the caps lock mode is active.
--- @return boolean isPressed True if caps lock is active.
function tes3inputController:isCapsLockActive() end

--- Returns true if either control modifier key is pressed.
--- @return boolean isPressed True if either control key is pressed.
function tes3inputController:isControlDown() end

--- Performs a key down test for a given scan key code.
--- @param key number The scan code to test. Constants available through [`tes3.scanCode`](https://mwse.github.io/MWSE/references/scan-codes/).
--- @return boolean result No description yet available.
function tes3inputController:isKeyDown(key) end

--- Checks to see if a given scan code is pressed, and wasn't pressed last frame.
--- @param key number The scan code to test. Constants available through [`tes3.scanCode`](https://mwse.github.io/MWSE/references/scan-codes/).
--- @return boolean result No description yet available.
function tes3inputController:isKeyPressedThisFrame(key) end

--- Checks to see if a given scan code is released, and was pressed last frame.
--- @param key number The scan code to test. Constants available through [`tes3.scanCode`](https://mwse.github.io/MWSE/references/scan-codes/).
--- @return boolean result No description yet available.
function tes3inputController:isKeyReleasedThisFrame(key) end

--- Returns the mouse down state for a given mouse button.
--- @param button number The mouse button to test. Must be between `0` and `7`.
--- @return boolean result No description yet available.
function tes3inputController:isMouseButtonDown(button) end

--- Returns true if a mouse button was up last frame, and down this frame.
--- @param button number The mouse button to test. Must be between `0` and `7`.
--- @return boolean result No description yet available.
function tes3inputController:isMouseButtonPressedThisFrame(button) end

--- Returns true if a mouse button was down last frame, and up this frame.
--- @param button number The mouse button to test. Must be between `0` and `7`.
--- @return boolean result No description yet available.
function tes3inputController:isMouseButtonReleasedThisFrame(button) end

--- Returns true if either shift modifier key is pressed. It does not take into account caps lock.
--- @return boolean isPressed True if either shift key is pressed.
function tes3inputController:isShiftDown() end

--- Returns true if either super/windows modifier key is pressed.
--- @return boolean isPressed True if either super/windows key is pressed.
function tes3inputController:isSuperDown() end

--- Performs a test for a given keybind, and optionally a transition state.
--- @param key number The keybind to test. Constants available through [`tes3.keybind`](https://mwse.github.io/MWSE/references/keybinds/).
--- @param transition number *Optional*. Transition state, e.g. down, or up. Constants available through [`tes3.keyTransition`](https://mwse.github.io/MWSE/references/key-transitions/).
--- @return boolean result No description yet available.
function tes3inputController:keybindTest(key, transition) end

