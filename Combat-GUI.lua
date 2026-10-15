local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
WindUI:SetTheme("Dark")
WindUI.TransparencyValue = 0.2

local Window = WindUI:CreateWindow({
    Title = "Zorcex Hub | The Strongest Battlegrounds",
    Icon = "geist:window",
    Author = "The script was created by Zorcex!",
    Folder = "Zorcex-Hub",
    Size = UDim2.fromOffset(300, 300),
    Theme = "Dark",
})

local MainSection = Window:Section({Title = "Misc", Opened = true})

local Tabs = {}
local Icons = {
    "geist:plus", "geist:shield", "geist:target", "geist:user",
    "geist:more-horizontal", "geist:cpu", "geist:arrow-up-right",
    "geist:slash", "geist:cloud", "geist:sun", "geist:box",
    "geist:menu", "geist:key"
}
local TabNames = {
    "New", "Auto Block", "Camlock", "Local", "Other",
    "Tech", "Movest", "Anti", "Server", "Shader",
    "Farm", "Hub", "Admin"
}

for i = 1, 13 do
    Tabs[i] = MainSection:Tab({
        Title = TabNames[i],
        Icon = Icons[i],
        Desc = "Tab " .. i
    })
end

Tabs[7]:Button({
    Title = "Basic Emote",
    Icon = "shield-check",
    Callback = function()
        getgenv().GuiKeybind = "T"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Cyborg883/EmoteGui/refs/heads/main/Protected_4900496055951847.lua"))()
    end
})

Tabs[7]:Button({
    Title = "Emerge Emote",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yourfavoriteguy/HAHAHHA/refs/heads/main/EmergeButLow", true))()
    end
})

Tabs[7]:Button({
    Title = "Sukuna Emote",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Yourfavoriteguy/Sukunaslash/refs/heads/main/WorldCuttingSlash", true))()
    end
})

Tabs[7]:Button({
    Title = "MIUI",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IdkRandomUsernameok/PublicAssets/refs/heads/main/Releases/MUI.lua"))()
    end
})

Tabs[7]:Button({
    Title = "Gojo v2 (Saitama)",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-The-Strongest-Battleground-Gojo-manga-Tsb-30660"))()
    end
})

Tabs[7]:Button({
    Title = "Overhaul (Saitama)",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/SaitamaOverhaul/refs/heads/main/Latest.lua"))()
    end
})

Tabs[7]:Button({
    Title = "Movest UI",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/proscripter400/b24547203a4cc12bdcfe77fd13dd7580/raw/fb8048c0d5b59d626879b1a06cfedaae3e7ee205/charhub"))()
    end
})

Tabs[7]:Button({
    Title = "Wally West (Saitama)",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nova2ezz/west/refs/heads/main/Protected_4638864115822087.lua.txt"))()
    end
})

Tabs[7]:Button({
    Title = "Orbitical Warrior (Saitama)",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AeryAlex/Scripts/refs/heads/main/Orbitical%20Warrior%20(Obsfucted).lua"))()
    end
})

Tabs[7]:Button({
    Title = "Sukuna v2 (Saitama)",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-The-Strongest-Battleground-heian-sukuna-Moveset-30680"))()
    end
})

Tabs[2]:Button({
    Title = "Auto Block V11",
    Icon = "shield-plus",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Cyborg883/CombatGUI/refs/heads/main/TSBCombatGUI"))()
    end
})

Tabs[2]:Button({
    Title = "Auto Block V6",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yqantg-pixel/Find/refs/heads/main/Protected_6520709616677918.lua.txt"))()
    end
})

Tabs[3]:Button({
    Title = "Silent Aim Rework",
    Icon = "target",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yqantg-pixel/Find/refs/heads/main/Protected_6124417452209241.lua.txt"))()
    end
})

Tabs[3]:Button({
    Title = "Bot Follow + Silent Aim",
    Icon = "bot",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV2/YQANTGV2/refs/heads/main/Bot"))()
    end
})

