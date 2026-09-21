local SRC_ANIM = [=[
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://14611879113"

local track = humanoid:LoadAnimation(animation)
track:Play()

     
getgenv().Idle = game.Players.LocalPlayer.Character.Humanoid.AnimationPlayed:Connect(function(v)    
    if v.Animation.AnimationId == "rbxassetid://14516273501" then    
        local Anim = Instance.new("Animation")    
        Anim.AnimationId = "rbxassetid://16524243757"    
        local humanoid = game.Players.LocalPlayer.Character.Humanoid    
        local k = humanoid:LoadAnimation(Anim)    
     
        k.Priority = Enum.AnimationPriority.Idle    
        k.Looped = true    
        k:Play(0.3)    
        k:AdjustSpeed(0) 
     
        
        local startTime = 2.5 
        local endTime = 2.2  
        local cycleDuration = 1.5 
        local timeElapsed = 0    
     
        
        local connection    
        connection = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)    
            timeElapsed = (timeElapsed + deltaTime) % (cycleDuration * 2) 
     
            
            local alpha = (math.sin((timeElapsed / cycleDuration) * math.pi - math.pi / 2) + 1) / 2    
            k.TimePosition = startTime + (endTime - startTime) * alpha    
        end)    
     
        
        v.Stopped:Wait()    
        k:Stop(0.3)    
        connection:Disconnect()    
    end    
end)

local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("1").Base

local ToolName = baseButton.ToolName

ToolName.Text = "Omni Clap"

local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("2").Base

local ToolName = baseButton.ToolName

ToolName.Text = "Deadly Punches"

local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("3").Base

local ToolName = baseButton.ToolName

ToolName.Text = "Knock Out"

local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("4").Base

local ToolName = baseButton.ToolName

ToolName.Text = "Upper Destruction"

local p = game:GetService("Players").LocalPlayer
local rs = game:GetService("RunService")

local gui = p.PlayerGui.Bar.MagicHealth
local bar = gui.Health.Bar.Bar
local glow = gui.Health.Glow
local label = gui.TextLabel

label.RichText = true
label.Font = Enum.Font.Fantasy
label.Text = "VILTRUMITE MOVESET"

bar.Image = "rbxassetid://17136251960"
bar.ImageColor3 = Color3.fromRGB(255,255,255)
glow.Image = "rbxassetid://17136251821"
glow.ImageColor3 = Color3.fromRGB(200,200,255)

local conn
conn = rs.Heartbeat:Connect(function()
    bar.Image = "rbxassetid://17136251960"
    glow.Image = "rbxassetid://17136251821"
end)

task.delay(50, function()
    if conn then conn:Disconnect() end
end)
bar.ImageColor3 = Color3.fromRGB(255,255,255)      
glow.ImageColor3 = Color3.fromRGB(0,0,255)     

local animationId = 10468665991

local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")

for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end

local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://13146710762"

local Anim = Humanoid:LoadAnimation(AnimAnim)

local AnimTrack = Anim  
local duration = 1      

AnimTrack:Play()
AnimTrack.TimePosition = 0

delay(duration, function()
    local fadeTime = 0.3  
    local step = 0.05     
    local weight = 1

    while weight > 0 do
        weight = weight - (step / fadeTime)
        if weight < 0 then weight = 0 end
        AnimTrack:AdjustWeight(weight)
        wait(step)
    end
    AnimTrack:Stop()
end)

    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local animationId = 10466974800

local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")

for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end

local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://12460977270"

local Anim = Humanoid:LoadAnimation(AnimAnim)

local AnimTrack = Anim  
local duration = 2      

AnimTrack:Play()
AnimTrack.TimePosition = 0

delay(duration, function()
    local fadeTime = 0.3  
    local step = 0.05     
    local weight = 1

    while weight > 0 do
        weight = weight - (step / fadeTime)
        if weight < 0 then weight = 0 end
        AnimTrack:AdjustWeight(weight)
        wait(step)
    end
    AnimTrack:Stop()
end)

    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local animationId = 10471336737

local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")

for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end

local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://136363608783208"

local Anim = Humanoid:LoadAnimation(AnimAnim)

local AnimTrack = Anim  
local duration = 1      

AnimTrack:Play()
AnimTrack.TimePosition = 1.8

delay(duration, function()
    local fadeTime = 0.3  
    local step = 0.05     
    local weight = 1

    while weight > 0 do
        weight = weight - (step / fadeTime)
        if weight < 0 then weight = 0 end
        AnimTrack:AdjustWeight(weight)
        wait(step)
    end
    AnimTrack:Stop()
end)

    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local animationId = 12510170988

local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")

for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end

local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://16945573694"

local Anim = Humanoid:LoadAnimation(AnimAnim)

local AnimTrack = Anim  
local duration = 1      

AnimTrack:Play()
AnimTrack.TimePosition = 0

delay(duration, function()
    local fadeTime = 0.3  
    local step = 0.05     
    local weight = 1

    while weight > 0 do
        weight = weight - (step / fadeTime)
        if weight < 0 then weight = 0 end
        AnimTrack:AdjustWeight(weight)
        wait(step)
    end
    AnimTrack:Stop()
end)

    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local animationId = 15955393872

local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")

for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end

local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://125518819402716"

local Anim = Humanoid:LoadAnimation(AnimAnim)

local startTime = 0.05

Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1)

    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local animationId = 12447707844

local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")

for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end

local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://18897551628"

local Anim = Humanoid:LoadAnimation(AnimAnim)

local AnimTrack = Anim  
task.wait(0.4)
local duration = 0.7      

AnimTrack:Play()
AnimTrack.TimePosition = 0

delay(duration, function()
    local fadeTime = 0.3  
    local step = 0.05     
    local weight = 1

    while weight > 0 do
        weight = weight - (step / fadeTime)
        if weight < 0 then weight = 0 end
        AnimTrack:AdjustWeight(weight)
        wait(step)
    end
    AnimTrack:Stop()
end)

    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local animationId = 10503381238

local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")

for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end

local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://135289891173395"

local Anim = Humanoid:LoadAnimation(AnimAnim)

local AnimTrack = Anim  
local duration = 1      

AnimTrack:Play()
AnimTrack.TimePosition = 0.7

delay(duration, function()
    local fadeTime = 0.3  
    local step = 0.05     
    local weight = 1

    while weight > 0 do
        weight = weight - (step / fadeTime)
        if weight < 0 then weight = 0 end
        AnimTrack:AdjustWeight(weight)
        wait(step)
    end
    AnimTrack:Stop()
end)

    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local animationId = 10470104242

local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")

for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end

local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://12342141464"

local Anim = Humanoid:LoadAnimation(AnimAnim)

local AnimTrack = Anim  
local duration = 2      

AnimTrack:Play()
AnimTrack.TimePosition = 4
AnimTrack.AdjustSpeed(1.7)

delay(duration, function()
    local fadeTime = 0.3  
    local step = 0.05     
    local weight = 1

    while weight > 0 do
        weight = weight - (step / fadeTime)
        if weight < 0 then weight = 0 end
        AnimTrack:AdjustWeight(weight)
        wait(step)
    end
    AnimTrack:Stop()
end)

    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local Players = game:GetService("Players")

local player = Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local animationIdsToStop = {

    [17859015788] = true, 

    [10469493270] = true, 

    [10469630950] = true, 

    [10469639222] = true, 

    [10469643643] = true, 

}

local replacementAnimations = {

    ["10469493270"] = "rbxassetid://17325510002", 

    ["10469630950"] = "rbxassetid://13295919399", 

    ["10469639222"] = "rbxassetid://16515448089", 

    ["10469643643"] = "rbxassetid://100059874351664", 

    ["17859015788"] = "rbxassetid://12342141464", 

    ["11365563255"] = "rbxassetid://14516273501" 

}

local queue = {}

local isAnimating = false

local function playReplacementAnimation(animationId)

    if isAnimating then

        table.insert(queue, animationId)

        return

    end

   

    isAnimating = true

    local replacementAnimationId = replacementAnimations[tostring(animationId)]

    if replacementAnimationId then

        local AnimAnim = Instance.new("Animation")

        AnimAnim.AnimationId = replacementAnimationId

        local Anim = humanoid:LoadAnimation(AnimAnim)

        Anim:Play()

       

        Anim.Stopped:Connect(function()

            isAnimating = false

            if #queue > 0 then

                local nextAnimationId = table.remove(queue, 1)

                playReplacementAnimation(nextAnimationId)

            end

        end)

    else

        isAnimating = false

    end

end

local function stopSpecificAnimations()

    for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do

        local animationId = tonumber(track.Animation.AnimationId:match("%d+"))

        if animationIdsToStop[animationId] then

            track:Stop()

        end

    end

end

local function onAnimationPlayed(animationTrack)

    local animationId = tonumber(animationTrack.Animation.AnimationId:match("%d+"))

    if animationIdsToStop[animationId] then

        stopSpecificAnimations()

        animationTrack:Stop()

       

        local replacementAnimationId = replacementAnimations[tostring(animationId)]

        if replacementAnimationId then

            playReplacementAnimation(animationId)

        end

    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local function onBodyVelocityAdded(bodyVelocity)

    if bodyVelocity:IsA("BodyVelocity") then

        bodyVelocity.Velocity = Vector3.new(bodyVelocity.Velocity.X, 0, bodyVelocity.Velocity.Z)

    end

end

character.DescendantAdded:Connect(onBodyVelocityAdded)

for _, descendant in pairs(character:GetDescendants()) do

    onBodyVelocityAdded(descendant)

end

player.CharacterAdded:Connect(function(newCharacter)

    character = newCharacter

    humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    character.DescendantAdded:Connect(onBodyVelocityAdded)

   

    for _, descendant in pairs(character:GetDescendants()) do

        onBodyVelocityAdded(descendant)

    end

end)
]=]

