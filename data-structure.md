### Dungeon:

**required**
- code: inner data-table code
- name: displayed name
- min_level: min player's level
- max_level: max player's level

**addintional**
- location: location name
- map: link to image


---

### Raid:

**required**
- code: inner data-table code
- name: displayed name
- player_count: 20 / 40 raid player count

**addintional**
- min_level: min player's level
- location: location name
- map: link to image
- min_item_level: min loot level
- max_item_level: max loot level


---

addon:
dungeons_low:
dungeons_high:
    code: -- dungeon's code
    image: -- image (???)
    -- or --
    groups: [] -- dangeon's boss group 
        code: -- dungeon group's code
        ~min / max level~ -- TODO ???
raids:
    code: -- raid's code
    image: -- image (???)
    -- or --
    groups: [] -- raid's boss group 
        code: -- raid group's code

dungeons_bosses:
    code:
    bosses: []
raids_bosses:
    code:
    bosses: []

---

### World Boss:

**required**
- code: inner data-table code
- name: displayed name
- portrait: boss face image (???)

**addintional**
- location: location name
- map: link to image
- min_item_level: min loot level
- max_item_level: max loot level


---

worlds_bosses: []

worlds_bosses_loot:
    code:
    items: []

---

### Boss:

**required**
- code: inner data-table code
- name: displayed name
- portrait: boss face image (???)

**addintional**
???


---

see _dungeons_bosses_ and _raids_bosses_ above

bosses_loot:
    code:
    items:

---

### Item:

**required**
- id: item's ID
- name: displayed name
- filtering: filtering data

**addintional**
- color: displayed name's color
- inner_group: [] linked items
- for_quest: quest name (???)


---

### Filtering:

- type: 
    armor: Cloth / Leather / Mail / Plate / Shield 
    weapon: Bows / Crossbows / Daggers / Fist Weapons / Guns / One-Handed Axes / One-Handed Maces / 
            One-Handed Swords / Polearms / Staves / Thrown / Two-Handed Axes / Two-Handed Maces / Two-Handed Swords / Wands
- class:
    Druid / Hunter / Mage / Paladin / Priest / Rogue / Shaman / Warlock / Warriors
- min_level: 
- max_level: 

---
---

Availability by class:

**Druid**
    armor: Cloth / Leather 
    weapon: Daggers / Fist Weapons / One-Handed Maces / Staves / Two-Handed Maces

**Hunter**
    armor: Cloth / Leather / Mail
    weapon: Bows / Crossbows / Daggers / Fist Weapons / Guns / One-Handed Axes / One-Handed Swords /
            Polearms / Staves / Thrown / Two-Handed Axes / Two-Handed Swords

**Mage**
    armor: Cloth 
    weapon: Daggers / One-Handed Swords / Staves / Wands

**Paladin**
    armor: Cloth / Leather / Mail / Plate / Shield
    weapon: One-Handed Axes / One-Handed Maces / One-Handed Swords / Polearms / Two-Handed Axes /
            Two-Handed Maces / Two-Handed Swords

**Priest**
    armor: Cloth 
    weapon: Daggers / One-Handed Maces / Staves / Wands

**Rogue**
    armor: Cloth / Leather 
    weapon: Bows / Crossbows / Daggers / Fist Weapons / Guns / One-Handed Maces / One-Handed Swords /
            Thrown

**Shaman**
    armor: Cloth / Leather / Mail / Shield
    weapon: Daggers / Fist Weapons / One-Handed Axes / One-Handed Maces / Staves / Two-Handed Axes /
            Two-Handed Maces

**Warlock**
    armor: Cloth 
    weapon: Daggers / One-Handed Swords / Staves / Wands

**Warriors**
    armor: Cloth / Leather / Mail / Plate  / Shield
    weapon: Bows / Crossbows / Daggers / Fist Weapons / Guns / One-Handed Axes / One-Handed Maces /
            One-Handed Swords / Polearms / Staves / Thrown / Two-Handed Axes / Two-Handed Maces /
            Two-Handed Swords

