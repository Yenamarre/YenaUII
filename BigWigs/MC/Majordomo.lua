------------------------------
--      Are you local?      --
------------------------------

local boss = AceLibrary("Babble-Boss-2.2")["Majordomo Executus"]
local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..boss)

----------------------------
--      Localization      --
----------------------------

L:RegisterTranslations("enUS", function() return {
	disabletrigger = "Impossible! Stay your attack, mortals... I submit! I submit!",

	trigger1 = "gains Magic Reflection",
	trigger2 = "gains Damage Shield",
	trigger3 = "Magic Reflection fades",
	trigger4 = "Damage Shield fades",
	trigger5 = "lance Renvoi de la magie",
	trigger6 = "lance Bouclier de d\195\169g\195\162ts",

	warn1 = "Magic Reflection for 10 seconds!",
	warn2 = "Damage Shield for 10 seconds!",
	warn3 = "5 seconds until powers!",
	warn4 = "Magic Reflection down!",
	warn5 = "Damage Shield down!",
	bosskill = "Majordomo Executus has been defeated!",

	bar1text = "Magic Reflection",
	bar2text = "Damage Shield",
	bar3text = "New powers",

	cmd = "Majordomo",
	
	magic_cmd = "magic",
	magic_name = "Magic Reflection alert",
	magic_desc = "Warn for Magic Reflection",
	
	dmg_cmd = "dmg",
	dmg_name = "Damage Shields alert",
	dmg_desc = "Warn for Damage Shields",
} end)

L:RegisterTranslations("zhCN", function() return {
	disabletrigger = "不可能！等一下",

	trigger1 = "获得了魔法反射的效果",
	trigger2 = "获得了伤害反射护盾的效果",
	trigger3 = "魔法反射效果从",
	trigger4 = "伤害反射护盾效果从",
	trigger5 = "lance Renvoi de la magie",
	trigger6 = "lance Bouclier de d\195\169g\195\162ts",

	warn1 = "魔法反射护盾，持续10秒！",
	warn2 = "伤害反射护盾，持续10秒！",
	warn3 = "5秒后再次释放反射护盾！",
	warn4 = "魔法反射护盾已消失！",
	warn5 = "伤害反射护盾已消失！",
	bosskill = "管理者埃克索图斯被击败了！",

	bar1text = "魔法反射护盾",
	bar2text = "伤害反射护盾",
	bar3text = "新的反射护盾",
	
	magic_name = "魔法反射护盾警报",
	magic_desc = "魔法反射护盾警报",
	
	dmg_name = "伤害反射护盾警报",
	dmg_desc = "伤害反射护盾警报",
} end)

L:RegisterTranslations("zhTW", function() return {
	--Majordomo 管理者埃克索圖斯
	disabletrigger = "不……不可能！等一下……我投降！我投降！",

	trigger1 = "獲得了魔法反射的效果",
	trigger2 = "獲得了傷害護盾的效果",
	trigger3 = "魔法反射效果從",
	trigger4 = "傷害護盾效果從",
	trigger5 = "lance Renvoi de la magie",
	trigger6 = "lance Bouclier de d\195\169g\195\162ts",

	warn1 = "== 法術停火 == 魔法反射，持續10秒",
	warn2 = "== 近戰停火 == 傷害反射護盾，持續10秒",
	warn3 = "5秒後施放效果！",
	warn4 = "魔法反射已消失！",
	warn5 = "傷害護盾已消失！",
	bosskill = "管理者埃克索圖斯被擊敗了！",

	bar1text = "魔法反射",
	bar2text = "傷害護盾",
	bar3text = "新生力量",
	
	magic_name = "魔法反射警報",
	magic_desc = "通報週期性施放的魔法反射",
	
	dmg_name = "傷害護盾警報",
	dmg_desc = "通報週期性施放的傷害護盾",
} end)

