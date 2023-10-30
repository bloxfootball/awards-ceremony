local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Packages = ReplicatedStorage.Packages

local Interface = ReplicatedStorage.Interface
local Helpers = Interface.Helpers

local Fusion = require(Packages.Fusion)

local Merge = require(Helpers.Merge)

local Custom = {
	'Horizontal',
	'Vertical',

	'Image'
}

export type Properties = {
	Horizontal: boolean?,
	Vertical: boolean?,

	Image: string?,

	[any]: any
}

return function(Properties: Properties): Instance
	local Image = Fusion.New('ImageLabel')({
		Name = 'Image',

		Image = Properties.Image or 'rbxassetid://10734944554',

		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = Properties.Size or Fusion.Computed(function()
			if Properties.Horizontal then
				return UDim2.fromScale(1, 0)
			end

			if Properties.Vertical then
				return UDim2.fromScale(0, 1)
			end

			return UDim2.fromOffset(25, 25)
		end),

		BackgroundTransparency = 1,

		ImageColor3 = Color3.fromRGB(255, 255, 255),

		BorderSizePixel = 0,

		[Fusion.Children] = Fusion.Computed(function()
			if Properties.Horizontal then
				return Fusion.New('UIAspectRatioConstraint')({
					AspectType = Enum.AspectType.ScaleWithParentSize,
					DominantAxis = Enum.DominantAxis.Width
				})
			end

			if Properties.Vertical then
				return Fusion.New('UIAspectRatioConstraint')({
					AspectType = Enum.AspectType.ScaleWithParentSize,
					DominantAxis = Enum.DominantAxis.Height
				})
			end

			return nil
		end, Fusion.cleanup)
	}) :: ImageLabel

	return Merge(Image, Properties, Custom) :: ImageLabel
end