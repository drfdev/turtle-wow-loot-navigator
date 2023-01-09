-- ------------------------
-- dungeons.lua
-- ------------------------

local addon = DRFDEV_TWoWLNav_ADDON;

addon.dungeons_low = {
    -- Ragefire Chasm (13 - 18)
    ['ragefire_chasm'] = {
        code = 'RFC',
        name = 'Ragefire Chasm',
        groups = {
            ['RFC_BOSSES'] = {
                code = 'RFC_BOSSES',
                min_level = 13,
                max_level = 18
            }
        }
    }
};
addon.dungeons_high = {};
addon.dungeons_bosses = {
    -- Ragefire Chasm (13 - 18)
    ['RFC_BOSSES'] = {
        code = 'RFC_BOSSES',
        name = 'bosses',
        bosses = {
            ['Taragaman'] = {
                code = 'RFC_Taragaman',
                name = 'Taragaman the Hungerer'
            },
            ['Oggleflint'] = {
                code = 'RFC_Oggleflint',
                name = 'Oggleflint'
            },
            ['Jergosh'] = {
                code = 'RFC_Jergosh',
                name = 'Jergosh the Invoker'
            },
            ['Bazzalan'] = {
                code = 'RFC_Bazzalan',
                name = 'Bazzalan'
            }
        }
    }
};

-- lits:

-- Ragefire Chasm (13 - 18)
    -- added

-- Wailing Caverns (17 - 24)
    -- bosses:
        -- Kresh
        -- Lady Anacondra
        -- Lord Cobrahn
        -- Lord Pythas
        -- Skum
        -- Lord Serpentis
        -- Verdan the Everliving
        -- Mutanus the Devourer
    -- rares:
        -- Deviate Faerie Dragon
        
-- The Deadmines (17 - 24)
    -- bosses:
        -- Rhahk'Zor
        -- Sneed's Shredder
        -- Gilnid
        -- Mr. Smite
        -- Captain Greenskin
        -- Edwin VanCleef
    -- rares:
        -- Miner Johnson
    -- bonus:
        -- Cookie

-- Shadowfang Keep (22 - 30)
    -- bosses:
        -- Rethilgore
        -- Razorclaw the Butcher
        -- Baron Silverlaine
        -- Commander Springvale
        -- Odo the Blindwatcher
        -- Fenrus the Devourer
        -- Wolf Master Nandos
        -- Archmage Arugal
    -- horses:
        -- Fel Steed/Shadow Charger
    -- rares:
        -- Deathsworn Captain
    
-- The Stockade (22 - 30)
    -- bosses:
        -- Targorr the Dread
        -- Kam Deepfury
        -- Hamhock
        -- Dextren Ward
        -- Bazil Thredd
    -- rares:
        -- Bruegal Ironknuckle
    
-- Blackfathom Deeps (23 -32)
    -- bosses:
        -- Ghamoo-ra
        -- Lady Sarevess
        -- Gelihast
        -- Lorgus Jett
        -- Baron Aquanis
        -- Twilight Lord Kelris
        -- Old Serra'kis
        -- Aku'mai

-- Scarlet Monastery
    -- Scarlet Monastery Graveyard (27 - 36)
        -- bosses:
            -- Interrogator Vishas
            -- Bloodmage Thalnos
        -- rares:
            -- Azshir the Sleepless
            -- Fallen Champion
            -- Ironspine

    -- Scarlet Monastery Library (28 - 39)
        -- bosses:
            -- Houndmaster Loksey
            -- Arcanist Doan
    -- Scarlet Monastery Armory (32 - 41)
        -- bosses:
            -- Herod

    -- Scarlet Monastery Cathedral (35 - 45)
        -- bosses:
            -- Scarlet Commander Mograine
            -- High Inquisitor Whitemane
            -- High Inquisitor Fairbanks

