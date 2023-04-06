
-- ====================================================================================================
-- =                                   Original author of the addon                                   =
-- =                             Subby from Pyrewood Village [EU] [Horde]                             =
-- ====================================================================================================

-- ====================================================================================================
-- =                                         Personal credit.                                         =
-- = A HUGE thanks go out to 小河马 (Little hippo) for adding a large amount of raw data to the addon. =
-- = And for the translation of the Chinese part.                                                     =
-- =                         Server: 五区-安娜丝塔丽 (Anastari - Battle Group 5)                         =
-- =                         Camp: 联盟 (Alliance)                                                     =
-- =                         Guild: 平行宇宙(Parallel Universe)                                         =
-- =                         Race: 侏儒法师 (Gnome Mage)                                                =
-- =                         ID: 小河马 (Little Hippo)                                                  =
-- ====================================================================================================

-- ====================================================================================================
-- =                                            ToDo list.                                            =
-- ====================================================================================================

--[[

    ✓ Rewrite it all for TBC, the Classic version is stupid to update.
    Add all items to the "KeepTheHerbsList.lua" as everything is looked up in a new way here.
    Get people to check that it's working on all the different language clients.
        ✓ enUS
        deDE
        esES
        esMX
        frFR
        itIT
        koKR
        ptBR
        ruRU
        ✓ zhCN
        zhTW
    Clean up the code, what a mess I have made here. :D
    ✓ Sort "KeepTheHerbsList.lua" so everything is in order, easyer to edit then.
    Get someone to spell check it all, I spell like the blind people fight.

    Known bug's
        None at this moment.

]]--

-- ====================================================================================================
-- =                                  Set some locals for this addon                                  =
-- ====================================================================================================

local AddonName, namespace = ...
local HERB_LIST = namespace.HERB_LIST
local ALCHEMY_LIST = namespace.ALCHEMY_LIST
local OTHER_LIST = namespace.OTHER_LIST
local PRINT_COLOR_ONE = "|cFFFFA500"

local LocalAlchemy
local LocalHerbalism
local LocalHerbingDifficulty
local LocalAlchemyDifficulty
local LocalUsedByAlchemistsFor
local LocalMadeByAlchemistsWith
local LocalAllTranslated
local LocalAllTranslatedMessage = "Please be aware that this addon have not been checked on your clients langue and might not work propperly."

local myAlchemySkill
local myHerbalismSkill

local auhdfjlas
local itemName
local itemLink
local itemID

local KEY
local VALUE

local HERB_SKILL
local HERB_StringOutput
local OTHER_StringOutput
local ALCHEMY_SKILL
local ALCHEMY_StringOutput

local ALCHEMY_SKILL_LEVEL_1
local ALCHEMY_SKILL_LEVEL_2
local ALCHEMY_SKILL_LEVEL_3
local ALCHEMY_SKILL_LEVEL_4
local SkillColorCode
local item
local ReturnItemName

-- ====================================================================================================
-- =                          Print function so all prints will be the same.                          =
-- ====================================================================================================

local function PRINT_TEXT(str)
    DEFAULT_CHAT_FRAME:AddMessage(PRINT_COLOR_ONE .. AddonName .. ":|r " .. str);
end

-- ====================================================================================================
-- =                          Check that it's the right version of the addon                          =
-- ====================================================================================================

if (select(4, GetBuildInfo()) < 20000) or (select(4, GetBuildInfo()) > 30000) then
    C_Timer.After(40, function()
        PRINT_TEXT("Your running the The Burning Crusade Era version of " .. AddonName .. ".");
        PRINT_TEXT("Please download the right version.");
    end)
    return
end

-- ====================================================================================================
-- =   A small localization function, will maybe be mover to seperate file if it's getting to long.   =
-- ====================================================================================================

if (GetLocale() == "deDE") then 
    LocalAlchemy = "Alchimie";          -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbalism = "Kräuterkunde";    -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbingDifficulty = "Herbing difficulty: "
    LocalAlchemyDifficulty = "Alchemy difficulty: "
    LocalUsedByAlchemistsFor = "Used by alchemists for: "
    LocalMadeByAlchemistsWith = "Made by alchemists with: "
    LocalAllTranslated = false
