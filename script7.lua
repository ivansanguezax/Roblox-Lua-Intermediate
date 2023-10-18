-- Script en una puerta que se abre al ser tocada

local puerta = script.Parent -- Obtener la referencia a la puerta

puerta.Touched:Connect(function(hit)
    local jugador = game.Players:GetPlayerFromCharacter(hit.Parent)
    if jugador then
        -- Verificar si el jugador tiene una llave antes de abrir la puerta
        if jugador:FindFirstChild("TieneLlave") and jugador.TieneLlave.Value == true then
            puerta:Destroy() -- Destruir la puerta si el jugador tiene la llave
        else
            print("La puerta está cerrada. Encuentra una llave para abrirla.")
        end
    end
end)