local SRC_MOBILE = [=[
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local gui = Instance.new("ScreenGui")
gui.Name = "FlyGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local button = Instance.new("ImageButton")
button.Name = "FlyButton"
button.Parent = gui
button.Size = UDim2.new(0, 70, 0, 70)
button.Position = UDim2.new(0, 682, 0, -10)
button.BackgroundTransparency = 1
button.Image = "rbxassetid://6256840888"

local icon = Instance.new("ImageLabel")
icon.Parent = button
icon.BackgroundTransparency = 1
icon.Size = UDim2.new(0, 76, 0, 76)
icon.Position = UDim2.new(0, -2, 0, -4)
icon.Image = "rbxassetid://97537169093698"

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(1, 0)
corner.Parent = button

local boostLabel = Instance.new("TextLabel")
boostLabel.Parent = gui
boostLabel.Size = UDim2.new(0, 120, 0, 30)
boostLabel.Position = UDim2.new(0, 640, 0, 65)
boostLabel.BackgroundTransparency = 1
boostLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
boostLabel.TextStrokeTransparency = 0.5
boostLabel.Font = Enum.Font.GothamBold
boostLabel.TextSize = 16
boostLabel.Text = ""

local blurEffect = Instance.new("BlurEffect")
blurEffect.Size = 0
blurEffect.Parent = camera

local blurTween = nil
local function triggerBlur()
	if blurTween then blurTween:Cancel() end
	blurEffect.Size = 45
	blurTween = TweenService:Create(
		blurEffect,
		TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{Size = 0}
	)
	blurTween:Play()
end

local flying = false
local verticalInput = 0

local BOOST_SPEEDS = {30, 80, 160, 320}
local BACK_SPEED = 30
local boostLevel = 1
local flySpeed = BOOST_SPEEDS[1]

local bodyGyro, bodyVelocity, connection, idleConnection = nil, nil, nil, nil
local landTrack = nil
local landConnection = nil
local blockerConnection = nil
local platformStandGuard = nil

local PlayerModule = require(player.PlayerScripts:WaitForChild("PlayerModule"))

local idleTrack, moveTrack, backTrack
local fwdTrack, leftTrack, rightTrack
local idleStart, idleEnd = 1.6, 2.1
local cycleDuration = 1.5

local function startPlatformStandGuard(hum)
	if platformStandGuard then platformStandGuard:Disconnect() end
	platformStandGuard = RunService.Heartbeat:Connect(function()
		if not flying then return end
		if not hum or not hum.Parent then return end
		if not hum.PlatformStand then hum.PlatformStand = true end
		local hrp = hum.Parent and hum.Parent:FindFirstChild("HumanoidRootPart")
		if hrp then
			if not bodyGyro or not bodyGyro.Parent then
				if bodyGyro then bodyGyro:Destroy() end
				bodyGyro = Instance.new("BodyGyro")
				bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
				bodyGyro.P = 30000
				bodyGyro.Parent = hrp
			end
			if not bodyVelocity or not bodyVelocity.Parent then
				if bodyVelocity then bodyVelocity:Destroy() end
				bodyVelocity = Instance.new("BodyVelocity")
				bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
				bodyVelocity.Velocity = Vector3.new()
				bodyVelocity.Parent = hrp
			end
		end
	end)
end

local function stopPlatformStandGuard()
	if platformStandGuard then platformStandGuard:Disconnect(); platformStandGuard = nil end
end

local flyNormalSound = Instance.new("Sound")
flyNormalSound.SoundId = "rbxassetid://93035214379043"
flyNormalSound.Volume = 1.4
flyNormalSound.Looped = true
flyNormalSound.PlaybackSpeed = 1.0
flyNormalSound.Parent = SoundService

local flyBoostSound = Instance.new("Sound")
flyBoostSound.SoundId = "rbxassetid://3308152153"
flyBoostSound.Volume = 1.4
flyBoostSound.Looped = true
flyBoostSound.PlaybackSpeed = 1.05
flyBoostSound.Parent = SoundService

local boostDashSound = Instance.new("Sound")
boostDashSound.SoundId = "rbxassetid://1295446488"
boostDashSound.Volume = 1.5
boostDashSound.Looped = false
boostDashSound.Parent = SoundService

local normalFadeRef = {}
local boostFadeRef = {}

local function fadeSoundOut(snd, duration, ref)
	if ref.tween then ref.tween:Cancel() end
	local tween = TweenService:Create(snd, TweenInfo.new(duration, Enum.EasingStyle.Linear), {Volume = 0})
	ref.tween = tween
	tween:Play()
	tween.Completed:Connect(function()
		if snd.IsPlaying then snd:Stop() end
		snd.Volume = 1.4
	end)
end

local function updateMovingSound(isMoving)
	if not flying then
		if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.5, normalFadeRef) end
		if flyBoostSound.IsPlaying then fadeSoundOut(flyBoostSound, 0.5, boostFadeRef) end
		return
	end
	if isMoving then
		if boostLevel == 1 then
			if not flyNormalSound.IsPlaying then flyNormalSound.Volume = 1.4; flyNormalSound:Play() end
			if flyBoostSound.IsPlaying then fadeSoundOut(flyBoostSound, 0.4, boostFadeRef) end
		elseif boostLevel == 2 then
			if not flyBoostSound.IsPlaying then flyBoostSound.Volume = 1.4; flyBoostSound:Play() end
			if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.4, normalFadeRef) end
		elseif boostLevel == 3 then
			if not flyBoostSound.IsPlaying then flyBoostSound:Play() end
			flyBoostSound.Volume = 1.8
			if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.4, normalFadeRef) end
		elseif boostLevel == 4 then
			if not flyBoostSound.IsPlaying then flyBoostSound:Play() end
			flyBoostSound.Volume = 2.4
			if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.4, normalFadeRef) end
		end
	else
		if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.5, normalFadeRef) end
		if flyBoostSound.IsPlaying then fadeSoundOut(flyBoostSound, 0.5, boostFadeRef) end
	end
end

local boostVFXPart = nil
local boostVFXParticles = {}
local boostVFXLoopConnection = nil

local function createBoostVFX(hrp)
	if boostVFXPart then
		boostVFXPart:Destroy()
		boostVFXPart = nil
	end

	if boostVFXLoopConnection then
		boostVFXLoopConnection:Disconnect()
		boostVFXLoopConnection = nil
	end

	boostVFXParticles = {}

	local effectPart = Instance.new("Part")
	effectPart.Name = "BoostWindVFX"
	effectPart.Anchored = true
	effectPart.CanCollide = false
	effectPart.Transparency = 1
	effectPart.Size = Vector3.new(4, 1, 4)
	effectPart.Parent = workspace

	local function addParticle(config)
		local particle = Instance.new("ParticleEmitter")
		for k, v in pairs(config) do
			particle[k] = v
		end
		particle.Parent = effectPart
		table.insert(boostVFXParticles, particle)
	end

	addParticle({
		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume,
		FlipbookFramerate = NumberRange.new(1, 1),
		LightInfluence = 1,
		Lifetime = NumberRange.new(0.5, 1),
		FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4,
		SpreadAngle = Vector2.new(5, 5),
		LockedToPart = false,
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.75),
			NumberSequenceKeypoint.new(1, 1),
		}),
		Orientation = Enum.ParticleOrientation.VelocityPerpendicular,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.new(0.603922, 0.603922, 0.603922)),
			ColorSequenceKeypoint.new(1, Color3.new(0.603922, 0.603922, 0.603922)),
		}),
		Drag = 1,
		FlipbookStartRandom = false,
		TimeScale = 1,
		VelocitySpread = 5,
		Squash = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(1, 0),
		}),
		Speed = NumberRange.new(10, 25),
		Brightness = 1,
		Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(0.1, 5.547733),
			NumberSequenceKeypoint.new(0.2, 6.99886),
			NumberSequenceKeypoint.new(0.3, 7.933544),
			NumberSequenceKeypoint.new(0.4, 8.596931),
			NumberSequenceKeypoint.new(0.5, 9.083597),
			NumberSequenceKeypoint.new(0.6, 9.441509),
			NumberSequenceKeypoint.new(0.7, 9.698432),
			NumberSequenceKeypoint.new(0.8, 9.871381),
			NumberSequenceKeypoint.new(0.9, 9.970378),
			NumberSequenceKeypoint.new(1, 10),
			NumberSequenceKeypoint.new(1, 10),
		}),
		Enabled = true,
		Acceleration = Vector3.new(0, 0, 0),
		RotSpeed = NumberRange.new(-980, -360),
		ZOffset = 0.10000000149011612,
		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward,
		Rate = 30,
		VelocityInheritance = 0,
		Rotation = NumberRange.new(-180, 180),
		ShapePartial = 1,
		Texture = "rbxassetid://13332219428",
		FlipbookMode = Enum.ParticleFlipbookMode.OneShot,
		EmissionDirection = Enum.NormalId.Back,
		Shape = Enum.ParticleEmitterShape.Box,
		LightEmission = 0,
	})

	addParticle({
		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume,
		FlipbookFramerate = NumberRange.new(0.810818, 0.810818),
		LightInfluence = 0,
		Lifetime = NumberRange.new(0.5, 1),
		FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4,
		SpreadAngle = Vector2.new(5, 5),
		LockedToPart = false,
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.75),
			NumberSequenceKeypoint.new(1, 1),
		}),
		Orientation = Enum.ParticleOrientation.VelocityPerpendicular,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
			ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
		}),
		Drag = 1,
		FlipbookStartRandom = false,
		TimeScale = 0.95,
		VelocitySpread = 5,
		Squash = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(1, 0),
		}),
		Speed = NumberRange.new(10, 25),
		Brightness = 1,
		Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(0.1, 5.547733),
			NumberSequenceKeypoint.new(0.2, 6.99886),
			NumberSequenceKeypoint.new(0.3, 7.933544),
			NumberSequenceKeypoint.new(0.4, 8.596931),
			NumberSequenceKeypoint.new(0.5, 9.083597),
			NumberSequenceKeypoint.new(0.6, 9.441509),
			NumberSequenceKeypoint.new(0.7, 9.698432),
			NumberSequenceKeypoint.new(0.8, 9.871381),
			NumberSequenceKeypoint.new(0.9, 9.970378),
			NumberSequenceKeypoint.new(1, 10),
			NumberSequenceKeypoint.new(1, 10),
		}),
		Enabled = true,
		Acceleration = Vector3.new(0, 0, 0),
		RotSpeed = NumberRange.new(-250, -250),
		ZOffset = 0,
		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward,
		Rate = 30,
		VelocityInheritance = 0,
		Rotation = NumberRange.new(-500, 500),
		ShapePartial = 1,
		Texture = "rbxassetid://73649245182561",
		FlipbookMode = Enum.ParticleFlipbookMode.OneShot,
		EmissionDirection = Enum.NormalId.Back,
		Shape = Enum.ParticleEmitterShape.Box,
		LightEmission = 1,
	})

	addParticle({
		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume,
		FlipbookFramerate = NumberRange.new(1, 1),
		LightInfluence = 1,
		Lifetime = NumberRange.new(0.5, 1),
		FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4,
		SpreadAngle = Vector2.new(5, 5),
		LockedToPart = false,
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.75),
			NumberSequenceKeypoint.new(1, 1),
		}),
		Orientation = Enum.ParticleOrientation.VelocityPerpendicular,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.new(0.603922, 0.603922, 0.603922)),
			ColorSequenceKeypoint.new(1, Color3.new(0.603922, 0.603922, 0.603922)),
		}),
		Drag = 1,
		FlipbookStartRandom = false,
		TimeScale = 1,
		VelocitySpread = 5,
		Squash = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(1, 0),
		}),
		Speed = NumberRange.new(10, 25),
		Brightness = 1,
		Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(0.1, 5.547733),
			NumberSequenceKeypoint.new(0.2, 6.99886),
			NumberSequenceKeypoint.new(0.3, 7.933544),
			NumberSequenceKeypoint.new(0.4, 8.596931),
			NumberSequenceKeypoint.new(0.5, 9.083597),
			NumberSequenceKeypoint.new(0.6, 9.441509),
			NumberSequenceKeypoint.new(0.7, 9.698432),
			NumberSequenceKeypoint.new(0.8, 9.871381),
			NumberSequenceKeypoint.new(0.9, 9.970378),
			NumberSequenceKeypoint.new(1, 10),
			NumberSequenceKeypoint.new(1, 10),
		}),
		Enabled = true,
		Acceleration = Vector3.new(0, 0, 0),
		RotSpeed = NumberRange.new(-980, -360),
		ZOffset = 0.10000000149011612,
		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward,
		Rate = 30,
		VelocityInheritance = 0,
		Rotation = NumberRange.new(-180, 180),
		ShapePartial = 1,
		Texture = "rbxassetid://13336626584",
		FlipbookMode = Enum.ParticleFlipbookMode.OneShot,
		EmissionDirection = Enum.NormalId.Back,
		Shape = Enum.ParticleEmitterShape.Box,
		LightEmission = 0,
	})

	addParticle({
		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume,
		FlipbookFramerate = NumberRange.new(0.810818, 0.810818),
		LightInfluence = 0,
		Lifetime = NumberRange.new(0.5, 1),
		FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4,
		SpreadAngle = Vector2.new(5, 5),
		LockedToPart = false,
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.75),
			NumberSequenceKeypoint.new(1, 1),
		}),
		Orientation = Enum.ParticleOrientation.VelocityPerpendicular,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
			ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
		}),
		Drag = 1,
		FlipbookStartRandom = false,
		TimeScale = 1,
		VelocitySpread = 5,
		Squash = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(1, 0),
		}),
		Speed = NumberRange.new(10, 25),
		Brightness = 1,
		Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(0.1, 5.547733),
			NumberSequenceKeypoint.new(0.2, 6.99886),
			NumberSequenceKeypoint.new(0.3, 7.933544),
			NumberSequenceKeypoint.new(0.4, 8.596931),
			NumberSequenceKeypoint.new(0.5, 9.083597),
			NumberSequenceKeypoint.new(0.6, 9.441509),
			NumberSequenceKeypoint.new(0.7, 9.698432),
			NumberSequenceKeypoint.new(0.8, 9.871381),
			NumberSequenceKeypoint.new(0.9, 9.970378),
			NumberSequenceKeypoint.new(1, 10),
			NumberSequenceKeypoint.new(1, 10),
		}),
		Enabled = true,
		Acceleration = Vector3.new(0, 0, 0),
		RotSpeed = NumberRange.new(-980, -360),
		ZOffset = 0.10000000149011612,
		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward,
		Rate = 30,
		VelocityInheritance = 0,
		Rotation = NumberRange.new(-180, 180),
		ShapePartial = 1,
		Texture = "rbxassetid://17302807125",
		FlipbookMode = Enum.ParticleFlipbookMode.OneShot,
		EmissionDirection = Enum.NormalId.Back,
		Shape = Enum.ParticleEmitterShape.Box,
		LightEmission = 0,
	})

	boostVFXPart = effectPart

	boostVFXLoopConnection = RunService.Heartbeat:Connect(function()
		if not boostVFXPart or not boostVFXPart.Parent then
			if boostVFXLoopConnection then
				boostVFXLoopConnection:Disconnect()
				boostVFXLoopConnection = nil
			end
			return
		end

		if not hrp or not hrp.Parent then
			for _, p in ipairs(boostVFXParticles) do
				p.Enabled = false
			end
			boostVFXPart:Destroy()
			boostVFXPart = nil
			if boostVFXLoopConnection then
				boostVFXLoopConnection:Disconnect()
				boostVFXLoopConnection = nil
			end
			return
		end

		
		boostVFXPart.CFrame = hrp.CFrame * CFrame.new(0, 0, 0)
	end)
