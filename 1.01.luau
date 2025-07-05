-- UI Emote Button Script
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

-- Buat ScreenGui
local screenGui = Instance.new("ScreenGui", game.CoreGui)
screenGui.Name = "EmoteGui"

-- Fungsi buat tombol
local function createButton(text, position, emoteName)
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
        if Humanoid then
            LocalPlayer:Chat("/e " .. emoteName)
        end
    end)
end

-- Tambahkan tombol-tombol emote di sini
createButton("Dance", UDim2.new(1, -120, 0, 50), "dance")
createButton("Dance2", UDim2.new(1, -120, 0, 100), "dance2")
createButton("Wave", UDim2.new(1, -120, 0, 150), "wave")
createButton("Cheer", UDim2.new(1, -120, 0, 200), "cheer")
createButton("Laugh", UDim2.new(1, -120, 0, 250), "laugh")
createButton("Point", UDim2.new(1, -120, 0, 300), "point")
