-- Диалог‑стейт
_G.Dialog = { current_text = "Готовы? ", options = {} }

CustomNetTables:SetTableValue( "alyx_dialog", "current_text", _G.Dialog.current_text )
CustomNetTables:SetTableValue( "alyx_dialog", "options", _G.Dialog.options )


function UpdateDialog()
    _G.Dialog.current_text = "Выбирайте ваш ответ…"
    _G.Dialog.options = {
        { id="A", text="Сначала" },
        { id="B", text="По-быстрому" },
        { id="C", text="И в последний момент" }
    }

    CustomNetTables:SetTableValue( "alyx_dialog", "current_text", _G.Dialog.current_text )
    CustomNetTables:SetTableValue( "alyx_dialog", "options", _G.Dialog.options )
end

-- Вызываем при старте уровня
GameEvents.Subscribe( "level_start", UpdateDialog )
