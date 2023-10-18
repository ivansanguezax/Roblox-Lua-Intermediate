local healthModule = require(script.HealthModule)

local player = game.Players.LocalPlayer
healthModule.setHealth(player, 50) -- Establecer la salud del jugador a 50
healthModule.heal(player, 20) -- Curar al jugador por 20 puntos de salud
