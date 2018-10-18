--[[
Name: Prat
Author(s): Curney (asml8ed@gmail.com)
           Krtek (krtek4@gmail.com)
		   laytya (laytya at github)
Inspired By: idChat2 by Industrial
Website: https://github.com/laytya/Prat
Description: A framework for chat frame modules.
Dependencies: Ace2
]]

local L = AceLibrary("AceLocale-2.2"):new("Prat")
local waterfall = AceLibrary("Waterfall-1.0")

L:RegisterTranslations("enUS", function() return {
    ["Prat"] = true,
    ["A framework for chat frame modules."] = true,
} end)

L:RegisterTranslations("ruRU", function() return {
    ["Prat"] = "Prat",
    ["A framework for chat frame modules."] = "Фреймворк для чата.",
} end)

L:RegisterTranslations("zhCN", function() return {
    ["Prat"] = "Prat",
    ["A framework for chat frame modules."] = "聊天窗口增加插件。",
} end)

L:RegisterTranslations("koKR", function() return {
    ["Prat"] = "Prat",
    ["A framework for chat frame modules."] = "대화창 모듈에 대한 프레임워크",
} end)

Prat = AceLibrary("AceAddon-2.0"):new("AceConsole-2.0", "AceDB-2.0", "AceDebug-2.0", "AceEvent-2.0", "AceHook-2.1", "AceModuleCore-2.0")

Prat:RegisterDB("PratDB")
Prat:SetModuleMixins("AceEvent-2.0", "AceHook-2.1")
Prat.Options = {
    name = L["Prat"],
    desc = L["A framework for chat frame modules."],
    type = "group",
    args = {}
}

local version = GetAddOnMetadata("Prat", "Version");

Prat:RegisterChatCommand({"/pratcl"}, Prat.Options)
Prat:RegisterChatCommand({"/prat"}, function() waterfall:Open('Prat') end)
waterfall:Register('Prat', 'aceOptions', Prat.Options, 'title','Prat ' .. version,'colorR', 0.6, 'colorG', 0.7, 'colorB', 1) 