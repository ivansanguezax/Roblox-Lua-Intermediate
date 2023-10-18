-- Script en una moneda que incrementa la puntuación cuando es recogida

local moneda = script.Parent -- Obtener la referencia a la moneda

moneda.Touched:Connect(function(hit)
    local jugador = game.Players:GetPlayerFromCharacter(hit.Parent)
    if jugador then
        jugador.leaderstats.Puntos.Value = jugador.leaderstats.Puntos.Value + 10 -- Aumentar la puntuación del jugador
        moneda:Destroy() -- Destruir la moneda al ser recogida
    end
end)
