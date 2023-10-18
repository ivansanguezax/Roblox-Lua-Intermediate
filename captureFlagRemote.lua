-- En el servidor

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local flagCaptureRemoteEvent = Instance.new("RemoteEvent")
flagCaptureRemoteEvent.Name = "FlagCaptureRemoteEvent"
flagCaptureRemoteEvent.Parent = ReplicatedStorage

flagCaptureRemoteEvent.OnServerEvent:Connect(function(player, equipo)
    -- Incrementar la puntuación del equipo
    -- Notificar a todos los jugadores sobre la captura de la bandera
end)