end

local function removeBoostVFX()
	if boostVFXLoopConnection then
		boostVFXLoopConnection:Disconnect()
		boostVFXLoopConnection = nil
	end

	if boostVFXPart then
		for _, p in ipairs(boostVFXParticles) do
			p.Enabled = false
		end
		task.delay(1, function()
			if boostVFXPart and boostVFXPart.Parent then
				boostVFXPart:Destroy()
			end
		end)
		boostVFXPart = nil
	end

	boostVFXParticles = {}
end

local function updateBoostLabel()
	if not flying then boostLabel.Text = ""; return end
	if boostLevel == 1 then
		boostLabel.Text = "⚡ Normal"
		boostLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	elseif boostLevel == 2 then
		boostLabel.Text = "🚀 Boost x1"
		boostLabel.TextColor3 = Color3.fromRGB(100, 200, 255)
	elseif boostLevel == 3 then
		boostLabel.Text = "🚀 Boost x2"
		boostLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
	elseif boostLevel == 4 then
		boostLabel.Text = "🚀 Boost x3"
		boostLabel.TextColor3 = Color3.fromRGB(255, 80, 0)
	end
end

local function applyBoost()
	if not flying then return end
	boostLevel = boostLevel + 1
	if boostLevel > #BOOST_SPEEDS then boostLevel = 1 end
	flySpeed = BOOST_SPEEDS[boostLevel]
	updateBoostLabel()

	local char = player.Character
	local hrp = char and char:FindFirstChild("HumanoidRootPart")

	if boostLevel == 3 or boostLevel == 4 then triggerBlur() end
	if boostLevel == 4 then
		if hrp then createBoostVFX(hrp) end
	else
		removeBoostVFX()
	end

	if boostLevel >= 2 then
		boostDashSound.Volume = boostLevel == 4 and 2.5 or boostLevel == 3 and 2.0 or 1.5
		boostDashSound:Play()
	end
end

local function resetBoost()
	if boostLevel ~= 1 then
		boostLevel = 1
		flySpeed = BOOST_SPEEDS[1]
		updateBoostLabel()
		removeBoostVFX()
	end
end

local oldFireServer
oldFireServer = hookmetamethod(game, "__namecall", function(self, ...)
	local method = getnamecallmethod()
	if method == "FireServer" and self.Name == "Communicate" then
		local args = {...}
		local data = args[1]
		if type(data) == "table"
			and data.Goal == "KeyPress"
			and data.Key == Enum.KeyCode.Q
			and data.Dash == Enum.KeyCode.W then
			task.spawn(applyBoost)
		end
	end
	return oldFireServer(self, ...)
end)

local function fireLandingRemote()
	local char = player.Character
	if not char then return end
	local communicate = char:FindFirstChild("Communicate")
	if not communicate then return end
	communicate:FireServer({Dash = Enum.KeyCode.D, Key = Enum.KeyCode.Q, Goal = "KeyPress"})
end

local BLOCKED_ANIMS = {
	["rbxassetid://7815618175"] = true,
	["rbxassetid://10479335397"] = true,
}

local function startAnimBlocker(char)
	local hum = char:FindFirstChild("Humanoid")
	if not hum then return end
	if blockerConnection then blockerConnection:Disconnect() end

	blockerConnection = RunService.Heartbeat:Connect(function()
		if not hum or not hum.Parent then return end
		for _, track in pairs(hum:GetPlayingAnimationTracks()) do
			if BLOCKED_ANIMS[track.Animation.AnimationId] then
				track:AdjustWeight(0)
				track:Stop(0)
			end
		end
	end)
end

local function stopAnimBlocker()
	if blockerConnection then blockerConnection:Disconnect(); blockerConnection = nil end
end

local function setupAnimations(char)
	local hum = char:FindFirstChild("Humanoid")
	if not hum then return end
	local animator = hum:FindFirstChildWhichIsA("Animator") or Instance.new("Animator", hum)

	local function makeAnim(id)
		local a = Instance.new("Animation"); a.AnimationId = id; return a
	end

	idleTrack  = animator:LoadAnimation(makeAnim("rbxassetid://17124061663"))
	moveTrack  = animator:LoadAnimation(makeAnim("rbxassetid://78547941116306"))
	backTrack  = animator:LoadAnimation(makeAnim("rbxassetid://17124067635"))
	fwdTrack   = animator:LoadAnimation(makeAnim("rbxassetid://17124063826"))
	leftTrack  = animator:LoadAnimation(makeAnim("rbxassetid://17124105294"))
	rightTrack = animator:LoadAnimation(makeAnim("rbxassetid://17124112547"))
	landTrack  = animator:LoadAnimation(makeAnim("rbxassetid://16719220174"))

	idleTrack.Priority  = Enum.AnimationPriority.Action4
	moveTrack.Priority  = Enum.AnimationPriority.Action4
	backTrack.Priority  = Enum.AnimationPriority.Action4
	fwdTrack.Priority   = Enum.AnimationPriority.Action4
	leftTrack.Priority  = Enum.AnimationPriority.Action4
	rightTrack.Priority = Enum.AnimationPriority.Action4
	landTrack.Priority  = Enum.AnimationPriority.Action4
end

local function stopAllMoveTracks(fade)
	local f = fade or 0.2
	if moveTrack  and moveTrack.IsPlaying  then moveTrack:Stop(f) end
	if backTrack  and backTrack.IsPlaying  then backTrack:Stop(f) end
	if fwdTrack   and fwdTrack.IsPlaying   then fwdTrack:Stop(f) end
	if leftTrack  and leftTrack.IsPlaying  then leftTrack:Stop(f) end
	if rightTrack and rightTrack.IsPlaying then rightTrack:Stop(f) end
end

local function playLandingAnimation(hrp)
	if landConnection then landConnection:Disconnect(); landConnection = nil end
	if not landTrack then return end

	local char = player.Character
	if not char then return end
	local hum = char:FindFirstChild("Humanoid")
	if not hum then return end

	local rp0 = RaycastParams.new()
	rp0.FilterDescendantsInstances = {char}
	rp0.FilterType = Enum.RaycastFilterType.Blacklist
	if workspace:Raycast(hrp.Position, Vector3.new(0, -6, 0), rp0) then return end

	
	if idleTrack  and idleTrack.IsPlaying  then idleTrack:Stop(0) end
	if moveTrack  and moveTrack.IsPlaying  then moveTrack:Stop(0) end
	if backTrack  and backTrack.IsPlaying  then backTrack:Stop(0) end
	if fwdTrack   and fwdTrack.IsPlaying   then fwdTrack:Stop(0) end
	if leftTrack  and leftTrack.IsPlaying  then leftTrack:Stop(0) end
	if rightTrack and rightTrack.IsPlaying then rightTrack:Stop(0) end

	local frozen, remoteFired, landingDone = false, false, false
	landTrack:Play(0); landTrack.TimePosition = 3.2; landTrack:AdjustSpeed(1)

	landConnection = RunService.Heartbeat:Connect(function()
		if not hrp or not hrp.Parent then
			landConnection:Disconnect(); landConnection = nil; return
		end

		
		if not landingDone and hum and hum.Parent then
			for _, track in pairs(hum:GetPlayingAnimationTracks()) do
				if BLOCKED_ANIMS[track.Animation.AnimationId] then
					track:AdjustWeight(0); track:Stop(0)
				end
			end
		end

		local rp = RaycastParams.new()
		rp.FilterDescendantsInstances = {char}
		rp.FilterType = Enum.RaycastFilterType.Blacklist

		if not remoteFired and workspace:Raycast(hrp.Position, Vector3.new(0, -3, 0), rp) then
			remoteFired = true; task.spawn(fireLandingRemote)
		end

		local nearGround = workspace:Raycast(hrp.Position, Vector3.new(0, -5, 0), rp) ~= nil

		if not frozen and landTrack.TimePosition >= 3.3 then frozen = true end
		if frozen and not nearGround then
			if landTrack.TimePosition >= 3.3 then landTrack:AdjustSpeed(-0.15)
			elseif landTrack.TimePosition <= 3.2 then landTrack:AdjustSpeed(0.15) end
		end
		if frozen and nearGround then landTrack:AdjustSpeed(1); frozen = false end
		if not landTrack.IsPlaying then
			landingDone = true; landConnection:Disconnect(); landConnection = nil
		end
	end)
