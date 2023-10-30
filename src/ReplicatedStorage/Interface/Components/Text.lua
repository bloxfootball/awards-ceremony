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
	local Text = Fusion.New('TextLabel')({
		Name = 'Text',

		Font = Enum.Font.GothamMedium,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextScaled = true,

		TextXAlignment = Enum.TextXAlignment.Left,

		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromOffset(0.5, 0.5),
		Size = UDim2.new(1, 0, 0, 25),

		BackgroundTransparency = 1,
		BorderSizePixel = 0
	}) :: TextLabel

	return Merge(Text, Properties, Custom) :: TextLabel
end