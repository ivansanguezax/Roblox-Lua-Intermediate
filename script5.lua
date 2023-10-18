-- Script en un objeto que invierte la gravedad cuando es tocado

local objeto = script.Parent -- Obtener la referencia al objeto

objeto.Touched:Connect(function(hit)
    local jugador = game.Players:GetPlayerFromCharacter(hit.Parent)
    if jugador then
        if jugador:FindFirstChild("Humanoid") then
            local humanoid = jugador.Humanoid
            humanoid.GravityScale = -1 -- Invertir la gravedad para el jugador
            wait(3) -- Restaurar la gravedad después de 3 segundos
            humanoid.GravityScale = 1 -- Restaurar la gravedad normal
        end
    end
end)
