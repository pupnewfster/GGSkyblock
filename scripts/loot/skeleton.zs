#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.combine;
import scripts.loot.loot_tweaker.baseValues;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//iron, osmium, copper, tin
//nether: quartz, pyrite, sphalerite, ardite, cobalt

var drops as loot_info[] = [
    //iron ore
    loot_info(<minecraft:iron_ore>, 9),
    //osmium ore
    loot_info(<mekanism:oreblock>, 6),
    //copper ore
    loot_info(<mekanism:oreblock:1>, 6),
    //tin ore
    loot_info(<mekanism:oreblock:2>, 6),

    //Nether only

    //quartz
    loot_info(<minecraft:quartz>, 6, combine(baseValues[<minecraft:quartz>], ["dim|-1"])),
    //pyrite dust
    loot_info(<techreborn:dust:39>, 1, combine(baseValues[<techreborn:dust:39>], ["dim|-1"])),
    //sphalerite dust
    loot_info(<techreborn:dust:50>, 1, combine(baseValues[<techreborn:dust:50>], ["dim|-1"])),
    //cobalt ore
    loot_info(<tconstruct:ore>, 2, combine(baseValues[<tconstruct:ore>], ["dim|-1"])),
    //ardite ore
    loot_info(<tconstruct:ore:1>, 2, combine(baseValues[<tconstruct:ore:1>], ["dim|-1"]))
];

val table = LootTables.getTable("minecraft:entities/skeleton");

addDrops(table, drops, null);