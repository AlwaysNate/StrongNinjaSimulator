_G.Swing = true
game.Players.LocalPlayer.PlayerGui.Main.Rebirth.Visible = false
game.Players.LocalPlayer.leaderstats["💪 Strength"].Changed:Connect(function()
    game.ReplicatedStorage.Framework.Modules.Shared.Internal.Modules["2 | Network"].Remotes.s_controller_rebirth:InvokeServer({})
end)
while _G.Swing == true do
    for i,v in pairs(workspace:FindFirstChild(game.Players.LocalPlayer.Name):GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
    task.wait(0.05)
end
