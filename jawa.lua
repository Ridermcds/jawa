-- SCRIPT BY RIDERMCDS
local function triggerProximityPrompt(prompt)
    if prompt and prompt:IsA("ProximityPrompt") then
        fireproximityprompt(prompt)
    else
        warn("Invalid ProximityPrompt")
    end
end

local function teleportTo(part)
    if part and part:IsA("BasePart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame
    else
        warn("Invalid teleport location")
    end
end

teleportTo(workspace.Scene_Zone.Zone1)
wait(2)
teleportTo(workspace.Scene_Zone.Zone2)
wait(120)

local npcs = {
    {location = workspace.Character.DA0ZA.LowerTorso, prompt = workspace.Character.DA0ZA.ProximityPrompt, delay = 4},
    {location = workspace.Character.MisterOtnas.LowerTorso, prompt = workspace.Character.MisterOtnas.ProximityPrompt, delay = 4},
    {location = workspace.Character.Pengemudiindonesiaa.LowerTorso, prompt = workspace.Character.Pengemudiindonesiaa.ProximityPrompt, delay = 4},
    {location = workspace.Character.Tippenzs.LowerTorso, prompt = workspace.Character.Tippenzs.ProximityPrompt, delay = 4},
    {location = workspace.Character.Used_Legos.LowerTorso, prompt = workspace.Character.Used_Legos.ProximityPrompt, delay = 4},
    {location = workspace.Character.denannr.LowerTorso, prompt = workspace.Character.denannr.ProximityPrompt, delay = 4},
    {location = workspace.Character.rew_267.LowerTorso, prompt = workspace.Character.rew_267.ProximityPrompt, delay = 4},
    {location = workspace.Character.rungkadkacaw.LowerTorso, prompt = workspace.Character.rungkadkacaw.ProximityPrompt, delay = 4},
    {location = workspace.Character.the_smash9.LowerTorso, prompt = workspace.Character.the_smash9.ProximityPrompt, delay = 4},
    {location = workspace.Character.wheresjulmans.LowerTorso, prompt = workspace.Character.wheresjulmans.ProximityPrompt, delay = 4},
    {location = workspace.Character.yahyasenuadjie.LowerTorso, prompt = workspace.Character.yahyasenuadjie.ProximityPrompt, delay = 4},
}

for _, npc in ipairs(npcs) do
    teleportTo(npc.location)
    wait(1) 
    triggerProximityPrompt(npc.prompt)
    wait(npc.delay)
end

local itemsAndAnimals = {
    {location = workspace.Character.Carrot.Carrot, prompt = workspace.Character.Carrot.ProximityPrompt, delay = 6},
    {location = workspace.Character.Rabbit.mesh_id31, prompt = workspace.Character.Rabbit.ProximityPrompt, delay = 6},
    {location = workspace.Character.Racoon["Meshes/RaccoonSized"], prompt = workspace.Character.Racoon.ProximityPrompt , delay = 120},
    {location = workspace.Character.Gorilla.MeshPart, prompt = workspace.Character.Gorilla.ProximityPrompt, delay = 10},
}

for _, item in ipairs(itemsAndAnimals) do
    teleportTo(item.location)
    wait(1) 
    triggerProximityPrompt(item.prompt)
    wait(item.delay)
end

teleportTo(workspace.Scene_Zone.Zone3)
wait(10)
teleportTo(workspace.Scene_Zone.Zone3)
wait(15)
game.Players.LocalPlayer:Kick("You have been banned for: cheating suspicion (unbanned in 7 days)")

print("All Done")
wait(65)

local TeleportService = game:GetService("TeleportService")
TeleportService:Teleport(6911148748, game.Players.LocalPlayer)
