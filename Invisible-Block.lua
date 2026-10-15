
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local BlockAnimId = "THAY_ANIMATION_ID"

local function stopBlockAnim(hum)
    for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
        if track.Animation
            and track.Animation.AnimationId:match("%d+") == BlockAnimId:match("%d+") then
            track:Stop()
        end
    end
end

local function setupInvisibleBlock(char)
    local hum = char:WaitForChild("Humanoid")

    hum.AnimationPlayed:Connect(function(track)
        if track.Animation
            and track.Animation.AnimationId:match("%d+") == BlockAnimId:match("%d+") then
            track:Stop()
        end
    end)

    task.spawn(function()
        while hum.Parent do
            stopBlockAnim(hum)
            task.wait(0.05)
        end
    end)
end

if LocalPlayer.Character then
    task.spawn(setupInvisibleBlock, LocalPlayer.Character)
end

LocalPlayer.CharacterAdded:Connect(setupInvisibleBlock)
