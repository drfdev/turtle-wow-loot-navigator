local LOOT_NAVIGATOR_ADDON_CHANNEL = 'LootNav'

SendAddonMessage(LOOT_NAVIGATOR_ADDON_CHANNEL, "Turtle WoW: Loot Navigator", "PARTY")
DEFAULT_CHAT_FRAME:AddMessage('Turtle WoW: Loot Navigator loaded')

-- Hello world some test:
SLASH_HELLO1 = "/helloworld"

local function HelloWorldHandler(name)
    if(string.len(name) > 0) then
	DEFAULT_CHAT_FRAME:AddMessage("Hello, " .. name .. "!")
    else
        local playerName = UnitName("player")
	DEFAULT_CHAT_FRAME:AddMessage("Hello, " .. playerName .. "!")
    end
end

SlashCmdList["HELLO"] = HelloWorldHandler;

