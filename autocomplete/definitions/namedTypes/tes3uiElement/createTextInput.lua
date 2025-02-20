return {
	type = "method",
	description = [[Creates a single line text input element. To receive input the keyboard must be captured with `tes3ui.acquireTextInput(element)`. Read the input with the `text` property. Write an initial value to display by setting the `text` property; that value will be cleared on the first keypress.

    Custom widget properties:
        | `boolean`_ `element.widget.eraseOnFirstKey`: Clears the initial value if the first keypress is not an edit action. Default is `true`.
        | `number`_ (integer) `element.widget.lengthLimit"`: Maximum input length, or `nil` for no limit. If you are setting names, the engine limits most identifiers to 31 characters. Default is `nil`.]],
	arguments = {
		{ name = "id", type = "number", description = "A registered identifier to help find this element later.", optional = true },
	},
    valuetype = "tes3uiElement",
}