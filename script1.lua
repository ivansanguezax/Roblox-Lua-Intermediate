-- Ejemplo de script que mueve un objeto en el juego

local objeto = workspace:WaitForChild("MiObjeto") -- Obtener referencia al objeto en el juego

function moverObjeto()
    for i = 1, 10 do
        objeto.Position = objeto.Position + Vector3.new(0, 0, 5) -- Mover el objeto hacia adelante
        wait(1) -- Esperar 1 segundo antes de mover nuevamente
    end∏
end

moverObjeto() -- Llamar a la función para mover el objeto
