--[[
    Combat Gui | The Strongest Battlegrounds
    Soucre By HKTD Roblox:
    TikTok: https://www.tiktok.com/@hktd_roblox
    Discord: https://discord.gg/2ACZAkcmDP
]]

--======================= SERVICES =======================--
local Players           = game:GetService("Players")
local RunService        = game:GetService("RunService")
local TweenService      = game:GetService("TweenService")
local StarterGui        = game:GetService("StarterGui")
local UserInputService  = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting          = game:GetService("Lighting")
local Workspace         = game:GetService("Workspace")
local Debris            = game:GetService("Debris")

local LocalPlayer = Players.LocalPlayer
local PlayerGui   = LocalPlayer:WaitForChild("PlayerGui")

-- Character references (auto update on respawn)
local Character, Humanoid, HumanoidRootPart

local function UpdateCharacter(char)
    Character = char
    Humanoid = char:WaitForChild("Humanoid")
    HumanoidRootPart = char:WaitForChild("HumanoidRootPart")
end

if LocalPlayer.Character then
    UpdateCharacter(LocalPlayer.Character)
end

LocalPlayer.CharacterAdded:Connect(UpdateCharacter)

--======================= LOAD FLUENT =======================--
local Fluent = loadstring(game:HttpGetAsync("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

--======================= NOTIFICATION =======================--
StarterGui:SetCore("SendNotification", {
    Title = "Combat Gui | TSB",
    Text = "Made by HKTD Roblox",
    Duration = 6,
    Icon = "rbxassetid://678696926"
})

--======================= WINDOW =======================--
local Window = Fluent:CreateWindow({
    Title = "Combat Gui Beta | The Strongest Battlegrounds",
    SubTitle = "By HKTD Roblox",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

--======================= TABS =======================--
local Tabs = {
    Info        = Window:AddTab({ Title = "Info",         Icon = "home" }),
    Exploits    = Window:AddTab({ Title = "Exploits",     Icon = "terminal" }),
    Misc        = Window:AddTab({ Title = "Misc",         Icon = "box" }),
    AnimGrabber = Window:AddTab({ Title = "Anim Grabber", Icon = "clipboard" }),
    Movesets    = Window:AddTab({ Title = "Movesets",     Icon = "briefcase" }),
    Emotes      = Window:AddTab({ Title = "Emotes",       Icon = "person-standing" }),
    Settings    = Window:AddTab({ Title = "Settings",     Icon = "settings" })
}

--======================= INFO TAB =======================--
Tabs.Info:AddParagraph({
    Title = "Script Made By HKTD Roblox",
    Content = "Combat Gui | TSB"
})

Tabs.Info:AddButton({
    Title = "Copy Link Discord",
    Description = "HKTD Community",
    Callback = function()
        setclipboard("https://discord.gg/2ACZAkcmDP")
        Fluent:Notify({
            Title = "Link Discord Copied!",
            Content = "Link Copied to Clipboard.",
            SubContent = "https://discord.gg/2ACZAkcmDP",
            Duration = 3
        })
    end
})

Tabs.Info:AddButton({
    Title = "Copy Link TikTok",
    Description = "HKTD Roblox",
    Callback = function()
        setclipboard("https://www.tiktok.com/@hktd_roblox")
        Fluent:Notify({
            Title = "Link TikTok Copied!",
            Content = "Link Copied to Clipboard.",
            SubContent = "https://discord.gg/2ACZAkcmDP",
            Duration = 3
        })
    end
})

Tabs.Info:AddButton({
    Title = "Copy Link GitHub",
    Description = "HKTD-Roblox",
    Callback = function()
        setclipboard("https://github.com/HKTD-Roblox")
        Fluent:Notify({
            Title = "Link GitHub Copied!",
            Content = "Link Copied to Clipboard.",
            SubContent = "https://github.com/HKTD-Roblox",
            Duration = 3
        })
    end
})

--======================= EXPLOITS TAB =======================--
local NoDashCooldown = false
local NoStun = false
local NoSlowed = false
local KeepJumping = false
local ESPEnabled = false
local KindOfInvisible = false

Tabs.Exploits:AddToggle("NoDashCooldown", {
    Title = "No Dash Cooldown",
    Default = false,
    Callback = function(Value)
        NoDashCooldown = Value
        pcall(function()
            Workspace:SetAttribute("NoDashCooldown", Value)
            Workspace:SetAttribute("EffectAffects", 1)
        end)
    end
})

Tabs.Exploits:AddToggle("NoStun", {
    Title = "No Stun",
    Default = false,
    Callback = function(Value)
        NoStun = Value
        -- TODO: Implement actual no stun logic for TSB
    end
})

Tabs.Exploits:AddToggle("NoSlowed", {
    Title = "No Slowed",
    Default = false,
    Callback = function(Value)
        NoSlowed = Value
        -- TODO: Implement actual no slowed logic
    end
})

Tabs.Exploits:AddToggle("KeepJumping", {
    Title = "Keep Jumping",
    Default = false,
    Callback = function(Value)
        KeepJumping = Value
    end
})

Tabs.Exploits:AddToggle("ESP", {
    Title = "ESP",
    Description = "W.I.P - Simple highlight ESP",
    Default = false,
    Callback = function(Value)
        ESPEnabled = Value

        for _, v in pairs(Workspace:GetDescendants()) do
            if v.Name == "CombatGuiESP" then
                v:Destroy()
            end
        end

        if not Value then return end

        local function AddESP(model)
            if not model:FindFirstChild("HumanoidRootPart") then return end
            if model:FindFirstChild("CombatGuiESP") then return end

            local highlight = Instance.new("Highlight")
            highlight.Name = "CombatGuiESP"
            highlight.FillColor = Color3.fromRGB(255, 50, 50)
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.FillTransparency = 0.7
            highlight.Parent = model
        end

        -- Apply to existing
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                AddESP(player.Character)
            end
        end

        -- Future players
        Players.PlayerAdded:Connect(function(player)
            player.CharacterAdded:Connect(function(char)
                if ESPEnabled then
                    task.wait(0.5)
                    AddESP(char)
                end
            end)
        end)
    end
})

Tabs.Exploits:AddToggle("KindOfInvisible", {
    Title = "Kind of Invisible",
    Description = "Hitbox wider - don't use shiftlock",
    Default = false,
    Callback = function(Value)
        KindOfInvisible = Value
        -- TODO: Implement actual hitbox expand / transparency logic
    end
})

Tabs.Exploits:AddButton({
    Title = "Fix Kind of Invisible",
    Description = "Spam until it fixes (disable Kind of Invisible first)",
    Callback = function()
        if not Character then return end
        for _, part in pairs(Character:GetChildren()) do
            if part:IsA("BasePart") then
                part.Anchored = true
            end
        end
        task.wait(0.3)
        for _, part in pairs(Character:GetChildren()) do
            if part:IsA("BasePart") then
                part.Anchored = false
            end
        end
    end
})

Tabs.Exploits:AddButton({
    Title = "Void Kill",
    Description = "Grab someone > Click this > They die in the Void",
    Callback = function()
        if not HumanoidRootPart then return end

        local originalCFrame = HumanoidRootPart.CFrame
        HumanoidRootPart.CFrame = CFrame.new(0, -500, 0)

        task.wait(0.1)
        -- Return after a short time (you can adjust)
        -- HumanoidRootPart.CFrame = originalCFrame
    end
})

-- Keep Jumping loop
RunService.Heartbeat:Connect(function()
    if KeepJumping and Humanoid and Humanoid.FloorMaterial ~= Enum.Material.Air then
        Humanoid.Jump = true
    end
end)

--======================= MISC TAB =======================--
local FakeDropkickSpeed = 300

Tabs.Misc:AddSlider("FakeDropkickSpeed", {
    Title = "Fake Dropkick Speed",
    Description = "Speed of the fake dropkick",
    Default = 300,
    Min = 100,
    Max = 1000,
    Rounding = 0,
    Callback = function(Value)
        FakeDropkickSpeed = Value
    end
})

Tabs.Misc:AddButton({
    Title = "Fake Dropkick",
    Description = "Simple fake dropkick (can be improved)",
    Callback = function()
        if not HumanoidRootPart or not Humanoid then return end

        local bv = Instance.new("BodyVelocity")
        bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
        bv.Velocity = HumanoidRootPart.CFrame.LookVector * FakeDropkickSpeed + Vector3.new(0, 50, 0)
        bv.Parent = HumanoidRootPart

        Debris:AddItem(bv, 0.3)

        -- Optional sound / animation can be added here
    end
})

Tabs.Misc:AddButton({
    Title = "Remove Magic Health Text",
    Description = "Hide the MagicHealth TextLabel",
    Callback = function()
        pcall(function()
            local magic = PlayerGui:FindFirstChild("ScreenGui")
                and PlayerGui.ScreenGui:FindFirstChild("MagicHealth")
            if magic and magic:FindFirstChild("TextLabel") then
                magic.TextLabel.Visible = false
            end
        end)
    end
})

--======================= ANIM GRABBER TAB =======================--
Tabs.AnimGrabber:AddParagraph({
    Title = "Animation Grabber",
    Content = "Tools to grab / Copy Animations from other Players or dummies."
})

Tabs.AnimGrabber:AddButton({
    Title = "Print Playing Animations",
    Description = "Print All currently playing animation IDs of your Character",
    Callback = function()
        if not Humanoid then return end
        print("=== Playing Animations ===")
        for _, track in pairs(Humanoid:GetPlayingAnimationTracks()) do
            print(track.Animation.AnimationId, track.Name)
        end
    end
})

--======================= MOVESETS TAB =======================--
Tabs.Movesets:AddParagraph({
    Title = "Movesets",
    Content = "Character moveset changers.\nReset character to remove moveset."
})

local function HideMagicHealth()
    pcall(function()
        local magic = PlayerGui:FindFirstChild("ScreenGui")
            and PlayerGui.ScreenGui:FindFirstChild("MagicHealth")
        if magic and magic:FindFirstChild("TextLabel") then
            magic.TextLabel.Visible = false
        end
    end)
end

local function WaitHotbar()
    pcall(function()
        PlayerGui:WaitForChild("Hotbar"):WaitForChild("Backpack"):WaitForChild("Hotbar")
    end)
end

Tabs.Movesets:AddButton({
    Title = "Baldy To KJ",
    Description = "Reset to get rid of the moveset",
    Callback = function()
        WaitHotbar()
        pcall(function()
            local Locker = workspace:FindFirstChild("Locker") or workspace
            if Locker then
                Locker.DescendantAdded:Connect(function() end)
                Locker:GetAttributeChangedSignal("Ulted"):Connect(function()
                    -- original AttributeChanged for "Ulted"
                end)
            end
        end)

        HideMagicHealth()

        Fluent:Notify({
            Title = "Moveset",
            Content = "Baldy > KJ applied",
            Duration = 4
        })
    end
})

Tabs.Movesets:AddButton({
    Title = "Garou To Suiryu",
    Description = "Reset to get rid of the moveset",
    Callback = function()
        WaitHotbar()

        pcall(function()
            local Locker = workspace:FindFirstChild("Locker") or workspace
            Locker:GetAttributeChangedSignal("HoldingSpace"):Connect(function()
                Locker:GetAttribute("HoldingSpace")
            end)

            getfenv().Emit = function()
                task.wait(0.001)
            end
        end)

        HideMagicHealth()

        Fluent:Notify({
            Title = "Moveset",
            Content = "Garou > Suiryu applied",
            Duration = 4
        })
    end
})

Tabs.Movesets:AddButton({
    Title = "Tatsumaki To Gojo",
    Description = "Reset to get rid of the moveset",
    Callback = function()
        WaitHotbar()
        HideMagicHealth()

        Fluent:Notify({
            Title = "Moveset",
            Content = "Tatsumaki > Gojo applied",
            Duration = 4
        })
    end
})

Tabs.Movesets:AddButton({
    Title = "Garou to Yuji/Sukuna",
    Description = "UNFINISHED - Reset to remove",
    Callback = function()
        WaitHotbar()

        getfenv().ultbodyvelocity = function()
            if HumanoidRootPart and HumanoidRootPart:FindFirstChild("BV") then
                HumanoidRootPart.BV:Destroy()
            end
        end

        HideMagicHealth()

        Fluent:Notify({
            Title = "Moveset",
            Content = "Garou > Yuji/Sukuna",
            Duration = 4
        })
    end
})

Tabs.Movesets:AddButton({
    Title = "Atomic to Sukuna",
    Description = "Might Lag - Reset to remove",
    Callback = function()
        WaitHotbar()

        pcall(function()
            writefile(
                "customObject_Sound_Sound.mp3",
                game:HttpGet("https://github.com/xVicity/BURNED/raw/main/GOJO%20VS%20SUKUNA%20FULL%20FIGHT%20AMV%20%20ENDING%20SCENE%204K%20%20LADY%20GAGA%20-%20JUDAS%20(mp3cut.net)%20(1).mp3")
            )
            if getcustomasset then
                getcustomasset("customObject_Sound_Sound.mp3")
            end
        end)

        HideMagicHealth()

        Fluent:Notify({
            Title = "Moveset",
            Content = "Atomic > Sukuna applied",
            Duration = 4
        })
    end
})

Tabs.Movesets:AddButton({
    Title = "Saitama to Gojo",
    Description = "A bit old - Reset to remove",
    Callback = function()
        WaitHotbar()

        pcall(function()
            local Locker = workspace:FindFirstChild("Locker") or workspace
            Locker:GetAttributeChangedSignal("HoldingSpace"):Connect(function()
                Locker:GetAttribute("HoldingSpace")
            end)
            getfenv().usingfalsedeathcounteranim = false
        end)

        HideMagicHealth()

        Fluent:Notify({
            Title = "Moveset",
            Content = "Saitama > Gojo applied",
            Duration = 4
        })
    end
})

Tabs.Movesets:AddButton({
    Title = "Sonic to Yuta",
    Description = "Reset to get rid of the moveset",
    Callback = function()
        WaitHotbar()

        pcall(function()
            local Locker = workspace:FindFirstChild("Locker") or workspace
            Locker:GetAttributeChangedSignal("HoldingSpace"):Connect(function()
                Locker:GetAttribute("HoldingSpace")
            end)
        end)

        HideMagicHealth()

        Fluent:Notify({
            Title = "Moveset",
            Content = "Sonic > Yuta applied",
            Duration = 4
        })
    end
})

--======================= EMOTES TAB =======================--
Tabs.Emotes:AddButton({
    Title = "Helicopter Emote",
    Description = "Play Helicopter Emote",
    Callback = function()
        if not Humanoid then return end

        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://17862997402"

        local track = Humanoid:LoadAnimation(anim)
        track.Priority = Enum.AnimationPriority.Action4
        track:Play()

        -- Stop after animation length
        task.delay(track.Length - 0.1, function()
            if track.IsPlaying then
                track:Stop()
            end
        end)
    end
})

--======================= SETTINGS TAB =======================--
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("CombatGui")
SaveManager:SetFolder("CombatGui/TSB")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

--======================= FINAL =======================--
Window:SelectTab(1)
SaveManager:LoadAutoloadConfig()