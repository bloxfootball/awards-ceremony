
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Packages = ReplicatedStorage.Packages

local Fusion = require(Packages.Fusion)
local New = Fusion.New
local Children = Fusion.Children

local function Category(props)
    return New "CanvasGroup" {
        Name = "Category",
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(0, 0, 0),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromScale(1, 1),
        ZIndex = 2,
      
        [Children] = {
          New "Frame" {
            Name = "Container",
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromScale(1, 1),
            ZIndex = 2,
      
            [Children] = {
              New "TextLabel" {
                Name = "Category",
                FontFace = Font.new(
                  "rbxasset://fonts/families/GothamSSm.json",
                  Enum.FontWeight.Bold,
                  Enum.FontStyle.Normal
                ),
                Text = "Best Dressed",
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextScaled = true,
                TextSize = 14,
                TextWrapped = true,
                AnchorPoint = Vector2.new(0.5, 0),
                BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                BackgroundTransparency = 1,
                BorderColor3 = Color3.fromRGB(0, 0, 0),
                BorderSizePixel = 0,
                Position = UDim2.fromScale(0.5, 0.1),
                Size = UDim2.fromScale(1, 0.1),
              },
            }
          },
      
          New "ImageLabel" {
            Name = "Background",
            Image = "rbxassetid://14376522690",
            ScaleType = Enum.ScaleType.Crop,
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
            Size = UDim2.fromScale(1, 1),
      
            [Children] = {
              New "UIGradient" {
                Name = "UIGradient",
                Color = ColorSequence.new({
                  ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 65, 65)),
                  ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 45, 45)),
                }),
                Rotation = 90,
                Transparency = NumberSequence.new({
                  NumberSequenceKeypoint.new(0, 0),
                  NumberSequenceKeypoint.new(1, 1),
                }),
              },
            }
          },
        }
      }    
end

return Category