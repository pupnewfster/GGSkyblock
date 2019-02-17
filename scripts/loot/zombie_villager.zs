#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//iron, gold, emerald, certus quartz, tin

var drops as loot_info[] = [
    //iron ore
    loot_info(<minecraft:iron_ore>, 2),
    //gold ore
    loot_info(<minecraft:gold_ore>, 3),
    //emerald
    loot_info(<minecraft:emerald>, 1),
    //certus quartz
    loot_info(<appliedenergistics2:material>, 3),
    //tin ore
    loot_info(<mekanism:oreblock:2>, 3)
];

val table = LootTables.getTable("minecraft:entities/zombie_villager");

addDrops(table, drops, null);

val pool1 = table.getPool("pool1");
pool1.removeEntry("minecraft:iron_ingot");