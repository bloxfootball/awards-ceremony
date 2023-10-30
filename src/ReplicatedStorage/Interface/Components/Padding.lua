local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Packages = ReplicatedStorage.Packages

local Interface = ReplicatedStorage.Interface
local Helpers = Interface.Helpers

local Fusion = require(Packages.Fusion)

local Merge = require(Helpers.Merge)

local Custom = {
	'Padding'
}

export type Properties = {
	Padding: number?,
	
	[any]: any
}

return function(Properties: Properties): Instance
	local Real: UDim = UDim.new(0, Properties.Padding or 10)

	local Padding = Fusion.New('UIPadding')({
		Name = 'Padding',

		PaddingTop = Real,
		PaddingLeft = Real,
		PaddingRight = Real,
		PaddingBottom = Real
	}) :: UIPadding

	return Merge(Padding, Properties, Custom) :: UIPadding
end