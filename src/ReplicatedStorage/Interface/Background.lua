--[=[
	@class Awards
	@tag Interface

	Interface for the Awards of the game.
]=]

local Players = game:GetService('Players')
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Packages = ReplicatedStorage.Packages

local Fusion = require(Packages.Fusion)
local Trove = require(Packages.Trove)

local Constants = ReplicatedStorage.Constants
local Images = require(Constants.Images)

local Interface = ReplicatedStorage.Interface
local Helpers = Interface.Helpers
local Components = Interface.Components

local Player = Players.LocalPlayer

local Theme = require(Helpers.Theme)
local Colors = require(Helpers.Colors)

local Container = require(Components.Container)
local Image = require(Components.Image)

local Awards = {}
Awards.__index = Awards

--[=[
	@function New
	@within Awards

	@return table

	Constructs an object.
]=]
function Awards.new()
	local self = setmetatable({}, Awards)

	self.Trove = Trove.new()

	return self
end

--[=[
	@function Render
	@within Menu

	@return GuiObject

	Renders the interface.
]=]
function Awards:Render()
	return Container({
		Name = 'Awards',

		[Fusion.Children] = {
			Container({
				Name = 'Background',

				BackgroundColor3 = Theme('Background'),
				BackgroundTransparency = 0,

				[Fusion.Children] = {
					Image({
						Name = 'Background',

						Size = UDim2.fromScale(1, 1),

						Image = Images.Background,

						ScaleType = Enum.ScaleType.Crop,

						[Fusion.Children] = {
							Fusion.New('UIGradient')({
								Color = ColorSequence.new({
									ColorSequenceKeypoint.new(0, Theme('Border')),
									ColorSequenceKeypoint.new(1, Theme('Background'))
								}),

								Transparency = NumberSequence.new({
									NumberSequenceKeypoint.new(0, 0),
									NumberSequenceKeypoint.new(1, 1)
								}),

								Rotation = 90
							})
						}
					})
				
				}
			})
		}
	})
end

return Awards