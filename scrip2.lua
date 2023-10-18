-- Ejemplo de uso de arrays y tablas dentro del juego

local arrayDePartes = game.Workspace:FindPartsInRegion3(game.Workspace:WaitForChild("Region3DeEjemplo")) -- Busca partes en una región específica
local tablaDeObjetos = {
    Objeto1 = game.Workspace:WaitForChild("Objeto1"),
    Objeto2 = game.Workspace:WaitForChild("Objeto2"),
    Objeto3 = game.Workspace:WaitForChild("Objeto3")
} -- Crea una tabla de objetos

-- Accede a los elementos del array
for i, parte in ipairs(arrayDePartes) do
    parte.BrickColor = BrickColor.new("Bright red") -- Cambia el color de las partes encontradas
end

-- Accede a los objetos en la tabla
for nombre, objeto in pairs(tablaDeObjetos) do
    objeto.Transparency = 0.5 -- Hace los objetos semi-transparentes
end
