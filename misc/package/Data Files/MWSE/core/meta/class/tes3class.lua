---@meta

---A core object representing a character class.
---@class tes3class : tes3baseObject
---@field attributes table An array-style table of the two attribute IDs associated with the class.
---@field bartersAlchemy boolean If true, the class will barter alchemy items.
---@field bartersApparatus boolean If true, the class will barter apparatus items.
---@field bartersArmor boolean If true, the class will barter armor items.
---@field bartersBooks boolean If true, the class will barter book items.
---@field bartersClothing boolean If true, the class will barter clothing items.
---@field bartersEnchantedItems boolean If true, the class will barter enchanted items.
---@field bartersIngredients boolean If true, the class will barter ingredient items.
---@field bartersLights boolean If true, the class will barter light items.
---@field bartersLockpicks boolean If true, the class will barter lockpick items.
---@field bartersMiscItems boolean If true, the class will barter misc items.
---@field bartersProbes boolean If true, the class will barter probe items.
---@field bartersRepairTools boolean If true, the class will barter repair items.
---@field bartersWeapons boolean If true, the class will barter weapon items.
---@field description string Loads from disk and returns the description of the class.
---@field majorSkills table An array-style table of the 5 skills IDs associated with the class' major skills.
---@field minorSkills table An array-style table of the 5 skills IDs associated with the class' major skills.
---@field name string The player-facing name for the object.
---@field offersEnchanting boolean If true, the class will offer repair services.
---@field offersRepairs boolean If true, the class will offer enchanting services.
---@field offersSpellmaking boolean If true, the class will offer spellmaking services.
---@field offersSpells boolean If true, the class will offer spell selling services.
---@field offersTraining boolean If true, the class will offer spell training services.
---@field playable boolean If true, the class is selectable at character generation.
---@field services number The services offered by the class. This is a bit field, and its values should typically be accessed through values such as bartersAlchemy.
---@field skills table An array-style table of the 10 skills IDs associated with the class. For major or minor skills specifically, use the majorSkills and MinorSkills properties.
---@field specialization number The specialization for the class. Maps to the tes3.specialization table.
tes3class = {}

