-- En el servidor

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local playerPositionRemoteFunction = Instance.new("RemoteFunction")
playerPositionRemoteFunction.Name = "PlayerPositionRemoteFunction"
playerPositionRemoteFunction.Parent = ReplicatedStorage

playerPositionRemoteFunction.OnServerInvoke = function(player, newPosition)
    player.Character.HumanoidRootPart.CFrame = newPosition -- Actualizar la posición del jugador
end
