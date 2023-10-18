-- Script en la bandera que se activa al ser tocada por un jugador

local bandera = script.Parent -- Obtener la referencia a la bandera

bandera.Touched:Connect(function(hit)
    local jugador = game.Players:GetPlayerFromCharacter(hit.Parent)
    if jugador then
        local equipoJugador = jugador:FindFirstChild("Equipo").Value
        local equipoBandera = bandera:FindFirstChild("Equipo").Value

        if equipoJugador ~= equipoBandera then
            game.ReplicatedStorage.FlagCaptureRemoteEvent:FireAllClients(jugador, equipoBandera) -- Notificar la captura de la bandera
            bandera.Parent = jugador -- Asignar la bandera al jugador que la capturó
        end
    end
end)
