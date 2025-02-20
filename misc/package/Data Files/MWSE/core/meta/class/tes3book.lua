--- @meta

--- A book game object.
--- @class tes3book : tes3item, tes3physicalObject, tes3object, tes3baseObject
--- @field enchantCapacity number The object's enchantment capacity.
--- @field enchantment tes3enchantment The enchantment used by the object.
--- @field icon string The path to the object's icon.
--- @field mesh string The path to the object's mesh.
--- @field name string The player-facing name for the object.
--- @field script tes3script The script that runs on the object.
--- @field skill number The skill learned from the book, or `-1` if the book doesn't have one, or has already been read.
--- @field text string *Read-only*. Loads and displays the text of the book.
--- @field type number The book type. Maps to values in [`tes3.bookType`](https://mwse.github.io/MWSE/references/book-types/) namespace.
--- @field value number The value of the object.
--- @field weight number The weight of the object.
tes3book = {}

