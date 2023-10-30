local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Packages = ReplicatedStorage.Packages

local Interface = ReplicatedStorage.Interface
local Helpers = Interface.Helpers

local Fusion = require(Packages.Fusion)

local Strip = require(Helpers.Strip)

return function(Object: Instance, Properties: {[any]: any}, Custom: {string}): Instance
	return Fusion.Hydrate(Object)(Strip(Properties, Custom))
end