elseif (GetLocale() == "frFR") then 
    LocalAlchemy = "Alchimie";          -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbalism = "Herboristerie";   -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbingDifficulty = "Herbing difficulty: "
    LocalAlchemyDifficulty = "Alchemy difficulty: "
    LocalUsedByAlchemistsFor = "Used by alchemists for: "
    LocalMadeByAlchemistsWith = "Made by alchemists with: "
    LocalAllTranslated = false
elseif (GetLocale() == "esES") then 
    LocalAlchemy = "Alquimia";          -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbalism = "Botánica";        -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbingDifficulty = "Herbing difficulty: "
    LocalAlchemyDifficulty = "Alchemy difficulty: "
    LocalUsedByAlchemistsFor = "Used by alchemists for: "
    LocalMadeByAlchemistsWith = "Made by alchemists with: "
    LocalAllTranslated = false
elseif (GetLocale() == "esMX") then 
    LocalAlchemy = "Alchemy";           -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbalism = "Herbalism";       -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbingDifficulty = "Herbing difficulty: "
    LocalAlchemyDifficulty = "Alchemy difficulty: "
    LocalUsedByAlchemistsFor = "Used by alchemists for: "
    LocalMadeByAlchemistsWith = "Made by alchemists with: "
    LocalAllTranslated = false
elseif (GetLocale() == "itIT") then 
    LocalAlchemy = "Alchemy";           -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbalism = "Herbalism";       -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbingDifficulty = "Herbing difficulty: "
    LocalAlchemyDifficulty = "Alchemy difficulty: "
    LocalUsedByAlchemistsFor = "Used by alchemists for: "
    LocalMadeByAlchemistsWith = "Made by alchemists with: "
    LocalAllTranslated = false
elseif (GetLocale() == "ptBR") then 
    LocalAlchemy = "Alquimia";          -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbalism = "Herborismo";      -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbingDifficulty = "Herbing difficulty: "
    LocalAlchemyDifficulty = "Alchemy difficulty: "
    LocalUsedByAlchemistsFor = "Used by alchemists for: "
    LocalMadeByAlchemistsWith = "Made by alchemists with: "
    LocalAllTranslated = false
elseif (GetLocale() == "ruRU") then 
    LocalAlchemy = "Алхимия";           -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbalism = "Травничество";    -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbingDifficulty = "Herbing difficulty: "
    LocalAlchemyDifficulty = "Alchemy difficulty: "
    LocalUsedByAlchemistsFor = "Used by alchemists for: "
    LocalMadeByAlchemistsWith = "Made by alchemists with: "
    LocalAllTranslated = false
elseif (GetLocale() == "zhTW") then 
    LocalAlchemy = "Alchemy";           -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbalism = "Herbalism";       -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbingDifficulty = "Herbing difficulty: "
    LocalAlchemyDifficulty = "Alchemy difficulty: "
    LocalUsedByAlchemistsFor = "Used by alchemists for: "
    LocalMadeByAlchemistsWith = "Made by alchemists with: "
    LocalAllTranslated = false
elseif (GetLocale() == "koKR") then 
    LocalAlchemy = "연금술";               -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbalism = "약초 채집";           -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbingDifficulty = "Herbing difficulty: "
    LocalAlchemyDifficulty = "Alchemy difficulty: "
    LocalUsedByAlchemistsFor = "Used by alchemists for: "
    LocalMadeByAlchemistsWith = "Made by alchemists with: "
    LocalAllTranslated = false
elseif (GetLocale() == "zhCN") then 
    LocalAlchemy = "炼金术";           -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbalism = "草药学";         -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbingDifficulty = "采集难度: "
    LocalAlchemyDifficulty = "制作熟练度: "
    LocalUsedByAlchemistsFor = "炼金术用途: "
    LocalMadeByAlchemistsWith = "炼金术所需材料: "
    LocalAllTranslated = true
else
    LocalAlchemy = "Alchemy";           -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbalism = "Herbalism";       -- <-- This one have to be 100% correct, else it wont work. In-game use: /script FindLocal()
    LocalHerbingDifficulty = "Herbing difficulty: "
    LocalAlchemyDifficulty = "Alchemy difficulty: "
    LocalUsedByAlchemistsFor = "Used by alchemists for: "
    LocalMadeByAlchemistsWith = "Made by alchemists with: "
    LocalAllTranslated = true
end

-- ====================================================================================================
-- =                             Create a frame and register some events.                             =
-- ====================================================================================================

local f = CreateFrame("Frame");
f:RegisterEvent("SPELLS_CHANGED");
f:RegisterEvent("CHAT_MSG_SKILL");
f:RegisterEvent("PLAYER_ENTERING_WORLD");
f:RegisterEvent("ADDON_LOADED");

