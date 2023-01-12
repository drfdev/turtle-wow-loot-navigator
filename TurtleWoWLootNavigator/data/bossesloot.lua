-- ------------------------
-- raids.lua
-- ------------------------

local addon = DRFDEV_TWoWLNav_ADDON;

addon.bosses_loot = {
    -- ------------------------------------------------
    -- Ragefire Chasm (13 - 18)
    -- ------------------------------------------------
    ['RFC_Taragaman'] = {
        -- https://database.turtle-wow.org/?npc=11520
        code = 'RFC_Taragaman',
        items = {
            ['14145'] = {
                id = 14145,
                name = 'Cursed Felblade',
                filtering = {
                    -- https://database.turtle-wow.org/?item=14145
                }
            },
            ['14148'] = {
                id = 14148,
                name = 'Crystalline Cuffs',
                filtering = {
                    -- https://database.turtle-wow.org/?item=14148
                }
            },
            ['14149'] = {
                id = 14149,
                name = 'Subterranean Cape',
                filtering = {
                    -- https://database.turtle-wow.org/?item=14149
                }
            }
        }
    },
    ['RFC_Oggleflint'] = {
        -- https://database.turtle-wow.org/?npc=11517
        code = 'RFC_Oggleflint',
        items = {
            -- no any significant loot
        }
    },
    ['RFC_Jergosh'] = {
        -- https://database.turtle-wow.org/?npc=11518
        code = 'RFC_Jergosh',
        items = {
            ['14147'] = {
                id = 14147,
                name = 'Cavedweller Bracers',
                filtering = {
                    -- https://database.turtle-wow.org/?item=14147
                }
            },
            ['14150'] = {
                id = 14150,
                name = 'Robe of Evocation',
                filtering = {
                    -- https://database.turtle-wow.org/?item=14150
                }
            },
            ['14151'] = {
                id = 14151,
                name = 'Chanting Blade',
                filtering = {
                    -- https://database.turtle-wow.org/?item=14151
                }
            }
        }
    },
    ['RFC_Bazzalan'] = {
        -- https://database.turtle-wow.org/?npc=11519
        code = 'RFC_Bazzalan',
        items = {
            -- no any significant loot
        }
    }


};