end

local function playHardLandingAnimation(hrp)
	if landConnection then landConnection:Disconnect(); landConnection = nil end

	local char = player.Character
	if not char then return end
	local hum = char:FindFirstChild("Humanoid")
	if not hum then return end

	local animator = hum:FindFirstChildWhichIsA("Animator") or Instance.new("Animator", hum)
	local hardLandAnim = Instance.new("Animation")
	hardLandAnim.AnimationId = "rbxassetid://15089520783"
	local hardLandTrack = animator:LoadAnimation(hardLandAnim)
	hardLandTrack.Priority = Enum.AnimationPriority.Action4

	
	if idleTrack  and idleTrack.IsPlaying  then idleTrack:Stop(0) end
	if moveTrack  and moveTrack.IsPlaying  then moveTrack:Stop(0) end
	if backTrack  and backTrack.IsPlaying  then backTrack:Stop(0) end
	if fwdTrack   and fwdTrack.IsPlaying   then fwdTrack:Stop(0) end
	if leftTrack  and leftTrack.IsPlaying  then leftTrack:Stop(0) end
	if rightTrack and rightTrack.IsPlaying then rightTrack:Stop(0) end

	task.spawn(fireLandingRemote)
	hardLandTrack:Play(0); hardLandTrack.TimePosition = 1.7; hardLandTrack:AdjustSpeed(1)

	local landingDone = false
	landConnection = RunService.Heartbeat:Connect(function()
		if not hrp or not hrp.Parent then
			landConnection:Disconnect(); landConnection = nil; return
		end

		
		if not landingDone and hum and hum.Parent then
			for _, track in pairs(hum:GetPlayingAnimationTracks()) do
				if BLOCKED_ANIMS[track.Animation.AnimationId] then
					track:AdjustWeight(0); track:Stop(0)
				end
			end
		end

		if not hardLandTrack.IsPlaying then
			landingDone = true; landConnection:Disconnect(); landConnection = nil
		end
	end)
end

local stopFlying

local function startFlying()
	if flying then return end
	if landConnection then landConnection:Disconnect(); landConnection = nil end
	if landTrack and landTrack.IsPlaying then landTrack:Stop(0.2) end

	local char = player.Character
	if not char then return end
	setupAnimations(char)
	startAnimBlocker(char)

	local hrp = char:FindFirstChild("HumanoidRootPart")
	local hum = char:FindFirstChild("Humanoid")
	if not hrp or not hum then return end

	boostLevel = 1; flySpeed = BOOST_SPEEDS[1]
	flying = true; hum.PlatformStand = true
	updateBoostLabel()
	startPlatformStandGuard(hum)

	bodyGyro = Instance.new("BodyGyro")
	bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
	bodyGyro.P = 30000; bodyGyro.Parent = hrp

	bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
	bodyVelocity.Velocity = Vector3.new(); bodyVelocity.Parent = hrp

	local idleElapsed = 0
	idleTrack.Looped = true; idleTrack:Play(0.3); idleTrack:AdjustSpeed(0)

	if idleConnection then idleConnection:Disconnect() end
	idleConnection = RunService.Heartbeat:Connect(function(dt)
		if not flying then return end
		idleElapsed = idleElapsed + dt
		local alpha = (idleElapsed / cycleDuration) % 1
		local easedAlpha = 0.5 - 0.5 * math.cos(alpha * math.pi * 2)
		idleTrack.TimePosition = idleStart + (idleEnd - idleStart) * easedAlpha
	end)

	if connection then connection:Disconnect() end
	connection = RunService.RenderStepped:Connect(function()
		if not flying or not hrp.Parent then return end

		local controls = PlayerModule:GetControls()
		local moveVector = controls:GetMoveVector()
		local isBackward = moveVector.Z > 0.1
		local isForward  = moveVector.Z < -0.1
		local isLeft     = moveVector.X < -0.1
		local isRight    = moveVector.X > 0.1
		local isMoving   = (moveVector.Magnitude > 0.1) or (math.abs(verticalInput) > 0.1)

		local moveDir = camera.CFrame:VectorToWorldSpace(Vector3.new(moveVector.X, verticalInput, moveVector.Z))
		if moveDir.Magnitude > 0 then moveDir = moveDir.Unit end

		if not isMoving or isBackward then resetBoost() end
		updateMovingSound(isMoving and not isBackward)

		
		if boostLevel == 4 then
			local rp = RaycastParams.new()
			rp.FilterDescendantsInstances = {char}
			rp.FilterType = Enum.RaycastFilterType.Blacklist
			if workspace:Raycast(hrp.Position, Vector3.new(0, -3, 0), rp) then
				task.spawn(function() stopFlying(true) end)
				return
			end
		end

		bodyVelocity.Velocity = moveDir * (isBackward and BACK_SPEED or flySpeed)

		if isMoving then
			if isBackward then
				if not backTrack.IsPlaying then
					if idleTrack.IsPlaying then idleTrack:Stop(0.2) end
					if idleConnection then idleConnection:Disconnect(); idleConnection = nil end
					stopAllMoveTracks(0.2)
					backTrack:Play(0.2)
				end
			elseif boostLevel >= 2 then
				if not moveTrack.IsPlaying then
					if idleTrack.IsPlaying then idleTrack:Stop(0.2) end
					if idleConnection then idleConnection:Disconnect(); idleConnection = nil end
					stopAllMoveTracks(0.2)
					moveTrack:Play(0.2)
					moveTrack.TimePosition = 0.5
					moveTrack:AdjustSpeed(0)
				end
			else
				
				local targetTrack = fwdTrack
				if isLeft and not isForward then
					targetTrack = leftTrack
				elseif isRight and not isForward then
					targetTrack = rightTrack
				end

				if not targetTrack.IsPlaying then
					if idleTrack.IsPlaying then idleTrack:Stop(0.2) end
					if idleConnection then idleConnection:Disconnect(); idleConnection = nil end
					stopAllMoveTracks(0.2)
					targetTrack:Play(0.2)
				end
			end
		else
			stopAllMoveTracks(0.2)
			if not idleTrack.IsPlaying then
				idleTrack:Play(0.2); idleTrack:AdjustSpeed(0)
				if not idleConnection then
					local idleElapsed2 = 0
					idleConnection = RunService.Heartbeat:Connect(function(dt)
						idleElapsed2 = idleElapsed2 + dt
						local alpha = (idleElapsed2 / cycleDuration) % 1
						local easedAlpha = 0.5 - 0.5 * math.cos(alpha * math.pi * 2)
						idleTrack.TimePosition = idleStart + (idleEnd - idleStart) * easedAlpha
					end)
				end
			end
		end

		
		if not (isMoving and isBackward) then
			if boostLevel >= 2 then
				local maxTiltRight = math.rad(62)
				local maxTiltLeft  = math.rad(62)
				local tiltZ = 0
				if moveVector.X > 0 then tiltZ = -moveVector.X * maxTiltRight
				elseif moveVector.X < 0 then tiltZ = -moveVector.X * maxTiltLeft end
				bodyGyro.CFrame = camera.CFrame * CFrame.Angles(0, 0, tiltZ)
			else
				bodyGyro.CFrame = camera.CFrame * CFrame.Angles(0, 0, 0)
			end
		else
			bodyGyro.CFrame = camera.CFrame * CFrame.Angles(0, 0, 0)
		end
	end)

	print("🧭 طيران مفعّل")
end

stopFlying = function(hardLand)
	if not flying then return end
	flying = false

	if bodyGyro then bodyGyro:Destroy(); bodyGyro = nil end
	if bodyVelocity then bodyVelocity:Destroy(); bodyVelocity = nil end
	if connection then connection:Disconnect(); connection = nil end
	if idleConnection then idleConnection:Disconnect(); idleConnection = nil end

	stopPlatformStandGuard()
	stopAnimBlocker()
	removeBoostVFX()

	boostLevel = 1; flySpeed = BOOST_SPEEDS[1]; boostLabel.Text = ""

	if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.8, normalFadeRef) end
	if flyBoostSound.IsPlaying then fadeSoundOut(flyBoostSound, 0.8, boostFadeRef) end

	local char = player.Character
	local hrp = nil
	if char then
		local hum = char:FindFirstChild("Humanoid")
		if hum then hum.PlatformStand = false end
		hrp = char:FindFirstChild("HumanoidRootPart")
	end

	if idleTrack  then idleTrack:Stop(0.3) end
	if moveTrack  then moveTrack:Stop(0.3) end
	if backTrack  then backTrack:Stop(0.3) end
	if fwdTrack   then fwdTrack:Stop(0.3) end
	if leftTrack  then leftTrack:Stop(0.3) end
	if rightTrack then rightTrack:Stop(0.3) end

	if hrp then
		if hardLand then playHardLandingAnimation(hrp)
		else playLandingAnimation(hrp) end
	end

	verticalInput = 0
	print("🧭 طيران معطّل | Hard:", tostring(hardLand))
end

button.MouseButton1Click:Connect(function()
	if flying then stopFlying(false) else startFlying() end
end)

local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input, gpe)
	if gpe then return end
	if input.KeyCode == Enum.KeyCode.Q or input.KeyCode == Enum.KeyCode.F then
		if flying then stopFlying(false) else startFlying() end
	end
	if not flying then return end
	if input.KeyCode == Enum.KeyCode.Space then verticalInput = 1 end
	if input.KeyCode == Enum.KeyCode.LeftControl then verticalInput = -1 end
end)

UIS.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Space and verticalInput == 1 then verticalInput = 0 end
	if input.KeyCode == Enum.KeyCode.LeftControl and verticalInput == -1 then verticalInput = 0 end
end)

