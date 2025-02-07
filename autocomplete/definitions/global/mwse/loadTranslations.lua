return {
	type = "function",
	description = [[Loads translations from the i18n folder for a given mod. This is locale-aware, using the result from `tes3.getLanguage()`. See the [http://127.0.0.1:8000/guides/mod-translations/](mod translations guide) for more information.]],
	arguments = {
		{ name = "mod", type = "string", description = "Name of the folder that your main.lua mod can be found in." },
	},
	returns = {
		{ name = "i18n", type = "function", description = "The callable translation results." }, -- This is actually incorrect, it's a table with a __call metamethod. But most people will be calling it.
	}
}