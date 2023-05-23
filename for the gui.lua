local list = require(game:GetService("ReplicatedStorage").Achievements)

while task.wait() do

    for i,v in pairs(list) do 

        game:GetService("ReplicatedStorage").EntityInfo.FlexAchievement:FireServer(i)

    end

end
