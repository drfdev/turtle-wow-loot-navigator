### Dungeon:

##### Dundeon data:

**required**
- code: inner data-table code
- name: name of dungeon group
- bosses: [] (bosses view)


##### Dundeon view:

**required**
- name: displayed name
- min_level: min player's level (for groups)
- max_level: max player's level (for groups)
- groups: [] array of codes, link to Dundeon data

**addintional**
- location: location name
- map: link to image
- background_image: iterface image


---

### Raid:

##### Raid data:

**required**
- code: inner data-table code
- name: name of raid group
- bosses: [] (bosses view)


##### Raid view:

**required**
- code: raid code
- name: displayed name
- player_count: 20 / 40 raid player count
- groups: [] array of codes, link to Raid data

**addintional**
- min_level: min player's level
- location: location name
- map: link to image
- background_image: iterface image
- min_item_level: min loot level
- max_item_level: max loot level


---


dangeon's views:

* dungeons_low:
* dungeons_high:

raid's views:

* raids:

Bosses in single table:

* dungeons_bosses:
* raids_bosses


---

### World Boss:

##### view

**required**
- code: inner data-table code
- name: displayed name
- portrait: boss face image (???)

**addintional**
- location: location name
- map: link to image
- min_item_level: min loot level
- max_item_level: max loot level

##### data

`see boss data`

---

World bosses views:

* worlds_bosses: []

---

### Boss:

##### view

**required**
- code: inner data-table code
- name: displayed name
- portrait: boss face image (???)

**addintional**
???


---

see _dungeons_bosses_ and _raids_bosses_ above

* bosses_loot:
    code: -- boss code
    items: -- item list

---

### Item:

**required**
- id: item's ID
- name: displayed name
- filtering: filtering data

**addintional**
- color: displayed name's color
- drop_chance: drop chance value (don't need mb)
- inner_group: [] linked items
- for_quest: quest name (???) / link ???


---

### Filtering:

- type: 
    armor: `Cloth / Leather / Mail / Plate / Shield `
    weapon: `Bows / Crossbows / Daggers / Fist Weapons / Guns / One-Handed Axes / One-Handed Maces / `
            `One-Handed Swords / Polearms / Staves / Thrown / Two-Handed Axes / Two-Handed Maces / Two-Handed Swords / Wands`


- class:
    `Druid / Hunter / Mage / Paladin / Priest / Rogue / Shaman / Warlock / Warriors`


- min_level: 
    `1-60`


- max_level: 
    `1-60`


---
---

Availability by classes:


**Druid**
    armor: `Cloth / Leather` 
    weapon: `Daggers / Fist Weapons / One-Handed Maces / Staves / Two-Handed Maces`


**Hunter**
    armor: `Cloth / Leather / Mail`
    weapon: `Bows / Crossbows / Daggers / Fist Weapons / Guns / One-Handed Axes / One-Handed Swords /
            Polearms / Staves / Thrown / Two-Handed Axes / Two-Handed Swords`


**Mage**
    armor: `Cloth` 
    weapon: `Daggers / One-Handed Swords / Staves / Wands`


**Paladin**
    armor: `Cloth / Leather / Mail / Plate / Shield`
    weapon: `One-Handed Axes / One-Handed Maces / One-Handed Swords / Polearms / Two-Handed Axes /
            Two-Handed Maces / Two-Handed Swords`


**Priest**
    armor: `Cloth` 
    weapon: `Daggers / One-Handed Maces / Staves / Wands`


**Rogue**
    armor: `Cloth / Leather` 
    weapon: `Bows / Crossbows / Daggers / Fist Weapons / Guns / One-Handed Maces / One-Handed Swords /
            Thrown`


**Shaman**
    armor: `Cloth / Leather / Mail / Shield`
    weapon: `Daggers / Fist Weapons / One-Handed Axes / One-Handed Maces / Staves / Two-Handed Axes /
            Two-Handed Maces`


**Warlock**
    armor: `Cloth` 
    weapon: `Daggers / One-Handed Swords / Staves / Wands`


**Warriors**
    armor: `Cloth / Leather / Mail / Plate  / Shield`
    weapon: `Bows / Crossbows / Daggers / Fist Weapons / Guns / One-Handed Axes / One-Handed Maces /
            One-Handed Swords / Polearms / Staves / Thrown / Two-Handed Axes / Two-Handed Maces /
            Two-Handed Swords`


---


```
addon
  -- dungeons:
  
    dungeons_low []
        code
        name
        groups []
            code -> dungeons_bosses
            min_level
            max_level
    dungeons_high []
        code
        name
        groups []
            code -> dungeons_bosses
            min_level
            max_level
    dungeons_bosses []
        code
        name
        bosses []
            code -> bosses_loot
            name
    
  -- raids:
  
    raids []
        code
        name
        groups []
            name
            code -> raids_bosses
    raids_bosses []
        code
        name
        bosses: []
            code -> bosses_loot
            name
    
  -- world bosses:
  
    worlds_bosses []
        code -> bosses_loot
        name
   
  -- boss loot:
  
    bosses_loot []
        code
        items []
            id
            name
            filtering
    

```