-- ====================================================================================================
-- =                                       The OnEvent function                                       =
-- ====================================================================================================

f:SetScript("OnEvent", function(self, event, arg1, arg2, arg3)
    -- Addon is loaded, do some stuff here.
    if event == 'ADDON_LOADED' and arg1 == AddonName then
        
        -- Unregister the event, as we do not need it anymore
        f:UnregisterEvent("ADDON_LOADED");
    -- Check to see if a spell is casted successfully by our self.
    elseif (event == "SPELLS_CHANGED") and (arg1 == "player") then
        SkillLevel()
    -- Check to see if we can and have made a ability scan.
    elseif (event == "PLAYER_ENTERING_WORLD") then
        C_Timer.After(10, function()
            -- Say hello
            PRINT_TEXT(AddonName .. " is loaded...");
            if LocalAllTranslated == false then
                PRINT_TEXT(LocalAllTranslatedMessage);
            end
            -- Check players skill levels
            SkillLevel()
            -- Unregister the event, as we do not need it anymore
            f:UnregisterEvent("PLAYER_ENTERING_WORLD");
        end)
    elseif (event == "CHAT_MSG_SKILL") then
        SkillLevel()
    end
end
)

-- ====================================================================================================
-- =                    Find the Herbalism and Alchemy skill level for the player.                    =
-- ====================================================================================================

function SkillLevel()
    for skillIndex = 1, GetNumSkillLines() do
        local skillName, isHeader, _, skillRank, _, _, _, _, _, _, _, _, _ = GetSkillLineInfo(skillIndex)
        if not isHeader then
            if skillName == LocalAlchemy then
                myAlchemySkill = skillRank
            end
            if skillName == LocalHerbalism then
                myHerbalismSkill = skillRank
            end
        end
    end
    if myAlchemySkill == nil then
        myAlchemySkill = 0
    end
    if myHerbalismSkill == nil then
        myHerbalismSkill = 0
    end
end

-- ====================================================================================================
-- =                           Make all there have to shown in the tooltip.                           =
-- ====================================================================================================

local function OnTooltipSetItem(tooltip)

    auhdfjlas = nil

    -- Get the name of the item.
	local itemName, itemLink = tooltip:GetItem()
	if not itemName then
        return;
    end
	-- Get the ID of the item.
    local itemID = select(1, GetItemInfoInstant(itemName))

    -- If for some reason we did not get the ID above, we try another way here.
    if itemID == nil then
        -- Extract ID from link: GetItemInfoInstant unreliable with AH items (uncached on client?)
        itemID = tonumber( string.match( itemLink, "item:?(%d+):" ) )
        if itemID == nil then
            -- The item link doesn't contain the item ID field
            return
        end
    end

-- ====================================== Loop in the herb list. ======================================

    for KEY, VALUE in next, HERB_LIST do
        if KEY == itemID then
            for i, ID in ipairs(VALUE) do
                if i == 1 then
                    HERB_SKILL = "\n" .. LocalHerbingDifficulty .. "|c00FF7F00" .. ID .. "|r" .. "-"
                elseif i == 2 then
                    HERB_SKILL = HERB_SKILL .. "|c00FFFF00" .. ID .. "|r" .. "-"
                elseif i == 3 then
                    HERB_SKILL = HERB_SKILL .. "|cff1eff00" .. ID .. "|r" .. "-"
                elseif i == 4 then
                    HERB_SKILL = HERB_SKILL .. "|c007d7d7d" .. ID .. "|r"
                else
                    if HERB_StringOutput == nil then
                        HERB_StringOutput = GetTheLocalName(ID) .. "\n"
                    else
                        HERB_StringOutput = HERB_StringOutput .. GetTheLocalName(ID) .. "\n"
                    end
                end
            end
        end
    end

-- =================================== Loop in the other stuff list ===================================

    for KEY, VALUE in next, OTHER_LIST do
        if KEY == itemID then
            for i, ID in ipairs(VALUE) do
                if OTHER_StringOutput == nil then
                    OTHER_StringOutput = GetTheLocalName(ID) .. "\n"
                else
                OTHER_StringOutput = OTHER_StringOutput .. GetTheLocalName(ID) .. "\n"
                end
            end
        end
    end