L:RegisterTranslations("koKR", function() return {
	disabletrigger = "이럴 수가! 그만! 제발 그만! 내가 졌다! 내가 졌어!",

	trigger1 = "마법 반사 효과를 얻었습니다.",
	trigger2 = "피해 보호막 효과를 얻었습니다.",
	trigger3 = "마법 반사 효과가 사라졌습니다.",
	trigger4 = "피해 보호막 효과가 사라졌습니다.",
	trigger5 = "lance Renvoi de la magie",
	trigger6 = "lance Bouclier de d\195\169g\195\162ts",

	warn1 = "마법 보호막 - 10초간!",
	warn2 = "피해 보호막 - 10초간!",
	warn3 = "5초후 버프!",
	warn4 = "마법 반사 사라짐!",
	warn5 = "피해 보호 사라짐!",
	bosskill = "청지기를 물리쳤습니다!",

	bar1text = "마법 반사",
	bar2text = "피해 보호막",
	bar3text = "새로운 버프",
	
	magic_name = "마법 보호막 경고",
	magic_desc = "마법 보호막에 대한 경고",
	
	dmg_name = "피해 보호막 경고",
	dmg_desc = "피해 보호막에 대한 경고",
} end)

L:RegisterTranslations("deDE", function() return {
	disabletrigger = "Haltet ein, Sterbliche",

	trigger1 = "bekommt 'Magiereflexion'",
	trigger2 = "bekommt 'Schadensschild'",
	trigger3 = "Magiereflexion schwindet von",
	trigger4 = "Schadensschild schwindet von",
	trigger5 = "lance Renvoi de la magie",
	trigger6 = "lance Bouclier de d\195\169g\195\162ts",

	warn1 = "Magiereflexion f\195\188r 10 Sekunden!",
	warn2 = "Schadensschild f\195\188r 10 Sekunden!",
	warn3 = "Schild in 5 Sekunden!",
	warn4 = "Magiereflexion beendet!",
	warn5 = "Schadensschild beendet!",
	bosskill = "Majordomo Executus wurde besiegt!",

	bar1text = "Magiereflexion",
	bar2text = "Schadensschild",
	bar3text = "N\195\164chstes Schild",

	magic_name = "Magiereflexion",
	magic_desc = "Warnung, wenn Magiereflexion aktiv.",
	
	dmg_name = "Schadensschild",
	dmg_desc = "Warnung, wenn Schadensschild aktiv.",
} end)

L:RegisterTranslations("frFR", function() return {
	disabletrigger = "Impossible ! Retenez vos coups, mortels ! Je me rends ! Je me rends ! Vous êtes venus vous emparer des secrets de la Flamme Vivante. Vous regretterez bientôt votre témérité. Je vais aller invoquer le seigneur de ces lieux... Si vous désirez obtenir audience, sachez que vos misérables vies seront certainement anéanties. Mais partez à sa recherche... si vous l'osez.",
	trigger1 = "Renvoi de la magie",
	trigger2 = "Bouclier de dégâts",
	trigger3 = "Renvoi de la magie sur (.+) Attise%-flammes vient de se dissiper",
	trigger4 = "Bouclier de d\195\169g\195\162ts sur (.+) Attise%-flammes vient de se dissiper",
	trigger5 = "Renvoi de la magie",
	trigger6 = "Bouclier de dégâts",

	warn1 = "Bouclier sorts pendant 10 secondes !",
	warn2 = "Bouclier d\195\169g\195\162ts pendant 10 secondes !",
	warn3 = "5 secondes avant le bouclier !",
	warn4 = "Bouclier sorts termin\195\169 !",
	warn5 = "Bouclier d\195\169g\195\162ts termin\195\169 !",
	bosskill = "Le Chambellant Executus a \195\169t\195\169 vaincu !",

	bar1text = "Renvoi de la magie",
	bar2text = "Bouclier de d\195\169g\195\162ts",
	bar3text = "Nouveau Bouclier",

	magic_name = "Alerte Bouclier de Sorts",
	magic_desc = "Pr\195\169viens des boucliers de sorts.",

	dmg_name = "Alerte Bouclier de D\195\169g\195\162ts",
	dmg_desc = "Pr\195\169viens des boucliers de d\195\169g\195\162ts.",
} end)

----------------------------------
--      Module Declaration      --
----------------------------------

