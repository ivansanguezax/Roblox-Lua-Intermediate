-- Script en un arma que inflige daño cuando golpea a un enemigo

local arma = script.Parent -- Obtener la referencia al arma
local damageAmount = 10 -- Cantidad de daño que inflige el arma

arma.Touched:Connect(function(hit)
    local humanoid = hit.Parent:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid:TakeDamage(damageAmount) -- Infligir daño al personaje golpeado
    end
end)
