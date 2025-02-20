--- @meta

--- Contains the geometry data for an `NiTriShape` object.
--- @class niTriShapeData : niTriBasedGeometryData, niGeometryData, niObject
--- @field triangleCount number The triangle count of the object.
niTriShapeData = {}

--- Creates a copy of the data. An optional table of filters can be passed to remove information from the copy.
--- @param params niTriShapeData.copy.params This table accepts the following values:
--- 
--- `normals`: boolean — *Default*: `true`. If false, the geometry data's normals will be absent from the copy.
--- 
--- `colors`: boolean — *Default*: `true`. If false, the geometry data's colors will be absent from the copy.
--- 
--- `texCoords`: boolean — *Default*: `true`. If false, the geometry data's texture coordinates will be absent from the copy.
--- @return niTriShapeData copiedData The duplicated data.
function niTriShapeData:copy(params) end

---Table parameter definitions for `niTriShapeData.copy`.
--- @class niTriShapeData.copy.params
--- @field normals boolean *Default*: `true`. If false, the geometry data's normals will be absent from the copy.
--- @field colors boolean *Default*: `true`. If false, the geometry data's colors will be absent from the copy.
--- @field texCoords boolean *Default*: `true`. If false, the geometry data's texture coordinates will be absent from the copy.

