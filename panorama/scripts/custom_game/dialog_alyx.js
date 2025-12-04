(function()
{
    CustomNetTables.SubscribeNetTableListener( "alyx_dialog", OnDialogStateChanged );
})();

// Обработчик изменения nettable
function OnDialogStateChanged(table, key, data)
{
    // Текст и варианты обновляются в UI
    $("#DlgText").text = CustomNetTables.GetTableValue("alyx_dialog","current_text");
    
    // Перебор вариантов (пока простая логика – выводим все в консоль; далее можно добавить кол‑кнопок динамически)
    var opts = CustomNetTables.GetTableValue( "alyx_dialog", "options" );
    $("#A").text = opts[1].text;
    $("#B").text = opts[2].text;
    $("#C").text = opts[3].text;
}

// Функция, вызываемая при нажатии кнопки
function ShowAnswer(id)
{
    // Просто выводим в консоль выбранный вариант (можно дальше расширить – например, изменить состояние диалога)
    $.Msg( "Выбран ответ: ", id );
}
