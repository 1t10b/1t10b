local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "1t10b Secret Gag Script V1",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "1t10b Secret Gag Script V1",
   LoadingSubtitle = "by 1t10b",
   ShowText = " ", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "AmberGlow", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "1t10b-gag-secret-v1"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "1t10b Secret Gag Script V1",
      Subtitle = "Key System",
      Note = "by 1t10b", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"levowx"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Summer Harvest", nil) -- Title, Image
local Tab = Window:CreateTab("Misc", nil) -- Title, Image

local Slider = Tab:CreateSlider({
   Name = "Speed",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Speed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
         Player.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Button = Tab:CreateButton({
   Name = "Button Example",
   Callback = function()
     local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local canJump = true
local jumpCooldown = 0.3 -- Cooldown time in seconds

 local function onJumpRequest()
	if canJump then
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		canJump = false
		task.wait(jumpCooldown)
		canJump = true
	end
end

game:GetService("UserInputService").JumpRequest:Connect(onJumpRequest)
   end,
})
