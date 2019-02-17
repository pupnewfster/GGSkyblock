#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//iron, gold, diamond, emerald, certus quartz, iridium, ruby, sapphire, peridot

var drops as loot_info[] = [
    //gold ore
    loot_info(<minecraft:gold_ore>, 12),
    //diamond
    loot_info(<minecraft:diamond>, 5),
    //emerald
    loot_info(<minecraft:emerald>, 3),
    //certus quartz
    loot_info(<appliedenergistics2:material>, 8),
    //iridium ore
    loot_info(<techreborn:ore:1>, 1),
    //ruby
    loot_info(<techreborn:gem>, 7),
    //sapphire
    loot_info(<techreborn:gem:1>, 7),
    //peridot
    loot_info(<techreborn:gem:2>, 7)
];

val table = LootTables.getTable("minecraft:entities/villager");

addDrops(table, drops, null);