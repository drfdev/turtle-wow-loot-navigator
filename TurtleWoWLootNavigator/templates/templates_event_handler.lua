-- ------------------------
-- Event handling
-- ------------------------

local addon = DRFDEV_TWoWLNav_ADDON;
local addon_ui = DRFDEV_TWoWLNav_ADDON.ui;
-- ------------------------
local eventHandler = addon_ui.eventHandler;

-- ------------------------
-- Event registered:
eventHandler:RegisterEvent("ADDON_LOADED");

-- ------------------------
-- Event handler:
eventHandler:SetScript("OnEvent", function()
    if event then
        if event == 'ADDON_LOADED' and arg1 == 'TurtleWoWLootNavigator' then
            DEFAULT_CHAT_FRAME:AddMessage("TWoWLN addon loaded");
        end
    end
end);