local function destroyAll()
	
	if flying then
		flying = false
		if bodyGyro     then bodyGyro:Destroy();     bodyGyro     = nil end
		if bodyVelocity then bodyVelocity:Destroy(); bodyVelocity = nil end
		if connection      then connection:Disconnect();      connection      = nil end
		if idleConnection  then idleConnection:Disconnect();  idleConnection  = nil end
		stopPlatformStandGuard()
		stopAnimBlocker()
		removeBoostVFX()
	end

	
	if landConnection         then landConnection:Disconnect();         landConnection         = nil end
	if blockerConnection      then blockerConnection:Disconnect();      blockerConnection      = nil end
	if boostVFXLoopConnection then boostVFXLoopConnection:Disconnect(); boostVFXLoopConnection = nil end
	if blurTween              then blurTween:Cancel();                  blurTween              = nil end

	
	if flyNormalSound  then flyNormalSound:Stop();  flyNormalSound:Destroy()  end
	if flyBoostSound   then flyBoostSound:Stop();   flyBoostSound:Destroy()   end
	if boostDashSound  then boostDashSound:Stop();  boostDashSound:Destroy()  end

	
	if blurEffect    and blurEffect.Parent    then blurEffect:Destroy()    end
	if boostVFXPart  and boostVFXPart.Parent  then boostVFXPart:Destroy(); boostVFXPart = nil end

	
	if gui and gui.Parent then gui:Destroy() end

	print("💀 FLY SYSTEM: حُذف بالكامل عند الموت")
end

local function onCharacterAdded(char)
	local hum = char:WaitForChild("Humanoid", 10)
	if hum then
		hum.Died:Once(destroyAll)
	end
end

if player.Character then
	task.spawn(onCharacterAdded, player.Character)
end
player.CharacterAdded:Connect(onCharacterAdded)
]=]

local SRC_PC = [=[
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local gui = Instance.new("ScreenGui")
gui.Name = "FlyGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local boostLabel = Instance.new("TextLabel")
boostLabel.Parent = gui
boostLabel.Size = UDim2.new(0, 160, 0, 36)
boostLabel.Position = UDim2.new(0, 16, 0.5, -18)
boostLabel.AnchorPoint = Vector2.new(0, 0.5)
boostLabel.BackgroundTransparency = 1
boostLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
boostLabel.TextStrokeTransparency = 0.4
boostLabel.TextXAlignment = Enum.TextXAlignment.Left
boostLabel.Font = Enum.Font.GothamBold
boostLabel.TextSize = 20
boostLabel.Text = ""

local blurEffect = Instance.new("BlurEffect")
blurEffect.Size = 0
blurEffect.Parent = camera

local blurTween = nil
local function triggerBlur()
	if blurTween then blurTween:Cancel() end
	blurEffect.Size = 45
	blurTween = TweenService:Create(
		blurEffect,
		TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{Size = 0}
	)
	blurTween:Play()
end

local flying = false
local verticalInput = 0

local BOOST_SPEEDS = {30, 80, 160, 320}
local BACK_SPEED = 30
local boostLevel = 1
local flySpeed = BOOST_SPEEDS[1]

local bodyGyro, bodyVelocity, connection, idleConnection = nil, nil, nil, nil
local landTrack = nil
local landConnection = nil
local blockerConnection = nil
local platformStandGuard = nil

local PlayerModule = require(player.PlayerScripts:WaitForChild("PlayerModule"))

local idleTrack, moveTrack, backTrack
local fwdTrack, leftTrack, rightTrack
local idleStart, idleEnd = 1.6, 2.1
local cycleDuration = 1.5

local function startPlatformStandGuard(hum)
	if platformStandGuard then platformStandGuard:Disconnect() end
	platformStandGuard = RunService.Heartbeat:Connect(function()
		if not flying then return end
		if not hum or not hum.Parent then return end
		if not hum.PlatformStand then hum.PlatformStand = true end
		local hrp = hum.Parent and hum.Parent:FindFirstChild("HumanoidRootPart")
		if hrp then
			if not bodyGyro or not bodyGyro.Parent then
				if bodyGyro then bodyGyro:Destroy() end
				bodyGyro = Instance.new("BodyGyro")
				bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
				bodyGyro.P = 30000
				bodyGyro.Parent = hrp
			end
			if not bodyVelocity or not bodyVelocity.Parent then
				if bodyVelocity then bodyVelocity:Destroy() end
				bodyVelocity = Instance.new("BodyVelocity")
				bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
				bodyVelocity.Velocity = Vector3.new()
				bodyVelocity.Parent = hrp
			end
		end
	end)
end

local function stopPlatformStandGuard()
	if platformStandGuard then platformStandGuard:Disconnect(); platformStandGuard = nil end
end

local flyNormalSound = Instance.new("Sound")
flyNormalSound.SoundId = "rbxassetid://93035214379043"
flyNormalSound.Volume = 1.4
flyNormalSound.Looped = true
flyNormalSound.PlaybackSpeed = 1.0
flyNormalSound.Parent = SoundService

local flyBoostSound = Instance.new("Sound")
flyBoostSound.SoundId = "rbxassetid://3308152153"
flyBoostSound.Volume = 1.4
flyBoostSound.Looped = true
flyBoostSound.PlaybackSpeed = 1.05
flyBoostSound.Parent = SoundService

local boostDashSound = Instance.new("Sound")
boostDashSound.SoundId = "rbxassetid://1295446488"
boostDashSound.Volume = 1.5
boostDashSound.Looped = false
boostDashSound.Parent = SoundService

local normalFadeRef = {}
local boostFadeRef = {}

local function fadeSoundOut(snd, duration, ref)
	if ref.tween then ref.tween:Cancel() end
	local tween = TweenService:Create(snd, TweenInfo.new(duration, Enum.EasingStyle.Linear), {Volume = 0})
	ref.tween = tween
	tween:Play()
	tween.Completed:Connect(function()
		if snd.IsPlaying then snd:Stop() end
		snd.Volume = 1.4
	end)
end

local function updateMovingSound(isMoving)
	if not flying then
		if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.5, normalFadeRef) end
		if flyBoostSound.IsPlaying then fadeSoundOut(flyBoostSound, 0.5, boostFadeRef) end
		return
	end
	if isMoving then
		if boostLevel == 1 then
			if not flyNormalSound.IsPlaying then flyNormalSound.Volume = 1.4; flyNormalSound:Play() end
			if flyBoostSound.IsPlaying then fadeSoundOut(flyBoostSound, 0.4, boostFadeRef) end
		elseif boostLevel == 2 then
			if not flyBoostSound.IsPlaying then flyBoostSound.Volume = 1.4; flyBoostSound:Play() end
			if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.4, normalFadeRef) end
		elseif boostLevel == 3 then
			if not flyBoostSound.IsPlaying then flyBoostSound:Play() end
			flyBoostSound.Volume = 1.8
			if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.4, normalFadeRef) end
		elseif boostLevel == 4 then
			if not flyBoostSound.IsPlaying then flyBoostSound:Play() end
			flyBoostSound.Volume = 2.4
			if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.4, normalFadeRef) end
		end
	else
		if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.5, normalFadeRef) end
		if flyBoostSound.IsPlaying then fadeSoundOut(flyBoostSound, 0.5, boostFadeRef) end
	end
end

local boostVFXPart = nil
local boostVFXParticles = {}
local boostVFXLoopConnection = nil

