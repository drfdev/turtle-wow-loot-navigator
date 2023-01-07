-- ------------------------
-- Addon Initializer
-- ------------------------

local addon = DRFDEV_TWoWLNav_ADDON;

-- Handling init event
local eventHandler = CreateFrame("Frame");

-- Event registered:
eventHandler:RegisterEvent("ADDON_LOADED");

-- Event handler:
eventHandler:SetScript("OnEvent", function()
    if event then
        if event == 'ADDON_LOADED' and arg1 == 'TurtleWoWLootNavigator' then
            DEFAULT_CHAT_FRAME:AddMessage("TWoWLN addon loaded");
        end
    end
end);


