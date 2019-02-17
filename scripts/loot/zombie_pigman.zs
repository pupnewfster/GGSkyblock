#priority 1000

import scripts.loot.loot_tweaker.addDrops;
import scripts.loot.loot_tweaker.addTCCurio;
import scripts.loot.loot_tweaker.combine;
import scripts.loot.loot_tweaker.baseValues;
import scripts.loot.loot_rates.loot_info;

import loottweaker.vanilla.loot.LootTables;

//gold, osmium, amber
//Nether: quartz, pyrite, sphalerite

var drops as loot_info[] = [
    //gold ore
    loot_info(<minecraft:gold_ore>, 5),
    //osmium ore
    loot_info(<mekanism:oreblock>, 6),
    //amber
    loot_info(<thaumcraft:amber>, 2),

    //Nether

    //quartz
    loot_info(<minecraft:quartz>, 3, combine(baseValues[<minecraft:quartz>], ["dim|-1"])),
    //pyrite dust
    loot_info(<techreborn:dust:39>, 1, combine(baseValues[<techreborn:dust:39>], ["dim|-1"])),
    //sphalerite dust
    loot_info(<techreborn:dust:50>, 1, combine(baseValues[<techreborn:dust:50>], ["dim|-1"]))
];

val table = LootTables.getTable("minecraft:entities/zombie_pigman");

addDrops(table, drops, null);
addTCCurio(table);

table.removePool("pool2");