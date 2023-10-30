--!nocheck

warn('👋 Welcome to Blox Football League!\nProgrammed by M_etrics & Nicklaus_s.\n\n🐛 When reporting bugs, please screenshot anything here downwards.')

local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Packages = ReplicatedStorage.Packages

local Knit = require(Packages.Knit)

local Controllers = script.Parent:WaitForChild('Controllers')

Knit.AddControllersDeep(Controllers)

local Start = os.clock()

Knit.Start()
	:andThen(function()
		warn(`[Knit] [Client] Framework started in {os.clock() - Start} seconds!`)
	end)
	:catch(function(Error)
		warn(`[Knit] [Client] [Error] {Error}`)
	end)