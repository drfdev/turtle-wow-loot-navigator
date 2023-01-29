-- ------------------------
-- Initialize common function for UI
-- ------------------------

local addon = DRFDEV_TWoWLNav_ADDON;
addon.ui = {};

-- ------------------------
-- UI table
-- ------------------------
local addon_ui = DRFDEV_TWoWLNav_ADDON.ui;

-- ------------------------
-- Handling init event
-- ------------------------
local eventHandler = CreateFrame("Frame");
addon_ui.eventHandler = eventHandler;
