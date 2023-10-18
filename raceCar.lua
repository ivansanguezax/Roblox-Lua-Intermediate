-- Script en el jugador para sincronizar la posición

local player = game.Players.LocalPlayer

while true do
    wait(0.1) -- Esperar un breve tiempo entre actualizaciones
    game.ReplicatedStorage.PlayerPositionRemoteFunction:InvokeServer(player, player.Character.HumanoidRootPart.CFrame)
end
