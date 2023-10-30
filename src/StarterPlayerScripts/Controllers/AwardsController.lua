--[=[
	@class AwardController
	@tag Controller

	Controller for the Awards of the game.
]=]

local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Packages = ReplicatedStorage.Packages

local Knit = require(Packages.Knit)

local Interface = ReplicatedStorage.Interface

local Awards = require(Interface.Background)

local AwardsController = Knit.CreateController({
	Name = 'AwardsController'
})

function AwardsController:KnitInit()
	self.InterfaceController = Knit.GetController('InterfaceController')
end

function AwardsController:KnitStart()
	self.Awards = Awards.new()
	self.Render = Awards:Render()

	self.InterfaceController:Mount(self.Render)
end

return AwardsController