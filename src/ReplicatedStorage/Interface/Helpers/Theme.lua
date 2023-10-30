--[=[
	@class Theme
	
	Provides themes for interface.
]=]

type Theme = {
	Background: {
		Default: Color3
	}
}

local Theme: Theme = {
	Background = {
		Default =  Color3.fromRGB(45, 45, 45)
	},

	Accent = {
		Default = Color3.fromRGB(33, 33, 33)
	},

	Border = {
		Default =  Color3.fromRGB(65, 65, 65)
	}
}

return function(Color: string, Modifier: string?)
	Modifier = Modifier or 'Default'

	return Theme[Color][Modifier]
end