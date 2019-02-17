#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//coal, black quartz, galena, bauxite, lead

var drops as loot_info[] = [
    //coal
    loot_info(<minecraft:coal>, 7),
    //black quartz ore
    loot_info(<actuallyadditions:block_misc:3>, 3),
    //galena ore
    loot_info(<techreborn:ore>, 1),
    //bauxite ore
    loot_info(<techreborn:ore:4>, 9),
    //lead ore
    loot_info(<techreborn:ore:12>, 3)
];

val table = LootTables.getTable("minecraft:entities/squid");

addDrops(table, drops, null);