-- ===================================== Loop in the alchemy list =====================================

    for KEY, VALUE in next, ALCHEMY_LIST do
        if KEY == itemID then
            for i, ID in ipairs(VALUE) do
                if i == 1 then
                    ALCHEMY_SKILL = "\n" .. LocalAlchemyDifficulty .. "|c00FF7F00" .. ID .. "|r" .. "-"
                elseif i == 2 then
                    ALCHEMY_SKILL = ALCHEMY_SKILL .. "|c00FFFF00" .. ID .. "|r" .. "-"
                elseif i == 3 then
                    ALCHEMY_SKILL = ALCHEMY_SKILL .. "|cff1eff00" .. ID .. "|r" .. "-"
                elseif i == 4 then
                    ALCHEMY_SKILL = ALCHEMY_SKILL .. "|c007d7d7d" .. ID .. "|r"
                else
                    -- Check that it's the ID we are getting and not the number used to make it.
                    if auhdfjlas == nil then
                        if ALCHEMY_StringOutput == nil then
                            ALCHEMY_StringOutput = ID .. " x "
                        else
                            ALCHEMY_StringOutput = ALCHEMY_StringOutput .. ID .. " x "
                        end
                        auhdfjlas = "What to write here ? No idea, but I would like to go out and get a beer soon. ;)"
                    else
                        if ALCHEMY_StringOutput == nil then
                            ALCHEMY_StringOutput = GetTheLocalName(ID) .. "\n"
                        else
                            ALCHEMY_StringOutput = ALCHEMY_StringOutput .. GetTheLocalName(ID) .. "\n"
                        end
                        auhdfjlas = nil
                    end
                end
            end
        end
    end

    -- Did we find any herb to show ?
    if HERB_StringOutput ~= nil then
        -- Show the tooltip
        tooltip:AddLine(" ")
        tooltip:AddLine(LocalUsedByAlchemistsFor .. "\n")
        tooltip:AddLine(HERB_StringOutput .. HERB_SKILL);
        -- Clear the  so we don't get the same info many times.
        HERB_StringOutput = nil
        HERB_SKILL = nil
    end
    -- Did we find any "other stuff" to show ?
    if OTHER_StringOutput ~= nil then
        -- Show the tooltip
        tooltip:AddLine(" ")
        tooltip:AddLine(LocalUsedByAlchemistsFor .. "\n")
        tooltip:AddLine(OTHER_StringOutput);
        -- Clear the  so we don't get the same info many times.
        OTHER_StringOutput = nil
    end
    -- Did we find any alchemy to show ?
    if ALCHEMY_StringOutput ~= nil then
        -- Show the tooltip
        tooltip:AddLine(" ")
        tooltip:AddLine(LocalMadeByAlchemistsWith .. "\n")
        tooltip:AddLine(ALCHEMY_StringOutput .. ALCHEMY_SKILL);
        -- Clear the  so we don't get the same info many times.
        ALCHEMY_StringOutput = nil
        ALCHEMY_SKILL = nil
    end
end

-- ====================================================================================================
-- =                              Find the name of the item from the ID.                              =
-- =                     If it's a potion, then color it to acording to our skill                     =
-- ====================================================================================================

