-- ------------------------
-- core_functions.lua
-- ------------------------

DRFDEV_TWoWLNav_ADDON = {};


-- ------------------------
-- Common functions:
-- ------------------------


-- true when arrayVals contains value
local arrayContains = function(arrayVals, value)
    for index, val in ipairs(arrayVals) do
        if val == value then
            return true;
        end
    end
    
    return false;
end;

-- true when alliance race name
local isAllianceRace = function(race) 
    local allianceRaces = {"Human", "Dwarf", "Night Elf", "Gnome", "High Elf"};
    return arrayContains(allianceRaces, race);
end;

-- true when horde race name
local isHordeRace = function(race) 
    local hordeRaces = {"Orc", "Undead", "Tauren", "Troll", "Goblin"};
    return arrayContains(hordeRaces, race);
end;

-- true when guild "Still Alive"
local isHardcoreGuild = function(guildName)
    return guildName == "Still Alive";
end;


-- ------------------------
-- Addon functions:
-- ------------------------


-- ------------------------
-- DRFDEV_TWoWLNav_ADDON.getCharacterInfo()
-- Fields: className, race, level, guild
-- Functions: isPvp(), isAlliance(), isHorde(), isProbablyHardcode()
-- ------------------------
DRFDEV_TWoWLNav_ADDON.getCharacterInfo = function()
    local characterInfo = {};
    
    characterInfo.className = UnitClass("player");
    characterInfo.race = UnitRace("player");
    -- can be equal 0 sometimes, I don't know why
    characterInfo.level = UnitLevel("player");
    characterInfo.guild = GetGuildInfo("player");
    
    characterInfo.isPvp = function()
        local pvpFlag = UnitIsPVP("player");
        return pvpFlag == 1 or pvpFlag ~= nil;
    end;
    
    characterInfo.isAlliance = function()
        local raceName = characterInfo.race;
        return isAllianceRace(raceName);
    end;
    
    characterInfo.isHorde = function()
        local raceName = characterInfo.race;
        return isHordeRace(raceName);
    end;
    
    characterInfo.isProbablyHardcode = function()
        return isHardcoreGuild(characterInfo.guild);
    end;
    
    return characterInfo;
end;
