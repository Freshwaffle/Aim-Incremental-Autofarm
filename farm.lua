--Aim Incremental Autofarm by Fresh and Geg
print("PPPP  RRRR   OOO  X   X Y   Y ")
print("P   P R   R O   O  X X   Y Y  ")
print("PPPP  RRRR  O   O   X     Y   ")
print("P     R  R  O   O  X X    Y   ")
print("P     R   R  OOO  X   X   Y   ")

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Aim Incremental Autofarm",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Fresh",
   ShowText = "Proxy", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Sahur", -- Create a custom folder for your hub/game
      FileName = "Tuff Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})
Rayfield:Notify({
   Title = "Autofarm Loaded",
   Content = "Hi Skid",
   Duration = 6.5,
   Image = 4483362458,
})
local Tab = Window:CreateTab("Autofarm", nil) -- Title, Image
local Section = Tab:CreateSection("Autofarm")

local Button = Tab:CreateButton({
   Name = "Hits Farm",
   Callback = function()
        while true do
        local args = {
            "588e7f40-b1f2-49db-9ffb-6cb20cd094fc", --replace with ur own id until we make an id system
            true,
            "Pistol"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("updateStatsEvent"):FireServer(unpack(args))

          task.wait(0.1)
        end
   end,
})

local Button = Tab:CreateButton({
   Name = "Dummies Killed Sync",
   Callback = function()
        while true do
        game:GetService("ReplicatedStorage").remotes.updateDummiesKilledEvent:FireServer()
          task.wait(0.1)
        end
   end,
})
