--- @meta

--- The mwse library provides methods for interacting with MWSE itself, rather than direct TES3 objects.
--- @class mwselib
--- @field buildDate number A numerical representation of the date that version of MWSE currently being used was built on.
--- 
--- Formatted as YYYYMMDD.
--- @field gameTimers mwseTimerController The mwseTimerController responsible for game-type timers.
--- @field realTimers mwseTimerController The mwseTimerController responsible for real-type timers.
--- @field simulateTimers mwseTimerController The mwseTimerController responsible for simulate-type timers.
--- @field version number A numerical representation of the release version of MWSE currently being used.
--- 
--- Formatted as AAABBBCCC, where A is the major version, BBB is the minor version, and CCC is the patch version. BBB and CCC are forward-padded.
--- 
--- It is usually better to use mwse.buildDate instead.
mwse = {}

--- Configures MWSE to no longer execute a lua function instead when a script would run. This undoes the work of `mwse.overrideScript`.
--- @param scriptId string No description yet available.
--- @return boolean result No description yet available.
function mwse.clearScriptOverride(scriptId) end

--- Equivalent to mwse.version.
--- @return number result No description yet available.
function mwse.getVersion() end

--- Returns the amount of memory used, in bytes.
--- @return number result No description yet available.
function mwse.getVirtualMemoryUsage() end

--- Loads a config table from Data Files\\MWSE\\config\\{fileName}.json.
--- 	
--- If the default values table is passed, empty keys in the config will be filled in using its values. Additionally, if no file exists, the function will return the default table.
--- @param fileName string The non-extensioned name of the config file.
--- @param defaults table *Optional*. A table of default values.
--- @return table result No description yet available.
function mwse.loadConfig(fileName, defaults) end

--- Loads translations from the i18n folder for a given mod. This is locale-aware, using the result from `tes3.getLanguage()`. See the [http://127.0.0.1:8000/guides/mod-translations/](mod translations guide) for more information.
--- @param mod string Name of the folder that your main.lua mod can be found in.
--- @return function i18n The callable translation results.
function mwse.loadTranslations(mod) end

--- This function writes information to the mwse.log file in the user's installation directory.
--- 
--- The message accepts formatting and additional parameters matching string.format's usage.
--- @param message string No description yet available.
--- @vararg any *Optional*. No description yet available.
function mwse.log(message, ...) end

--- Converts a TES3 object type (e.g. from tes3.objectType) into an uppercase, 4-character string.
--- @param type number No description yet available.
--- @return string result No description yet available.
function mwse.longToString(type) end

--- Configures MWSE to execute a given function instead when a script would run.
--- @param scriptId string No description yet available.
--- @param callback function No description yet available.
--- @return boolean result No description yet available.
function mwse.overrideScript(scriptId, callback) end

--- Saves a config table to Data Files\\MWSE\\config\\{fileName}.json.
--- @param fileName string No description yet available.
--- @param object unknown No description yet available.
--- @param config table *Optional*. No description yet available.
--- @return table result No description yet available.
function mwse.saveConfig(fileName, object, config) end

--- Converts an uppercase, 4-character string into a TES3 object type.
--- @param tag string No description yet available.
--- @return number result No description yet available.
function mwse.stringToLong(tag) end

