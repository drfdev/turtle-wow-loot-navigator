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
    local allianceRaces = { "Human", "Dwarf", "Night Elf", "Gnome", "High Elf" };
    return arrayContains(allianceRaces, race);
end;

-- true when horde race name
local isHordeRace = function(race)
    local hordeRaces = { "Orc", "Undead", "Tauren", "Troll", "Goblin" };
    return arrayContains(hordeRaces, race);
end;

-- true when guild "Still Alive"
local isHardcoreGuild = function(guildName)
    return guildName == "Still Alive";
end;


-- ------------------------
-- Addon constants:
-- ------------------------

DRFDEV_TWoWLNav_ADDON.weaponTypes = {
    w_bow = "Bows",
    w_crossbow = "Crossbows",
    w_dagger = "Daggers",
    w_fist = "Fist_Weapons",
    w_gun = "Guns",
    w_axe_1h = "One_Handed_Axes",
    w_mace_1h = "One_Handed_Maces",
    w_sword_1h = "One_Handed_Swords",
    w_polearm = "Polearms",
    w_staff = "Staves",
    w_thrown = "Thrown",
    w_axe_2h = "Two_Handed_Axes",
    w_mace_2h = "Two_Handed_Maces",
    w_sword_2h = "Two_Handed_Swords",
    w_wand = "Wands"
};

DRFDEV_TWoWLNav_ADDON.armorTypes = {
    a_cloth = "Cloth",
    a_leather = "Leather",
    a_mail = "Mail",
    a_plate = "Plate",
    a_shield = "Shield"
};

DRFDEV_TWoWLNav_ADDON.classNames = {
    cl_druid = "Druid",
    cl_hunter = "Hunter",
    cl_mage = "Mage",
    cl_paladin = "Paladin",
    cl_priest = "Priest",
    cl_rogue = "Rogue",
    cl_shaman = "Shaman",
    cl_warlock = "Warlock",
    cl_warrior = "Warrior"
};

DRFDEV_TWoWLNav_ADDON.classAvailability = {
    [DRFDEV_TWoWLNav_ADDON.classNames.cl_druid] = {
        weaponTypes = {
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_dagger,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_fist,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_mace_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_staff,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_mace_2h
        },
        armorTypes = {
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_cloth,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_leather
        }
    },
    [DRFDEV_TWoWLNav_ADDON.classNames.cl_hunter] = {
        weaponTypes = {
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_bow,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_crossbow,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_dagger,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_fist,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_gun,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_axe_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_sword_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_polearm,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_staff,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_thrown,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_axe_2h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_sword_2h
        },
        armorTypes = {
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_cloth,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_leather,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_mail
        }
    },
    [DRFDEV_TWoWLNav_ADDON.classNames.cl_mage] = {
        weaponTypes = {
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_dagger,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_sword_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_staff,
            Wands
        },
        armorTypes = {
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_cloth
        }
    },
    [DRFDEV_TWoWLNav_ADDON.classNames.cl_paladin] = {
        weaponTypes = {
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_axe_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_sword_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_polearm,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_axe_2h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_sword_2h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_mace_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_mace_2h
        },
        armorTypes = {
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_cloth,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_leather,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_mail,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_plate,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_shield
        }
    },
    [DRFDEV_TWoWLNav_ADDON.classNames.cl_priest] = {
        weaponTypes = {
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_dagger,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_staff,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_mace_1h,
            Wands
        },
        armorTypes = {
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_cloth
        }
    },
    [DRFDEV_TWoWLNav_ADDON.classNames.cl_rogue] = {
        weaponTypes = {
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_bow,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_crossbow,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_dagger,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_fist,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_gun,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_sword_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_thrown,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_mace_1h
        },
        armorTypes = {
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_cloth,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_leather
        }
    },
    [DRFDEV_TWoWLNav_ADDON.classNames.cl_shaman] = {
        weaponTypes = {
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_dagger,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_fist,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_axe_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_staff,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_axe_2h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_mace_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_mace_2h
        },
        armorTypes = {
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_cloth,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_leather,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_mail,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_shield
        }
    },
    [DRFDEV_TWoWLNav_ADDON.classNames.cl_warlock] = {
        weaponTypes = {
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_dagger,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_sword_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_staff,
            Wands
        },
        armorTypes = {
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_cloth
        }
    },
    [DRFDEV_TWoWLNav_ADDON.classNames.cl_warrior] = {
        weaponTypes = {
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_bow,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_crossbow,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_dagger,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_fist,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_gun,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_axe_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_sword_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_polearm,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_staff,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_thrown,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_axe_2h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_sword_2h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_mace_1h,
            DRFDEV_TWoWLNav_ADDON.weaponTypes.w_mace_2h
        },
        armorTypes = {
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_cloth,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_leather,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_mail,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_plate,
            DRFDEV_TWoWLNav_ADDON.armorTypes.a_shield
        }
    }
}

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
