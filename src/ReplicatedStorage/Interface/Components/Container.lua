local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Packages = ReplicatedStorage.Packages

local Interface = ReplicatedStorage.Interface
local Helpers = Interface.Helpers

local Fusion = require(Packages.Fusion)

local Merge = require(Helpers.Merge)

local Custom = {}

export type Properties = {
	[any]: any
}

return function(Properties: Properties): Instance
	local Container = Fusion.New('Frame')({
		Name = 'Container',

		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromScale(1, 1),

		BackgroundTransparency = 1,
		BorderSizePixel = 0
	}) :: Frame

	return Merge(Container, Properties, Custom) :: Frame
end