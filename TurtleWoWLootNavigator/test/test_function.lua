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