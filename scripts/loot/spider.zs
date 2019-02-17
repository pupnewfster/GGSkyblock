#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//iron, coal, lapis, redstone, cinnabar

var drops as loot_info[] = [
    //iron ore
    loot_info(<minecraft:iron_ore>, 3),
    //coal
    loot_info(<minecraft:coal>, 1),
    //lapis lazuli
    loot_info(<minecraft:dye:4>, 3),
    //redstone dust
    loot_info(<minecraft:redstone>, 4),
    //cinnabar
    loot_info(<thaumcraft:ore_cinnabar>, 2)
];

val table = LootTables.getTable("minecraft:entities/spider");

addDrops(table, drops, null);