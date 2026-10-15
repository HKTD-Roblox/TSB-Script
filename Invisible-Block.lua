local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local BlockAnimId = "rbxassetid://10470389827"

local function stopBlockAnim(hum)
    for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
        if track.Animation and track.Animation.AnimationId == BlockAnimId then
            track:Stop()
            pcall(function()
                track:Destroy()
            end)
        end
    end
end

local function setupInvisibleBlock(char)
    local hum = char:WaitForChild("Humanoid")

    hum.AnimationPlayed:Connect(function(track)
        if track.Animation and track.Animation.AnimationId == BlockAnimId then
            track:Stop()
            pcall(function()
                track:Destroy()
            end)
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

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Invisible Block",
    Text = "Script loaded successfully!",
    Duration = 5
})
