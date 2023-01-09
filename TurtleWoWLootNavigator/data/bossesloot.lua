-- ------------------------
-- raids.lua
-- ------------------------

local addon = DRFDEV_TWoWLNav_ADDON;

addon.bosses_loot = {
    -- Ragefire Chasm (13 - 18)
    ['RFC_Taragaman'] = {
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
        code = 'RFC_Oggleflint',
        items = {
            ['2883'] = {
                id = 2883,
                name = 'Plans: Deadly Bronze Poniard',
                filtering = {
                    -- https://database.turtle-wow.org/?item=2883
                }
            },
            ['4348'] = {
                id = 4348,
                name = 'Pattern: Phoenix Gloves',
                filtering = {
                    -- https://database.turtle-wow.org/?item=4348
                }
            },
            ['4410'] = {
                id = 4410,
                name = 'Schematic: Shadow Goggles',
                filtering = {
                    -- https://database.turtle-wow.org/?item=6391
                }
            },
            ['4347'] = {
                id = 4347,
                name = 'Pattern: Reinforced Woolen Shoulders',
                filtering = {
                    -- https://database.turtle-wow.org/?item=4347
                }
            },
            ['6390'] = {
                id = 6390,
                name = 'Pattern: Stylish Blue Shirt',
                filtering = {
                    -- https://database.turtle-wow.org/?item=6390
                }
            },
            ['11039'] = {
                id = 11039,
                name = 'Formula: Enchant Cloak - Minor Agility',
                filtering = {
                    -- https://database.turtle-wow.org/?item=11039
                }
            }
        }
    },
    ['RFC_Jergosh'] = {
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
        code = 'RFC_Bazzalan',
        items = {
            ['4349'] = {
                id = 4349,
                name = 'Pattern: Phoenix Pants',
                filtering = {
                    -- https://database.turtle-wow.org/?item=4349
                }
            },
            ['4410'] = {
                id = 4410,
                name = 'Schematic: Shadow Goggles',
                filtering = {
                    -- https://database.turtle-wow.org/?item=4410
                }
            },
            ['3394'] = {
                id = 3394,
                name = 'Recipe: Elixir of Poison Resistance',
                filtering = {
                    -- https://database.turtle-wow.org/?item=3394
                }
            },
            ['10316'] = {
                id = 10316,
                name = 'Pattern: Colorful Kilt',
                filtering = {
                    -- https://database.turtle-wow.org/?item=10316
                }
            }
        }
    }


};
