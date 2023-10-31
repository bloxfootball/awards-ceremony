local CollectionService = game:GetService('CollectionService')
local Players = game:GetService('Players')
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Knit = require(ReplicatedStorage.Packages.Knit)
local Janitor = require(ReplicatedStorage.Packages.Janitor)

--[=[
		@class SeatService
		The SeatService controls Seats throughout award ceremony.
]=]

--[=[
    @class SeatService.Client
    This is the set of DataService functions and members that are exposed to the client.
]=]

local SeatService = Knit.CreateService({
	Name = 'SeatService',
	Client = {},
})

SeatService._janitor = Janitor.new()

--- @class Seat
--- @prop TAG_NAME string
local Seat = {}
Seat.__index = Seat
Seat.TAG_NAME = 'NamedSeat'

--[=[
    @method New
    @within Seat
    @server
    @since v1.0.0

    Creates a new Seat object and the class will control the door following this method being triggered by Knit framework/CollectionService.

    @param SeatPart Seat 
]=]

function Seat.new(SeatPart: Seat)
	local self = {}

	setmetatable(self, Seat)

	self.Seat = SeatPart
	self.currentPlayer = nil

	self.PlayerSeatingEvent = SeatPart:GetPropertyChangedSignal('Occupant'):Connect(function(...)
		self:SeatChanged(...)
	end)

	return self
end

--[=[
    @method SeatChanged
    @within Seat
    @server
    @since v1.0.0

    Checks for player's correct ID to sit on the seat in question. 
    This method is currently only suitable for tagged seats. 

    @param player Player -- The player altering state. 
]=]

function Seat:SeatChanged(instance: Seat)
	if instance:HasTag('NamedSeat') then -- Validating
		local humanoid = instance.Occupant
		if humanoid then
			local character = humanoid.Parent
			local player = Players:GetPlayerFromCharacter(character)
			if player then
				if player.Name == self.Seat:GetAttribute('WhitelistedPlayer') then
					self.currentPlayer = player
				else
					humanoid.Jump = true
				end
			end
		end
		if self.currentPlayer then
			self.currentPlayer = nil
		end
	end
end
function SeatService:KnitStart() end

function SeatService:KnitInit()
	local Seats = {}

	local SeatAddedSig = CollectionService:GetInstanceAddedSignal(Seat.TAG_NAME)
	local SeatRemovedSig = CollectionService:GetInstanceRemovedSignal(Seat.TAG_NAME)

	local function onAdded(seat)
		if seat:IsA('Seat') then
			Seats[seat] = Seat.new(seat)
		end
	end

	local function onseatRemoved(seat)
		if Seats[seat] then
			Seats[seat]:Cleanup()
			Seats[seat] = nil
		end
	end

	for _, inst in pairs(CollectionService:GetTagged(Seat.TAG_NAME)) do
		onAdded(inst)
	end
	SeatAddedSig:Connect(onAdded)
	SeatRemovedSig:Connect(onseatRemoved)
end

return SeatService
