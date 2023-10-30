local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Packages = ReplicatedStorage.Packages

local Fusion = require(Packages.Fusion)
local New = Fusion.New
local Children = Fusion.Children

function Top(props)
    return New "CanvasGroup" {
        Name = "Top",
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromScale(0.4, 0.5),
      
        [Children] = {
          New "Frame" {
            Name = "Frame",
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
      
            [Children] = {
              New "TextLabel" {
                Name = "User",
                FontFace = Font.new(
                  "rbxasset://fonts/families/GothamSSm.json",
                  Enum.FontWeight.Medium,
                  Enum.FontStyle.Normal
                ),
                Text = "Nicklaus_s",
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextScaled = true,
                TextSize = 14,
                TextWrapped = true,
                AnchorPoint = Vector2.new(0.5, 1),
                BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                BackgroundTransparency = 1,
                BorderColor3 = Color3.fromRGB(0, 0, 0),
                BorderSizePixel = 0,
                Position = UDim2.fromScale(0.5, 1),
                Size = UDim2.fromScale(0.7, 0.2),
              },
      
              New "Frame" {
                Name = "Avatar",
                AnchorPoint = Vector2.new(0.5, 0),
                BackgroundColor3 = Color3.fromRGB(45, 45, 45),
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Position = UDim2.fromScale(0.5, 0),
                Size = UDim2.new(0.75, 0, 0.8, -20),
                ZIndex = 2,
      
                [Children] = {
                  New "UICorner" {
                    Name = "UICorner",
                    CornerRadius = UDim.new(0, 20),
                  },
      
                  New "ImageLabel" {
                    Name = "Icon",
                    Image = "rbxthumb://type=AvatarHeadShot&id=560637180&w=420&h=420",
                    ScaleType = Enum.ScaleType.Fit,
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    BackgroundTransparency = 1,
                    Position = UDim2.fromScale(0.5, 0.5),
                    Size = UDim2.fromScale(1, 1),
                    ZIndex = 2,
      
                    [Children] = {
                      New "UICorner" {
                        Name = "UICorner",
                        CornerRadius = UDim.new(0, 20),
                      },
                    }
                  },
      
                  New "UIStroke" {
                    Name = "UIStroke",
                    Color = Color3.fromRGB(255, 255, 255),
                    Thickness = 5,
                  },
                }
              },
      
              New "UIPadding" {
                Name = "UIPadding",
              },
            }
          },
      
          New "UIGridLayout" {
            Name = "UIGridLayout",
            CellPadding = UDim2.fromOffset(-20, 60),
            CellSize = UDim2.fromScale(0.3, 0.4),
            FillDirectionMaxCells = 2,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
            VerticalAlignment = Enum.VerticalAlignment.Center,
          },
      
          New "Frame" {
            Name = "Frame",
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
      
            [Children] = {
              New "TextLabel" {
                Name = "User",
                FontFace = Font.new(
                  "rbxasset://fonts/families/GothamSSm.json",
                  Enum.FontWeight.Medium,
                  Enum.FontStyle.Normal
                ),
                Text = "Nicklaus_s",
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextScaled = true,
                TextSize = 14,
                TextWrapped = true,
                AnchorPoint = Vector2.new(0.5, 1),
                BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                BackgroundTransparency = 1,
                BorderColor3 = Color3.fromRGB(0, 0, 0),
                BorderSizePixel = 0,
                Position = UDim2.fromScale(0.5, 1),
                Size = UDim2.fromScale(0.7, 0.2),
              },
      
              New "Frame" {
                Name = "Avatar",
                AnchorPoint = Vector2.new(0.5, 0),
                BackgroundColor3 = Color3.fromRGB(45, 45, 45),
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Position = UDim2.fromScale(0.5, 0),
                Size = UDim2.new(0.75, 0, 0.8, -20),
                ZIndex = 2,
      
                [Children] = {
                  New "UICorner" {
                    Name = "UICorner",
                    CornerRadius = UDim.new(0, 20),
                  },
      
                  New "ImageLabel" {
                    Name = "Icon",
                    Image = "rbxthumb://type=AvatarHeadShot&id=560637180&w=420&h=420",
                    ScaleType = Enum.ScaleType.Fit,
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    BackgroundTransparency = 1,
                    Position = UDim2.fromScale(0.5, 0.5),
                    Size = UDim2.fromScale(1, 1),
                    ZIndex = 2,
      
                    [Children] = {
                      New "UICorner" {
                        Name = "UICorner",
                        CornerRadius = UDim.new(0, 20),
                      },
                    }
                  },
      
                  New "UIStroke" {
                    Name = "UIStroke",
                    Color = Color3.fromRGB(255, 255, 255),
                    Thickness = 5,
                  },
                }
              },
      
              New "UIPadding" {
                Name = "UIPadding",
              },
            }
          },
      
          New "Frame" {
            Name = "Frame",
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
      
            [Children] = {
              New "TextLabel" {
                Name = "User",
                FontFace = Font.new(
                  "rbxasset://fonts/families/GothamSSm.json",
                  Enum.FontWeight.Medium,
                  Enum.FontStyle.Normal
                ),
                Text = "Nicklaus_s",
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextScaled = true,
                TextSize = 14,
                TextWrapped = true,
                AnchorPoint = Vector2.new(0.5, 1),
                BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                BackgroundTransparency = 1,
                BorderColor3 = Color3.fromRGB(0, 0, 0),
                BorderSizePixel = 0,
                Position = UDim2.fromScale(0.5, 1),
                Size = UDim2.fromScale(0.7, 0.2),
              },
      
              New "Frame" {
                Name = "Avatar",
                AnchorPoint = Vector2.new(0.5, 0),
                BackgroundColor3 = Color3.fromRGB(45, 45, 45),
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Position = UDim2.fromScale(0.5, 0),
                Size = UDim2.new(0.75, 0, 0.8, -20),
                ZIndex = 2,
      
                [Children] = {
                  New "UICorner" {
                    Name = "UICorner",
                    CornerRadius = UDim.new(0, 20),
                  },
      
                  New "ImageLabel" {
                    Name = "Icon",
                    Image = "rbxthumb://type=AvatarHeadShot&id=560637180&w=420&h=420",
                    ScaleType = Enum.ScaleType.Fit,
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    BackgroundTransparency = 1,
                    Position = UDim2.fromScale(0.5, 0.5),
                    Size = UDim2.fromScale(1, 1),
                    ZIndex = 2,
      
                    [Children] = {
                      New "UICorner" {
                        Name = "UICorner",
                        CornerRadius = UDim.new(0, 20),
                      },
                    }
                  },
      
                  New "UIStroke" {
                    Name = "UIStroke",
                    Color = Color3.fromRGB(255, 255, 255),
                    Thickness = 5,
                  },
                }
              },
      
              New "UIPadding" {
                Name = "UIPadding",
              },
            }
          },
      
          New "Frame" {
            Name = "Frame",
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(0, 0, 0),
            BorderSizePixel = 0,
      
            [Children] = {
              New "TextLabel" {
                Name = "User",
                FontFace = Font.new(
                  "rbxasset://fonts/families/GothamSSm.json",
                  Enum.FontWeight.Medium,
                  Enum.FontStyle.Normal
                ),
                Text = "Nicklaus_s",
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextScaled = true,
                TextSize = 14,
                TextWrapped = true,
                AnchorPoint = Vector2.new(0.5, 1),
                BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                BackgroundTransparency = 1,
                BorderColor3 = Color3.fromRGB(0, 0, 0),
                BorderSizePixel = 0,
                Position = UDim2.fromScale(0.5, 1),
                Size = UDim2.fromScale(0.7, 0.2),
              },
      
              New "Frame" {
                Name = "Avatar",
                AnchorPoint = Vector2.new(0.5, 0),
                BackgroundColor3 = Color3.fromRGB(45, 45, 45),
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Position = UDim2.fromScale(0.5, 0),
                Size = UDim2.new(0.75, 0, 0.8, -20),
                ZIndex = 2,
      
                [Children] = {
                  New "UICorner" {
                    Name = "UICorner",
                    CornerRadius = UDim.new(0, 20),
                  },
      
                  New "ImageLabel" {
                    Name = "Icon",
                    Image = "rbxthumb://type=AvatarHeadShot&id=560637180&w=420&h=420",
                    ScaleType = Enum.ScaleType.Fit,
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    BackgroundTransparency = 1,
                    Position = UDim2.fromScale(0.5, 0.5),
                    Size = UDim2.fromScale(1, 1),
                    ZIndex = 2,
      
                    [Children] = {
                      New "UICorner" {
                        Name = "UICorner",
                        CornerRadius = UDim.new(0, 20),
                      },
                    }
                  },
      
                  New "UIStroke" {
                    Name = "UIStroke",
                    Color = Color3.fromRGB(255, 255, 255),
                    Thickness = 5,
                  },
                }
              },
      
              New "UIPadding" {
                Name = "UIPadding",
              },
            }
          },
        }
      }
end

return Top