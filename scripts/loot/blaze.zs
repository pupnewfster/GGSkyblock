#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.addTCCurio;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//redstone, quartz, certus quartz, copper, pyrite, sphalerite, silver, amber, cobalt, ardite

var drops as loot_info[] = [
    //redstone dust
    loot_info(<minecraft:redstone>, 5),
    //quartz
    loot_info(<minecraft:quartz>, 15),
    //certus quartz
    loot_info(<appliedenergistics2:material>, 5),
    //copper ore
    loot_info(<mekanism:oreblock:1>, 5),
    //pyrite dust
    loot_info(<techreborn:dust:39>, 1),
    //sphalerite dust
    loot_info(<techreborn:dust:50>, 1),
    //silver ore
    loot_info(<techreborn:ore:13>, 3),
    //amber
    loot_info(<thaumcraft:amber>, 3),
    //cobalt ore
    loot_info(<tconstruct:ore>, 2),
    //ardite ore
    loot_info(<tconstruct:ore:1>, 2)
];

val table = LootTables.getTable("minecraft:entities/blaze");

addDrops(table, drops, null);
addTCCurio(table);