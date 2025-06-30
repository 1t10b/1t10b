-- Load Rayfield UI Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create main window
local Window = Rayfield:CreateWindow({
    Name = "Utility Menu",
    LoadingTitle = "Utility Menu",
    LoadingSubtitle = "by YourName",
    ConfigurationSaving = {
        Enabled = false,
    },
    KeySystem = false
})

-- Create Tabs
local summerTab = Window:CreateTab("SummerHarvest", nil)
local miscTab = Window:CreateTab("Misc", nil)

-- Player Speed Slider
miscTab:CreateSlider({
    Name = "Player Speed",
    Range = {8, 500},
    Increment = 1,
    Suffix = " WalkSpeed",
    CurrentValue = 16,
    Flag = "SpeedSlider",
    Callback = function(value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = value
        end
    end
})

-- Infinite Jump Toggle
miscTab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Flag = "InfJumpToggle",
    Callback = function(isEnabled)
        local UIS = game:GetService("UserInputService")
        if isEnabled then
            _G.InfJumpConnection = UIS.JumpRequest:Connect(function()
                local player = game:GetService("Players").LocalPlayer
                local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end)
        else
            if _G.InfJumpConnection then
                _G.InfJumpConnection:Disconnect()
                _G.InfJumpConnection = nil
            end
        end
    end
})
