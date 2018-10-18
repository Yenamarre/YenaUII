------------------------------
--      Are you local?      --
------------------------------
 
local boss = AceLibrary("Babble-Boss-2.2")["Kel'Thuzad"]
local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..boss)
 
local mcTime
local frostBlastTime
local boltlist
local kickorder
local _, playerclass = UnitClass("player")
 
----------------------------
--      Localization      --
----------------------------
 
L:RegisterTranslations("enUS", function() return {
    cmd = "Kelthuzad",
 
    KELTHUZADCHAMBERLOCALIZEDLOLHAX = "Kel'Thuzad Chamber",
   
    phase_cmd = "phase",
    phase_name = "Phase Warnings",
    phase_desc = "Warn for phases.",
 
    mc_cmd = "mindcontrol",
    mc_name = "Mind Control",
    mc_desc = "Alerts when people are mind controlled.",
 
    fissure_cmd = "fissure",
    fissure_name = "Shadow Fissure",
    fissure_desc = "Alerts about incoming Shadow Fissures.",
 
    frostblast_cmd = "frostblast",
    frostblast_name = "Frost Blast",
    frostblast_desc = "Alerts when people get Frost Blasted.",
 
    frostbolt_cmd = "frostbolt",
    frostbolt_name = "Frostbolt Alert",
    frostbolt_desc = "Alerts about incoming Frostbolts",
 
    frostboltbar_cmd = "frostboltbar",
    frostboltbar_name = "Frostbolt Bar",
    frostboltbar_desc = "Displays a bar for Frostbolt casts",
 
    detonate_cmd = "detonate",
    detonate_name = "Detonate Mana Warning",
    detonate_desc = "Warns about Detonate Mana soon.",
 
    detonateicon_cmd = "detonateicon",
    detonateicon_name = "Raid Icon on Detonate",
    detonateicon_desc = "Place a raid icon on people with Detonate Mana.",
 
    guardians_cmd = "guardians",
    guardians_name = "Guardian Spawns",
    guardians_desc = "Warn for incoming Icecrown Guardians in phase 3.",
   
    fbvolley_cmd = "fbvolley",
    fbvolley_name = "Possible volley",
    fbvolley_desc = "Timer for possible Frostbolt volley/multiple",
   
    addcount_cmd = "addcount",
    addcount_name = "P1 Add counter",
    addcount_desc = "Counts number of killed adds in P1",
   
    ktmreset_cmd = "ktmreset",
    ktmreset_name = "Do not reset KTM on MC",
    ktmreset_desc = "Resets KTM on MC when disabled, does nothing when enabled.",
   
    start_trigger = "Minions, servants, soldiers of the cold dark, obey the call of Kel'Thuzad!",
    start_warning = "Kel'Thuzad encounter started! ~5min till he is active!",
    start_bar = "Phase 1 Timer",
   
    mc_trigger1 = "Your soul, is bound to me now!",
    mc_trigger2 = "There will be no escape!",
    mc_warning = "Mind Control!",
    mc_bar = "Possible Mind Control!",
 
    start_trigger = "Minions, servants, soldiers of the cold dark, obey the call of Kel'Thuzad!",  
    start_trigger1 = "Minions, servants, soldiers of the cold dark! Obey the call of Kel'Thuzad!",
    start_warning = "Kel'Thuzad encounter started! ~5min till he is active!",
    start_bar = "Phase 1 Timer",
    attack_trigger1 = "Kel'Thuzad attacks",
    attack_trigger2 = "Kel'Thuzad misses",
    attack_trigger3 = "Kel'Thuzad hits",
    attack_trigger4 = "Kel'Thuzad crits",
    kick_trigger1 = "Kick hits Kel'Thuzad",
    kick_trigger2 = "Kick crits Kel'Thuzad",
    kick_trigger3 = "Kick was blocked by Kel'Thuzad",
    pummel_trigger1 = "Pummel hits Kel'Thuzad",
    pummel_trigger2 = "Pummel crits Kel'Thuzad",
    pummel_trigger3 = "Pummel was blocked by Kel'Thuzad",
    shieldbash_trigger1 = "Shield Bash hits Kel'Thuzad",
    shieldbash_trigger2 = "Shield Bash crits Kel'Thuzad",
    shieldbash_trigger3 = "Shield Bash was blocked by Kel'Thuzad",
    earthshock_trigger1 = "Earth Shock hits Kel'Thuzad",
    earthshock_trigger2 = "Earth Shock crits Kel'Thuzad",
 
    phase1_warn = "Phase 1 ends in 20 seconds!",
 
    phase2_trigger1 = "Pray for mercy!",
    phase2_trigger2 = "Scream your dying breath!",
    phase2_trigger3 = "The end is upon you!",
    phase2_warning = "Phase 2, Kel'Thuzad incoming!",
    phase2_bar = "Kel'Thuzad Active!",
 
    phase3_soon_warning = "Phase 3 soon!",
    phase3_trigger = "Master, I require aid!",
    phase3_warning = "Phase 3, Guardians in ~15sec!",
 
    guardians_trigger = "Very well. Warriors of the frozen wastes, rise up! I command you to fight, kill and die for your master! Let none survive!",
    guardians_warning = "Guardians incoming in ~10sec!",
    guardians_bar = "Guardians incoming!",
 
    fissure_trigger = "cast Shadow Fissure.",
    fissure_warning = "Shadow Fissure!",
 
    frostbolt_trigger = "Kel'Thuzad begins to cast Frostbolt.",
    frostbolt_warning = "Frostbolt! Interrupt!",
    frostbolt_bar = "Frostbolt",
 
   
    frostbolt_volley = "Possible volley",
    frostbolt_volley_trigger = "afflicted by Frostbolt",
   
    add_dead_trigger = "(.*) dies",
    add_bar = "%d/14 %s",
   
    frostblast_bar = "Possible Frost Blast",
    frostblast_trigger = "^([^%s]+) ([^%s]+) afflicted by Frost Blast",
    frostblast_trigger1 = "I will freeze the blood in your veins!",  
    frostblast_cast = "Kel'Thuzad casts Frost Blast",
    frostblast_warning = "Frost Blast",
    frostblast_soon_message = "Possible Frost Blast in ~5sec!",
 
    phase2_mcfrostblast_warning = "Possible Frost Blast and Mind Control in ~5sec!",
    phase2_detonate_warning = "Detonate Mana in ~5sec!",
    mcfrostblast_bar = "First Frost Blast and MC",
 
    detonate_trigger = "^([^%s]+) ([^%s]+) afflicted by Detonate Mana",
    detonate_bar = "Detonate Mana - %s",
    detonate_possible_bar = "Detonate Mana",
    detonate_warning = "%s has Detonate Mana!",
   
    you = "You",
    are = "are",
} end )
 
