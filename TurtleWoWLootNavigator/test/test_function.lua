local addon = DRFDEV_TWoWLNav_ADDON;

test_getCharacterInfo = function()
    local characterInfo = addon.getCharacterInfo()

    print(tostring(characterInfo.className))
    print(tostring(characterInfo.race))
    print(tostring(characterInfo.level))
    print(tostring(characterInfo.guild))
    print(tostring(characterInfo.isPvp()))
    print(tostring(characterInfo.isAlliance()))
    print(tostring(characterInfo.isHorde()))
    print(tostring(characterInfo.isProbablyHardcode()))
end

test_printAllAvailability = function()
    local av = addon.classAvailability;
    for k, v in next, av do
        print("--------------------");
        print("class name: " .. k);
        print(">> weapons:")
        for k1, v1 in next, v.weaponTypes do
            print("W: " .. v1)
        end
        print(">> armors:")
        for k2, v2 in next, v.armorTypes do
            print("A: " .. v2)
        end
    end
end

-- dungeons_low data structure iterator (example):
test_ragefire_chasm_boss_loot = function()
    local duns = addon.dungeons_low;
    for k, v in next, duns do
        print("Dungeon: " .. v.name);
        for g_i, g_v in next, v.groups do
            print("group: " .. g_v.code);

            local bosses = addon.dungeons_bosses[g_v.code];
            print("bosses: " .. bosses.name);
            for b_i, b_v in next, bosses.bosses do
                local loot = addon.bosses_loot[b_v.code];
                print("loot for : " .. loot.code);

                for L_i, L_v in next, loot.items do
                    print("item: " .. tostring(L_v.id) .. "/" .. L_v.name);
                end
            end
        end
    end
end