function GetTheLocalName(ITEM_ID)

    -- Check to see if we got a id, if not then stop.
    if ITEM_ID == nil then
        return;
    end

    -- Set everything to "nil" before we start so we don't have any old info saved by mistake.
    ALCHEMY_SKILL_LEVEL_1 = nil
    ALCHEMY_SKILL_LEVEL_2 = nil
    ALCHEMY_SKILL_LEVEL_3 = nil
    ALCHEMY_SKILL_LEVEL_4 = nil
    SkillColorCode = nil
    item = nil
    ReturnItemName = nil

    -- Look in "ALCHEMY_LIST" for the item.
    for KEY, VALUE in next, ALCHEMY_LIST do
        -- Did we find a mach ?
        if KEY == ITEM_ID then
            -- We found a mach, loop through to get the info.
            for i, ID in ipairs(VALUE) do
                -- Get 1st skill level.
                if i == 1 then
                    ALCHEMY_SKILL_LEVEL_1 = ID
                -- Get 2nd skill level.
                elseif i == 2 then
                    ALCHEMY_SKILL_LEVEL_2 = ID
                -- Get 3rd skill level.
                elseif i == 3 then
                    ALCHEMY_SKILL_LEVEL_3 = ID
                -- Get 4th skill level.
                elseif i == 4 then
                    ALCHEMY_SKILL_LEVEL_4 = ID
                end
            end
        end
    end



    -- Did we find anything in the loop above ?
    if (ALCHEMY_SKILL_LEVEL_1 ~= nil) and (ALCHEMY_SKILL_LEVEL_2 ~= nil) and (ALCHEMY_SKILL_LEVEL_3 ~= nil) and (ALCHEMY_SKILL_LEVEL_4 ~= nil) then
        -- Color the text so it mach our skill level
        if (myAlchemySkill == 0) or (myAlchemySkill == nil) then -- Give blue color as we don't have Alchemy.
            SkillColorCode = "|c000080ff"
        elseif myAlchemySkill < ALCHEMY_SKILL_LEVEL_1 then -- Give red skill color.
            SkillColorCode = "|c00FF0000"
        elseif myAlchemySkill < ALCHEMY_SKILL_LEVEL_2 then -- Give orange skill color.
            SkillColorCode = "|c00FF7F00"
        elseif myAlchemySkill < ALCHEMY_SKILL_LEVEL_3 then -- Give yellow skill color.
            SkillColorCode = "|c00FFFF00"
        elseif myAlchemySkill < ALCHEMY_SKILL_LEVEL_4 then -- Give green skill color.
            SkillColorCode = "|cff1eff00"
        elseif myAlchemySkill >= ALCHEMY_SKILL_LEVEL_4 then -- Give grey skill color.
            SkillColorCode = "|c007d7d7d"
        end
    end

    -- 
    item = Item:CreateFromItemID(ITEM_ID)

    item:ContinueOnItemLoad(function()
        ReturnItemName = item:GetItemName()
    end)

    -- Check that we have the name, we only get the name if the item is in the game cache.
    -- If it's not in the cache, then we return a "Missing game cache" message.
    if ReturnItemName == nil then
        ReturnItemName = "Missing game cache, move mouse."
    end

    -- Return the resoult so we can put it in the tooltip
    if (ALCHEMY_SKILL_LEVEL_1 ~= nil) and (ALCHEMY_SKILL_LEVEL_2 ~= nil) and (ALCHEMY_SKILL_LEVEL_3 ~= nil) and (ALCHEMY_SKILL_LEVEL_4 ~= nil) then
        return(string.format("%s[%s]|r |c00FF7F00%s|r-|c00FFFF00%s|r-|cff1eff00%s|r-|c007d7d7d%s|r",SkillColorCode, ReturnItemName, ALCHEMY_SKILL_LEVEL_1, ALCHEMY_SKILL_LEVEL_2, ALCHEMY_SKILL_LEVEL_3, ALCHEMY_SKILL_LEVEL_4));
    else
        return(ReturnItemName);
    end

end

-- ====================================================================================================
-- =                                 What to do when tooltip go away.                                 =
-- ====================================================================================================

local function OnTooltipCleared(tooltip, ...)
   -- Maybe something will come here later, for now it's just filling up.
end

-- ====================================================================================================
-- =                        Help to find the exact local name when translating                        =
-- =                                        In game you write:                                        =
-- =                                        /script FindLocal()                                       =
-- ====================================================================================================

function FindLocal()
    for skillIndex = 1, GetNumSkillLines() do
        local skillName, isHeader, _, skillRank, _, _, _, _, _, _, _, _, _ = GetSkillLineInfo(skillIndex)
        if not isHeader then
            print(skillName .. " - " .. skillRank);
        end
    end
end
-- ====================================================================================================
-- =                                         Show the tooltip                                         =
-- ====================================================================================================

GameTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
GameTooltip:HookScript("OnTooltipCleared", OnTooltipCleared)


-- ====================================================================================================
-- =                                            Test zone.                                            =
-- ====================================================================================================














-- *********************************************************************************************************
-- *************************               STOP THE NEW VERSION HERE               *************************
-- *************************                   OLD VERSION BELOW                   *************************
-- *********************************************************************************************************

if 1 == 1 then 
    return
end

-- *********************************************************************************************************
-- *********************************************************************************************************
-- *********************************************************************************************************
-- *********************************************************************************************************
-- *********************************************************************************************************
-- *********************************************************************************************************
-- *************************                   OLD VERSION BELOW                   *************************
-- *************************                   OLD VERSION BELOW                   *************************
-- *************************                   OLD VERSION BELOW                   *************************
-- *************************                   OLD VERSION BELOW                   *************************
-- *************************                   OLD VERSION BELOW                   *************************
-- *********************************************************************************************************
-- *********************************************************************************************************
-- *********************************************************************************************************
-- *********************************************************************************************************
-- *********************************************************************************************************
-- *********************************************************************************************************