----------------------------------
--      Module Declaration      --
----------------------------------
 
BigWigsKelThuzad = BigWigs:NewModule(boss)
BigWigsKelThuzad.zonename = AceLibrary("Babble-Zone-2.2")["Naxxramas"]
BigWigsKelThuzad.enabletrigger = boss
BigWigsKelThuzad.toggleoptions = { "frostblast", "fissure", "mc", -1, "detonate", "detonateicon", -1 ,"guardians", "phase", "bosskill" }
BigWigs.revision = tonumber(string.sub("$Revision: 17275 $", 12, -3))
 
------------------------------
--      Initialization      --
------------------------------
 
function BigWigsKelThuzad:OnRegister()
    -- Big evul hack to enable the module when entering Kel'Thuzads chamber.
    self:RegisterEvent("MINIMAP_ZONE_CHANGED")
end
 
function BigWigsKelThuzad:OnEnable()
    self.warnedAboutPhase3Soon = nil
 
    frostBlastTime = nil
    mcTime = nil
    boltlist = nil
    kickorder = "rogue"
 
    self:RegisterEvent("CHAT_MSG_MONSTER_YELL")
    self:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE")
    self:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH", "GenericBossDeath")
    self:RegisterEvent("UNIT_HEALTH")
 
    self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE", "Affliction")
    self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE", "Affliction")
    self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE", "Affliction")
 
    self:RegisterEvent("BigWigs_RecvSync")
    self:TriggerEvent("BigWigs_ThrottleSync", "KelDetonate", 5)
    self:TriggerEvent("BigWigs_ThrottleSync", "KelFrostBlast", 5)
    self:TriggerEvent("BigWigs_ThrottleSync", "KelFizzure", 2)
    self:TriggerEvent("BigWigs_ThrottleSync", "KelMindControl", 5)
