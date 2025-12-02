local DOOR_TARGET      = "door1"          -- ← замените на ваш targetname
local MOVLINEAR_TARGET = "elev_mover"

------------------------------------------------------------------
-- Функция, которая «запускает» всё: закрыть дверь и после её закрытия вызвать линейный движок.
function DoorAndMoveThink()
    -----------------------------
    -- 1. Находим сущность двери
    local door = Entities:FindByName(nil, DOOR_TARGET)
    if not door then
        print("[Lua] func_door '" .. DOOR_TARGET .. "' не найден!")
        return
    end

    -- 2. Закрываем дверь (передаём событие OnFullyClosed в Hammer, если так настроено)
    print("[Lua] Закрываю дверь...")
    door:FireInput("Close", nil, nil, 0)   -- если у вас метод называется Close(), замените на :Close()

    -----------------------------
    -- 3. Таймер: после ~1 сек запустить func_movelinear
    Timers:AddTimer("MoveAfterDoor", 1.0,
        function()
            local mover = Entities:FindByName(nil, MOVLINEAR_TARGET)
            if not mover then
                print("[Lua] func_movelinear '" .. MOVLINEAR_TARGET .. "' не найден!")
                return
            end

            print("[Lua] Запускаю linear movement...")
            -- Вызываем вход “Open” у movelinear. Если нужный input другой – замените.
            mover:FireInput("Open", nil, nil, 0)
        end)

    return 0   -- Timer runs once; если понадобится цикл – уберите этот return
end