-- "Keep The Herbs" by Subby on Pyrewood Village [Horde]

--[[
	ToDo list
        ✓ Get someone to help with debugging.
        ✓ Wait for some feedback on errors or improvements.
        Get someone to spell check.
        ✓ Sort all the potions so they will show in right order.
        Get someone to translate.
        Cleanup the code after testing and debugging is done.
        ✓ Make is so it possible to see all mats used for a potion on mouse over.
        Add a check so you can see from another character if a recipe is one you need on your Alchemy character.
        Make a option so people can chose if the want it shown all the time or only with a modifier.

    Known bug's
        No info when you do a link click, not sure how to make that yet but is working on it.

    Changelog from last update only.
        Fixed tooltip for [Essence of Air] and [Essence of Fire]
        Added [Essence of Air] to localization

        
]]--

-- Set some locals
local KeepTheHerbs, namespace = ...
local PotID = namespace.PotID
local MatsID = namespace.MatsID
local L = namespace.L

local myAlchemySkill
local myHerbalismSkill

local Potname
local Potdiff1
local Potdiff2
local Potdiff3
local Potdiff4
local PotColorCode

local Matsname
local Matsdiff1
local Matsdiff2
local Matsdiff3
local Matsdiff4
local MatsColorCode

local PotSkillLevel1
local PotSkillLevel2
local PotSkillLevel3
local PotSkillLevel4

local HerbSkillLevel1
local HerbSkillLevel2
local HerbSkillLevel3
local HerbSkillLevel4

-- *********************************************************************************************************
-- ************************* Catch a login event and all "gain a skill level" event ************************
-- *********************************************************************************************************

-- Create a frame to handle all events
local f = CreateFrame("Frame");
    -- What events do we want to use ?
    f:RegisterEvent("SPELLS_CHANGED");
    f:RegisterEvent("CHAT_MSG_SKILL");

-- Event handler
f:SetScript('OnEvent', function(self, event, arg1, arg2, arg3, ...)
    -- Look for the event.
    if (event == "SPELLS_CHANGED") then
        SkillLevel()
        Welcome()
        f:UnregisterEvent("SPELLS_CHANGED");
    elseif (event == "CHAT_MSG_SKILL") then
        SkillLevel()
    end
end)

-- *********************************************************************************************************
-- *********************** Find the Herbalism and Alchemy skill level for the player ***********************
-- *********************************************************************************************************

function SkillLevel()
    for skillIndex = 1, GetNumSkillLines() do
        local skillName, isHeader, _, skillRank, _, _, _, _, _, _, _, _, _ = GetSkillLineInfo(skillIndex)
        if not isHeader then
            if skillName == L["strAlchemy"] then
                myAlchemySkill = skillRank
            end
            if skillName == L["strHerbalism"] then
                myHerbalismSkill = skillRank
            end
        end
    end
    if myAlchemySkill == nil then
        myAlchemySkill = 0
    end
    if myHerbalismSkill == nil then
        myHerbalismSkill = 0
    end
end

-- *********************************************************************************************************
-- *************************** Find the potion and color it by alchemy difficulty **************************
-- *********************************************************************************************************

