--[=[
	@class InterfaceController
	@tag Controller

	Manages interface & notifies server when available.
]=]

local Players = game:GetService('Players')
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Packages = ReplicatedStorage.Packages

local Knit = require(Packages.Knit)
local Fusion = require(Packages.Fusion)

local Interface = ReplicatedStorage.Interface
local Components = Interface.Components
 
local Container = require(Components.Container)
local Padding = require(Components.Padding)

local Player = Players.LocalPlayer

--[=[
	@prop PlayerGui PlayerGui
	@within InterfaceController
	@readonly
	
	Reference to `PlayerGui` of local player.
]=]

--[=[
	@prop ScreenGui ScreenGui
	@within InterfaceController
	@readonly

	Reference to `ScreenGui` which will contain all interface.
]=]

--[=[
	@prop Container Frame
	@within InterfaceController
	@readonly

	Reference to `Frame` which will contain all interface.
]=]

local InterfaceController = Knit.CreateController({
	Name = 'InterfaceController',

	Server = {}
})

function InterfaceController:KnitInit()
	local Holder: Fusion.Value<Frame?> = Fusion.Value(nil)

	local Observer: Fusion.Observer = Fusion.Observer(Holder)

	Observer:onChange(function()
		self.Container = Holder:get()
	end)

	local PlayerGui: Instance = Player:WaitForChild('PlayerGui')
	local ScreenGui: Instance = Fusion.New('SurfaceGui')({
		Name = 'Interface',

		IgnoreGuiInset = true,

		Parent = PlayerGui,

		[Fusion.Children] = {
			Container({
				Size = UDim2.fromScale(1, 1),
  
				[Fusion.Ref] = Holder,
				
				-- [Fusion.Children] = {
				-- 	Padding({
				-- 		Padding = 20
				-- 	})
				-- }
			})
		}
	})

	self.PlayerGui = PlayerGui
	self.ScreenGui = ScreenGui
end

function InterfaceController:KnitStart()

end

--[=[
	@method Mount
	@within InterfaceController

	Manually renders & adds an interface to the container.
]=]
function InterfaceController:Mount(Render: GuiObject)
	Render.Parent = self.Container
end

return InterfaceController