-- Gnomeregan (29 - 38)
    -- bosses:
        -- Grubbis
        -- Viscous Fallout
        -- Electrocutioner 6000
        -- Crowd Pummeler 9-60
        -- Mekgineer Thermaplugg
    -- rares:
        -- Dark Iron Ambassador

-- Razorfen Kraul (29 - 38)
    -- bosses:
        -- Roogug
        -- Aggem Thorncurse
        -- Death Speaker Jargba
        -- Overlord Ramtusk
        -- Agathelos the Raging
        -- Charlga Razorflank

-- The Crescent Grove (32 - 38)
    -- bosses:
        -- Grovetender Engryss
        -- Keeper Ranathos
        -- High Priestess A'lathea
        -- Fenektis the Deceiver
        -- Master Raxxieth


-- Razorfen Downs (36 - 46)
    -- bosses:
        -- Tuten'kash
        -- Plaguemaw the Rotting
        -- Mordresh Fire Eye
        -- Ragglesnout
        -- Glutton
        -- Amnennar the Coldbringer

-- Uldaman (40 - 51)
    -- bosses:
        -- Revelosh
        -- Ironaya
        -- Obsidian Sentinel
        -- Ancient Stone Keeper
        -- Galgann Firehammer
        -- Grimlok
        -- Archaedas
    -- The Lost Dwarves:
        -- Baelog
        -- Eric "The Swift"
        -- Olaf
    
-- Zul'Farrak (44 - 54)
    -- bosses:
        -- Antu'sul
        -- Theka the Martyr
        -- Witch Doctor Zum'rah
        -- Sandfury Executioner
        -- Nekrum Gutchewer
        -- Shadowpriest Sezz'ziz
        -- Sergeant Bly
        -- Hydromancer Velratha
        -- Chief Ukorz Sandscalp
        -- Ruuzlu
    -- rares:
        -- Dustwraith
        -- Zerillis
        -- Sandarr Dunereaver

-- Maraudon
    -- Orange: (47 - 55)
        -- Noxxion
        -- Razorlash
    -- Purple: (45 - 55)
        -- Lord Vyletongue
    -- Poison Falls: (45 - 55)
        -- Celebras the Cursed
    -- Inner: (47 - 55)
        -- Landslide
        -- Tinkerer Gizlock
        -- Rotgrip
        -- Princess Theradras

-- =======================================================
-- high level dungeons:
-- =======================================================


-- Temple of Atal'Hakkar (50 - 60)
    -- bosses:
        -- Atal'alarion
        -- Dreamscythe
        -- Weaver
        -- Jammal'an the Prophet
        -- Ogom the Wretched
        -- Morphaz
        -- Hazzas
        -- Avatar of Hakkar
        -- Shade of Eranikus
    -- Atal'ai Defenders:
        -- Gasher
        -- Hukku
        -- Loro
        -- Mijan
        -- Zolo
        -- Zul'Lor

-- Hateforge Quarry (52 - 60)
    -- bosses:
        -- High Foreman Bargul Blackhammer
        -- Engineer Figgles
        -- Corossis
        -- Hatereaver Annihilator
        -- Har'gesh Doomcaller

-- Blackrock Depths
    -- bosses: (52 - 60)
        -- Lord Roccor
        -- Bael'Gar
        -- Houndmaster Grebmar
        -- High Interrogator Gerstahn
        -- Pyromancer Loregrain
        -- General Angerforge
        -- Golem Lord Argelmach
        -- Ribbly Screwspigot
        -- Hurley Blackbreath
        -- Plugger Spazzring
        -- Phalanx
        -- Lord Incendius
        -- Fineous Darkvire
        -- Warder Stilgiss
        -- Verek
        -- Ambassador Flamelash
        -- Magmus
        -- Princess Moira Bronzebeard
        -- Emperor Thaurissan
    -- Ring of Law: (52 - 60)
        -- Gorosh the Dervish
        -- Grizzle
        -- Eviscerator
        -- Ok'thor the Breaker
        -- Anub'shiah
        -- Hedrum the Creeper
    -- The Vault
        -- Dark Keeper Bethek
        -- Dark Keeper Ofgut
        -- Dark Keeper Pelver
        -- Dark Keeper Uggel
        -- Dark Keeper Vorfalk
        -- Dark Keeper Zimrel
    -- The Seven (shared loot)
        -- Hate'rel
        -- Anger'rel
        -- Vile'rel
        -- Gloom'rel
        -- Seeth'rel
        -- Doom'rel
        -- Dope'rel


