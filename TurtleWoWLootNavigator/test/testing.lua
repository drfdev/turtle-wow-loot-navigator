-- fast reload UI
SLASH_RELOADUI1 = "/rl"
SlashCmdList.RELOADUI = ReloadUI

-- fast frame stack
SLASH_FRAMESTK1 = "/fs"
SlashCmdList.FRAMESTk = function()
    LoadAddOn('Blizzard_DebugTools')
    FrameStackTooltip_Toggle()
end

--- some testing ---
-- test_getCharacterInfo();
-- test_printAllAvailability();
-- test_ragefire_chasm_boss_loot();