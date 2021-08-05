tes3ui.createMenu
====================================================================================================

Creates a top-level menu.

Returns
----------------------------------------------------------------------------------------------------

result (`tes3uiElement`_)
    No description available.

Parameters
----------------------------------------------------------------------------------------------------

Accepts parameters through a table with the given keys:

id (`number`_)
    The menu’s ID. The menu can be later accessed by tes3ui.findMenu(id).

dragFrame (`boolean`_)
    Constructs a draggable and resizeable frame and background for the menu. It is similar to the stats, inventory, magic and map menus in the standard UI. After construction, position and minimum dimensions should be set.

fixedFrame (`boolean`_)
    Constructs a fixed (non-draggable) frame and background for the menu. The layout system should automatically centre and size it to fit whatever is added to the menu.

loadable (`boolean`_)
    Default: ``true``. If set to false, calls to loadMenuPosition will fail.

.. _`boolean`: ../../../lua/type/boolean.html
.. _`number`: ../../../lua/type/number.html
.. _`tes3uiElement`: ../../../lua/type/tes3uiElement.html
