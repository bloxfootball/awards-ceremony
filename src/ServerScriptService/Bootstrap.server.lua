local ServerScriptService = game:GetService('ServerScriptService')
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Packages = ReplicatedStorage.Packages

local Knit = require(Packages.Knit)

local Services = ServerScriptService:WaitForChild('Services')

Knit.AddServicesDeep(Services)

local Start = os.clock()

Knit.Start()
	:andThen(function()
		warn(`[Knit] [Server] Framework started in {os.clock() - Start} seconds!`)
	end)
	:catch(function(Error)
		warn(`[Knit] [Server] [Error] {Error}`)
	end)