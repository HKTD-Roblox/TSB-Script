local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

workspace:SetAttribute("VIPServer", tostring(LocalPlayer.UserId))
workspace:SetAttribute("VIPServerOwner", LocalPlayer.Name)
workspace:SetAttribute("NoDashCooldown", true)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "No Dash Cooldown",
    Text = "Script loaded successfully!",
    Duration = 5
})