local function createBoostVFX(hrp)
	if boostVFXPart then
		boostVFXPart:Destroy()
		boostVFXPart = nil
	end

	if boostVFXLoopConnection then
		boostVFXLoopConnection:Disconnect()
		boostVFXLoopConnection = nil
	end

	boostVFXParticles = {}

	local effectPart = Instance.new("Part")
	effectPart.Name = "BoostWindVFX"
	effectPart.Anchored = true
	effectPart.CanCollide = false
	effectPart.Transparency = 1
	effectPart.Size = Vector3.new(4, 1, 4)
	effectPart.Parent = workspace

	local function addParticle(config)
		local particle = Instance.new("ParticleEmitter")
		for k, v in pairs(config) do
			particle[k] = v
		end
		particle.Parent = effectPart
		table.insert(boostVFXParticles, particle)
	end

	addParticle({
		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume,
		FlipbookFramerate = NumberRange.new(1, 1),
		LightInfluence = 1,
		Lifetime = NumberRange.new(0.5, 1),
		FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4,
		SpreadAngle = Vector2.new(5, 5),
		LockedToPart = false,
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.75),
			NumberSequenceKeypoint.new(1, 1),
		}),
		Orientation = Enum.ParticleOrientation.VelocityPerpendicular,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.new(0.603922, 0.603922, 0.603922)),
			ColorSequenceKeypoint.new(1, Color3.new(0.603922, 0.603922, 0.603922)),
		}),
		Drag = 1,
		FlipbookStartRandom = false,
		TimeScale = 1,
		VelocitySpread = 5,
		Squash = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(1, 0),
		}),
		Speed = NumberRange.new(10, 25),
		Brightness = 1,
		Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(0.1, 5.547733),
			NumberSequenceKeypoint.new(0.2, 6.99886),
			NumberSequenceKeypoint.new(0.3, 7.933544),
			NumberSequenceKeypoint.new(0.4, 8.596931),
			NumberSequenceKeypoint.new(0.5, 9.083597),
			NumberSequenceKeypoint.new(0.6, 9.441509),
			NumberSequenceKeypoint.new(0.7, 9.698432),
			NumberSequenceKeypoint.new(0.8, 9.871381),
			NumberSequenceKeypoint.new(0.9, 9.970378),
			NumberSequenceKeypoint.new(1, 10),
			NumberSequenceKeypoint.new(1, 10),
		}),
		Enabled = true,
		Acceleration = Vector3.new(0, 0, 0),
		RotSpeed = NumberRange.new(-980, -360),
		ZOffset = 0.10000000149011612,
		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward,
		Rate = 30,
		VelocityInheritance = 0,
		Rotation = NumberRange.new(-180, 180),
		ShapePartial = 1,
		Texture = "rbxassetid://13332219428",
		FlipbookMode = Enum.ParticleFlipbookMode.OneShot,
		EmissionDirection = Enum.NormalId.Back,
		Shape = Enum.ParticleEmitterShape.Box,
		LightEmission = 0,
	})

	addParticle({
		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume,
		FlipbookFramerate = NumberRange.new(0.810818, 0.810818),
		LightInfluence = 0,
		Lifetime = NumberRange.new(0.5, 1),
		FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4,
		SpreadAngle = Vector2.new(5, 5),
		LockedToPart = false,
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.75),
			NumberSequenceKeypoint.new(1, 1),
		}),
		Orientation = Enum.ParticleOrientation.VelocityPerpendicular,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
			ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
		}),
		Drag = 1,
		FlipbookStartRandom = false,
		TimeScale = 0.95,
		VelocitySpread = 5,
		Squash = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(1, 0),
		}),
		Speed = NumberRange.new(10, 25),
		Brightness = 1,
		Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(0.1, 5.547733),
			NumberSequenceKeypoint.new(0.2, 6.99886),
			NumberSequenceKeypoint.new(0.3, 7.933544),
			NumberSequenceKeypoint.new(0.4, 8.596931),
			NumberSequenceKeypoint.new(0.5, 9.083597),
			NumberSequenceKeypoint.new(0.6, 9.441509),
			NumberSequenceKeypoint.new(0.7, 9.698432),
			NumberSequenceKeypoint.new(0.8, 9.871381),
			NumberSequenceKeypoint.new(0.9, 9.970378),
			NumberSequenceKeypoint.new(1, 10),
			NumberSequenceKeypoint.new(1, 10),
		}),
		Enabled = true,
		Acceleration = Vector3.new(0, 0, 0),
		RotSpeed = NumberRange.new(-250, -250),
		ZOffset = 0,
		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward,
		Rate = 30,
		VelocityInheritance = 0,
		Rotation = NumberRange.new(-500, 500),
		ShapePartial = 1,
		Texture = "rbxassetid://73649245182561",
		FlipbookMode = Enum.ParticleFlipbookMode.OneShot,
		EmissionDirection = Enum.NormalId.Back,
		Shape = Enum.ParticleEmitterShape.Box,
		LightEmission = 1,
	})

	addParticle({
		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume,
		FlipbookFramerate = NumberRange.new(1, 1),
		LightInfluence = 1,
		Lifetime = NumberRange.new(0.5, 1),
		FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4,
		SpreadAngle = Vector2.new(5, 5),
		LockedToPart = false,
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.75),
			NumberSequenceKeypoint.new(1, 1),
		}),
		Orientation = Enum.ParticleOrientation.VelocityPerpendicular,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.new(0.603922, 0.603922, 0.603922)),
			ColorSequenceKeypoint.new(1, Color3.new(0.603922, 0.603922, 0.603922)),
		}),
		Drag = 1,
		FlipbookStartRandom = false,
		TimeScale = 1,
		VelocitySpread = 5,
		Squash = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(1, 0),
		}),
		Speed = NumberRange.new(10, 25),
		Brightness = 1,
		Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(0.1, 5.547733),
			NumberSequenceKeypoint.new(0.2, 6.99886),
			NumberSequenceKeypoint.new(0.3, 7.933544),
			NumberSequenceKeypoint.new(0.4, 8.596931),
			NumberSequenceKeypoint.new(0.5, 9.083597),
			NumberSequenceKeypoint.new(0.6, 9.441509),
			NumberSequenceKeypoint.new(0.7, 9.698432),
			NumberSequenceKeypoint.new(0.8, 9.871381),
			NumberSequenceKeypoint.new(0.9, 9.970378),
			NumberSequenceKeypoint.new(1, 10),
			NumberSequenceKeypoint.new(1, 10),
		}),
		Enabled = true,
		Acceleration = Vector3.new(0, 0, 0),
		RotSpeed = NumberRange.new(-980, -360),
		ZOffset = 0.10000000149011612,
		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward,
		Rate = 30,
		VelocityInheritance = 0,
		Rotation = NumberRange.new(-180, 180),
		ShapePartial = 1,
		Texture = "rbxassetid://13336626584",
		FlipbookMode = Enum.ParticleFlipbookMode.OneShot,
		EmissionDirection = Enum.NormalId.Back,
		Shape = Enum.ParticleEmitterShape.Box,
		LightEmission = 0,
	})

	addParticle({
		ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume,
		FlipbookFramerate = NumberRange.new(0.810818, 0.810818),
		LightInfluence = 0,
		Lifetime = NumberRange.new(0.5, 1),
		FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4,
		SpreadAngle = Vector2.new(5, 5),
		LockedToPart = false,
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.75),
			NumberSequenceKeypoint.new(1, 1),
		}),
		Orientation = Enum.ParticleOrientation.VelocityPerpendicular,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
			ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
		}),
		Drag = 1,
		FlipbookStartRandom = false,
		TimeScale = 1,
		VelocitySpread = 5,
		Squash = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(1, 0),
		}),
		Speed = NumberRange.new(10, 25),
		Brightness = 1,
		Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(0.1, 5.547733),
			NumberSequenceKeypoint.new(0.2, 6.99886),
			NumberSequenceKeypoint.new(0.3, 7.933544),
			NumberSequenceKeypoint.new(0.4, 8.596931),
			NumberSequenceKeypoint.new(0.5, 9.083597),
			NumberSequenceKeypoint.new(0.6, 9.441509),
			NumberSequenceKeypoint.new(0.7, 9.698432),
			NumberSequenceKeypoint.new(0.8, 9.871381),
			NumberSequenceKeypoint.new(0.9, 9.970378),
			NumberSequenceKeypoint.new(1, 10),
			NumberSequenceKeypoint.new(1, 10),
		}),
		Enabled = true,
		Acceleration = Vector3.new(0, 0, 0),
		RotSpeed = NumberRange.new(-980, -360),
		ZOffset = 0.10000000149011612,
		ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward,
		Rate = 30,
		VelocityInheritance = 0,
		Rotation = NumberRange.new(-180, 180),
		ShapePartial = 1,
		Texture = "rbxassetid://17302807125",
		FlipbookMode = Enum.ParticleFlipbookMode.OneShot,
		EmissionDirection = Enum.NormalId.Back,
		Shape = Enum.ParticleEmitterShape.Box,
		LightEmission = 0,
	})

	boostVFXPart = effectPart

	boostVFXLoopConnection = RunService.Heartbeat:Connect(function()
		if not boostVFXPart or not boostVFXPart.Parent then
			if boostVFXLoopConnection then
				boostVFXLoopConnection:Disconnect()
				boostVFXLoopConnection = nil
			end
			return
		end

		if not hrp or not hrp.Parent then
			for _, p in ipairs(boostVFXParticles) do
				p.Enabled = false
			end
			boostVFXPart:Destroy()
			boostVFXPart = nil
			if boostVFXLoopConnection then
				boostVFXLoopConnection:Disconnect()
				boostVFXLoopConnection = nil
			end
			return
		end

		
		boostVFXPart.CFrame = hrp.CFrame * CFrame.new(0, 0, 0)
	end)
end

local function removeBoostVFX()
	if boostVFXLoopConnection then
		boostVFXLoopConnection:Disconnect()
		boostVFXLoopConnection = nil
	end

	if boostVFXPart then
		for _, p in ipairs(boostVFXParticles) do
			p.Enabled = false
		end
		task.delay(1, function()
			if boostVFXPart and boostVFXPart.Parent then
				boostVFXPart:Destroy()
			end
		end)
		boostVFXPart = nil
	end

	boostVFXParticles = {}
end

local function updateBoostLabel()
	if not flying then boostLabel.Text = ""; return end
	if boostLevel == 1 then
		boostLabel.Text = "⚡ Normal"
		boostLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	elseif boostLevel == 2 then
		boostLabel.Text = "🚀 Boost x1"
		boostLabel.TextColor3 = Color3.fromRGB(100, 200, 255)
	elseif boostLevel == 3 then
		boostLabel.Text = "🚀 Boost x2"
		boostLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
	elseif boostLevel == 4 then
		boostLabel.Text = "🚀 Boost x3"
		boostLabel.TextColor3 = Color3.fromRGB(255, 80, 0)
	end
end

local function applyBoost()
	if not flying then return end
	boostLevel = boostLevel + 1
	if boostLevel > #BOOST_SPEEDS then boostLevel = 1 end
	flySpeed = BOOST_SPEEDS[boostLevel]
	updateBoostLabel()

	local char = player.Character
	local hrp = char and char:FindFirstChild("HumanoidRootPart")

	if boostLevel == 3 or boostLevel == 4 then triggerBlur() end
	if boostLevel == 4 then
		if hrp then createBoostVFX(hrp) end
	else
		removeBoostVFX()
	end

	if boostLevel >= 2 then
		boostDashSound.Volume = boostLevel == 4 and 2.5 or boostLevel == 3 and 2.0 or 1.5
		boostDashSound:Play()
	end
end

local function resetBoost()
	if boostLevel ~= 1 then
		boostLevel = 1
		flySpeed = BOOST_SPEEDS[1]
		updateBoostLabel()
		removeBoostVFX()
	end
end

local function fireLandingRemote()
	local char = player.Character
	if not char then return end
	local communicate = char:FindFirstChild("Communicate")
	if not communicate then return end
	communicate:FireServer({Dash = Enum.KeyCode.D, Key = Enum.KeyCode.Q, Goal = "KeyPress"})
end

local BLOCKED_ANIMS = {
	["rbxassetid://7815618175"] = true,
	["rbxassetid://10479335397"] = true,
}

local function startAnimBlocker(char)
	local hum = char:FindFirstChild("Humanoid")
	if not hum then return end
	if blockerConnection then blockerConnection:Disconnect() end

	blockerConnection = RunService.Heartbeat:Connect(function()
		if not hum or not hum.Parent then return end
		for _, track in pairs(hum:GetPlayingAnimationTracks()) do
			if BLOCKED_ANIMS[track.Animation.AnimationId] then
				track:AdjustWeight(0)
				track:Stop(0)
			end
		end
	end)
end

local function stopAnimBlocker()
	if blockerConnection then blockerConnection:Disconnect(); blockerConnection = nil end
end

local function setupAnimations(char)
	local hum = char:FindFirstChild("Humanoid")
	if not hum then return end
	local animator = hum:FindFirstChildWhichIsA("Animator") or Instance.new("Animator", hum)

	local function makeAnim(id)
		local a = Instance.new("Animation"); a.AnimationId = id; return a
	end

	idleTrack  = animator:LoadAnimation(makeAnim("rbxassetid://17124061663"))
	moveTrack  = animator:LoadAnimation(makeAnim("rbxassetid://78547941116306"))
	backTrack  = animator:LoadAnimation(makeAnim("rbxassetid://17124067635"))
	fwdTrack   = animator:LoadAnimation(makeAnim("rbxassetid://17124063826"))
	leftTrack  = animator:LoadAnimation(makeAnim("rbxassetid://17124105294"))
	rightTrack = animator:LoadAnimation(makeAnim("rbxassetid://17124112547"))
	landTrack  = animator:LoadAnimation(makeAnim("rbxassetid://16719220174"))

	idleTrack.Priority  = Enum.AnimationPriority.Action4
	moveTrack.Priority  = Enum.AnimationPriority.Action4
	backTrack.Priority  = Enum.AnimationPriority.Action4
	fwdTrack.Priority   = Enum.AnimationPriority.Action4
	leftTrack.Priority  = Enum.AnimationPriority.Action4
	rightTrack.Priority = Enum.AnimationPriority.Action4
	landTrack.Priority  = Enum.AnimationPriority.Action4
end

local function stopAllMoveTracks(fade)
	local f = fade or 0.2
	if moveTrack  and moveTrack.IsPlaying  then moveTrack:Stop(f) end
	if backTrack  and backTrack.IsPlaying  then backTrack:Stop(f) end
	if fwdTrack   and fwdTrack.IsPlaying   then fwdTrack:Stop(f) end
	if leftTrack  and leftTrack.IsPlaying  then leftTrack:Stop(f) end
	if rightTrack and rightTrack.IsPlaying then rightTrack:Stop(f) end
end

