#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//iron, coal, redstone, black quartz, copper, silver

var drops as loot_info[] = [
    //iron ore
    loot_info(<minecraft:iron_ore>, 3),
    //coal
    loot_info(<minecraft:coal>, 3),
    //redstone dust
    loot_info(<minecraft:redstone>, 4),
    //black quartz ore
    loot_info(<actuallyadditions:block_misc:3>, 1),
    //copper ore
    loot_info(<mekanism:oreblock:1>, 2),
    //silver ore
    loot_info(<techreborn:ore:13>, 2)
];

val table = LootTables.getTable("minecraft:entities/creeper");

addDrops(table, drops, null);