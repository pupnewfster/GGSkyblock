#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//coal, black quartz

var drops as loot_info[] = [
    //coal
    loot_info(<minecraft:coal>, 4),
    //black quartz ore
    loot_info(<actuallyadditions:block_misc:3>, 1)
];

val table = LootTables.getTable("minecraft:entities/bat");

addDrops(table, drops, null);