BigWigsMajordomo = BigWigs:NewModule(boss)
BigWigsMajordomo.zonename = AceLibrary("Babble-Zone-2.2")["Molten Core"]
BigWigsMajordomo.enabletrigger = boss
BigWigsMajordomo.toggleoptions = {"magic", "dmg", "bosskill"}
BigWigsMajordomo.revision = tonumber(string.sub("$Revision: 16639 $", 12, -3))

------------------------------
--      Initialization      --
------------------------------

function BigWigsMajordomo:OnEnable()
	self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE")
	self:RegisterEvent("CHAT_MSG_SPELL_AURA_GONE_OTHER")
	self:RegisterEvent("CHAT_MSG_MONSTER_YELL")
	self:RegisterEvent("BigWigs_RecvSync")
	self:TriggerEvent("BigWigs_ThrottleSync", "MajordomoAuraGainMagic", 5)
	self:TriggerEvent("BigWigs_ThrottleSync", "MajordomoAuraGainDmg", 5)
	self:TriggerEvent("BigWigs_ThrottleSync", "MajordomoAuraFadeMagic", 8)
	self:TriggerEvent("BigWigs_ThrottleSync", "MajordomoAuraFadeDmg", 8)
end

function BigWigsMajordomo:VerifyEnable(unit)
	return UnitCanAttack("player", unit)
end

------------------------------
--      Event Handlers      --
------------------------------

function BigWigsMajordomo:CHAT_MSG_MONSTER_YELL(msg)
	if (msg == L["disabletrigger"]) then
		if self.db.profile.bosskill then self:TriggerEvent("BigWigs_Message", string.format(AceLibrary("AceLocale-2.2"):new("BigWigs")["%s has been defeated"], self:ToString()), "Bosskill", nil, "Victory") end
		self.core:ToggleModuleActive(self, false)
	end
end

function BigWigsMajordomo:CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE(msg)
	if string.find(msg, L["trigger1"]) then
		self:TriggerEvent("BigWigs_SendSync", "MajordomoAuraGainMagic")
	elseif string.find(msg, L["trigger2"]) then
		self:TriggerEvent("BigWigs_SendSync", "MajordomoAuraGainDmg")
	end
end

function BigWigsMajordomo:CHAT_MSG_SPELL_AURA_GONE_OTHER(msg)
	if string.find(msg, L["trigger3"]) then
		self:TriggerEvent("BigWigs_SendSync", "MajordomoAuraFadeMagic")
	elseif string.find(msg, L["trigger4"]) then
		self:TriggerEvent("BigWigs_SendSync", "MajordomoAuraFadeDmg")
	end
end

function BigWigsMajordomo:BigWigs_RecvSync(sync)
	if (sync == "MajordomoAuraFadeMagic" and self.db.profile.magic) then
		self:TriggerEvent("BigWigs_Message", L["warn4"], "Attention")
	elseif (sync == "MajordomoAuraFadeDmg" and self.db.profile.dmg) then
		self:TriggerEvent("BigWigs_Message", L["warn5"], "Attention")
	elseif (sync == "MajordomoAuraGainMagic" and self.db.profile.magic) then
		self:TriggerEvent("BigWigs_Message", L["warn1"], "Important")
		self:TriggerEvent("BigWigs_StartBar", self, L["bar3text"], 15, "Interface\\Icons\\Spell_Frost_Wisp")
		self:TriggerEvent("BigWigs_StartBar", self, L["bar1text"], 10, "Interface\\Icons\\Spell_Frost_FrostShock")
		self:ScheduleEvent("BigWigs_Message", 25, L["warn3"], "Urgent")
	elseif (sync == "MajordomoAuraGainDmg" and self.db.profile.dmg) then
		self:TriggerEvent("BigWigs_Message", L["warn2"], "Important")
		self:TriggerEvent("BigWigs_StartBar", self, L["bar3text"], 15, "Interface\\Icons\\Spell_Frost_Wisp")
		self:TriggerEvent("BigWigs_StartBar", self, L["bar2text"], 10, "Interface\\Icons\\Spell_Shadow_AntiShadow")
		self:ScheduleEvent("BigWigs_Message", 25, L["warn3"], "Urgent")
	end
end