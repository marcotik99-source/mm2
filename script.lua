-- [[ Alex MM2 Mini AutoFarm ]]
local LP = game:GetService("Players").LocalPlayer
_G.AutoFarm = not _G.AutoFarm

task.spawn(function()
    while _G.AutoFarm do
        task.wait(0.3)
        pcall(function()
            -- إيقاف الاصطدام (NoClip)
            for _, v in pairs(LP.Character:GetDescendants()) do
                if v:IsA("BasePart") then v.CanCollide = false end
            end
            -- سحب وتجميع العملات من الخريطة
            local hrp = LP.Character.HumanoidRootPart
            for _, item in pairs(workspace:GetChildren()) do
                if not _G.AutoFarm then break end
                if item.Name == "CoinContainer" or item:IsA("Model") then
                    for _, coin in pairs(item:GetChildren()) do
                        if coin:IsA("BasePart") or coin.PrimaryPart then
                            local target = coin.PrimaryPart or coin
                            hrp.CFrame = target.CFrame + Vector3.new(0, -3, 0)
                            task.wait(0.15)
                            hrp.CFrame = target.CFrame
                            task.wait(0.2)
                        end
                    end
                end
            end
        end)
    end
end)
