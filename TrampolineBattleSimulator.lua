local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Trampoline Battle Sim - Stami",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Trampoline Battle Sim Script",
    LoadingSubtitle = "by Stami",
    Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

    ConfigurationSaving = {
        Enabled = false,
        FolderName = nil, -- Create a custom folder for your hub/game
        FileName = "StamiHUBB"
    },

    Discord = {
        Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
        Invite = "g8QnUE5BS4", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
        RememberJoins = false -- Set this to false to make them join the discord every time they load it up
    },

    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
        Title = "Stami Key",
        Subtitle = "tramp battle sim",
        Note = "go to discord g8QnUE5BS4", -- Use this to tell the user how to get a key
        FileName = "stamskiKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = {"ImagineIfNinjaGotALowTaperFade"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello", "key22")
    }
})

local CreditsTab = Window:CreateTab("Credits", "Badge")
local Section = CreditsTab:CreateSection("CREDITS 👑: Stami")
local Section = CreditsTab:CreateSection("Discord:g8QnUE5BS4")

local MainTab = Window:CreateTab("Cheats", "Square-User") -- Title, Image

local Input = MainTab:CreateInput({
    Name = "Give JumpPower",
    CurrentValue = "",
    PlaceholderText = "Give Power",
    RemoveTextAfterFocusLost = true,
    Flag = "GiveJP",
    Callback = function(Text)
        local args = {
            [1] = Text
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("Train"):FireServer(unpack(args))
    end,
})

local Input = MainTab:CreateInput({
    Name = "Give Wins",
    CurrentValue = "",
    PlaceholderText = "Give Wins",
    RemoveTextAfterFocusLost = true,
    Flag = "Givewinss",
    Callback = function(Text)
        local args = {
            [1] = Text
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("WinGain"):FireServer(unpack(args))
    end,
})

local Input = MainTab:CreateInput({
    Name = "Give Rebirths",
    CurrentValue = "",
    PlaceholderText = "Give Rebirths",
    RemoveTextAfterFocusLost = true,
    Flag = "GiveRebirth",
    Callback = function(Text)
        local repeats = tonumber(Text) -- Convert input to number
        if repeats and repeats > 0 then
            for i = 1, repeats do
                local args = {
                    [1] = 1 -- Example fixed value; replace as needed
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("HealthAdd"):FireServer(unpack(args))
                wait(0.001) -- Optional: Prevent event spamming
            end
        else
            print("Invalid input! Please enter a positive integer.")
        end
    end,
})

local Button = MainTab:CreateButton({
    Name = "Give Best Power",
    Callback = function()
        local args = {
            [1] = "Gust",
            [2] = 0
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("BuyPower"):FireServer(unpack(args))
        
        -- Now using the player running the script (LocalPlayer)
        local args = {
            [1] = "Gust",
            [2] = game.Players.LocalPlayer.Character -- This now targets the player's character
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("EquipEffect"):FireServer(unpack(args))

    end,
})


local Button = MainTab:CreateButton({
    Name = "Enchant Power",
    Callback = function()
        local args = {
            [1] = 0,
            [2] = 0.15
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("Enchanted"):FireServer(unpack(args))
        
    end,
})

local Section = MainTab:CreateSection("Misc")

local Slider = MainTab:CreateSlider({
    Name = "Walk Speed",
    Range = {16, 300},
    Increment = 1,
    Suffix = "WalkSpeed",
    CurrentValue = 16,
    Flag = "WSSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})

local Button = MainTab:CreateButton({
    Name = "Destroy GUI",
    Callback = function()
        Rayfield:Destroy()
    end,
})

local TpTab = Window:CreateTab("Teleport", "Rewind") -- Title, Image
local Section = TpTab:CreateSection("Teleport Menu")
local Button = TpTab:CreateButton({
    Name = "Island 1: Grass",
    Callback = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Now set the CFrame
humanoidRootPart.CFrame = CFrame.new(38.6598549, 38.2589111, -123.562393, -0.0207716227, -5.74191805e-09, 0.999784231, -3.08116022e-08, 1, 5.10301179e-09, -0.999784231, -3.06989563e-08, -0.0207716227)

    end,
})

local Button = TpTab:CreateButton({
    Name = "Island 2: Ice",
    Callback = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Now set the CFrame
humanoidRootPart.CFrame = CFrame.new(45.83181, 38.2589111, 2135.16235, 0.376577675, -1.06928844e-07, 0.926385045, 5.21263068e-08, 1, 9.42364551e-08, -0.926385045, 1.28016886e-08, 0.376577675)
    end,
})

local Button = TpTab:CreateButton({
    Name = "Island 3: Beach",
    Callback = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Now set the CFrame
humanoidRootPart.CFrame = CFrame.new(8.22658825, 30.1036701, 5208.50293, -0.169463098, 1.92700504e-08, 0.985536516, -1.76226358e-08, 1, -2.25830661e-08, -0.985536516, -2.11947473e-08, -0.169463098)
    end,
})

local Button = TpTab:CreateButton({
    Name = "Island 4: Hell",
    Callback = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Now set the CFrame
humanoidRootPart.CFrame = CFrame.new(9.46756458, 30.321434, 7521.72998, 0.419752121, -1.29162352e-08, 0.907638788, -7.36165573e-09, 1, 1.76351058e-08, -0.907638788, -1.40840974e-08, 0.419752121)
    end,
})