function HerbDifficultyColor(id)
    if id == nil then
        return;
    end
    i = 1
    for key,value in ipairs(PotID) do
        i = i+1
        if value == id then
            Potname = PotID[i];
            i = i+1
            Potdiff1 = PotID[i];
            i = i+1
            Potdiff2 = PotID[i];
            i = i+1
            Potdiff3 = PotID[i];
            i = i+1
            Potdiff4 = PotID[i];
        end
    end

    -- 
    if Potname ~= nil then
        -- Check to see if there is some skill level.
        if (Potdiff1 == 0) and (Potdiff2 == 0) and (Potdiff3 == 0) and (Potdiff4 == 0) then
            return(string.format("%s",Potname));
        -- There was info about skill level, so we give some color.
        else
            if (tonumber(myAlchemySkill) == 0) or (myAlchemySkill == nil) then -- Give red color as we don't have Alchemy.
                PotColorCode = "|c00FF0000"
            elseif (tonumber(myAlchemySkill) < tonumber(Potdiff1)) then -- Give red skill color.
                PotColorCode = "|c00FF0000"
            elseif (tonumber(myAlchemySkill) < tonumber(Potdiff2)) then -- Give orange skill color.
                PotColorCode = "|c00FF7F00"
            elseif (tonumber(myAlchemySkill) < tonumber(Potdiff3)) then -- Give yellow skill color.
                PotColorCode = "|c00FFFF00"
            elseif (tonumber(myAlchemySkill) < tonumber(Potdiff4)) then -- Give green skill color.
                PotColorCode = "|cff1eff00"
            elseif (tonumber(myAlchemySkill) >= tonumber(Potdiff4)) then -- Give grey skill color.
                PotColorCode = "|c007d7d7d"
            end
        end

        -- 
        return(string.format("%s[%s]|r |c00FF7F00%s|r-|c00FFFF00%s|r-|cff1eff00%s|r-|c007d7d7d%s|r",PotColorCode, Potname, Potdiff1, Potdiff2, Potdiff3, Potdiff4));

    end
end

-- *********************************************************************************************************
-- **** Find all materials needed to make the alchemy thing and color the material by herbing difficulty ***
-- *********************************************************************************************************

function PotionDifficultyColor(id)
    if id == nil then
        return;
    end
    i = 1
    for key,value in ipairs(MatsID) do
        i = i+1
        if value == id then
            Matsname = MatsID[i];
            i = i+1
            Matsdiff1 = MatsID[i];
            i = i+1
            Matsdiff2 = MatsID[i];
            i = i+1
            Matsdiff3 = MatsID[i];
            i = i+1
            Matsdiff4 = MatsID[i];
        end
    end

    if Matsname ~= nil then
        -- Check to see if there is some skill level.
        if (Matsdiff1 == 0) and (Matsdiff2 == 0) and (Matsdiff3 == 0) and (Matsdiff4 == 0) then
            return(string.format("%s",Matsname));
        -- There was info about skill level, so we give some color.
        else
            if (tonumber(myHerbalismSkill) == 0) or (myHerbalismSkill == nil) then -- Give red color as we don't have Alchemy.
                MatsColorCode = "|c00FF0000"
            elseif (tonumber(myHerbalismSkill) < tonumber(Matsdiff1)) then -- Give red skill color.
                MatsColorCode = "|c00FF0000"
            elseif (tonumber(myHerbalismSkill) < tonumber(Matsdiff2)) then -- Give orange skill color.
                MatsColorCode = "|c00FF7F00"
            elseif (tonumber(myHerbalismSkill) < tonumber(Matsdiff3)) then -- Give yellow skill color.
                MatsColorCode = "|c00FFFF00"
            elseif (tonumber(myHerbalismSkill) < tonumber(Matsdiff4)) then -- Give green skill color.
                MatsColorCode = "|cff1eff00"
            elseif (tonumber(myHerbalismSkill) >= tonumber(Matsdiff4)) then -- Give grey skill color.
                MatsColorCode = "|c007d7d7d"
            end

            -- 
            return(string.format("%s[%s]|r |c00FF7F00%s|r-|c00FFFF00%s|r-|cff1eff00%s|r-|c007d7d7d%s|r",MatsColorCode, Matsname, Matsdiff1, Matsdiff2, Matsdiff3, Matsdiff4));

        end
    end
end

-- *********************************************************************************************************
-- **** Find all alchemy things there can be made with the material/herb and color by alchemy difficulty ***
-- *********************************************************************************************************

function PotionSkillLevel(id)
    -- Check to see if we got a id
    if id == nil then
        return;
    end

    -- For unknown reasons it's keeping the old info, so we clear it here.
    i = 1
    PotSkillLevel1 = nil
    PotSkillLevel2 = nil
    PotSkillLevel3 = nil
    PotSkillLevel4 = nil

    -- 
    for key,value in ipairs(PotID) do
        i = i+1
        if value == id then
            _ = PotID[i];
            i = i+1
            PotSkillLevel1 = PotID[i];
            i = i+1
            PotSkillLevel2 = PotID[i];
            i = i+1
            PotSkillLevel3 = PotID[i];
            i = i+1
            PotSkillLevel4 = PotID[i];
        end

        --
        if (PotSkillLevel1 ~= nil) and (PotSkillLevel2 ~= nil) and (PotSkillLevel3 ~= nil) and (PotSkillLevel4 ~= nil) then
            return(string.format("|c00FF7F00" .. "%s" .. "|r-|c00FFFF00" .. "%s" .. "|r-|cff1eff00" .. "%s" .. "|r-|c007d7d7d" .. "%s" .. "|r", PotSkillLevel1, PotSkillLevel2, PotSkillLevel3, PotSkillLevel4));
        end
    end