local function playLandingAnimation(hrp)
	if landConnection then landConnection:Disconnect(); landConnection = nil end
	if not landTrack then return end

	local char = player.Character
	if not char then return end
	local hum = char:FindFirstChild("Humanoid")
	if not hum then return end

	local rp0 = RaycastParams.new()
	rp0.FilterDescendantsInstances = {char}
	rp0.FilterType = Enum.RaycastFilterType.Blacklist
	if workspace:Raycast(hrp.Position, Vector3.new(0, -6, 0), rp0) then return end

	
	if idleTrack  and idleTrack.IsPlaying  then idleTrack:Stop(0) end
	if moveTrack  and moveTrack.IsPlaying  then moveTrack:Stop(0) end
	if backTrack  and backTrack.IsPlaying  then backTrack:Stop(0) end
	if fwdTrack   and fwdTrack.IsPlaying   then fwdTrack:Stop(0) end
	if leftTrack  and leftTrack.IsPlaying  then leftTrack:Stop(0) end
	if rightTrack and rightTrack.IsPlaying then rightTrack:Stop(0) end

	local frozen, remoteFired, landingDone = false, false, false
	landTrack:Play(0); landTrack.TimePosition = 3.2; landTrack:AdjustSpeed(1)

	landConnection = RunService.Heartbeat:Connect(function()
		if not hrp or not hrp.Parent then
			landConnection:Disconnect(); landConnection = nil; return
		end

		
		if not landingDone and hum and hum.Parent then
			for _, track in pairs(hum:GetPlayingAnimationTracks()) do
				if BLOCKED_ANIMS[track.Animation.AnimationId] then
					track:AdjustWeight(0); track:Stop(0)
				end
			end
		end

		local rp = RaycastParams.new()
		rp.FilterDescendantsInstances = {char}
		rp.FilterType = Enum.RaycastFilterType.Blacklist

		if not remoteFired and workspace:Raycast(hrp.Position, Vector3.new(0, -3, 0), rp) then
			remoteFired = true; task.spawn(fireLandingRemote)
		end

		local nearGround = workspace:Raycast(hrp.Position, Vector3.new(0, -5, 0), rp) ~= nil

		if not frozen and landTrack.TimePosition >= 3.3 then frozen = true end
		if frozen and not nearGround then
			if landTrack.TimePosition >= 3.3 then landTrack:AdjustSpeed(-0.15)
			elseif landTrack.TimePosition <= 3.2 then landTrack:AdjustSpeed(0.15) end
		end
		if frozen and nearGround then landTrack:AdjustSpeed(1); frozen = false end
		if not landTrack.IsPlaying then
			landingDone = true; landConnection:Disconnect(); landConnection = nil
		end
	end)
end

local function playHardLandingAnimation(hrp)
	if landConnection then landConnection:Disconnect(); landConnection = nil end

	local char = player.Character
	if not char then return end
	local hum = char:FindFirstChild("Humanoid")
	if not hum then return end

	local animator = hum:FindFirstChildWhichIsA("Animator") or Instance.new("Animator", hum)
	local hardLandAnim = Instance.new("Animation")
	hardLandAnim.AnimationId = "rbxassetid://15089520783"
	local hardLandTrack = animator:LoadAnimation(hardLandAnim)
	hardLandTrack.Priority = Enum.AnimationPriority.Action4

	
	if idleTrack  and idleTrack.IsPlaying  then idleTrack:Stop(0) end
	if moveTrack  and moveTrack.IsPlaying  then moveTrack:Stop(0) end
	if backTrack  and backTrack.IsPlaying  then backTrack:Stop(0) end
	if fwdTrack   and fwdTrack.IsPlaying   then fwdTrack:Stop(0) end
	if leftTrack  and leftTrack.IsPlaying  then leftTrack:Stop(0) end
	if rightTrack and rightTrack.IsPlaying then rightTrack:Stop(0) end

	task.spawn(fireLandingRemote)
	hardLandTrack:Play(0); hardLandTrack.TimePosition = 1.7; hardLandTrack:AdjustSpeed(1)

	local landingDone = false
	landConnection = RunService.Heartbeat:Connect(function()
		if not hrp or not hrp.Parent then
			landConnection:Disconnect(); landConnection = nil; return
		end

		
		if not landingDone and hum and hum.Parent then
			for _, track in pairs(hum:GetPlayingAnimationTracks()) do
				if BLOCKED_ANIMS[track.Animation.AnimationId] then
					track:AdjustWeight(0); track:Stop(0)
				end
			end
		end

		if not hardLandTrack.IsPlaying then
			landingDone = true; landConnection:Disconnect(); landConnection = nil
		end
	end)
end

local stopFlying

local function startFlying()
	if flying then return end
	if landConnection then landConnection:Disconnect(); landConnection = nil end
	if landTrack and landTrack.IsPlaying then landTrack:Stop(0.2) end

	local char = player.Character
	if not char then return end
	setupAnimations(char)
	startAnimBlocker(char)

	local hrp = char:FindFirstChild("HumanoidRootPart")
	local hum = char:FindFirstChild("Humanoid")
	if not hrp or not hum then return end

	boostLevel = 1; flySpeed = BOOST_SPEEDS[1]
	flying = true; hum.PlatformStand = true
	updateBoostLabel()
	startPlatformStandGuard(hum)

	bodyGyro = Instance.new("BodyGyro")
	bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
	bodyGyro.P = 30000; bodyGyro.Parent = hrp

	bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
	bodyVelocity.Velocity = Vector3.new(); bodyVelocity.Parent = hrp

	local idleElapsed = 0
	idleTrack.Looped = true; idleTrack:Play(0.3); idleTrack:AdjustSpeed(0)

	if idleConnection then idleConnection:Disconnect() end
	idleConnection = RunService.Heartbeat:Connect(function(dt)
		if not flying then return end
		idleElapsed = idleElapsed + dt
		local alpha = (idleElapsed / cycleDuration) % 1
		local easedAlpha = 0.5 - 0.5 * math.cos(alpha * math.pi * 2)
		idleTrack.TimePosition = idleStart + (idleEnd - idleStart) * easedAlpha
	end)

	if connection then connection:Disconnect() end
	connection = RunService.RenderStepped:Connect(function()
		if not flying or not hrp.Parent then return end

		local controls = PlayerModule:GetControls()
		local moveVector = controls:GetMoveVector()
		local isBackward = moveVector.Z > 0.1
		local isForward  = moveVector.Z < -0.1
		local isLeft     = moveVector.X < -0.1
		local isRight    = moveVector.X > 0.1
		local isMoving   = (moveVector.Magnitude > 0.1) or (math.abs(verticalInput) > 0.1)

		local moveDir = camera.CFrame:VectorToWorldSpace(Vector3.new(moveVector.X, verticalInput, moveVector.Z))
		if moveDir.Magnitude > 0 then moveDir = moveDir.Unit end

		if not isMoving or isBackward then resetBoost() end
		updateMovingSound(isMoving and not isBackward)

		
		if boostLevel == 4 then
			local rp = RaycastParams.new()
			rp.FilterDescendantsInstances = {char}
			rp.FilterType = Enum.RaycastFilterType.Blacklist
			if workspace:Raycast(hrp.Position, Vector3.new(0, -3, 0), rp) then
				task.spawn(function() stopFlying(true) end)
				return
			end
		end

		bodyVelocity.Velocity = moveDir * (isBackward and BACK_SPEED or flySpeed)

		if isMoving then
			if isBackward then
				if not backTrack.IsPlaying then
					if idleTrack.IsPlaying then idleTrack:Stop(0.2) end
					if idleConnection then idleConnection:Disconnect(); idleConnection = nil end
					stopAllMoveTracks(0.2)
					backTrack:Play(0.2)
				end
			elseif boostLevel >= 2 then
				if not moveTrack.IsPlaying then
					if idleTrack.IsPlaying then idleTrack:Stop(0.2) end
					if idleConnection then idleConnection:Disconnect(); idleConnection = nil end
					stopAllMoveTracks(0.2)
					moveTrack:Play(0.2)
					moveTrack.TimePosition = 0.5
					moveTrack:AdjustSpeed(0)
				end
			else
				
				local targetTrack = fwdTrack
				if isLeft and not isForward then
					targetTrack = leftTrack
				elseif isRight and not isForward then
					targetTrack = rightTrack
				end

				if not targetTrack.IsPlaying then
					if idleTrack.IsPlaying then idleTrack:Stop(0.2) end
					if idleConnection then idleConnection:Disconnect(); idleConnection = nil end
					stopAllMoveTracks(0.2)
					targetTrack:Play(0.2)
				end
			end
		else
			stopAllMoveTracks(0.2)
			if not idleTrack.IsPlaying then
				idleTrack:Play(0.2); idleTrack:AdjustSpeed(0)
				if not idleConnection then
					local idleElapsed2 = 0
					idleConnection = RunService.Heartbeat:Connect(function(dt)
						idleElapsed2 = idleElapsed2 + dt
						local alpha = (idleElapsed2 / cycleDuration) % 1
						local easedAlpha = 0.5 - 0.5 * math.cos(alpha * math.pi * 2)
						idleTrack.TimePosition = idleStart + (idleEnd - idleStart) * easedAlpha
					end)
				end
			end
		end

		
		if not (isMoving and isBackward) then
			if boostLevel >= 2 then
				local maxTiltRight = math.rad(62)
				local maxTiltLeft  = math.rad(62)
				local tiltZ = 0
				if moveVector.X > 0 then tiltZ = -moveVector.X * maxTiltRight
				elseif moveVector.X < 0 then tiltZ = -moveVector.X * maxTiltLeft end
				bodyGyro.CFrame = camera.CFrame * CFrame.Angles(0, 0, tiltZ)
			else
				bodyGyro.CFrame = camera.CFrame * CFrame.Angles(0, 0, 0)
			end
		else
			bodyGyro.CFrame = camera.CFrame * CFrame.Angles(0, 0, 0)
		end
	end)

	print("🧭 طيران مفعّل")
end

stopFlying = function(hardLand)
	if not flying then return end
	flying = false

	if bodyGyro then bodyGyro:Destroy(); bodyGyro = nil end
	if bodyVelocity then bodyVelocity:Destroy(); bodyVelocity = nil end
	if connection then connection:Disconnect(); connection = nil end
	if idleConnection then idleConnection:Disconnect(); idleConnection = nil end

	stopPlatformStandGuard()
	stopAnimBlocker()
	removeBoostVFX()

	boostLevel = 1; flySpeed = BOOST_SPEEDS[1]; boostLabel.Text = ""

	if flyNormalSound.IsPlaying then fadeSoundOut(flyNormalSound, 0.8, normalFadeRef) end
	if flyBoostSound.IsPlaying then fadeSoundOut(flyBoostSound, 0.8, boostFadeRef) end

	local char = player.Character
	local hrp = nil
	if char then
		local hum = char:FindFirstChild("Humanoid")
		if hum then hum.PlatformStand = false end
		hrp = char:FindFirstChild("HumanoidRootPart")
	end

	if idleTrack  then idleTrack:Stop(0.3) end
	if moveTrack  then moveTrack:Stop(0.3) end
	if backTrack  then backTrack:Stop(0.3) end
	if fwdTrack   then fwdTrack:Stop(0.3) end
	if leftTrack  then leftTrack:Stop(0.3) end
	if rightTrack then rightTrack:Stop(0.3) end

	if hrp then
		if hardLand then playHardLandingAnimation(hrp)
		else playLandingAnimation(hrp) end
	end

	verticalInput = 0
	print("🧭 طيران معطّل | Hard:", tostring(hardLand))
