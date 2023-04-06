if GetLocale() ~= "zhTW" then
	return
end

local _, L = ...

L["author"] = "作者"
L["%s Configuration"] = "%s 設定"
L["Profile"] = "設定檔"
L["New profile"] = "新設定檔"
L["Create"] = "建立"
L["Copy current"] = "複製當前的"
L["Set as default"] = "設定為預設"
L["A profile with the same name exists."] = "相同名稱的設定檔已存在。"
L["Are you sure you want to delete profile %s?"] = "你確定要刪除設定檔%s嗎？"
L["RELOAD_INTERFACE_QUESTION"] = "您需要重新載入界面以讓更改生效。現在就做嗎？"
L["ADD_IGNORE_MBTN_QUESTION"] = "你確定要把 %s 加入忽略列表嗎?"
L["REMOVE_IGNORE_MBTN_QUESTION"] = "您確定要取消忽略 %s 嗎？"
L["ADD_CUSTOM_GRAB_BTN_QUESTION"] = "您確定要添加到抓取清單 %s 嗎？"
L["REMOVE_CUSTOM_GRAB_BTN_QUESTION"] = "您確定要從抓取清單中刪除 %s 嗎？"
L["Add bar"] = "新增條"
L["A bar with the same name exists."] = "具有相同名稱的條已存在。"
L["Are you sure you want to delete bar %s?"] = "你確定要刪除%s條嗎？"
L["Bar"] = "條"
L["Source:"] = "來源:"
L["Manually added"] = "手動加入"
L["Move to"] = "移動到"
L["Clip button"] = "固定按鈕"
L["Prevents button elements from going over the edges."] = "防止按鈕元素越過邊緣。"
L["Auto show/hide"] = "自動 顯示/隱藏"
L["Allow the button to control its own visibility"] = "允許按鈕控制自己的可見性。"
L["Add to ignore list"] = "加入忽略清單"
L["Options of adding buttons"] = "添加按鈕選項"
L["Bar settings"] = "條設定"
L["Button settings"] = "按鈕設定"
L["SETTINGS_DESCRIPTION"] = "當您點擊在|cff%s線|r:\n|cffffd200滑鼠左鍵|r - 拖動條列。\n|cffffd200滑鼠右鍵 + Shift|r - 開啟設置。\n|cffffd200滑鼠右鍵 + Alt|r - 鎖定條列位置。"
L["TEXTURES_HELP_TOOLTIP"] = "一些材質是從其他插件添加的，因此如果缺少插件，它們可能會遺失。"
L["Line"] = "線"
L["Background"] = "背景"
L["Fade out line"] = "淡出|cff%s線|r"
L["Fade out bar"] = "淡出條"
L["Opacity"] = "透明度"
L["Line width"] = "|cff%s線|r寬"
L["Line Border"] = "線邊框"
L["Line Border Offset"] = "|cff%s線|r邊框位置"
L["Line Border Size"] = "|cff%s線|r邊框大小"
L["Distance from line to bar"] = "|cff%s線|r到條的距離"
L["Orientation"] = "方向"
L["Auto"] = "自動"
L["Horizontal"] = "水平"
L["Vertical"] = "垂直"
L["Strata of panel"] = "面板層級"
L["Lock the bar's location"] = "鎖定條列位置"
L["Expand to"] = "擴展到"
L["Right / Bottom"] = "右 / 下"
L["Left / Top"] = "左 / 上"
L["Both direction"] = "雙向"
L["Add buttons from DataBroker"] = "為DataBroker添加按鈕"
-- L["Add buttons of any data type"] = ""
L["Grab default buttons on minimap"] = "抓取小地圖上的預設按鈕"
L["Grab addon buttons on minimap"] = "抓取小地圖上的插件按鈕"
L["Try to grab after"] = "隨後嘗試抓取在"
L["sec."] = "秒"
L["Grab buttons without a name"] = "抓取沒有名稱的按鈕 (|cffff2020不推薦|r)"
L["Add button manually"] = "手動新增按鈕"
L["Point to button"] = "指向按鈕"
L["Number of buttons"] = "行/列的按鈕數量"
L["Buttons Size"] = "按鈕大小"
L["Distance to bar border"] = "到條列邊框的距離"
L["Distance between buttons"] = "按鈕之間的距離"
L["Position of minimap buttons"] = "小地圖按鈕位置"
L["A new line"] = "新一行"
L["Followed"] = "已跟隨"
L["Mixed"] = "錯雜"
L["Direction of buttons"] = "按鈕的方向"
L["Right to left"] = "從右至左"
L["Left to right"] = "從左至右"
L["Top to bottom"] = "從上到下"
L["Bottom to top"] = "從下到上"
L["Intercept the position of tooltips"] = "截取工具提示的位置"
L["Top"] = "上"
L["Top left"] = "左上"
L["Top right"] = "右上"
L["Bottom"] = "下"
L["Bottom left"] = "左下"
L["Bottom right"] = "右下"
L["Left"] = "左"
L["Left top"] = "左上"
L["Left bottom"] = "左下"
L["Right"] = "右"
L["Right top"] = "右上"
L["Right bottom"] = "右下"
L["Buttons"] = "按鈕"
L["Ignore list"] = "忽略列表"
L["BUTTON_TOOLTIP"] = "|cffffd200滑鼠左鍵|r來 啟用/停用 按鈕或重新拖動位置。\n|cffffd200滑鼠右鍵|r來開啟內容選單。"
L["IGNORE_DESCRIPTION"] = "您可以指定名稱的一部分。\n\n舉例|cffffd200HidingBar|r將會忽略：\n|cffffd200HidingBar1|r\n|cffffd200HidingBar2|r\n|cffffd200HidingBar3|r\n..."
L["DataBroker Buttons"] = "DataBroker按鈕"
L["Minimap Buttons"] = "小地圖按鈕"
L["Manually Grabbed Buttons"] = "手動抓取按鈕"
L["Own Minimap Button"] = "自己的小地圖按鈕"
L["Show on"] = "顯示在"
L["Hover"] = "懸浮"
L["Click"] = "點擊"
L["Hover or Click"] = "懸浮或點擊"
L["Allways"] = "總是"
L["Delay to show"] = "延遲顯示"
L["Hide by"] = "隱藏根據"
L["Timer"] = "計時器"
L["Clicking on a free place"] = "點擊空白處"
L["Timer or clicking on a free place"] = "計時器或點擊空白處"
L["Clicking on a line or button"] = "點擊一行或按鈕"
L["Delay to hide"] = "延遲隱藏"
L["Display"] = "顯示"
L["Border"] = "邊框"
L["Border Size"] = "邊框大小"
L["Border Offset"] = "邊框位置"
L["Bar position"] = "條列位置"
L["Bar attached to the side"] = "條列附著在側邊"
L["Bar moves freely"] = "條列自由移動"
L["Bar like a minimap button"] = "條列像小地圖按鈕一樣"
L["Hiding to left"] = "隱藏到左"
L["Hiding to right"] = "隱藏到右"
L["Hiding to up"] = "隱藏到上"
L["Hiding to down"] = "隱藏到下"
L["Show to left"] = "顯示在左側"
L["Show to right"] = "顯示在右側"
L["Show to up"] = "顯示在上面"
L["Show to down"] = "顯示在下面"
L["Button Size"] = "按鈕大小"
L["Distance from button to bar"] = "從按鈕到列的距離"
L["Bar offset relative to the button"] = "相對於按鈕的條列位置"
L["The button can be grabbed"] = "此按鈕能被抓取"
L["If a suitable bar exists then the button will be grabbed"] = "如果存在合適的欄位則將抓取按鈕"
L["About"] = "關於"
L["Help with translation of %s. Thanks."] = "幫助翻譯了%s。感謝！"
L["Localization Translators:"] = "本地化翻譯者:"