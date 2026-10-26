-- [[ Alex MM2 Halloween AutoFarm with GUI ]]
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")

local farming = false

-- حذف أي واجهة قديمة لو كانت موجودة لتجنب التكرار
if game.CoreGui:FindFirstChild("AlexMM2GUI") then
    game.CoreGui.AlexMM2GUI:Destroy()
end

-- بناء واجهة تحكم بسيطة
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "AlexMM2GUI"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.3, -50)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
Frame.Active = true
Frame.Draggable = true
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 8)

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
Title.Text = "🎃 Alex Farm GUI"
Title.TextColor3 = Color3.fromRGB(255, 170, 0)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 13
Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 8)

local ToggleBtn = Instance.new("TextButton", Frame)
ToggleBtn.Size = UDim2.new(0, 170, 0, 45)
ToggleBtn.Position = UDim2.new(0, 15, 0, 40)
ToggleBtn.