end

local UIS = game:GetService("UserInputService")

local DASH_COOLDOWN = 0.45 
local lastBoostTime = 0

local function fireBoostRemote()
    local char = player.Character
    if not char then return end
    local communicate = char:FindFirstChild("Communicate")
    if not communicate then return end
    communicate:FireServer({
        Dash     = Enum.KeyCode.W,
        Key      = Enum.KeyCode.Q,
        Goal     = "KeyPress",
        MousePos = camera.CFrame
    })
end

UIS.InputBegan:Connect(function(input, gpe)
    if gpe then return end

    
    if input.KeyCode == Enum.KeyCode.X then
        if flying then stopFlying(false) else startFlying() end
        return
    end

    
    if input.KeyCode == Enum.KeyCode.Q then
        if not flying then return end
        local wHeld = UIS:IsKeyDown(Enum.KeyCode.W)
        if wHeld then
            local now = tick()
            if now - lastBoostTime >= DASH_COOLDOWN then
                lastBoostTime = now
                applyBoost()
                task.spawn(fireBoostRemote)
            end
        end
        return
    end

    if not flying then return end
    if input.KeyCode == Enum.KeyCode.Space      then verticalInput =  1 end
    if input.KeyCode == Enum.KeyCode.LeftControl then verticalInput = -1 end
end)

UIS.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Space       and verticalInput ==  1 then verticalInput = 0 end
    if input.KeyCode == Enum.KeyCode.LeftControl and verticalInput == -1 then verticalInput = 0 end
end)

local function destroyAll()
	
	if flying then
		flying = false
		if bodyGyro     then bodyGyro:Destroy();     bodyGyro     = nil end
		if bodyVelocity then bodyVelocity:Destroy(); bodyVelocity = nil end
		if connection      then connection:Disconnect();      connection      = nil end
		if idleConnection  then idleConnection:Disconnect();  idleConnection  = nil end
		stopPlatformStandGuard()
		stopAnimBlocker()
		removeBoostVFX()
	end

	
	if landConnection         then landConnection:Disconnect();         landConnection         = nil end
	if blockerConnection      then blockerConnection:Disconnect();      blockerConnection      = nil end
	if boostVFXLoopConnection then boostVFXLoopConnection:Disconnect(); boostVFXLoopConnection = nil end
	if blurTween              then blurTween:Cancel();                  blurTween              = nil end

	
	if flyNormalSound  then flyNormalSound:Stop();  flyNormalSound:Destroy()  end
	if flyBoostSound   then flyBoostSound:Stop();   flyBoostSound:Destroy()   end
	if boostDashSound  then boostDashSound:Stop();  boostDashSound:Destroy()  end

	
	if blurEffect    and blurEffect.Parent    then blurEffect:Destroy()    end
	if boostVFXPart  and boostVFXPart.Parent  then boostVFXPart:Destroy(); boostVFXPart = nil end

	
	if gui and gui.Parent then gui:Destroy() end

	print("💀 FLY SYSTEM: حُذف بالكامل عند الموت")
end

local function onCharacterAdded(char)
	local hum = char:WaitForChild("Humanoid", 10)
	if hum then
		hum.Died:Once(destroyAll)
	end
end

if player.Character then
	task.spawn(onCharacterAdded, player.Character)
end
player.CharacterAdded:Connect(onCharacterAdded)
]=]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local function runChunk(src)
	local fn = loadstring(src)
	if fn then
		pcall(fn)
	end
end

local function showCredit(deviceText)
	local CreditGui = Instance.new("ScreenGui")
	CreditGui.Name = "ViltrumiteCredit"
	CreditGui.ResetOnSpawn = false
	CreditGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	CreditGui.Parent = PlayerGui

	local CreditFrame = Instance.new("Frame")
	CreditFrame.Size = UDim2.new(0, 270, 0, 62)
	CreditFrame.Position = UDim2.new(0.5, -135, 1, 10)
	CreditFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
	CreditFrame.BackgroundTransparency = 0.05
	CreditFrame.BorderSizePixel = 0
	CreditFrame.Parent = CreditGui
	Instance.new("UICorner", CreditFrame).CornerRadius = UDim.new(0, 14)

	local CStroke = Instance.new("UIStroke")
	CStroke.Color = Color3.fromRGB(80, 80, 120)
	CStroke.Thickness = 1.5
	CStroke.Transparency = 0.5
	CStroke.Parent = CreditFrame

	local NameLbl = Instance.new("TextLabel")
	NameLbl.Size = UDim2.new(1, -20, 0, 30)
	NameLbl.Position = UDim2.new(0, 12, 0, 4)
	NameLbl.BackgroundTransparency = 1
	NameLbl.Text = "Viltrumite Moveset  |  " .. deviceText
	NameLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
	NameLbl.TextSize = 15
	NameLbl.Font = Enum.Font.GothamBold
	NameLbl.TextXAlignment = Enum.TextXAlignment.Left
	NameLbl.Parent = CreditFrame

	local CreditLbl = Instance.new("TextLabel")
	CreditLbl.Size = UDim2.new(1, -20, 0, 24)
	CreditLbl.Position = UDim2.new(0, 12, 0, 32)
	CreditLbl.BackgroundTransparency = 1
	CreditLbl.Text = "Make by Zorcex"
	CreditLbl.TextColor3 = Color3.fromRGB(160, 160, 210)
	CreditLbl.TextSize = 12
	CreditLbl.Font = Enum.Font.Gotham
	CreditLbl.TextXAlignment = Enum.TextXAlignment.Left
	CreditLbl.Parent = CreditFrame

	TweenService:Create(CreditFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Position = UDim2.new(0.5, -135, 1, -75)
	}):Play()
	task.wait(4)
	TweenService:Create(CreditFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
		Position = UDim2.new(0.5, -135, 1, 10)
	}):Play()
	task.wait(0.45)
	CreditGui:Destroy()
end

local blur = Instance.new("BlurEffect")
blur.Size = 24
blur.Parent = Lighting

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ViltrumiteV1Selector"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 340, 0, 300)
Main.Position = UDim2.new(0.5, -170, 0.5, -150)
Main.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
Main.BackgroundTransparency = 0.05
Main.BorderSizePixel = 0
Main.Parent = ScreenGui
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 18)

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(80, 80, 120)
MainStroke.Thickness = 1.5
MainStroke.Transparency = 0.5
MainStroke.Parent = Main

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 14)
Title.BackgroundTransparency = 1
Title.Text = "Viltrumite Moveset"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 22
Title.Font = Enum.Font.GothamBold
Title.Parent = Main

local Sub = Instance.new("TextLabel")
Sub.Size = UDim2.new(1, 0, 0, 24)
Sub.Position = UDim2.new(0, 0, 0, 58)
Sub.BackgroundTransparency = 1
Sub.Text = "Choose your device"
Sub.TextColor3 = Color3.fromRGB(160, 160, 200)
Sub.TextSize = 14
Sub.Font = Enum.Font.Gotham
Sub.Parent = Main

local function createButton(text, icon, yPos)
	local Btn = Instance.new("TextButton")
	Btn.Size = UDim2.new(0, 280, 0, 64)
	Btn.Position = UDim2.new(0.5, -140, 0, yPos)
	Btn.BackgroundColor3 = Color3.fromRGB(100, 100, 140)
	Btn.BorderSizePixel = 0
	Btn.Text = ""
	Btn.AutoButtonColor = false
	Btn.Parent = Main
	Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 14)

	local IconLabel = Instance.new("TextLabel")
	IconLabel.Size = UDim2.new(0, 50, 1, 0)
	IconLabel.Position = UDim2.new(0, 10, 0, 0)
	IconLabel.BackgroundTransparency = 1
	IconLabel.Text = icon
	IconLabel.TextSize = 26
	IconLabel.Font = Enum.Font.GothamBold
	IconLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	IconLabel.Parent = Btn

	local BtnLabel = Instance.new("TextLabel")
	BtnLabel.Size = UDim2.new(1, -70, 1, 0)
	BtnLabel.Position = UDim2.new(0, 60, 0, 0)
	BtnLabel.BackgroundTransparency = 1
	BtnLabel.Text = text
	BtnLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	BtnLabel.TextSize = 18
	BtnLabel.Font = Enum.Font.GothamBold
	BtnLabel.TextXAlignment = Enum.TextXAlignment.Left
	BtnLabel.Parent = Btn

	Btn.MouseEnter:Connect(function()
		TweenService:Create(Btn, TweenInfo.new(0.15), {BackgroundTransparency = 0.15}):Play()
	end)
	Btn.MouseLeave:Connect(function()
		TweenService:Create(Btn, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
	end)
	return Btn
end

local MobileBtn = createButton("Mobile version", "M", 100)
local PcBtn = createButton("PC version", "PC", 180)

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, 0, 0, 22)
Status.Position = UDim2.new(0, 0, 1, -28)
Status.BackgroundTransparency = 1
Status.Text = ""
Status.TextColor3 = Color3.fromRGB(180, 180, 255)
Status.TextSize = 13
Status.Font = Enum.Font.Gotham
Status.Parent = Main

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 32, 0, 32)
CloseBtn.Position = UDim2.new(1, -42, 0, 10)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(180, 180, 200)
CloseBtn.TextSize = 22
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Parent = Main

local function closeGui()
	TweenService:Create(Main, TweenInfo.new(0.25), {
		Size = UDim2.new(0, 0, 0, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0)
	}):Play()
	TweenService:Create(blur, TweenInfo.new(0.3), {Size = 0}):Play()
	task.wait(0.3)
	ScreenGui:Destroy()
	if blur and blur.Parent then
		blur:Destroy()
	end
end

CloseBtn.MouseButton1Click:Connect(function()
	closeGui()
end)

local function startMobile()
	Status.Text = "Loading Mobile..."
	task.wait(0.3)
	closeGui()
	task.spawn(showCredit, "Mobile")
	runChunk(SRC_ANIM)
	runChunk(SRC_MOBILE)
end

local function startPC()
	Status.Text = "Loading PC..."
	task.wait(0.3)
	closeGui()
	task.spawn(showCredit, "PC")
	runChunk(SRC_ANIM)
	runChunk(SRC_PC)
end

MobileBtn.MouseButton1Click:Connect(startMobile)
PcBtn.MouseButton1Click:Connect(startPC)

Main.Size = UDim2.new(0, 0, 0, 0)
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
TweenService:Create(Main, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
	Size = UDim2.new(0, 340, 0, 300),
	Position = UDim2.new(0.5, -170, 0.5, -150)
}):Play()