end

-- *********************************************************************************************************
-- ************************* Find the herbs skill levels and color it by difficulty ************************
-- *********************************************************************************************************

function HerbSkillLevel(id)
    -- Check to see if we got a id
    if id == nil then
        return;
    end

    -- For unknown reasons it's keeping the old info, so we clear it here.
    i = 1
    HerbSkillLevel1 = nil
    HerbSkillLevel2 = nil
    HerbSkillLevel3 = nil
    HerbSkillLevel4 = nil

    -- 
    for key,value in ipairs(MatsID) do
        i = i+1
        if value == id then
            _ = MatsID[i];
            i = i+1
            HerbSkillLevel1 = MatsID[i];
            i = i+1
            HerbSkillLevel2 = MatsID[i];
            i = i+1
            HerbSkillLevel3 = MatsID[i];
            i = i+1
            HerbSkillLevel4 = MatsID[i];
        end

        -- 
        if (HerbSkillLevel1 ~= nil) and (HerbSkillLevel2 ~= nil) and (HerbSkillLevel3 ~= nil) and (HerbSkillLevel4 ~= nil) then
            return(string.format("|c00FF7F00" .. "%s" .. "|r-|c00FFFF00" .. "%s" .. "|r-|cff1eff00" .. "%s" .. "|r-|c007d7d7d" .. "%s" .. "|r", HerbSkillLevel1, HerbSkillLevel2, HerbSkillLevel3, HerbSkillLevel4));
        end
    end
end

-- *********************************************************************************************************
-- ****************************** Make all there have to shown in the tooltip ******************************
-- *********************************************************************************************************

local function OnTooltipSetItem(tooltip)
    -- Get the name of the item.
	local itemName, itemLink = tooltip:GetItem()
	if not itemName then
        return;
    end
	-- Get the ID of the item.
    local itemID = select(1, GetItemInfoInstant(itemName))

    -- If for some reason we did not get the ID above, we try another way here.
    if itemID == nil then
        -- Extract ID from link: GetItemInfoInstant unreliable with AH items (uncached on client?)
        itemID = tonumber( string.match( itemLink, "item:?(%d+):" ) )
        if itemID == nil then
            -- The item link doesn't contain the item ID field
            return
        end
    end

    -- Find all the things the item is used for in Alchemy.
    if HerbUsedFor(itemID) ~= nil then
        tooltip:AddLine(" "); --blank line
        tooltip:AddLine(L["Used"]);
        tooltip:AddLine(HerbUsedFor(itemID));
    end
    -- Find all the mats used to make the item.
    if MatsForPotion(itemID) ~= nil then
        tooltip:AddLine(" "); --blank line
        tooltip:AddLine(L["Mats"]);
        tooltip:AddLine(MatsForPotion(itemID));
    end
end

-- *********************************************************************************************************
-- ************************************ What to do when tooltip go away ************************************
-- *********************************************************************************************************

local function OnTooltipCleared(tooltip, ...)
   -- Maybe something will come here later, for now it's just filling up.
end

-- *********************************************************************************************************
-- ************************** Help to find the exact local name when translating. **************************
-- ******************************************* In game you write: ******************************************
-- ****************************************** /script FindLocal() ******************************************
-- *********************************************************************************************************

function FindLocal()
    for skillIndex = 1, GetNumSkillLines() do
        local skillName, isHeader, _, skillRank, _, _, _, _, _, _, _, _, _ = GetSkillLineInfo(skillIndex)
        if not isHeader then
            print(skillName .. " - " .. skillRank);
        end
    end
end

-- *********************************************************************************************************
-- ***************************************** Just a test center :D *****************************************
-- *********************************** Will be removed when beta is over ***********************************
-- *********************************************************************************************************

function Subby(n)
    print(type(n))
end

-- *********************************************************************************************************
-- ******************************************** Show the tooltip *******************************************
-- *********************************************************************************************************

GameTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
GameTooltip:HookScript("OnTooltipCleared", OnTooltipCleared)















