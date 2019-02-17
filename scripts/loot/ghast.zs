#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//coal, quartz, certus quartz, pyrite, sphalerite, cobalt, ardte

var drops as loot_info[] = [
    //coal
    loot_info(<minecraft:coal>, 3),
    //quartz
    loot_info(<minecraft:quartz>, 5),
    //certus quartz
    loot_info(<appliedenergistics2:material>, 7),
    //pyrite dust
    loot_info(<techreborn:dust:39>, 1),
    //sphalerite dust
    loot_info(<techreborn:dust:50>, 1),
    //cobalt ore
    loot_info(<tconstruct:ore>, 1),
    //ardite ore
    loot_info(<tconstruct:ore:1>, 1)
];

val table = LootTables.getTable("minecraft:entities/ghast");

addDrops(table, drops, null);