--[[
	Category
		--Base class for category and page type
	A category is a simple container that holds infos, settings and other categories
	Categories can be nested infinitely
	A basic category has a label and an indented block of components

	An example definition of a category:

			{
				class = "Category",
				label = "Label", --optional but recommended
				description = "This is a category example", --optional, used for mouseOvers
				components = {
					... --list of components
				}
			}
]]--

local Parent = require("mcm.components.Component")
local Category = Parent:new()
Category.componentType = "Category"
-- Category.childSpacing = 20
-- Category.childIndent = 40
-- CONTROL METHODS

function Category:new(data)
	local t = Parent:new(data)
	t.components = t.components or {}

	setmetatable(t, self)
	t.__index = self.__index

	return t
end

function Category:disable()
	Parent.disable(self)
	for _, element in ipairs(self.elements.subcomponentsContainer.children) do
		if element.color then
			element.color = tes3ui.getPalette("disabled_color")
		end
	end
end

function Category:enable()
	if self.elements.label then
		self.elements.label.color = tes3ui.getPalette("header_color")
	end
end

function Category:update()
	for _, component in ipairs(self.components) do
		if component.update then
			component.update()
		end
	end
end

function Category:checkDisabled()
	-- If has variables and all are inGameOnly, disable Category
	local isDisabled = true
	local hasSettings = false
	for _, component in ipairs(self.components) do
		if component.componentType == "Setting" and component.variable then
			hasSettings = true
			if component.variable.inGameOnly == false then
				isDisabled = false
			end
		elseif component.componentType == "Category" then
			componentDisabled = component:checkDisabled()
			isDisabled = component:checkDisabled()
			if componentDisabled then
				hasSettings = true
			end
		end
	end
	return (hasSettings and not tes3.player and isDisabled)
end

-- UI METHODS 

function Category:createSubcomponentsContainer(parentBlock)
	local subcomponentsContainer = parentBlock:createBlock({ id = tes3ui.registerID("Category_ContentsContainer") })
	subcomponentsContainer.flowDirection = "top_to_bottom"
	subcomponentsContainer.widthProportional = parentBlock.widthProportional
	subcomponentsContainer.heightProportional = parentBlock.heightProportional
	subcomponentsContainer.autoHeight = parentBlock.autoHeight
	subcomponentsContainer.autoWidth = parentBlock.autoWidth
	self.elements.subcomponentsContainer = subcomponentsContainer
end

function Category:createSubcomponents(parentBlock, components)
	if components then
		for _, component in pairs(components) do
			component.parentComponent = self
			local newComponent = self:getComponent(component)

			newComponent:create(parentBlock)
		end
	end
end

function Category:createContentsContainer(parentBlock)
	self:createLabel(parentBlock)
	self:createInnerContainer(parentBlock)
	self:createSubcomponentsContainer(self.elements.innerContainer)
	self:createSubcomponents(self.elements.subcomponentsContainer, self.components)
	parentBlock:getTopLevelParent():updateLayout()
end

function Category.__index(tbl, key)
	local meta = getmetatable(tbl)
	local prefixLen = string.len("create")
	if string.sub(key, 1, prefixLen) == "create" then
		local class = string.sub(key, prefixLen + 1)
		local component
		local classPaths = require("mcm.classPaths")

		for _, path in pairs(classPaths.components) do

			local classPath = (path .. class)
			local fullPath = lfs.currentdir() .. classPaths.basePath .. classPath .. ".lua"
			local fileExists = lfs.attributes(fullPath, "mode") == "file"

			if fileExists then
				component = require(classPath)
				break
			end
		end

		if component then
			return function(self, data)
				data = self:prepareData(data)
				data.class = class
				component = component:new(data)
				table.insert(self.components, component)
				return component
			end
		end
	end

	return meta[key]
end

return Category