Tabs[3]:Button({
    Title = "Camlock",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HomeMadeScripts/Camlock-aimlock/main/obf_Wxr6QgzF76G1y2Ch77KN4Zt5Nz0A6GIl61gitv3mRR2t3V103al5d0g26s4KY04r.lua.txt"))()
    end
})

Tabs[4]:Button({
    Title = "Free Emote Slots",
    Icon = "smile",
    Callback = function()
        game.Players.LocalPlayer:SetAttribute("ExtraSlots", true)
    end
})

Tabs[4]:Toggle({
    Title = "No Dash Cooldown",
    Default = false,
    Callback = function(state)
        if state then
            workspace:SetAttribute("VIPServer", tostring(game.Players.LocalPlayer.UserId))
            workspace:SetAttribute("VIPServerOwner", game.Players.LocalPlayer.Name)
            workspace:SetAttribute("NoDashCooldown", true)
        else
            workspace:SetAttribute("NoDashCooldown", false)
        end
    end
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

Tabs[4]:Toggle({
    Title = "Auto Respawn",
    Default = false,
    Callback = function(state)
        if state then
            getgenv().RespawnAtDeathPos = true
            if getgenv()._RespawnConn then getgenv()._RespawnConn:Disconnect() end
            if getgenv()._DiedConn then getgenv()._DiedConn:Disconnect() end
            local function setupDeath()
                local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                local hum = char:FindFirstChildOfClass("Humanoid")
                local root = char:FindFirstChild("HumanoidRootPart")
                if hum and root then
                    if getgenv()._DiedConn then getgenv()._DiedConn:Disconnect() end
                    getgenv()._DiedConn = hum.Died:Connect(function()
                        if getgenv().RespawnAtDeathPos then
                            getgenv()._LastDeathPosition = root.Position
                        end
                    end)
                end
            end
            getgenv()._RespawnConn = LocalPlayer.CharacterAdded:Connect(function(char)
                task.spawn(function()
                    if getgenv().RespawnAtDeathPos and getgenv()._LastDeathPosition then
                        local root = char:WaitForChild("HumanoidRootPart", 5)
                        if root then
                            root.CFrame = CFrame.new(getgenv()._LastDeathPosition + Vector3.new(0, 3, 0))
                        end
                    end
                    setupDeath()
                end)
            end)
            setupDeath()
        else
            getgenv().RespawnAtDeathPos = false
            if getgenv()._RespawnConn then getgenv()._RespawnConn:Disconnect() end
            if getgenv()._DiedConn then getgenv()._DiedConn:Disconnect() end
            getgenv()._RespawnConn = nil
            getgenv()._DiedConn = nil
            getgenv()._LastDeathPosition = nil
        end
    end
})

Tabs[4]:Toggle({
    Title = "Auto Fake Out",
    Default = false,
    Callback = function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV2/YQANTGV2/refs/heads/main/L1(FO)"))()
        else
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV2/YQANTGV2/refs/heads/main/L2(FO)"))()
        end
    end
})

local BlockAnimId = "rbxassetid://10470389827"

local function stopBlockAnim(hum)
    for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
        if track.Animation and track.Animation.AnimationId == BlockAnimId then
            track:Stop()
            pcall(function() track:Destroy() end)
        end
    end
end

local function setupInvisibleBlock(char)
    local hum = char:WaitForChild("Humanoid")
    local conn = hum.AnimationPlayed:Connect(function(track)
        if track.Animation and track.Animation.AnimationId == BlockAnimId then
            track:Stop()
            pcall(function() track:Destroy() end)
        end
    end)
    local loop = task.spawn(function()
        while hum.Parent do
            stopBlockAnim(hum)
            task.wait(0.05)
        end
    end)
    char.AncestryChanged:Connect(function(_, parent)
        if not parent then
            conn:Disconnect()
            task.cancel(loop)
        end
    end)
end

Tabs[4]:Toggle({
    Title = "Invisible Block",
    Default = false,
    Callback = function(state)
        if state then
            if LocalPlayer.Character then
                setupInvisibleBlock(LocalPlayer.Character)
            end
            LocalPlayer.CharacterAdded:Connect(setupInvisibleBlock)
        end
    end
})

Tabs[4]:Toggle({
    Title = "No Stun",
    Default = false,
    Callback = function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/NST(L1)"))()
        else
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/NST(L2)"))()
        end
    end
})

Tabs[4]:Toggle({
    Title = "No Slowed",
    Default = false,
    Callback = function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/NSL(L1)"))()
        else
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/NSL(L2)"))()
        end
    end
})

local SlideAnims = {
    ["rbxassetid://10480793962"] = true,
    ["rbxassetid://10480796021"] = true,
    ["rbxassetid://10470104242"] = true
}

local function setupAntiDelay(char)
    local hum = char:WaitForChild("Humanoid")
    local root = char:WaitForChild("HumanoidRootPart")
    hum.AnimationPlayed:Connect(function(track)
        if getgenv().AntiDelayEnabled and SlideAnims[track.Animation.AnimationId] then
            task.wait(0.21)
            track:Stop()
        end
    end)
    task.spawn(function()
        while char and char.Parent == workspace do
            task.wait(100)
            if root and root.PlatformStand then
                root.PlatformStand = true
            end
        end
    end)
end

LocalPlayer.CharacterAdded:Connect(function(char)
    task.defer(function() setupAntiDelay(char) end)
end)
if LocalPlayer.Character then
    setupAntiDelay(LocalPlayer.Character)
end

Tabs[4]:Toggle({
    Title = "No Slide Dash Endlag",
    Default = false,
    Callback = function(state)
        getgenv().AntiDelayEnabled = state
    end
})

Tabs[4]:Toggle({
    Title = "Free Rotate Ult",
    Default = false,
    Callback = function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/FRU(L1)"))()
        else
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/FLU(L2)"))()
        end
    end
})

Tabs[5]:Button({
    Title = "Orbit Gui",
    Icon = "rotate-cw",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Kietba/Kietba/refs/heads/main/Orbit%20by%20YQANTG"))()
    end
})

Tabs[5]:Button({
    Title = "Auto Toxic",
    Icon = "skull",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ArchIsDead/Arch-Vault/refs/heads/main/auto-toxic.lua"))()
    end
})

Tabs[5]:Toggle({
    Title = "M1 Reach",
    Default = false,
    Callback = function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/MR(L1)"))()
        else
            _G.TweenReachHold = false
            _G.TweenReachLooping = false
        end
    end
})

Tabs[5]:Toggle({
    Title = "Auto WallCombo Under",
    Default = false,
    Callback = function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/ATWC(L1)"))()
        else
            _G.AutoWallCombo = false
            _G.BurrowRunning = false
            local pg = LocalPlayer:FindFirstChild("PlayerGui")
            if pg then
                for _, gui in pairs(pg:GetChildren()) do
                    if gui.Name == "StickGui" then
                        gui:Destroy()
                    end
                end
            end
        end
    end
})

Tabs[6]:Button({
    Title = "M1 Reset",
    Icon = "shield-check",
    Callback = function()
        getgenv().keybinds = {
            m1reset = Enum.KeyCode.R,
            emotedash = Enum.KeyCode.T,
            rotation = Enum.KeyCode.H
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Slaphello/M1-Reset-And-Emote-Dash-TSB-OLD-/refs/heads/main/M1R%26ED%20TSB"))()
    end
})

Tabs[6]:Button({
    Title = "Kai Tech",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV2/YQANTGV2/refs/heads/main/Kai"))()
    end
})

Tabs[6]:Button({
    Title = "BackDash (Mobile)",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/main/backdash%20mobile"))()
    end
})

Tabs[6]:Button({
    Title = "BackDash (PC)",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/main/backdashpc"))()
    end
})

Tabs[6]:Button({
    Title = "Auto UpperPunch",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTG/YQANTG/refs/heads/main/autoupperpunch%20(1).txt"))()
    end
})

Tabs[6]:Button({
    Title = "Tornado Tech",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Kietba/Kietba/refs/heads/main/Tornado%20Tech%20script"))()
    end
})

Tabs[6]:Button({
    Title = "Kiba Tech V1",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTG/YQANTG/refs/heads/main/kiba.txt"))()
    end
})

Tabs[6]:Button({
    Title = "Kiba Tech V2.1",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/FixTooHighh.txt"))()
    end
})

Tabs[6]:Button({
    Title = "Freeze Tech",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/hahahajjws.txt"))()
    end
})

Tabs[6]:Button({
    Title = "Tornado Twisted",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/tornadotwisted.txt"))()
    end
})

Tabs[6]:Button({
    Title = "Loop Dash Old",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yqantg-pixel/Find/refs/heads/main/Protected_5502107740408834.lua.txt"))()
    end
})

Tabs[6]:Button({
    Title = "All in One",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTG/YQANTG/refs/heads/main/alltechsceiot.txt"))()
    end
})

Tabs[8]:Toggle({
    Title = "Anti AFK",
    Default = false,
    Callback = function(state)
        if state then
            getgenv().AntiAFK_Connection = game:GetService("Players").LocalPlayer.Idled:Connect(function()
                local vu = game:GetService("VirtualUser")
                vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                task.wait(1)
                vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end)
        else
            if getgenv().AntiAFK_Connection then
                getgenv().AntiAFK_Connection:Disconnect()
                getgenv().AntiAFK_Connection = nil
            end
        end
    end
})

local antiRagdollEnabled = false
local function removeConstraints(char)
    for _, obj in pairs(char:GetDescendants()) do
        if obj:IsA("BallSocketConstraint") or obj:IsA("HingeConstraint") then
            obj:Destroy()
        end
    end
end

LocalPlayer.CharacterAdded:Connect(function(char)
    if antiRagdollEnabled then
        task.wait(0.5)
        removeConstraints(char)
    end
end)

Tabs[8]:Toggle({
    Title = "Anti Ragdoll",
    Default = false,
    Callback = function(state)
        antiRagdollEnabled = state
        if state and LocalPlayer.Character then
            removeConstraints(LocalPlayer.Character)
        end
    end
})

local antiCamlockConn = nil
Tabs[8]:Toggle({
    Title = "Anti Camlock",
    Default = false,
    Callback = function(state)
        if state then
            antiCamlockConn = game:GetService("RunService").RenderStepped:Connect(function()
                local char = LocalPlayer.Character
                local hum = char and char:FindFirstChildWhichIsA("Humanoid")
                if hum and workspace.CurrentCamera.CameraSubject ~= hum then
                    workspace.CurrentCamera.CameraSubject = hum
                end
            end)
        elseif antiCamlockConn then
            antiCamlockConn:Disconnect()
            antiCamlockConn = nil
        end
    end
})

Tabs[8]:Button({
    Title = "Anti Lag (Remove Effect)",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV2/YQANTGV2/refs/heads/main/Protected_5743487458031851.lua.txt"))()
    end
})

Tabs[9]:Button({
    Title = "Rejoin",
    Icon = "shield-check",
    Callback = function()
        local ts = game:GetService("TeleportService")
        ts:Teleport(game.PlaceId, LocalPlayer)
    end
})

Tabs[9]:Button({
    Title = "Server Hop",
    Icon = "shield-check",
    Callback = function()
        local ts = game:GetService("TeleportService")
        local hs = game:GetService("HttpService")
        local placeId = game.PlaceId
        local success, data = pcall(function()
            return hs:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"))
        end)
        if success and data and data.data then
            local servers = {}
            for _, server in pairs(data.data) do
                if server.playing < server.maxPlayers and server.id ~= game.JobId then
                    table.insert(servers, server.id)
                end
            end
            if #servers > 0 then
                ts:TeleportToPlaceInstance(placeId, servers[math.random(1, #servers)], LocalPlayer)
            end
        end
    end
})

Tabs[9]:Button({
    Title = "Small Server",
    Icon = "shield-check",
    Callback = function()
        local ts = game:GetService("TeleportService")
        local hs = game:GetService("HttpService")
        local placeId = game.PlaceId
        local servers = {}
        local cursor = ""
        for i = 1, 2 do
            local url = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"
            if cursor ~= "" then url = url .. "&cursor=" .. cursor end
            local success, data = pcall(function()
                return hs:JSONDecode(game:HttpGet(url))
            end)
            if success and data and data.data then
                for _, server in pairs(data.data) do
                    if server.playing < 2 and server.id ~= game.JobId then
                        table.insert(servers, server.id)
                    end
                end
                if data.nextPageCursor then
                    cursor = data.nextPageCursor
                else
                    break
                end
            else
                break
            end
        end
        if #servers > 0 then
            ts:TeleportToPlaceInstance(placeId, servers[math.random(1, #servers)], LocalPlayer)
        end
    end
})

Tabs[9]:Button({
    Title = "Check Ping",
    Icon = "shield-check",
    Callback = function()
        local gui = Instance.new("ScreenGui")
        gui.Name = "PingDisplay"
        gui.ResetOnSpawn = false
        gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(0, 150, 0, 40)
        label.Position = UDim2.new(1, -160, 0, 10)
        label.BackgroundTransparency = 0.4
        label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        label.TextColor3 = Color3.new(1, 1, 1)
        label.Font = Enum.Font.GothamBold
        label.TextSize = 20
        label.Text = "PING: -- ms"
        label.Parent = gui
        task.spawn(function()
            while true do
                local ping = math.floor(LocalPlayer:GetNetworkPing() * 1000)
                label.Text = "PING: " .. ping .. " ms"
                if ping <= 80 then
                    label.TextColor3 = Color3.fromRGB(0, 255, 0)
                elseif ping <= 150 then
                    label.TextColor3 = Color3.fromRGB(255, 170, 0)
                else
                    label.TextColor3 = Color3.fromRGB(255, 0, 0)
                end
                task.wait(1)
            end
        end)
    end
})

local Lighting = game:GetService("Lighting")

local function clearEffects()
    for _, obj in pairs(Lighting:GetChildren()) do
        if obj:IsA("PostEffect") or obj:IsA("Atmosphere") then
            obj:Destroy()
        end
    end
end

local ShaderPresets = {
    Morning = function()
        Lighting.TimeOfDay = "07:30:00"
        Lighting.ClockTime = 7.5
        Lighting.Brightness = 3
        Lighting.OutdoorAmbient = Color3.fromRGB(180, 200, 220)
        local atm = Instance.new("Atmosphere", Lighting)
        atm.Density = 0.3
        atm.Color = Color3.fromRGB(200, 220, 255)
        atm.Decay = Color3.fromRGB(255, 240, 200)
        local cc = Instance.new("ColorCorrectionEffect", Lighting)
        cc.Brightness = 0.1
        cc.Contrast = 0.15
        cc.Saturation = 0.05
        cc.TintColor = Color3.fromRGB(255, 255, 230)
        local sun = Instance.new("SunRaysEffect", Lighting)
        sun.Intensity = 0.25
    end,
    Afternoon = function()
        Lighting.TimeOfDay = "15:00:00"
        Lighting.ClockTime = 15
        Lighting.Brightness = 3.5
        Lighting.OutdoorAmbient = Color3.fromRGB(200, 210, 230)
        local atm = Instance.new("Atmosphere", Lighting)
        atm.Density = 0.25
        atm.Color = Color3.fromRGB(220, 235, 255)
        atm.Decay = Color3.fromRGB(255, 220, 180)
        local cc = Instance.new("ColorCorrectionEffect", Lighting)
        cc.Brightness = 0.05
        cc.Contrast = 0.2
        cc.Saturation = 0.1
        cc.TintColor = Color3.fromRGB(255, 245, 210)
        local sun = Instance.new("SunRaysEffect", Lighting)
        sun.Intensity = 0.35
    end,
    ["Ultra Shader Pro (HD+)"] = function()
        Lighting.Brightness = 3.2
        Lighting.ClockTime = 11
        Lighting.TimeOfDay = "11:00:00"
        Lighting.EnvironmentDiffuseScale = 1
        Lighting.EnvironmentSpecularScale = 1
        Lighting.GlobalShadows = true
        Lighting.OutdoorAmbient = Color3.fromRGB(75, 75, 75)
        Lighting.Ambient = Color3.fromRGB(105, 105, 105)
        Lighting.FogEnd = 150000
        Lighting.FogColor = Color3.fromRGB(235, 235, 235)
        local atm = Instance.new("Atmosphere", Lighting)
        atm.Density = 0.1
        atm.Offset = 0.2
        atm.Glare = 0.2
        atm.Haze = 1
        atm.Color = Color3.fromRGB(255, 255, 255)
        atm.Decay = Color3.fromRGB(180, 180, 180)
        local bloom = Instance.new("BloomEffect", Lighting)
        bloom.Intensity = 0.85
        bloom.Threshold = 1
        bloom.Size = 38
        local dof = Instance.new("DepthOfFieldEffect", Lighting)
        dof.FocusDistance = 90
        dof.InFocusRadius = 50
        dof.NearIntensity = 0.15
        dof.FarIntensity = 0.03
        local cc = Instance.new("ColorCorrectionEffect", Lighting)
        cc.Brightness = 0.06
        cc.Contrast = 0.22
        cc.Saturation = 0.15
        cc.TintColor = Color3.fromRGB(255, 255, 255)
        local sun = Instance.new("SunRaysEffect", Lighting)
        sun.Intensity = 0
        sun.Spread = 0
    end
}

local selectedShader = "Morning"

Tabs[10]:Dropdown({
    Title = "Select Shader",
    Values = {"Morning", "Afternoon", "Ultra Shader Pro (HD+)"},
    Value = "Morning",
    Callback = function(value)
        selectedShader = value
    end
})

Tabs[10]:Button({
    Title = "Apply Shader",
    Icon = "shield-check",
    Callback = function()
        clearEffects()
        if ShaderPresets[selectedShader] then
            ShaderPresets[selectedShader]()
        end
    end
})

Tabs[10]:Toggle({
    Title = "Ultra Shader",
    Default = false,
    Callback = function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/US(L1)"))()
        else
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/US(L2)"))()
        end
    end
})

Tabs[11]:Toggle({
    Title = "Auto Farm Near",
    Default = false,
    Callback = function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/YQANTGV3/YQANTGV3/refs/heads/main/ATFN"))()
        else
            _G.StickFarmOn = false
            if _G.StickFarmCleanup then
                _G.StickFarmCleanup()
                _G.StickFarmCleanup = nil
            end
        end
    end
})

Tabs[12]:Button({
    Title = "Our Hub (by IDK)",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Slaphello/IDKHub/main/Hub"))()
    end
})

Tabs[13]:Button({
    Title = "Infinite Yield",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
})

Tabs[13]:Button({
    Title = "Nameless",
    Icon = "shield-check",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/FilteringEnabled/NamelessAdmin/blob/main/Source?raw=true"))()
    end
})

Window:Tag({Title = "v3.3", Color = Color3.fromHex("#30ff6a")})
Window:Tag({Title = "Beta", Color = Color3.fromHex("#315dff")})