end
 
------------------------------
--      Event Handlers      --
------------------------------
 
function BigWigsKelThuzad:MINIMAP_ZONE_CHANGED(msg)
    if GetMinimapZoneText() ~= L["KELTHUZADCHAMBERLOCALIZEDLOLHAX"] or self.core:IsModuleActive(boss) then return end
    -- Activate the Kel'Thuzad mod!
    self.core:EnableModule(boss)
end
 
function BigWigsKelThuzad:UNIT_HEALTH(msg)
    if not self.db.profile.phase then return end
 
    if UnitName(msg) == boss then
        local health = UnitHealth(msg)
        if health > 40 and health <= 43 and not self.warnedAboutPhase3Soon then
            self:TriggerEvent("BigWigs_Message", L["phase3_soon_warning"], "Attention")
            self.warnedAboutPhase3Soon = true
        elseif health > 60 and self.warnedAboutPhase3Soon then
            self.warnedAboutPhase3Soon = nil
        end
    end
end
 
function BigWigsKelThuzad:CHAT_MSG_MONSTER_YELL(msg)
    if self.db.profile.phase and string.find(msg, L["start_trigger"]) then
        self:TriggerEvent("BigWigs_Message", L["start_warning"], "Attention")
        self:TriggerEvent("BigWigs_StartBar", self, L["start_bar"], 320, "Interface\\Icons\\spell_shadow_raisedead")
    elseif self.db.profile.phase and msg == L["phase2_trigger1"] or msg == L["phase2_trigger2"] then
        self:TriggerEvent("BigWigs_StopBar", self, L["start_bar"] )
        self:TriggerEvent("BigWigs_Message", L["phase2_warning"], "Important")
        self:TriggerEvent("BigWigs_StartBar", self, L["phase2_bar"], 20 )
    elseif self.db.profile.phase and string.find(msg, L["phase3_trigger"]) then
        self:TriggerEvent("BigWigs_Message", L["phase3_warning"], "Attention")
    elseif msg == L["mc_trigger1"] or msg == L["mc_trigger2"] then
        if not mcTime or (mcTime + 2) < GetTime() then
            self:TriggerEvent("BigWigs_SendSync", "KelMindControl")
            self:TriggerEvent("BigWigs_StartBar", self, "Next Mind Control", 75, "Interface\\Icons\\inv_belt_18")
            mcTime = GetTime()
        end
    elseif self.db.profile.guardians and string.find(msg, L["guardians_trigger"]) then
        self:TriggerEvent("BigWigs_Message", L["guardians_warning"], "Important")
        self:TriggerEvent("BigWigs_StartBar", self, L["guardians_bar"], 10)
    end
end
 
function BigWigsKelThuzad:CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE( msg )
    if msg == L["fissure_trigger"] then
        self:TriggerEvent("BigWigs_SendSync", "KelFizzure")
    elseif string.find(msg, "casts Chains Of Kel'Thuzad") then
        self:TriggerEvent("BigWigs_StartBar", self, "Prochain CM", 70, "Interface\\Icons\\inv_belt_18")
	if klhtm then klhtm.net.clearraidthreat() end
    elseif msg == L["frostblast_cast"] then
        self:TriggerEvent("BigWigs_Message", "Frost Blast : "..boltlist.." !", "Attention")
        boltlist = nil
    elseif msg == L["frostbolt_trigger"] then
        if playerclass == "WARRIOR" and kickorder == "war" then
            SendChatMessage("Kick "..kickorder.." !")
            self:TriggerEvent("BigWigs_Message", "GO KICK !", "Personal", true, "Long")
            kickorder = "rogue"
        elseif playerclass == "ROGUE" and kickorder == "rogue" then
            SendChatMessage("Kick "..kickorder.." !")
            self:TriggerEvent("BigWigs_Message", "GO KICK !", "Personal", true, "Long")
            kickorder = "war"
        end
    end
end
 
function BigWigsKelThuzad:CheckDistance()
    local unitid;
    local closeplayer = {};
    local next = next
        for i = 1, GetNumRaidMembers(), 1 do
            unitid = "raid"..i;
            if(not UnitIsDeadOrGhost(unitid)) then
                if (not UnitIsUnit(unitid, "player")) then
                    if(CheckInteractDistance(unitid, 3)) then
                        tinsert(closeplayer, (UnitName(unitid)));
                    end
                end
            end
        end
    if not (next(closeplayer) == nil) then
        SendChatMessage("FrostBlast!     !")
        self:TriggerEvent("BigWigs_Message", "Move Out !!!", "Personal", true, "Long")
    end
