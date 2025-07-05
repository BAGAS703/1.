local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local screenGui = Instance.new("ScreenGui", game.CoreGui)
screenGui.Name = "EmoteGui"

local function playAnimation(animationId)
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://" .. animationId
    local track = Humanoid:LoadAnimation(animation)
    track:Play()
end

local function createButton(text, position, animId)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 100, 0, 40)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Text = text
    button.Font = Enum.Font.GothamBold
    button.TextSize = 14
    button.Draggable = true
    button.Active = true
    button.Parent = screenGui

    button.MouseButton1Click:Connect(function()
        playAnimation(animId)
    end)
end

-- Tambah tombol-tombol emote
createButton("Dance", UDim2.new(1, -120, 0, 600), 3360689775) -- Dance
createButton("Dance2", UDim2.new(1, -120, 0, 650), 507771019) -- Dance2
createButton("Wave", UDim2.new(1, -120, 0, 700), 507770239)   -- Wave
createButton("Cheer", UDim2.new(1, -120, 0, 750), 507770677)  -- Cheer
createButton("Laugh", UDim2.new(1, -120, 0, 350), 507770818)  -- Laugh
