#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//coal, copper, tin

var drops as loot_info[] = [
    //coal
    loot_info(<minecraft:coal>, 1),
    //copper ore
    loot_info(<mekanism:oreblock:1>, 6),
    //tin ore
    loot_info(<mekanism:oreblock:2>, 4)
];

val table = LootTables.getTable("minecraft:entities/zombie");

addDrops(table, drops, null);

val pool1 = table.getPool("pool1");
pool1.removeEntry("minecraft:iron_ingot");