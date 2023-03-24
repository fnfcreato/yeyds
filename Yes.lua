local showAchievement = game.ReplicatedStorage.EntityInfo.FlexAchievement
local achievements = {}
for _, v in ipairs(game.Players.LocalPlayer.PlayerGui.MainUI.LobbyFrame.Achievements.List:GetChildren()) do
    if v:IsA("ImageButton") then
        table.insert(achievements, v.Name)
    end
end

local n = 1
game:GetService("RunService"):BindToRenderStep("spam achievements", 1, function()
    showAchievement:FireServer(achievements[r:NextInteger(1, #achievements)])
    n = (n+1) % #achievements + 1
end)
