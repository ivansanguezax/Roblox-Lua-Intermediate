-- HealthModule

local module = {}

module.maxHealth = 100

function module.setHealth(player, health)
    player.Character.Humanoid.Health = health
end

function module.heal(player, amount)
    local currentHealth = player.Character.Humanoid.Health
    if currentHealth < module.maxHealth then
        player.Character.Humanoid.Health = math.min(currentHealth + amount, module.maxHealth)
    end
end

return module
