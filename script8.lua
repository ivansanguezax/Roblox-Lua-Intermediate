-- Script en un objeto que activa un chat entre jugadores

local objetoChat = script.Parent -- Obtener la referencia al objeto

objetoChat.Touched:Connect(function(hit)
    local jugador = game.Players:GetPlayerFromCharacter(hit.Parent)
    if jugador then
        local mensaje = "¡Hola a todos!"
        game.ReplicatedStorage.ChatRemoteEvent:FireAllClients(mensaje) -- Enviar mensaje a todos los jugadores
    end
end)
