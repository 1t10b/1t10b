-- Load Rayfield UI Library
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Create the Main UI Window
local Window = Rayfield:CreateWindow({
    Name = "Utility Menu",
    LoadingTitle = "Utility Menu",
    LoadingSubtitle = "by YourName",
    ConfigurationSaving = {
        Enabled = false,
    },
    KeySystem = false
})

-- Tabs
local SummerTab = Window:CreateTab("SummerHarvest", 4483362458) -- any icon
local MiscTab = Window:CreateTab("Misc", 4483362458)

-- Player Speed Slider
MiscTab:CreateSlider({
    Name = "Player Speed",
    Range = {8, 500},
    Increment = 1,
    Suffix = " WalkSpeed",
    CurrentValue = 16,
    Flag = "SpeedSlider",
    Callback = function(value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.WalkSpeed = value
    end
})

-- Infinite Jump Toggle
local UIS = game:GetService("UserInputService")
local InfJumpConnection

MiscTab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Flag = "InfiniteJump",
    Callback = function(enabled)
        if enabled then
            InfJumpConnection = UIS.JumpRequest:Connect(function()
                local player = game:GetService("Players").LocalPlayer
                local character = player.Character
                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                    end
                end
            end)
        else
            if InfJumpConnection then
                InfJumpConnection:Disconnect()
                InfJumpConnection = nil
            end
        end
    end
})
