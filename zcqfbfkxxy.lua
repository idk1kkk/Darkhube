local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Dark Hub V1",
   LoadingTitle = "Dark Hub V1",
   LoadingSubtitle = "By Dark Scriptss On YT",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Dark Hub V1"
   },
   Discord = {
      Enabled = true,
      Invite = "ub5f6XtaJB", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Dark Hub V1 | Key System",
      Subtitle = "Link In Server",
      Note = "Obtain Key From The Discord",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local UniversalScripts = Window:CreateTab("Home", Nil) -- Title, Image
local MainSection = UniversalScripts:CreateSection("Universal Scripts")
Rayfield:Notify({
   Title = "Executed",
   Content = "Executed Successfully",
   Duration = 5,
   Image = Nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay",
         Callback = function()
         print("Tapped!")
      end
   },
},
})

local Button = UniversalScripts:CreateButton({
   Name = "Infinite Yeild",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

local Button = UniversalScripts:CreateButton({
   Name = "Invisible Gui",
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe./dbb6ce6f6cee4f7a5c9e20d7b88e83db2a93bf25/Invisible%20GUI'))()
   end,
})

local Button = UniversalScripts:CreateButton({
   Name = "Click To Fling Script",
   Callback = function() 
        loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/dcd8a483a1ba00904cc3261a8299cfa1/raw/9a60d9c7c1f4749e6be2c27e2cdb80dec5cd8f2a/clickfling",true))()
   end,
})

local Button = UniversalScripts:CreateButton({
   Name = "Universal Aim Bot",
   Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot%20V2%20GUI.lua"))()
   end,
})

local Button = UniversalScripts:CreateButton({
   Name = "Universal Esp",
   Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/ESP.lua"))()
   end,
})

local MM2 = Window:CreateTab("MM2", nil) -- Title, Image
local Section = MM2:CreateSection("MM2")

local Button = MM2:CreateButton({
   Name = "MM2 Hub",
   Callback = function() 
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/304b4e619a232d3fc9bac5ee77d95087.lua"))()
   end,
})

local Arsenal = Window:CreateTab("Arsenal", nil) -- Title, Image
local Section = Arsenal:CreateSection("Arsenal")

local Button = Arsenal:CreateButton({
   Name = "Thunder Client (You Need a key)",
   Callback = function() 
        -- thunder client
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AndrewDarkyy/ThunderClient/main/main.lua", true))()
   end,
})

local Bedwars = Window:CreateTab("Bedwars", nil) -- Title, Image
local Section = Bedwars:CreateSection("Bedwars")

local Button = Bedwars:CreateButton({
   Name = "Vxpe v4 (FIXED)",
   Callback = function() 
        getgenv().getcustomasset = nil getgenv().getsynasset = nil  loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))() wait(1) shared.GuiLibrary.GUIKeybind = [[V]] -- press V to open up the GUI
   end,
})

local BigPaiunt = Window:CreateTab("Big Paint Ball", nil) -- Title, Image
local Section = BigPaiunt:CreateSection("Big Paint Ball")

local Button = BigPaiunt:CreateButton({
   Name = "Best Big paintball script",
   Callback = function() 
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
   end,
})

local DaHood = Window:CreateTab("Da Hood", nil) -- Title, Image
local Section = DaHood:CreateSection("Da Hood")

local Button = DaHood:CreateButton({
   Name = "Da Hood Hub",
   Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mrhackerman35297/AgentCC/main/Launch.lua"))()
   end,
})

local Others = Window:CreateTab("Others", nil) -- Title, Image
local Section = Others:CreateSection("Others")

local Button = Others:CreateButton({
   Name = "Chat Bypass",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser", true))({
    Method = 1, -- Method 1 is the main method. Method two is emojis. Method 3 is full transparency, no special symbols. Method 3 has been improved!
    Keybind = "F", -- Usually defaulted to F. You can change this keybind by replacing the string with a letter. Works for uppercase and lowercase.
    ShowMethodDictionary = true -- Shows you the full list of words that you can say with the method. Press FN + F9 to see this dictionary.
})


-- This page will be always updated no matter what.
-- BetterBypasser does not log anything.

-- If you want the new update or the new invis method, please change "Method" to 3
-- Want to see the words for Method 1? Please view the console to do so. We are planning to change this to a UI where it shows you the words instead
    end,
})

local Slider = Others:CreateSlider({
   Name = "Walk Speed",
   Range = {0, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = Others:CreateSlider({
   Name = "Jump Power",
   Range = {0, 300},
   Increment = 1,
   Suffix = "JumpPower",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})