end
 
function BigWigsKelThuzad:BigWigs_RecvSync(sync, rest, nick)
    if sync == "KelDetonate" and rest and self.db.profile.detonate then
        self:TriggerEvent("BigWigs_Message", string.format(L["detonate_warning"], rest), "Attention")
        if self.db.profile.detonateicon then self:TriggerEvent("BigWigs_SetRaidIcon", rest ) end
        self:TriggerEvent("BigWigs_StartBar", self, string.format(L["detonate_bar"], rest), 5, "Interface\\Icons\\Spell_Nature_WispSplode")
        self:TriggerEvent("BigWigs_StartBar", self, L["detonate_possible_bar"], 20, "Interface\\Icons\\Spell_Nature_WispSplode")
    elseif sync == "KelFrostBlast" and self.db.profile.frostblast then
        self:TriggerEvent("BigWigs_Message", L["frostblast_warning"], "Attention")
        self:ScheduleEvent("bwktfbwarn", "BigWigs_Message", 25, L["frostblast_soon_message"])
        self:ScheduleEvent("BWKTCD", self.CheckDistance, 25, self)
        self:TriggerEvent("BigWigs_StartBar", self, L["frostblast_bar"], 30, "Interface\\Icons\\Spell_Frost_FreezingBreath")
    elseif sync == "KelFizzure" and self.db.profile.fissure then
        self:TriggerEvent("BigWigs_Message", L["fissure_warning"], "Important")
    elseif sync == "KelMindControl" and self.db.profile.mc then
        self:TriggerEvent("BigWigs_Message", L["mc_warning"], "Urgent")
    end
end
 
function BigWigsKelThuzad:Affliction( msg )
    if string.find(msg, L["detonate_trigger"]) then
        local _,_, dplayer, dtype = string.find( msg, L["detonate_trigger"])
        if dplayer and dtype then
            if dplayer == L["you"] and dtype == L["are"] then
                dplayer = UnitName("player")
            end
            self:TriggerEvent("BigWigs_SendSync", "KelDetonate "..dplayer)
        end
    elseif string.find(msg, L["frostblast_trigger"]) then
        if not frostBlastTime or (frostBlastTime + 2) < GetTime() then
            self:TriggerEvent("BigWigs_SendSync", "KelFrostBlast")
            frostBlastTime = GetTime()
        end
        local _, _,cible, _ = string.find(msg, L["frostblast_trigger"])
        if cible == "You" and GridStatusAuras then
                if not boltlist then
                    boltlist = UnitName("player")
                else
                    boltlist = boltlist..", "..UnitName("player")
                end
                GridStatusAuras:SpecialEvents_UnitDebuffGained("player", "Frost Blast", 1, "Interface\\Icons\\spell_frost_frostnova", "Interface\\Icons\\spell_frost_frostnova")
                self:ScheduleEvent(function() GridStatusAuras:SpecialEvents_UnitDebuffLost("player", "Frost Blast", 1, "Interface\\Icons\\spell_frost_frostnova", "Interface\\Icons\\spell_frost_frostnova") end, 5)
        elseif cible and GridStatusAuras then
            for i=1,GetNumRaidMembers() do
                if UnitName("raid"..i) == cible then
                    if not boltlist then
                        boltlist = cible
                    else
                        boltlist = boltlist..", "..cible
                    end
                    cible = "raid"..i
                    GridStatusAuras:SpecialEvents_UnitDebuffGained(cible, "Frost Blast", 1, "Interface\\Icons\\spell_frost_frostnova", "Interface\\Icons\\spell_frost_frostnova")
                    self:ScheduleEvent(function() GridStatusAuras:SpecialEvents_UnitDebuffLost(cible, "Frost Blast", 1, "Interface\\Icons\\spell_frost_frostnova", "Interface\\Icons\\spell_frost_frostnova") end, 5)
                end
            end
        end
    end
    --GridStatusAuras:SpecialEvents_UnitDebuffLost(
    --CHAT_MSG_SPELL_AURA_GONE_SELF    Machin vient de se dissiper.
end