-- Blackrock Spire
    -- Lower (55 - 60)
        -- Highlord Omokk
        -- Shadow Hunter Vosh'gajin
        -- War Master Voone
        -- Mother Smolderweb
        -- Urok Doomhowl (summon)
        -- Quartermaster Zigris
        -- Gizrul the Slavener
        -- Halycon
        -- Overlord Wyrmthalak
    -- Upper (56 - 60)
        -- Pyroguard Emberseer
        -- Jed Runewatcher (rare)
        -- Solakar Flamewreath
        -- Goraluk Anvilcrack
        -- Warchief Rend Blackhand
        -- Gyth
        -- The Beast
        -- Lord Valthalak (summon)
        -- General Drakkisath
        

-- Dire Maul
    -- East (55 - 60)
        -- Pusillin
        -- Lethtendris
        -- Hydrospawn
        -- Zevrim Thornhoof
        -- Alzzin the Wildshaper
    -- North (57 - 60)
        -- Guard Mol'dar
        -- Stomper Kreeg
        -- Guard Fengus
        -- Guard Slip'kik
        -- Captain Kromcrush
        -- Cho'Rush the Observer
        -- King Gordok
    -- West (57 - 60)
        -- Tendris Warpwood
        -- Magister Kalendris
        -- Tsu'zee
        -- Illyanna Ravenoak
        -- Immol'thar
        -- Prince Tortheldrin
        -- Lord Hel'nurath (summon)

-- Scholomance (58 - 60)
    -- bosses:
        -- Jandice Barov
        -- Rattlegore
        -- Marduk Blackpool
        -- Vectus
        -- Ras Frostwhisper
        -- Instructor Malicia
        -- Doctor Theolen Krastinov
        -- Lorekeeper Polkelt
        -- The Ravenian
        -- Lord Alexei Barov
        -- Lady Illucia Barov
        -- Darkmaster Gandling
    -- summon:
        -- Kirtonos the Herald

-- Stratholme
    -- Undead District / Main Gate: (58 - 60)
        -- Fras Siabi (summon)
        -- Skul (rare)
        -- Hearthsinger Forresten (rare)
        -- The Unforgiven
        -- Postmaster Malown (summon)
        -- Timmy the Cruel
        -- Malor the Zealous
        -- Cannon Master Willey
        -- Crimson Hammersmith (summon)
        -- Archivist Galford
        -- Balnazzar
    -- Scarlet Bastion / Service Gate: (58 - 60)
        -- Magistrate Barthilas
        -- Stonespine (rare)
        -- Nerub'enkan
        -- Black Guard Swordsmith (summon)
        -- Maleki the Pallid
        -- Baroness Anastari
        -- Ramstein the Gorger
        -- Baron Rivendare


-- Karazhan Crypt (58 - 60)
    -- bosses:
        -- Marrowspike
        -- Hivaxxis
        -- Corpsemuncher
        -- Archlich Enkhraz
        -- Alarus

-- Caverns of Time: Black Morass (60 - 60)
    -- bosses:
        -- Chronar
        -- Time-Lord Epochronos
        -- Antnormi

-- Stormwind Vault (60 - 60)
    -- bosses:
        -- Aszosh Grimflame
        -- Tham'Grarr
        -- Black Bride
        -- Damian
        -- Volkan Cruelblade
        -- Arc'tiras



